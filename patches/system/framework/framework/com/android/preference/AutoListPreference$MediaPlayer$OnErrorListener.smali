.class Landroid/preference/AutoListPreference$MediaPlayer$OnErrorListener;
.super Ljava/lang/Object;
.source "AutoListPreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/AutoListPreference;->playMedia(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/AutoListPreference;


# direct methods
.method constructor <init>(Landroid/preference/AutoListPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/AutoListPreference;

    .prologue
    iput-object p1, p0, Landroid/preference/AutoListPreference$MediaPlayer$OnErrorListener;->this$0:Landroid/preference/AutoListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Landroid/preference/AutoListPreference$MediaPlayer$OnErrorListener;->this$0:Landroid/preference/AutoListPreference;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/preference/AutoListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method
