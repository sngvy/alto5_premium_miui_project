.class Landroid/preference/AutoListPreference$3;
.super Ljava/lang/Thread;
.source "AutoListPreference.java"

# interfaces
.implements Ljava/lang/Runnable;

# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/AutoListPreference;
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

    .prologue
    iput-object p1, p0, Landroid/preference/AutoListPreference$3;->this$0:Landroid/preference/AutoListPreference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/preference/AutoListPreference$3;->this$0:Landroid/preference/AutoListPreference;

    iget-object v2, v0, Landroid/preference/AutoListPreference;->mProgressString:Ljava/lang/String;

    iget-object v1, v0, Landroid/preference/AutoListPreference;->mProgressText:Landroid/widget/TextView;

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/view/ViewRootImpl$CalledFromWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->runRefreshProgressDelayed()V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->removeRefreshProgressDelayed()V

    goto :goto_0
.end method