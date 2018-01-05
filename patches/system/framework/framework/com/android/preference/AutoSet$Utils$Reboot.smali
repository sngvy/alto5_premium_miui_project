.class public Landroid/preference/AutoSet$Utils$Reboot;
.super Ljava/lang/Object;
.source "AutoSet$Utils$Reboot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;

# instance fields
.field private mContext:Landroid/content/Context;

.field private mTypeReboot:Ljava/lang/String;

.field private mPackageName:Ljava/lang/CharSequence;

# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/preference/AutoSet$Utils$Reboot;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/preference/AutoSet$Utils$Reboot;->mTypeReboot:Ljava/lang/String;

    iput-object p3, p0, Landroid/preference/AutoSet$Utils$Reboot;->mPackageName:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"   # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v5, p0, Landroid/preference/AutoSet$Utils$Reboot;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "zff_autoset_action_reboot"

    invoke-static {v5, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Landroid/preference/AutoSet$Utils$Reboot;->mTypeReboot:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "zff_autoset_reboot_progress_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "normal"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "soft"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "ui"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "home"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "app"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "zff_autoset_reboot_progress_1"

    const-string v4, "app:"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "zff_autoset_reboot_progress_2"

    :cond_1
    invoke-static {v5, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "app:"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/preference/AutoSet$Utils$Reboot;->mPackageName:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v1, Landroid/preference/AutoSet$Utils$Reboot$1;

    iget-object v2, p0, Landroid/preference/AutoSet$Utils$Reboot;->mTypeReboot:Ljava/lang/String;

    invoke-direct {v1, v5, v2, v0}, Landroid/preference/AutoSet$Utils$Reboot$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x5dc # 1,5 second

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method