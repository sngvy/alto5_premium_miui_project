.class public Landroid/preference/AutoListPreference$DocumentUtils;
.super Ljava/lang/Object;
.source "AutoListPreference$DocumentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;
    }
.end annotation


# static fields
.field private static final AUDIO:Ljava/lang/String; = "audio"

.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final DOWNLOADS_DOCUMENTS:Ljava/lang/String; = "com.android.providers.downloads.documents"

.field private static final DOWNLOADS_PROVIDER_URI:Ljava/lang/String; = "content://downloads/public_downloads"

.field private static final EXTERNAL_STORAGE_DOCUMENTS:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final FILE:Ljava/lang/String; = "file"

.field private static final ID_SELECTION:Ljava/lang/String; = "_id=?"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static final MEDIA_DOCUMENTS:Ljava/lang/String; = "com.android.providers.media.documents"

.field private static final VIDEO:Ljava/lang/String; = "video"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 115
    const/4 v8, 0x0

    .line 116
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 117
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 122
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 124
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 126
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 129
    if-eqz v8, :cond_0

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 133
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    if-eqz v8, :cond_2

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 133
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    .local v5, "path":Ljava/lang/String;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_1

    move v3, v9

    .line 53
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_7

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 55
    invoke-static {p1}, Landroid/preference/AutoListPreference$DocumentUtils;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 56
    new-instance v1, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;

    invoke-direct {v1, p1}, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;-><init>(Landroid/net/Uri;)V

    .line 57
    .local v1, "data":Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    .end local v1    # "data":Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;
    :cond_0
    :goto_1
    return-object v5

    .end local v3    # "isKitKat":Z
    :cond_1
    move v3, v10

    .line 50
    goto :goto_0

    .line 60
    .restart local v3    # "isKitKat":Z
    :cond_2
    invoke-static {p1}, Landroid/preference/AutoListPreference$DocumentUtils;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 61
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "id":Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 65
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v13, v13}, Landroid/preference/AutoListPreference$DocumentUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    goto :goto_1

    .line 68
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Landroid/preference/AutoListPreference$DocumentUtils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 69
    new-instance v1, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;

    invoke-direct {v1, p1}, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;-><init>(Landroid/net/Uri;)V

    .line 70
    .restart local v1    # "data":Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;
    invoke-virtual {v1}, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;->getType()Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "type":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;->getName()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 73
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v11, "image"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 74
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 81
    :cond_4
    :goto_2
    const-string v6, "_id=?"

    .line 82
    .local v6, "selection":Ljava/lang/String;
    new-array v7, v9, [Ljava/lang/String;

    aput-object v4, v7, v10

    .line 86
    .local v7, "selectionArgs":[Ljava/lang/String;
    const-string v9, "_id=?"

    invoke-static {p0, v0, v9, v7}, Landroid/preference/AutoListPreference$DocumentUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    goto :goto_1

    .line 75
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    const-string v11, "video"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 76
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 77
    :cond_6
    const-string v11, "audio"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 78
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 90
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "data":Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;
    .end local v4    # "name":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_7
    const-string v9, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 91
    invoke-static {p0, p1, v13, v13}, Landroid/preference/AutoListPreference$DocumentUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 94
    :cond_8
    const-string v9, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 150
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 142
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 158
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
