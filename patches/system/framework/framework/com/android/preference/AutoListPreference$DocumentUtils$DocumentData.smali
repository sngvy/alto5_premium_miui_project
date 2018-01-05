.class Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;
.super Ljava/lang/Object;
.source "AutoListPreference$DocumentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/AutoListPreference$DocumentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentData"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "docId":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "split":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;->mType:Ljava/lang/String;

    .line 168
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;->mName:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/preference/AutoListPreference$DocumentUtils$DocumentData;->mType:Ljava/lang/String;

    return-object v0
.end method
