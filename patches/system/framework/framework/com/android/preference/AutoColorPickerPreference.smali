.class public Landroid/preference/AutoColorPickerPreference;
.super Landroid/preference/Preference;
.source "AutoColorPickerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/AutoColorPickerDialog$OnColorChangedListener;

# instance fields
.field private mAlphaSliderEnabled:Z

.field private mBroadcast:Ljava/lang/String;

.field private mBroadcastOff:Ljava/lang/String;

.field private mBroadcastOn:Ljava/lang/String;

.field private mColor:I

.field private mColorTriggered:Z

.field private mDefaultValue:Ljava/lang/Integer;

.field private mDensity:F

.field private mDependInValues:[Ljava/lang/String;

.field private mDependOutValues:[Ljava/lang/String;

.field private mDialog:Landroid/preference/AutoColorPickerDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mMaxLines:I

.field public mNeedReboot:Ljava/lang/String;

.field private mNotifyBroadcast:Z

.field private mNotifyScript:Z

.field private mRunScript:Ljava/lang/String;

.field private mRunScriptOff:Ljava/lang/String;

.field private mRunScriptOn:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mSummaryOff:Ljava/lang/String;

.field private mSummaryOn:Ljava/lang/String;

.field public mTypeSet:Ljava/lang/Class;

.field private mValue:I

.field private mView:Landroid/view/View;

# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoColorPickerPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoColorPickerPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/preference/AutoColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/AutoColorPickerPreference;->mDensity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/AutoColorPickerPreference;->mAlphaSliderEnabled:Z

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/preference/AutoColorPickerPreference;->mDensity:F

    invoke-virtual {p0, p0}, Landroid/preference/AutoColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const-string v0, "alphaslider"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoColorPickerPreference;->mAlphaSliderEnabled:Z

    const-string v0, "typeset"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->setTypeSet(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string v0, "maxlines"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/AutoColorPickerPreference;->mMaxLines:I

    const-string v0, "depend-in"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoColorPickerPreference;->setDependInValues(Ljava/lang/String;)V

    const-string v0, "depend-out"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoColorPickerPreference;->setDependOutValues(Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoColorPickerPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mSummary:Ljava/lang/String;

    const-string v0, "summary-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoColorPickerPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mSummaryOff:Ljava/lang/String;

    const-string v0, "summary-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoColorPickerPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mSummaryOn:Ljava/lang/String;

    const-string v0, "color"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoColorPickerPreference;->setColor(Ljava/lang/String;)V

    const-string v0, "needreboot"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mNeedReboot:Ljava/lang/String;

    const-string v0, "broadcast"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mBroadcast:Ljava/lang/String;

    const-string v0, "broadcast-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mBroadcastOff:Ljava/lang/String;

    const-string v0, "broadcast-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mBroadcastOn:Ljava/lang/String;

    const-string v0, "notify-broadcast"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoColorPickerPreference;->mNotifyBroadcast:Z

    const-string v0, "runscript"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mRunScript:Ljava/lang/String;

    const-string v0, "runscript-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mRunScriptOff:Ljava/lang/String;

    const-string v0, "runscript-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mRunScriptOn:Ljava/lang/String;

    const-string v0, "notify-script"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoColorPickerPreference;->mNotifyScript:Z

    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDefaultValue:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getASet()V

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

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDependInValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setDependOutValues(Ljava/lang/String;)V
    .locals 4
    .param p1, "depend-out"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    .local v2, "len$":I
    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-static {v3}, Landroid/preference/AutoSet$Utils;->convertToColorInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDependOutValues:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private setSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getContext()Landroid/content/Context;

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
    iput v0, p0, Landroid/preference/AutoColorPickerPreference;->mColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/AutoColorPickerPreference;->mColorTriggered:Z

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

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 7
    .param p0, "color"    # I

    .prologue
    const/4 v6, 0x1

    .line 207
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "alpha":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "red":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "green":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "blue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 127
    iget v8, p0, Landroid/preference/AutoColorPickerPreference;->mDensity:F

    const/high16 v9, 0x41f80000    # 31.0f

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 128
    .local v3, "d":I
    iget v2, p0, Landroid/preference/AutoColorPickerPreference;->mValue:I

    .line 129
    .local v2, "color":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 131
    .local v7, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 132
    .local v4, "h":I
    move v1, v2

    .line 133
    .local v1, "c":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_4

    .line 134
    move v6, v5

    .local v6, "j":I
    :goto_1
    if-ge v6, v4, :cond_3

    .line 135
    if-le v5, v10, :cond_0

    if-le v6, v10, :cond_0

    add-int/lit8 v8, v7, -0x2

    if-ge v5, v8, :cond_0

    add-int/lit8 v8, v4, -0x2

    if-lt v6, v8, :cond_2

    :cond_0
    const v1, -0x777778

    .line 136
    :goto_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 137
    if-eq v5, v6, :cond_1

    .line 138
    invoke-virtual {v0, v6, v5, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 134
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 135
    goto :goto_2

    .line 133
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    .end local v6    # "j":I
    :cond_4
    return-object v0
.end method

.method private setPreviewColor()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v3, p0, Landroid/preference/AutoColorPickerPreference;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v1, "iView":Landroid/widget/ImageView;
    const-string v2, "widget_frame"

    invoke-static {v3, v2}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iget-object v3, p0, Landroid/preference/AutoColorPickerPreference;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .local v2, "widgetFrameView":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroid/preference/AutoColorPickerPreference;->mDensity:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_2

    invoke-virtual {v2, v7, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    new-instance v3, Landroid/preference/AutoColorPickerAlphaPatternDrawable;

    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, p0, Landroid/preference/AutoColorPickerPreference;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Landroid/preference/AutoColorPickerAlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/preference/AutoColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private getSummary(ZI)Ljava/lang/String;
    .locals 4
    .param p1, "isEnabled"   # Z
    .param p2, "progress"    # I

    .prologue
    invoke-static {p2}, Landroid/preference/AutoColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/AutoColorPickerPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/preference/AutoColorPickerPreference;->mSummaryOn:Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/preference/AutoColorPickerPreference;->mSummaryOff:Ljava/lang/String;

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

# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Landroid/preference/AutoColorPickerPreference;->mView:Landroid/view/View;

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Landroid/preference/AutoColorPickerPreference;->mMaxLines:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v1, p0, Landroid/preference/AutoColorPickerPreference;->mMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    invoke-direct {p0}, Landroid/preference/AutoColorPickerPreference;->setPreviewColor()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/AutoColorPickerPreference;->persistInt(I)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iput p1, p0, Landroid/preference/AutoColorPickerPreference;->mValue:I

    invoke-direct {p0}, Landroid/preference/AutoColorPickerPreference;->setPreviewColor()V

    :try_start_1
    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->clearKey(Landroid/preference/Preference;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    const/high16 v0, -0x1000000

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDefaultValue:Ljava/lang/Integer;

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/AutoSet$Utils;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->checkDataCleared(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoColorPickerPreference;->setASet(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getASet()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/AutoColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setAlphaSliderEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/preference/AutoColorPickerPreference;->mAlphaSliderEnabled:Z

    return-void
.end method

.method public setNewPreviewColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/preference/AutoColorPickerPreference;->onColorChanged(I)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    new-instance v0, Landroid/preference/AutoColorPickerDialog;

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/preference/AutoColorPickerPreference;->mValue:I

    invoke-direct {v0, v1, v2}, Landroid/preference/AutoColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDialog:Landroid/preference/AutoColorPickerDialog;

    iget-boolean v2, p0, Landroid/preference/AutoColorPickerPreference;->mColorTriggered:Z

    if-eqz v2, :cond_0

    const-string v2, "zff_autoset_dialog_color_picker"

    invoke-static {v1, v2}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDialog:Landroid/preference/AutoColorPickerDialog;

    invoke-virtual {v0, v1}, Landroid/preference/AutoColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/preference/AutoColorPickerPreference;->mColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDialog:Landroid/preference/AutoColorPickerDialog;

    invoke-virtual {v0, p0}, Landroid/preference/AutoColorPickerDialog;->setOnColorChangedListener(Landroid/preference/AutoColorPickerDialog$OnColorChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/preference/AutoColorPickerDialog;->setColorPickerPreference(Landroid/preference/AutoColorPickerPreference;)V

    iget-boolean v0, p0, Landroid/preference/AutoColorPickerPreference;->mAlphaSliderEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDialog:Landroid/preference/AutoColorPickerDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/AutoColorPickerDialog;->setAlphaSliderVisible(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDialog:Landroid/preference/AutoColorPickerDialog;

    invoke-virtual {v0, p1}, Landroid/preference/AutoColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2
    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDialog:Landroid/preference/AutoColorPickerDialog;

    invoke-virtual {v0}, Landroid/preference/AutoColorPickerDialog;->show()V

    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDialog:Landroid/preference/AutoColorPickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/preference/AutoColorPickerDialog;->mNewColor:Landroid/preference/AutoColorPickerPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/AutoColorPickerPanelView;->getColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/preference/AutoColorPickerPreference;->mValue:I

    goto :goto_0
.end method

.method public setASet(I)Z
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Landroid/preference/AutoSet$Utils;->putInt(Landroid/preference/Preference;Ljava/lang/String;I)Z

    invoke-virtual {p0, p1}, Landroid/preference/AutoColorPickerPreference;->onColorChanged(I)V

    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/preference/AutoSet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, p1}, Landroid/preference/AutoColorPickerPreference;->getSummary(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0, v2}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    :cond_0
    return v2
.end method

.method public getASet()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/AutoColorPickerPreference;->onColorChanged(I)V

    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/preference/AutoSet$Utils;->handleOutDependents(I[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/preference/AutoColorPickerPreference;->getSummary(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDefaultValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoColorPickerPreference;->setASet(I)Z

    goto :goto_0
.end method

.method public postASet(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->clearKeyCheckDataCleared(Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p0, Landroid/preference/AutoColorPickerPreference;->mNotifyBroadcast:Z

    iget-object v1, p0, Landroid/preference/AutoColorPickerPreference;->mBroadcast:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/preference/AutoColorPickerPreference;->mBroadcastOn:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/preference/AutoColorPickerPreference;->mBroadcastOff:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    iget-boolean v2, p0, Landroid/preference/AutoColorPickerPreference;->mNotifyScript:Z

    iget-object v1, p0, Landroid/preference/AutoColorPickerPreference;->mRunScript:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v1, :cond_5

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Landroid/preference/AutoColorPickerPreference;->mRunScriptOn:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object v1, p0, Landroid/preference/AutoColorPickerPreference;->mRunScriptOff:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p0, v1}, Landroid/preference/AutoSet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v2, p0, Landroid/preference/AutoColorPickerPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v3, 0x1

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
    iget-object v0, p0, Landroid/preference/AutoColorPickerPreference;->mDependInValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->handleInDependents(Landroid/preference/Preference;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method