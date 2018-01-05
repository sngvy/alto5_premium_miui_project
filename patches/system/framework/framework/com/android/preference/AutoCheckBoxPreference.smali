.class public Landroid/preference/AutoCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "AutoCheckBoxPreference.java"

# instance fields
.field private mBroadcast:Ljava/lang/String;

.field private mBroadcastOff:Ljava/lang/String;

.field private mBroadcastOn:Ljava/lang/String;

.field private mDefaultValue:Ljava/lang/Boolean;

.field private mDependInValues:[Ljava/lang/String;

.field private mDependOutValues:Ljava/lang/String;

.field private mMaxLines:I

.field private mNeedReboot:Ljava/lang/String;

.field private mNotifyBroadcast:Z

.field private mNotifyScript:Z

.field private mRunScript:Ljava/lang/String;

.field private mRunScriptOff:Ljava/lang/String;

.field private mRunScriptOn:Ljava/lang/String;

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field public mTypeSet:Ljava/lang/Class;

# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoCheckBoxPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoCheckBoxPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    iput v0, p0, Landroid/preference/AutoCheckBoxPreference;->mMaxLines:I

    const-string v0, "depend-in"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setDependInValues(Ljava/lang/String;)V

    const-string v0, "depend-out"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setDependOutValues(Ljava/lang/String;)V

    const-string v0, "needreboot"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mNeedReboot:Ljava/lang/String;

    const-string v0, "broadcast"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mBroadcast:Ljava/lang/String;

    const-string v0, "broadcast-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mBroadcastOff:Ljava/lang/String;

    const-string v0, "broadcast-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mBroadcastOn:Ljava/lang/String;

    const-string v0, "notify-broadcast"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoCheckBoxPreference;->mNotifyBroadcast:Z

    const-string v0, "runscript"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mRunScript:Ljava/lang/String;

    const-string v0, "runscript-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mRunScriptOff:Ljava/lang/String;

    const-string v0, "runscript-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mRunScriptOn:Ljava/lang/String;

    const-string v0, "notify-script"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoCheckBoxPreference;->mNotifyScript:Z

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mDefaultValue:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/preference/AutoCheckBoxPreference;->getASet()V

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

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mDependInValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setDependOutValues(Ljava/lang/String;)V
    .locals 2
    .param p1, "depend-out"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mDependOutValues:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setASet(Z)Z
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, v0, v1}, Landroid/preference/AutoSet$Utils;->putInt(Landroid/preference/Preference;Ljava/lang/String;I)Z

    invoke-virtual {p0, p1}, Landroid/preference/AutoCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mDependOutValues:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/preference/AutoSet$Utils;->handleOutDependents(ILjava/lang/String;)Z

    move-result v2

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-super {p0, v2}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    :cond_2
    return v2
.end method

.method private getASet()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v0, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mDefaultValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setASet(Z)Z

    goto :goto_0
.end method

.method private postASet(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->clearKeyCheckDataCleared(Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p0, Landroid/preference/AutoCheckBoxPreference;->mNotifyBroadcast:Z

    iget-object v1, p0, Landroid/preference/AutoCheckBoxPreference;->mBroadcast:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/preference/AutoCheckBoxPreference;->mBroadcastOn:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/preference/AutoCheckBoxPreference;->mBroadcastOff:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    iget-boolean v2, p0, Landroid/preference/AutoCheckBoxPreference;->mNotifyScript:Z

    iget-object v1, p0, Landroid/preference/AutoCheckBoxPreference;->mRunScript:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v1, :cond_5

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Landroid/preference/AutoCheckBoxPreference;->mRunScriptOn:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object v1, p0, Landroid/preference/AutoCheckBoxPreference;->mRunScriptOff:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Landroid/preference/AutoCheckBoxPreference;->mMaxLines:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v1, p0, Landroid/preference/AutoCheckBoxPreference;->mMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setASet(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->postASet(Z)V

    iget-object v1, p0, Landroid/preference/AutoCheckBoxPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/preference/CheckBoxPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mDefaultValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/preference/CheckBoxPreference;->onSetInitialValue(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->checkDataCleared(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/AutoCheckBoxPreference;->setASet(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/preference/AutoCheckBoxPreference;->getASet()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->clearKey(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {p0, v1}, Landroid/preference/AutoSet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v2, p0, Landroid/preference/AutoCheckBoxPreference;->mDependOutValues:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/preference/AutoSet$Utils;->handleOutDependents(ILjava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/preference/AutoCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/preference/AutoCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/preference/AutoCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/preference/AutoCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    iget-object v0, p0, Landroid/preference/AutoCheckBoxPreference;->mDependInValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->handleInDependents(Landroid/preference/Preference;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method