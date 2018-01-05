.class public Landroid/preference/AutoSeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "AutoSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;

# instance fields
.field private mBroadcast:Ljava/lang/String;

.field private mBroadcastOff:Ljava/lang/String;

.field private mBroadcastOn:Ljava/lang/String;

.field private mColor:I

.field private mColorTriggered:Z

.field private mDefaultValue:Ljava/lang/Integer;

.field private mDependInValues:[Ljava/lang/String;

.field private mDependOutValues:[Ljava/lang/String;

.field private mDialogTriggered:Z

.field private mMax:I

.field private mMaxLines:I

.field private mMin:I

.field private mNeedReboot:Ljava/lang/String;

.field private mNotifyBroadcast:Z

.field private mNotifyScript:Z

.field private mProgress:I

.field private mSeekBarTextView:Landroid/widget/TextView;

.field private mStep:I

.field private mSummary:Ljava/lang/String;

.field private mSummaryOff:Ljava/lang/String;

.field private mSummaryOn:Ljava/lang/String;

.field private mTrackingTouch:Z

.field public mTypeSet:Ljava/lang/Class;

.field private mRunScript:Ljava/lang/String;

.field private mRunScriptOff:Ljava/lang/String;

.field private mRunScriptOn:Ljava/lang/String;

# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoSeekBarPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoSeekBarPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "step"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/AutoSeekBarPreference;->mStep:I

    const-string v0, "min"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/AutoSeekBarPreference;->mMin:I

    const-string v0, "max"

    const/16 v2, 0x64

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/AutoSeekBarPreference;->mMax:I

    const-string v0, "typeset"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->setTypeSet(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string v0, "signdialog"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mDialogTriggered:Z

    const-string v0, "maxlines"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/AutoSeekBarPreference;->mMaxLines:I

    const-string v0, "depend-in"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setDependInValues(Ljava/lang/String;)V

    const-string v0, "depend-out"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setDependOutValues(Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mSummary:Ljava/lang/String;

    const-string v0, "summary-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mSummaryOff:Ljava/lang/String;

    const-string v0, "summary-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mSummaryOn:Ljava/lang/String;

    const-string v0, "color"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setColor(Ljava/lang/String;)V

    const-string v0, "needreboot"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mNeedReboot:Ljava/lang/String;

    const-string v0, "broadcast"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mBroadcast:Ljava/lang/String;

    const-string v0, "broadcast-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mBroadcastOff:Ljava/lang/String;

    const-string v0, "broadcast-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mBroadcastOn:Ljava/lang/String;

    const-string v0, "notify-broadcast"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mNotifyBroadcast:Z

    const-string v0, "runscript"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mRunScript:Ljava/lang/String;

    const-string v0, "runscript-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mRunScriptOff:Ljava/lang/String;

    const-string v0, "runscript-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mRunScriptOn:Ljava/lang/String;

    const-string v0, "notify-script"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mNotifyScript:Z

    iget-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mDefaultValue:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/preference/AutoSeekBarPreference;->getASet()V

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

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mDependInValues:[Ljava/lang/String;

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

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mDependOutValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "color"

    invoke-static {v0, p1, v1}, Landroid/preference/AutoSet$Utils;->resolveIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/preference/AutoSet$Utils;->convertToColorInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v0, p0, Landroid/preference/AutoSeekBarPreference;->mColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mColorTriggered:Z

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

.method private setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    iget v0, p0, Landroid/preference/AutoSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/preference/AutoSeekBarPreference;->mMax:I

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method private setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/preference/AutoSeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method private setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    iget v0, p0, Landroid/preference/AutoSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Landroid/preference/AutoSeekBarPreference;->mMax:I

    :cond_0
    iget v0, p0, Landroid/preference/AutoSeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Landroid/preference/AutoSeekBarPreference;->mMin:I

    :cond_1
    iget v0, p0, Landroid/preference/AutoSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/preference/AutoSeekBarPreference;->mProgress:I

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/AutoSeekBarPreference;->persistInt(I)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->notifyChanged()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->clearKey(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method private getSummary(ZI)Ljava/lang/String;
    .locals 4
    .param p1, "isEnabled"   # Z
    .param p2, "progress"    # I

    .prologue
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mSummaryOn:Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mSummaryOff:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setASet(I)Z
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Landroid/preference/AutoSet$Utils;->putInt(Landroid/preference/Preference;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Landroid/preference/AutoSeekBarPreference;->setProgress(I)V

    iget-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/preference/AutoSet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, p1}, Landroid/preference/AutoSeekBarPreference;->getSummary(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0, v2}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    :cond_0
    return v2
.end method

.method private getASet()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/AutoSeekBarPreference;->setProgress(I)V

    iget-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/preference/AutoSet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/preference/AutoSeekBarPreference;->getSummary(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mDefaultValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setASet(I)Z

    goto :goto_0
.end method

.method private postASet(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->clearKeyCheckDataCleared(Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p0, Landroid/preference/AutoSeekBarPreference;->mNotifyBroadcast:Z

    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mBroadcast:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mBroadcastOn:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mBroadcastOff:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    iget-boolean v2, p0, Landroid/preference/AutoSeekBarPreference;->mNotifyScript:Z

    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mRunScript:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v1, :cond_5

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mRunScriptOn:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mRunScriptOff:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mMaxLines:I

    if-eqz v1, :cond_0

    const-string v1, "title"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mMaxLines:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    iget-boolean v1, p0, Landroid/preference/AutoSeekBarPreference;->mDialogTriggered:Z

    if-nez v1, :cond_1

    const-string v1, "zff_autoset_seekbar"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mMax:I

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mProgress:I

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "originalView":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const-string v4, "zff_autoset_seekbar"

    invoke-static {v3, v4}, Landroid/preference/AutoSet$Utils;->getIDinternalLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-boolean v4, p0, Landroid/preference/AutoSeekBarPreference;->mDialogTriggered:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/preference/AutoSeekBarPreference;->setDialogLayoutResource(I)V

    :cond_0
    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "newlayout":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mDialogTriggered:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mColorTriggered:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/preference/AutoSeekBarPreference;->mColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "zff_autoset_seekbar"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0}, Landroid/preference/AutoSeekBarPreference;->getASet()V

    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mMax:I

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mProgress:I

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "zff_autoset_seekbar_textview"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mSeekBarTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mSeekBarTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mProgress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    iget-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mDialogTriggered:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Landroid/preference/AutoSeekBarPreference;->mMaxLines:I

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

    iget v3, p0, Landroid/preference/AutoSeekBarPreference;->mMaxLines:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const-string v3, "TextAppearance.Medium"

    invoke-static {v0, v3}, Landroid/preference/AutoSet$Utils;->getIDandroidStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-boolean v2, p0, Landroid/preference/AutoSeekBarPreference;->mColorTriggered:Z

    if-eqz v2, :cond_1

    iget v3, p0, Landroid/preference/AutoSeekBarPreference;->mColor:I

    const-string v2, "parentPanel"

    invoke-static {v0, v2}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "topPanel"

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

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mDialogTriggered:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/preference/AutoSeekBarPreference;->mProgress:I

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setASet(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->postASet(Z)V

    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getContext()Landroid/content/Context;

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
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mDefaultValue:Ljava/lang/Integer;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->checkDataCleared(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->setASet(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/preference/AutoSeekBarPreference;->getASet()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/preference/AutoSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mStep:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mMin:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/preference/AutoSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mProgress:I

    iget-boolean v0, p0, Landroid/preference/AutoSeekBarPreference;->mDialogTriggered:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Landroid/preference/AutoSeekBarPreference;->setASet(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/AutoSeekBarPreference;->postASet(Z)V

    iget-object v1, p0, Landroid/preference/AutoSeekBarPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mSeekBarTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mMin:I

    add-int v0, v1, v2

    .line 153
    .local v0, "progress":I
    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/AutoSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/AutoSeekBarPreference;->setProgress(IZ)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v1, p0, Landroid/preference/AutoSeekBarPreference;->mProgress:I

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/preference/AutoSeekBarPreference;->mStep:I

    div-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoSeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p0, v1}, Landroid/preference/AutoSet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v2, p0, Landroid/preference/AutoSeekBarPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/preference/AutoSet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v3

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    iget-object v0, p0, Landroid/preference/AutoSeekBarPreference;->mDependInValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->handleInDependents(Landroid/preference/Preference;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method