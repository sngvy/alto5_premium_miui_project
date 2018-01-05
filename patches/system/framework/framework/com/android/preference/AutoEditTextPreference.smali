.class public Landroid/preference/AutoEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "AutoEditTextPreference.java"


# instance fields
.field private mBroadcast:Ljava/lang/String;

.field private mBroadcastOff:Ljava/lang/String;

.field private mBroadcastOn:Ljava/lang/String;

.field private mColor:I

.field private mColorTriggered:Z

.field private mDefaultValue:Ljava/lang/String;

.field private mDependInValues:[Ljava/lang/String;

.field private mDependOutValues:[Ljava/lang/String;

.field private mLastText:Ljava/lang/String;

.field private mMaxLines:I

.field private mNeedReboot:Ljava/lang/String;

.field private mNotifyBroadcast:Z

.field private mNotifyScript:Z

.field private mRunScript:Ljava/lang/String;

.field private mRunScriptOff:Ljava/lang/String;

.field private mRunScriptOn:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mSummaryOff:Ljava/lang/String;

.field private mSummaryOn:Ljava/lang/String;

.field public mTypeSet:Ljava/lang/Class;

# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoEditTextPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoEditTextPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "typeset"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->setTypeSet(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string v0, "maxlines"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/AutoEditTextPreference;->mMaxLines:I

    const-string v0, "depend-in"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoEditTextPreference;->setDependInValues(Ljava/lang/String;)V

    const-string v0, "depend-out"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoEditTextPreference;->setDependOutValues(Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoEditTextPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mSummary:Ljava/lang/String;

    const-string v0, "summary-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoEditTextPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mSummaryOff:Ljava/lang/String;

    const-string v0, "summary-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoEditTextPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mSummaryOn:Ljava/lang/String;

    const-string v0, "color"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoEditTextPreference;->setColor(Ljava/lang/String;)V

    const-string v0, "needreboot"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mNeedReboot:Ljava/lang/String;

    const-string v0, "broadcast"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mBroadcast:Ljava/lang/String;

    const-string v0, "broadcast-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mBroadcastOff:Ljava/lang/String;

    const-string v0, "broadcast-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mBroadcastOn:Ljava/lang/String;

    const-string v0, "notify-broadcast"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoEditTextPreference;->mNotifyBroadcast:Z

    const-string v0, "runscript"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mRunScript:Ljava/lang/String;

    const-string v0, "runscript-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mRunScriptOff:Ljava/lang/String;

    const-string v0, "runscript-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mRunScriptOn:Ljava/lang/String;

    const-string v0, "notify-script"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoEditTextPreference;->mNotifyScript:Z

    iget-object v0, p0, Landroid/preference/AutoEditTextPreference;->mDefaultValue:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/preference/AutoEditTextPreference;->getASet()V

    :cond_0
    return-void
.end method

.method private setDependInValues(Ljava/lang/String;)V
    .locals 1
    .param p1, "depend-in"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mDependInValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setDependOutValues(Ljava/lang/String;)V
    .locals 1
    .param p1, "depend-out"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mDependOutValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "string"

    invoke-static {v0, p1, v1}, Landroid/preference/AutoSet$Utils;->resolveIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private setColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "color"

    invoke-static {v0, p1, v1}, Landroid/preference/AutoSet$Utils;->resolveIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/preference/AutoSet$Utils;->convertToColorInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iput v0, p0, Landroid/preference/AutoEditTextPreference;->mColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/AutoEditTextPreference;->mColorTriggered:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private getSummary(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "isEnabled"   # Z
    .param p2, "text"        # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/preference/AutoEditTextPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez p2, :cond_3

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/preference/AutoEditTextPreference;->mSummaryOn:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/preference/AutoEditTextPreference;->mSummaryOff:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setASet(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Landroid/preference/AutoSet$Utils;->putString(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Landroid/preference/AutoEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/preference/AutoEditTextPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/preference/AutoSet$Utils;->handleOutDependents(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v2

    invoke-super {p0, v2}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    invoke-direct {p0, v2, p1}, Landroid/preference/AutoEditTextPreference;->getSummary(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return v2
.end method

.method private getASet()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->getString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/preference/AutoEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/preference/AutoEditTextPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->handleOutDependents(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, v0}, Landroid/preference/AutoEditTextPreference;->getSummary(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/preference/AutoEditTextPreference;->mDefaultValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/preference/AutoEditTextPreference;->setASet(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private postASet(Z)V
    .locals 6
    .param p1, "state"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->clearKeyCheckDataCleared(Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "broadcasts:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/preference/AutoEditTextPreference;->mNotifyBroadcast:Z

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v4, :cond_4

    :cond_0
    const-string v2, "scripts:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/preference/AutoEditTextPreference;->mNotifyScript:Z

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    iget-boolean v2, p0, Landroid/preference/AutoEditTextPreference;->mNotifyBroadcast:Z

    iget-object v1, p0, Landroid/preference/AutoEditTextPreference;->mBroadcast:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v1, :cond_4

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Landroid/preference/AutoEditTextPreference;->mBroadcastOn:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Landroid/preference/AutoEditTextPreference;->mBroadcastOff:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4
    if-nez v5, :cond_7

    iget-boolean v2, p0, Landroid/preference/AutoEditTextPreference;->mNotifyScript:Z

    iget-object v1, p0, Landroid/preference/AutoEditTextPreference;->mRunScript:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v1, :cond_7

    :cond_5
    if-nez p1, :cond_6

    iget-object v1, p0, Landroid/preference/AutoEditTextPreference;->mRunScriptOn:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_6
    if-eqz p1, :cond_7

    iget-object v1, p0, Landroid/preference/AutoEditTextPreference;->mRunScriptOff:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Landroid/preference/AutoEditTextPreference;->mMaxLines:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v1, p0, Landroid/preference/AutoEditTextPreference;->mMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Landroid/preference/AutoEditTextPreference;->mMaxLines:I

    if-eqz v3, :cond_0

    const-string v2, "alertTitle"

    invoke-static {v0, v2}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v3, p0, Landroid/preference/AutoEditTextPreference;->mMaxLines:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const-string v3, "TextAppearance.Medium"

    invoke-static {v0, v3}, Landroid/preference/AutoSet$Utils;->getIDandroidStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-boolean v2, p0, Landroid/preference/AutoEditTextPreference;->mColorTriggered:Z

    if-eqz v2, :cond_1

    iget v3, p0, Landroid/preference/AutoEditTextPreference;->mColor:I

    const-string v2, "topPanel"

    invoke-static {v0, v2}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "customPanel"

    invoke-static {v0, v2}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "buttonPanel"

    invoke-static {v0, v2}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

#.method protected onClick()V
#    .locals 1

#    .prologue
#    invoke-super {p0}, Landroid/preference/EditTextPreference;->onClick()V

#    invoke-direct {p0}, Landroid/preference/AutoEditTextPreference;->getASet()V

#    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getText()Ljava/lang/String;

#    move-result-object v0

#    if-eqz v0, :cond_0

#    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mLastText:Ljava/lang/String;

#    :cond_0
#    return-void
#.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

#    iget-object v1, p0, Landroid/preference/AutoEditTextPreference;->mLastText:Ljava/lang/String;

#    if-eqz v1, :cond_0

#    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

#    move-result v1

#    if-nez v1, :cond_1

#    :cond_0
    invoke-direct {p0, v0}, Landroid/preference/AutoEditTextPreference;->setASet(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/AutoEditTextPreference;->postASet(Z)V

    iget-object v1, p0, Landroid/preference/AutoEditTextPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoEditTextPreference;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onSetInitialValue(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->checkDataCleared(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/preference/AutoEditTextPreference;->setASet(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/preference/AutoEditTextPreference;->mDefaultValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/preference/AutoEditTextPreference;->getASet()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->clearKey(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Landroid/preference/AutoSet$Utils;->getString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/AutoEditTextPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/preference/AutoSet$Utils;->handleOutDependents(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    iget-object v0, p0, Landroid/preference/AutoEditTextPreference;->mDependInValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->handleInDependents(Landroid/preference/Preference;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method