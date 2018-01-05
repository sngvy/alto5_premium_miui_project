.class public Landroid/preference/AutoListPreference;
.super Landroid/preference/DialogPreference;
.source "AutoListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;

.implements Landroid/preference/PreferenceManager$OnActivityResultListener;

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/AutoListPreference$ListAdapter;
    }
.end annotation

# instance fields
.field private mBroadcast:Ljava/lang/String;

.field private mBroadcastOff:Ljava/lang/String;

.field private mBroadcastOn:Ljava/lang/String;

.field private mColor:I

.field private mColorTriggered:Z

.field private mCreateListCancel:Z

.field public mCurrentIndex:I

.field private mDefaultValue:Ljava/lang/String;

.field private mDependInValues:[Ljava/lang/String;

.field private mDependOutValues:[Ljava/lang/String;

.field private mDestinationFileNameList:Ljava/util/ArrayList;

.field public mEmptyValue:Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mFilterActions:[Ljava/lang/String;

.field private mFilterCategories:[Ljava/lang/String;

.field private mFilterList:Ljava/lang/String;

.field private mFilterNames:[Ljava/lang/CharSequence;

.field private mFilterText:Landroid/widget/TextView;

.field private mFilterValues:[Ljava/lang/CharSequence;

.field public mGenericList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field public mIconView:Landroid/widget/ImageView;

.field private mLastValue:Ljava/lang/String;

.field public mListView:Landroid/widget/ListView;

.field public mListAdapter:Landroid/preference/AutoListPreference$ListAdapter;

.field public mListType:I

.field private mLoadItems:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLines:I

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mMultiChoice:Z

.field private mNeedReboot:Ljava/lang/String;

.field private mNoList:Z

.field private mNotifyBroadcast:Z

.field private mNotifyScript:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field private mPath:Landroid/widget/Button;

.field private mPathList:Ljava/lang/String;

.field private mPathListPersistend:Z

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mProgressText:Landroid/widget/TextView;

.field public mProgressString:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;

.field private mRunScript:Ljava/lang/String;

.field private mRunScriptOff:Ljava/lang/String;

.field private mRunScriptOn:Ljava/lang/String;

.field private mSearch:Z

.field public mSearchText:Landroid/widget/EditText;

.field private mSourceFileNameList:Ljava/util/ArrayList;

.field private mSummary:Ljava/lang/String;

.field private mSummaryOff:Ljava/lang/String;

.field private mSummaryOn:Ljava/lang/String;

.field public mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

.field public mTypeSet:Ljava/lang/Class;

.field private mTypeValue:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field public mVisibleValue:Z

# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/preference/AutoSet$Utils;->sPathListArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/AutoListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Landroid/preference/AutoListPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    iput v2, p0, Landroid/preference/AutoListPreference;->mCurrentIndex:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/preference/AutoListPreference;->mEmptyValue:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/preference/AutoListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-object v2, p0, Landroid/preference/AutoListPreference;->mRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Landroid/preference/AutoListPreference;->mDestinationFileNameList:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/preference/AutoListPreference;->mSourceFileNameList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Landroid/preference/AutoListPreference;->mPathListPersistend:Z

    iput-boolean v2, p0, Landroid/preference/AutoListPreference;->mNoList:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p2, :cond_4

    const-string v0, "typelist"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setTypeList(Ljava/lang/String;)V

    const-string v0, "pathlist"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setPathList(Ljava/lang/String;)V

    const-string v0, "filterlist"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setFilterList(Ljava/lang/String;)V

    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I
      
    if-gez v0, :cond_2

    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "entries"

    invoke-interface {p2, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Landroid/preference/AutoListPreference;->setArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    iput-object v1, p0, Landroid/preference/AutoListPreference;->mEntries:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_1

    const-string v1, "entryvalues"

    invoke-interface {p2, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Landroid/preference/AutoListPreference;->setArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    iput-object v1, p0, Landroid/preference/AutoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_2
    const-string v0, "drawablearray"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setDrawableArray(Ljava/lang/String;)V

    const-string v1, "zff_autoset_empty_value"

    invoke-static {p1, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mEmptyValue:Ljava/lang/CharSequence;

    const-string v0, "typeset"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->setTypeSet(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string v0, "multichoice"

    invoke-interface {p2, v2, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoListPreference;->mMultiChoice:Z

    const-string v0, "maxlines"

    invoke-interface {p2, v2, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/AutoListPreference;->mMaxLines:I

    const-string v0, "depend-in"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setDependInValues(Ljava/lang/String;)V

    const-string v0, "depend-out"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setDependOutValues(Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mSummary:Ljava/lang/String;

    const-string v0, "summary-off"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mSummaryOff:Ljava/lang/String;

    const-string v0, "summary-on"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mSummaryOn:Ljava/lang/String;

    const-string v0, "color"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setColor(Ljava/lang/String;)V

    const-string v0, "needreboot"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mNeedReboot:Ljava/lang/String;

    const-string v0, "search"

    invoke-interface {p2, v2, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoListPreference;->mSearch:Z

    const-string v0, "visiblevalue"

    invoke-interface {p2, v2, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoListPreference;->mVisibleValue:Z

    const-string v0, "typevalue"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->setTypeValue(Ljava/lang/String;)V

    const-string v0, "broadcast"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mBroadcast:Ljava/lang/String;

    const-string v0, "broadcast-off"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mBroadcastOff:Ljava/lang/String;

    const-string v0, "broadcast-on"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mBroadcastOn:Ljava/lang/String;

    const-string v0, "notify-broadcast"

    invoke-interface {p2, v2, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoListPreference;->mNotifyBroadcast:Z

    const-string v0, "runscript"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mRunScript:Ljava/lang/String;

    const-string v0, "runscript-off"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mRunScriptOff:Ljava/lang/String;

    const-string v0, "runscript-on"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mRunScriptOn:Ljava/lang/String;

    const-string v0, "notify-script"

    invoke-interface {p2, v2, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/AutoListPreference;->mNotifyScript:Z

    invoke-direct {p0}, Landroid/preference/AutoListPreference;->presetFilePath()V

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mDefaultValue:Ljava/lang/String;

    if-nez v0, :cond_4

    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit8 v1, v0, -0x4

    if-lez v1, :cond_3          # if simple, app, app-l, activity, service, receiver

    add-int/lit16 v1, v0, -0x12

    if-eqz v1, :cond_3          # if script-0

    add-int/lit16 v1, v0, -0x13

    if-eqz v1, :cond_3          # if script-n

    add-int/lit16 v1, v0, -0x20

    if-lez v1, :cond_4          # if script, script-b, patch

    :cond_3
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getASet()V

    :cond_4
    const-string v0, "zff_autoset_list_dialog_view"

    invoke-static {p1, v0}, Landroid/preference/AutoSet$Utils;->getIDinternalLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->setDialogLayoutResource(I)V

    const-string v0, "zff_autoset_list_icon_view"

    invoke-static {p1, v0}, Landroid/preference/AutoSet$Utils;->getIDinternalLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private setArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 8
    .param p1, "array"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "array"

    invoke-static {v0, p1, v1}, Landroid/preference/AutoSet$Utils;->resolveIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "taRes":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v7, v3, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    :goto_1
    return-object v7

    :cond_3
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "string"

    const-string v6, "android"

    const-string v1, "android:string/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v1, "string/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v1, p1

    if-eqz v4, :cond_5

    :cond_4
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    if-eqz v3, :cond_2

    if-eqz v4, :cond_7

    new-array v7, v3, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    aput-object v4, v7, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move-object v7, v1

    check-cast v7, [Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private setDrawableArray(Ljava/lang/String;)V
    .locals 8
    .param p1, "drawablearray"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "array"

    invoke-static {v0, p1, v1}, Landroid/preference/AutoSet$Utils;->resolveIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "taRes":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v7, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iput-object v7, p0, Landroid/preference/AutoListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "drawable"

    const-string v6, "android"

    const-string v1, "android:drawable/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v1, "drawable/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    if-eqz v3, :cond_2

    new-array v7, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_5

    aput-object v4, v7, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setTypeValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "typevalue"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v0, v0, -0x30

    if-ltz v0, :cond_0          # if NOT image, audio, file

    iput-object p1, p0, Landroid/preference/AutoListPreference;->mTypeValue:Ljava/lang/String;

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

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mDependInValues:[Ljava/lang/String;

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

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mDependOutValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

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
    iput v0, p0, Landroid/preference/AutoListPreference;->mColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/AutoListPreference;->mColorTriggered:Z

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

.method private setTypeList(Ljava/lang/String;)V
    .locals 3
    .param p1, "typelist"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v1, "app"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "app-l"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "service"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "script*"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "script"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "script-b*"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "script-b"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "script-o*"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "script-o"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "script-n*"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "script-n"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "patch*"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "patch"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "image*"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "audio*"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "file*"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "file"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_0
    :goto_0
    iput v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    iput-boolean v2, p0, Landroid/preference/AutoListPreference;->mNoList:Z

    return-void

    :cond_1
    const/4 v0, 0x0   # app

    goto :goto_0

    :cond_2
    const/4 v0, 0x1   # app-l

    goto :goto_0

    :cond_3
    const/4 v0, 0x2   # activity

    goto :goto_0

    :cond_4
    const/4 v0, 0x3   # service

    goto :goto_0

    :cond_5
    const/4 v0, 0x4   # receiver

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    :cond_7
    const/16 v0, 0x10 # script

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    :cond_9
    const/16 v0, 0x11 # script-b

    goto :goto_0

    :cond_a
    const/4 v2, 0x1

    :cond_b
    const/16 v0, 0x12 # script-o

    goto :goto_0

    :cond_c
    const/4 v2, 0x1

    :cond_d
    const/16 v0, 0x13 # script-n

    goto :goto_0

    :cond_e
    const/4 v2, 0x1

    :cond_f
    const/16 v0, 0x20 # patch

    goto :goto_0

    :cond_10
    const/4 v2, 0x1

    :cond_11
    const/16 v0, 0x30 # image

    goto :goto_0

    :cond_12
    const/4 v2, 0x1

    :cond_13
    const/16 v0, 0x31 # audio

    goto :goto_0

    :cond_14
    const/4 v2, 0x1

    :cond_15
    const/16 v0, 0x40 # file

    goto :goto_0
.end method

.method private setPathList(Ljava/lang/String;)V
    .locals 3
    .param p1, "pathlist"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/preference/AutoListPreference;->mNoList:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/AutoListPreference;->mPathListPersistend:Z

    :cond_1
    return-void
.end method

.method private setFilterList(Ljava/lang/String;)V
    .locals 5
    .param p1, "filterlist"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_5

    iput-object p1, p0, Landroid/preference/AutoListPreference;->mFilterList:Ljava/lang/String;

    const-string v3, "name="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "action="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, "category="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v0, :cond_6

    :cond_0
    :goto_0
    if-gez v1, :cond_8

    :cond_1
    :goto_1
    if-gez v2, :cond_a

    :cond_2
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gez v4, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_3
    move v0, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

##### values

    :cond_4
    const/4 v3, 0x0

    if-ge v3, v4, :cond_5

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Landroid/preference/AutoListPreference;->mFilterValues:[Ljava/lang/CharSequence;

    :cond_5
    return-void

##### name=

    :cond_6
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_7

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_7
    add-int/lit8 v3, v0, 0x5

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Landroid/preference/AutoListPreference;->mFilterNames:[Ljava/lang/CharSequence;

    goto :goto_0

##### action=

    :cond_8
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_9

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_9
    add-int/lit8 v3, v1, 0x7

    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/AutoListPreference;->mFilterActions:[Ljava/lang/String;

    goto :goto_1

##### category=

    :cond_a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_b

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_b
    add-int/lit16 v3, v2, 0x9

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/AutoListPreference;->mFilterCategories:[Ljava/lang/String;

    goto :goto_2
.end method

# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Landroid/preference/AutoListPreference;->mMaxLines:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v1, p0, Landroid/preference/AutoListPreference;->mMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    if-gez v0, :cond_1          # if NOT simple

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    if-ltz v0, :cond_3

    :cond_1
    add-int/lit8 v1, v0, -0x4

    if-lez v1, :cond_3          # if app, app-l, activity, service, receiver

    add-int/lit16 v1, v0, -0x10

    if-eqz v1, :cond_2          # if script

    add-int/lit16 v1, v0, -0x11

    if-eqz v1, :cond_2          # if script-b

    add-int/lit16 v1, v0, -0x20

    if-nez v1, :cond_3          # if not patch

    :cond_2
    sget-object v0, Landroid/preference/AutoSet$Utils;->sPathListArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "zff_autoset_listIcon"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/preference/AutoListPreference;->getThumbnailIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "zff_autoset_listDialog"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mListView:Landroid/widget/ListView;

    const-string v1, "zff_autoset_progressBar"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v1, "zff_autoset_progressText"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mProgressText:Landroid/widget/TextView;

    const-string v1, "zff_autoset_search_text"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mSearchText:Landroid/widget/EditText;

    iget-boolean v1, p0, Landroid/preference/AutoListPreference;->mSearch:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mSearchText:Landroid/widget/EditText;

    new-instance v2, Landroid/preference/AutoListPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/AutoListPreference$1;-><init>(Landroid/preference/AutoListPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    const-string v1, "zff_autoset_filter"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mFilterText:Landroid/widget/TextView;

    const-string v1, "zff_autoset_path"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mPath:Landroid/widget/Button;

    iget-object v5, p0, Landroid/preference/AutoListPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    iget-boolean v1, p0, Landroid/preference/AutoListPreference;->mColorTriggered:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/preference/AutoListPreference;->mColor:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/AutoListPreference;->mCreateListCancel:Z

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mFilterList:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "FILTER: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mFilterText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->runRefreshProgressDelayed()V

    invoke-direct {p0}, Landroid/preference/AutoListPreference;->createGenericList()V

    iget v1, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit8 v1, v1, -0x4

    if-lez v1, :cond_4          # if app, app-l, activity, service, receiver

    iget-object v3, p0, Landroid/preference/AutoListPreference;->mPath:Landroid/widget/Button;

    new-instance v2, Landroid/preference/AutoListPreference$2;

    invoke-direct {v2, p0}, Landroid/preference/AutoListPreference$2;-><init>(Landroid/preference/AutoListPreference;)V

    iget-boolean v0, p0, Landroid/preference/AutoListPreference;->mPathListPersistend:Z

    if-nez v0, :cond_3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "PATH: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroid/preference/AutoListPreference;->mPathListPersistend:Z

    if-nez v0, :cond_4

    invoke-virtual {v3}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v3, v0, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x20

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    check-cast v1, Landroid/app/AlertDialog;

    iget-boolean v0, p0, Landroid/preference/AutoListPreference;->mMultiChoice:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v0, v0, -0x31

    if-eqz v0, :cond_0          # if audio

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .local v0, "ok":Landroid/widget/Button;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Landroid/preference/AutoListPreference;->mMaxLines:I

    if-eqz v3, :cond_1

    const-string v2, "alertTitle"

    invoke-static {v0, v2}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v3, p0, Landroid/preference/AutoListPreference;->mMaxLines:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const-string v3, "TextAppearance.Medium"

    invoke-static {v0, v3}, Landroid/preference/AutoSet$Utils;->getIDandroidStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget-boolean v2, p0, Landroid/preference/AutoListPreference;->mColorTriggered:Z

    if-eqz v2, :cond_2

    iget v3, p0, Landroid/preference/AutoListPreference;->mColor:I

    const-string v2, "parentPanel"

    invoke-static {v0, v2}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "topPanel"

    invoke-static {v0, v2}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "buttonPanel"

    invoke-static {v0, v2}, Landroid/preference/AutoSet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private getPathFromKey()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p0, v2}, Landroid/preference/AutoSet$Utils;->getString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/preference/AutoListPreference;->valueUriToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Landroid/preference/AutoListPreference;->prepareString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public startActivityForResult()V
    .locals 7

    .prologue
    const-string v1, "android.intent.action.GET_CONTENT"

    const-string v2, "android.intent.category.OPENABLE"

    const-string v3, "image/*"

    const/16 v4, 0x77

    iget v5, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v6, v5, -0x30

    if-eqz v6, :cond_0          # if image

    const-string v3, "audio/*"

    add-int/lit16 v6, v5, -0x31

    if-eqz v6, :cond_0          # if audio

    const-string v3, "*/*"      # if file

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Landroid/preference/AutoListPreference;->mNoList:Z

    if-eqz v1, :cond_1

    const/16 v4, 0x88

    iget-boolean v1, p0, Landroid/preference/AutoListPreference;->mMultiChoice:Z

    if-eqz v1, :cond_1

    const/16 v4, 0x99

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .local v0, "getContentIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    sput-object v2, Landroid/preference/AutoSet$Utils;->sPreferenceKey:Ljava/lang/String;

    sput-object p0, Landroid/preference/AutoSet$Utils;->sPreferenceInstance:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getFragment()Landroid/preference/PreferenceFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, v4}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit8 v0, v0, -0x4

    if-lez v0, :cond_1          # if simple, app, app-l, activity, service, receiver

    iget-boolean v0, p0, Landroid/preference/AutoListPreference;->mNoList:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/preference/AutoListPreference;->getPathFromKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->startActivityForResult()V

    if-eqz v1, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v1, -0x1

    sget-object v0, Landroid/preference/AutoSet$Utils;->sPreferenceInstance:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/AutoListPreference;

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceManager;->unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    if-eq p2, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Landroid/preference/AutoSet$Utils;->sPreferenceKey:Ljava/lang/String;

    sput-object v1, Landroid/preference/AutoSet$Utils;->sPreferenceInstance:Landroid/preference/Preference;

    return v9

    :cond_1
    if-eqz p3, :cond_0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/preference/AutoListPreference$DocumentUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/AutoListPreference;->prepareString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    sget-object v2, Landroid/preference/AutoSet$Utils;->sPreferenceKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/preference/AutoListPreference;->setKey(Ljava/lang/String;)V

    invoke-super {v0}, Landroid/preference/DialogPreference;->onClick()V

    const/4 v9, 0x1

    goto :goto_0

    :sswitch_1
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/preference/AutoListPreference$DocumentUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/AutoListPreference;->checkFileType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0, v2}, Landroid/preference/AutoListPreference;->prepareString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    iget v3, v0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v4, v3, -0x10

    if-eqz v4, :cond_3          # if script

    add-int/lit16 v4, v3, -0x11

    if-eqz v4, :cond_3          # if script-b

    add-int/lit16 v4, v3, -0x20

    if-nez v4, :cond_4          # if patch

    :cond_3
    invoke-direct {v0}, Landroid/preference/AutoListPreference;->getDestinationPathFileNameList()Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Landroid/preference/AutoListPreference;->getSourcePathFileNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    :cond_4
    sget-object v1, Landroid/preference/AutoSet$Utils;->sPreferenceKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/AutoListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/preference/AutoListPreference;->setASet(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/AutoListPreference;->postASet(Z)V

    iget-object v2, v0, Landroid/preference/AutoListPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/preference/AutoSet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v9, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v2, v3, :cond_6

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/preference/AutoListPreference$DocumentUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/preference/AutoListPreference;->checkFileType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {v0, v4}, Landroid/preference/AutoListPreference;->prepareString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_6

    const-string v4, ";"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x77 -> :sswitch_0
        0x88 -> :sswitch_1
        0x99 -> :sswitch_2
    .end sparse-switch
.end method

.method private prepareString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public playMedia(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "currentValue"    # I
    .param p2, "enabled"  # Z

    .prologue
    iget v3, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v3, v3, -0x31

    if-nez v3, :cond_1          # if not audio

    if-eqz p2, :cond_2

    iget-object v3, p0, Landroid/preference/AutoListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Landroid/preference/AutoListPreference;->stopMedia()V

    :cond_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Landroid/preference/AutoListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .local v3, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_0
    iput-object p1, p0, Landroid/preference/AutoListPreference;->mLastValue:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    new-instance v4, Landroid/preference/AutoListPreference$MediaPlayer$OnCompletionListener;

    invoke-direct {v4, p0}, Landroid/preference/AutoListPreference$MediaPlayer$OnCompletionListener;-><init>(Landroid/preference/AutoListPreference;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v4, Landroid/preference/AutoListPreference$MediaPlayer$OnErrorListener;

    invoke-direct {v4, p0}, Landroid/preference/AutoListPreference$MediaPlayer$OnErrorListener;-><init>(Landroid/preference/AutoListPreference;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const-string/jumbo v4, "AutoListPreferense"

    const-string/jumbo v5, "Starting media-file playback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v3, p0, Landroid/preference/AutoListPreference;->mMultiChoice:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/preference/AutoListPreference;->mLastValue:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    invoke-direct {p0}, Landroid/preference/AutoListPreference;->stopMedia()V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "IOException prevents nxphack file playback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method private stopMedia()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/preference/AutoListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method private requestIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/preference/AutoListPreference$AsyncTask$3;

    invoke-direct {v0, p0}, Landroid/preference/AutoListPreference$AsyncTask$3;-><init>(Landroid/preference/AutoListPreference;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/AutoListPreference$AsyncTask$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p3, v1, :cond_0

    aget-object v1, v0, p3

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "zff_autoset_listTextSecondary"

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Landroid/preference/AutoListPreference;->mMultiChoice:Z

    if-nez v1, :cond_4

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    iget v1, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v1, v1, -0x31

    if-eqz v1, :cond_2          # if audio

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->setASet(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->postASet(Z)V

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/preference/AutoSet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/preference/AutoListPreference;->mListView:Landroid/widget/ListView;

    iget v2, p0, Landroid/preference/AutoListPreference;->mCurrentIndex:I

    if-ltz v2, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v1, p3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    invoke-virtual {p0, v0, v3}, Landroid/preference/AutoListPreference;->playMedia(Ljava/lang/String;Z)V

    iput p3, p0, Landroid/preference/AutoListPreference;->mCurrentIndex:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "zff_autoset_listCheckBox"

    invoke-static {v1, v2}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    const/4 v2, 0x1

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0, v0, v2}, Landroid/preference/AutoListPreference;->setMultiValue(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, v2}, Landroid/preference/AutoListPreference;->playMedia(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getThumbnailIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v2, p0, Landroid/preference/AutoListPreference;->mListType:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v1

##### simple, script, script-b, script-o, script-n, patch, audio, file

    :sswitch_0
    iget-object v3, p0, Landroid/preference/AutoListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    array-length v2, v3

    if-ge v0, v2, :cond_0

    aget-object v1, v3, v0

    goto :goto_0

##### app, app-l

    :sswitch_1
    iget-object v2, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    :try_start_0
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

##### activity

    :sswitch_2
    iget-object v2, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    :try_start_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

##### serivce

    :sswitch_3
    iget-object v2, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    :try_start_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_0

##### receiver

    :sswitch_4
    iget-object v2, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    :try_start_3
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto :goto_0

##### image

    :sswitch_5
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/preference/AutoListPreference;->requestIcon(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
       -0x1 -> :sswitch_0 # simple
        0x0 -> :sswitch_1 # app
        0x1 -> :sswitch_1 # app-l
        0x2 -> :sswitch_2 # activity
        0x3 -> :sswitch_3 # service
        0x4 -> :sswitch_4 # receiver
       0x10 -> :sswitch_0 # script
       0x11 -> :sswitch_0 # script-b
       0x12 -> :sswitch_0 # script-o
       0x13 -> :sswitch_0 # script-n
       0x20 -> :sswitch_0 # patch
       0x30 -> :sswitch_5 # image
       0x31 -> :sswitch_0 # audio
       0x40 -> :sswitch_0 # file
    .end sparse-switch
.end method

.method public getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "path" # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v2, v3

    const/16 v2, 0x60

    int-to-float v2, v2

    div-float v3, v2, v4

    float-to-int v2, v2

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mDefaultValue:Ljava/lang/String;

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

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/preference/AutoListPreference;->setASet(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/preference/AutoListPreference;->mDefaultValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getASet()V

    goto :goto_0
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v1, v1, -0x10

    if-gez v1, :cond_3          # if script, script-b, script-o, script-n, patch, image, audio, file

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/preference/AutoListPreference;->getShortListValue()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0}, Landroid/preference/AutoListPreference;->getPathFromKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Landroid/preference/AutoListPreference;->getSourcePathFileNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    invoke-virtual {p0, p1}, Landroid/preference/AutoListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/AutoListPreference;->persistString(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->notifyChanged()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->clearKey(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public setASet(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/preference/AutoListPreference;->valuePathToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/preference/AutoSet$Utils;->putString(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Landroid/preference/AutoListPreference;->handleFile(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/preference/AutoListPreference;->setValue(Ljava/lang/String;)V

    const/4 v1, 0x1

    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    if-ltz v0, :cond_0          # if simple

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Landroid/preference/AutoListPreference;->mDependOutValues:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/preference/AutoSet$Utils;->handleOutDependents(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2}, Landroid/preference/AutoListPreference;->getSummary(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0, v2}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    :cond_1
    return v2
.end method

.method public getASet()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->getString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->valueUriToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->setValue(Ljava/lang/String;)V

    const/4 v2, 0x1

    iget v1, p0, Landroid/preference/AutoListPreference;->mListType:I

    if-ltz v1, :cond_0          # if simple

    const/4 v2, 0x0

    :cond_0
    iget-object v1, p0, Landroid/preference/AutoListPreference;->mDependOutValues:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->handleOutDependents(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2}, Landroid/preference/AutoListPreference;->getSummary(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/preference/AutoListPreference;->mDefaultValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->setASet(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public postASet(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    invoke-static {p0}, Landroid/preference/AutoSet$Utils;->clearKeyCheckDataCleared(Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v2, v1, -0x10

    if-eqz v2, :cond_0          # if script

    add-int/lit16 v2, v1, -0x12

    if-nez v2, :cond_1          # if not script-o

    :cond_0
    iget-object v1, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/preference/AutoListPreference;->mNotifyScript:Z

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    iget-boolean v2, p0, Landroid/preference/AutoListPreference;->mNotifyBroadcast:Z

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mBroadcast:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v1, :cond_4

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mBroadcastOn:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mBroadcastOff:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4
    iget v1, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v2, v1, -0x10

    if-eqz v2, :cond_7          # script

    add-int/lit16 v2, v1, -0x12

    if-eqz v2, :cond_7          # script-o

    iget-boolean v2, p0, Landroid/preference/AutoListPreference;->mNotifyScript:Z

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mRunScript:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v1, :cond_7

    :cond_5
    if-nez p1, :cond_6

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mRunScriptOn:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_6
    if-eqz p1, :cond_7

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mRunScriptOff:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v0, v1, v2}, Landroid/preference/AutoSet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method private getSummary(Z)Ljava/lang/String;
    .locals 9
    .param p1, "isEnabled"   # Z

    .prologue
    iget-object v0, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    iget v6, p0, Landroid/preference/AutoListPreference;->mListType:I

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_9

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

#    iget v6, p0, Landroid/preference/AutoListPreference;->mListType:I

#    if-ltz v6, :cond_4          # if simple

    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

#    :cond_4
    array-length v3, v5

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_4
    aget-object v4, v5, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_5

    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_5
    iget-object v1, p0, Landroid/preference/AutoListPreference;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_7

    :goto_6
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mSummaryOn:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_6

    :cond_8
    iget-object v1, p0, Landroid/preference/AutoListPreference;->mSummaryOff:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_6

    :cond_9
#    iget-boolean v1, p0, Landroid/preference/AutoListPreference;->mMultiChoice:Z

#    if-nez v1, :cond_a

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mEmptyValue:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    goto :goto_5

#    :cond_a
#    const/4 v0, 0x0

#    goto :goto_5

##### simple

    :sswitch_0
    invoke-virtual {p0, v4}, Landroid/preference/AutoListPreference;->getEntry(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

##### app, app-l

    :sswitch_1
    iget-object v6, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

##### activity

    :sswitch_2
    iget-object v6, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    :try_start_1
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    if-eqz v4, :cond_b

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_b
    iget-object v4, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_2

##### serivce

    :sswitch_3
    iget-object v6, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    :try_start_2
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    if-eqz v4, :cond_c

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_c
    iget-object v4, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_2

##### receiver

    :sswitch_4
    iget-object v6, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    :try_start_3
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    if-eqz v4, :cond_d

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_d
    iget-object v4, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_2

##### script, script-b, script-o, script-n

    :sswitch_5
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    :try_start_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0, v6}, Landroid/preference/AutoListPreference;->getScriptName(Ljava/io/File;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    goto :goto_2

##### patch

    :sswitch_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    :try_start_5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0, v6}, Landroid/preference/AutoListPreference;->getPatchName(Ljava/io/File;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    goto :goto_2

##### image, audio, file

    :sswitch_7
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    :try_start_6
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v4

    goto :goto_2

#####

    :catch_0
    move-exception v8

    :cond_e
    iget-object v4, p0, Landroid/preference/AutoListPreference;->mEmptyValue:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
       -0x1 -> :sswitch_0 # simple
        0x0 -> :sswitch_1 # app
        0x1 -> :sswitch_1 # app-l
        0x2 -> :sswitch_2 # activity
        0x3 -> :sswitch_3 # service
        0x4 -> :sswitch_4 # receiver
       0x10 -> :sswitch_5 # script
       0x11 -> :sswitch_5 # script-b
       0x12 -> :sswitch_5 # script-o
       0x13 -> :sswitch_5 # script-n
       0x20 -> :sswitch_6 # patch
       0x30 -> :sswitch_7 # image
       0x31 -> :sswitch_7 # audio
       0x40 -> :sswitch_7 # file
    .end sparse-switch
.end method

.method public setMultiValue(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "currentValue"    # I
    .param p2, "enabled"  # Z

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez p2, :cond_4

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ge v2, v3, :cond_3

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    return-void

    :cond_4
    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public compareCurrentItemAndValue(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget v1, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v2, v1, -0x10

    if-eqz v2, :cond_0          # if script

    add-int/lit16 v2, v1, -0x11

    if-eqz v2, :cond_0          # if script-b

    add-int/lit16 v2, v1, -0x20

    if-eqz v2, :cond_0          # if patch

    iget-boolean v1, p0, Landroid/preference/AutoListPreference;->mMultiChoice:Z

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0, v1}, Landroid/preference/AutoSet$Utils;->getString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    iget v2, p0, Landroid/preference/AutoListPreference;->mListType:I

    if-ltz v2, :cond_0          # if simple

    const/4 v3, 0x0

    :cond_0
    iget-object v2, p0, Landroid/preference/AutoListPreference;->mDependOutValues:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/preference/AutoSet$Utils;->handleOutDependents(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    iget-object v0, p0, Landroid/preference/AutoListPreference;->mDependInValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/preference/AutoSet$Utils;->handleInDependents(Landroid/preference/Preference;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getList()Ljava/util/List;
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/preference/AutoListPreference;->mListType:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    iget-object v1, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    new-instance v0, Landroid/preference/AutoListPreference$4;

    invoke-direct {v0}, Landroid/preference/AutoListPreference$4;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0 # app
        0x1 -> :sswitch_0 # app-l
        0x2 -> :sswitch_0 # activity
        0x3 -> :sswitch_0 # service
        0x4 -> :sswitch_0 # receiver
       0x10 -> :sswitch_1 # script
       0x11 -> :sswitch_1 # script-b
       0x12 -> :sswitch_1 # script-o
       0x13 -> :sswitch_1 # script-n
       0x20 -> :sswitch_1 # patch
       0x30 -> :sswitch_1 # image
       0x31 -> :sswitch_1 # audio
       0x40 -> :sswitch_1 # file
    .end sparse-switch
.end method

.method private isFilteredEntries(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "name"     # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mFilterNames:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    array-length v3, v1

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/preference/AutoListPreference;->mFilterValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    array-length v3, v1

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method private isFilteredIntents(Ljava/util/List;)Z
    .locals 8
    .param p1, "intents"   # Ljava/util/List;

    .prologue
    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/content/IntentFilter;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Landroid/preference/AutoListPreference;->mFilterActions:[Ljava/lang/String;

    if-eqz v4, :cond_0

    array-length v6, v4

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v7, v4, v5

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroid/preference/AutoListPreference;->mFilterCategories:[Ljava/lang/String;

    if-eqz v4, :cond_1

    array-length v6, v4

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_2

    aget-object v7, v4, v5

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public createList()Ljava/util/List;
    .locals 15

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v6, ""

    const/4 v8, 0x0

    iget v10, p0, Landroid/preference/AutoListPreference;->mListType:I

    if-ltz v10, :cond_5

    iget-boolean v2, p0, Landroid/preference/AutoListPreference;->mMultiChoice:Z

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Landroid/preference/AutoListPreference;->getList()Ljava/util/List;

    move-result-object v7

    sparse-switch v10, :sswitch_data_0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
#    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getKey()Ljava/lang/String;

#    move-result-object v1

#    if-eqz v1, :cond_1

#    invoke-direct {p0, v6}, Landroid/preference/AutoListPreference;->valuePathToUri(Ljava/lang/String;)Ljava/lang/String;

#    move-result-object v2

#    invoke-static {p0, v1, v2}, Landroid/preference/AutoSet$Utils;->putString(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)Z

    iput-object v6, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    goto :goto_0

##### simple

    :cond_5
    iget-object v5, p0, Landroid/preference/AutoListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/preference/AutoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/preference/AutoListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    array-length v9, v5

    array-length v10, v6

    if-gt v9, v10, :cond_1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v2, v5, v8

    aget-object v3, v6, v8

    invoke-direct {p0, v2, v3}, Landroid/preference/AutoListPreference;->isFilteredEntries(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    if-eqz v7, :cond_6

    array-length v10, v7

    if-ge v8, v10, :cond_6

    aget-object v4, v7, v8

    :cond_6
    new-instance v1, Landroid/preference/AutoListPreference$Object;

    invoke-direct {v1, v2, v3, v4}, Landroid/preference/AutoListPreference$Object;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

##### app, app-l

    :sswitch_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_1

    iget-object v10, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    :goto_2
    invoke-direct {p0, v8, v9}, Landroid/preference/AutoListPreference;->refreshProgressText(II)V

    if-ge v8, v9, :cond_2

    iget-boolean v12, p0, Landroid/preference/AutoListPreference;->mCreateListCancel:Z

    if-nez v12, :cond_1

    :try_start_0
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_a

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, p0, Landroid/preference/AutoListPreference;->mListType:I

    if-eqz v12, :cond_9

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_a

    :cond_9
    invoke-virtual {v11, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Landroid/preference/AutoListPreference;->isFilteredEntries(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v11, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static/range {v0 .. v5}, Landroid/preference/AutoListPreference;->addObject(Ljava/util/List;Ljava/util/List;Ljava/lang/StringBuffer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v13

    goto :goto_3

##### activity, service, receiver

    :sswitch_1
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_1

    iget-object v10, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    if-eqz v3, :cond_b

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    :goto_4
    invoke-direct {p0, v8, v9}, Landroid/preference/AutoListPreference;->refreshProgressText(II)V

    if-ge v8, v9, :cond_2

    iget-boolean v12, p0, Landroid/preference/AutoListPreference;->mCreateListCancel:Z

    if-nez v12, :cond_1

    :try_start_1
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v3, v11, Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_17

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v11}, Landroid/preference/AutoSet$Utils;->parsePackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    iget v3, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit8 v4, v3, -0x2 

    if-nez v4, :cond_c         # if NOT activity

    iget-object v11, v12, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-eqz v4, :cond_e         # if activity

    :cond_c
    add-int/lit8 v4, v3, -0x3

    if-nez v4, :cond_d         # if NOT service

    iget-object v11, v12, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    if-eqz v4, :cond_e         # if service

    :cond_d
    iget-object v11, v12, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    :cond_e
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v14, :cond_17

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    iget v3, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit8 v4, v3, -0x3

    if-eqz v4, :cond_f         # if service

    instance-of v5, v12, Landroid/content/pm/PackageParser$Activity;

    if-eqz v5, :cond_16

    check-cast v12, Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v12, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v5, :cond_16

    invoke-direct {p0, v5}, Landroid/preference/AutoListPreference;->isFilteredIntents(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_10         # if NOT service

    :cond_f
    instance-of v5, v12, Landroid/content/pm/PackageParser$Service;

    if-eqz v5, :cond_16

    check-cast v12, Landroid/content/pm/PackageParser$Service;

    iget-object v5, v12, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    if-eqz v5, :cond_16

    invoke-direct {p0, v5}, Landroid/preference/AutoListPreference;->isFilteredIntents(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v12, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    :cond_10
    iget-object v4, v5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v3, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit8 v4, v3, -0x2 

    if-nez v4, :cond_11         # if NOT activity

    const/4 v5, 0x0

    invoke-virtual {v10, v12, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v4, :cond_13        # if activity

    :cond_11
    add-int/lit8 v4, v3, -0x3

    if-nez v4, :cond_12         # if NOT service

    const/4 v5, 0x0

    invoke-virtual {v10, v12, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    if-eqz v4, :cond_13         # if service

    :cond_12
    const/4 v5, 0x0

    invoke-virtual {v10, v12, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    :cond_13
    invoke-virtual {v5, v10}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_14

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    iget-object v3, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    :cond_15
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Landroid/preference/AutoListPreference;->isFilteredEntries(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual {v5, v10}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static/range {v0 .. v5}, Landroid/preference/AutoListPreference;->addObject(Ljava/util/List;Ljava/util/List;Ljava/lang/StringBuffer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_16
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_17
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catch_1
    move-exception v13

    goto :goto_6

##### script, script-b, script-o, patch, image, audio, file

    :sswitch_2
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v14, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/preference/AutoListPreference;->mSourceFileNameList:Ljava/util/ArrayList;

    iget v3, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v4, v3, -0x10

    if-eqz v4, :cond_18          # if script

    add-int/lit16 v4, v3, -0x11

    if-eqz v4, :cond_18          # if script-b

    add-int/lit16 v4, v3, -0x20

    if-eqz v4, :cond_18          # if patch

    invoke-direct {p0}, Landroid/preference/AutoListPreference;->getShortListValue()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v4, :cond_19

    :cond_18
    invoke-direct {p0}, Landroid/preference/AutoListPreference;->getDestinationPathFileNameList()Ljava/util/ArrayList;

    move-result-object v3

    :cond_19
    if-eqz v3, :cond_1a

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    :goto_7
    const/4 v5, 0x0

    invoke-direct {p0, v8, v9}, Landroid/preference/AutoListPreference;->refreshProgressText(II)V

    if-ge v8, v9, :cond_2

    iget-boolean v12, p0, Landroid/preference/AutoListPreference;->mCreateListCancel:Z

    if-nez v12, :cond_1

    :try_start_2
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/io/File;

    if-eqz v12, :cond_21

    check-cast v11, Ljava/io/File;

    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget v12, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v13, v12, -0x10

    if-eqz v13, :cond_1b          # if script

    add-int/lit16 v13, v12, -0x11

    if-eqz v13, :cond_1b          # if script-b

    add-int/lit16 v13, v12, -0x12

    if-eqz v13, :cond_1b          # if not script-o

    add-int/lit16 v13, v12, -0x13

    if-nez v13, :cond_1c          # if not script-n

    :cond_1b
    invoke-direct {p0, v11}, Landroid/preference/AutoListPreference;->getScriptName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    if-nez v3, :cond_1f

    :cond_1c
    add-int/lit16 v13, v12, -0x20

    if-nez v13, :cond_1d          # if not patch

    invoke-direct {p0, v11}, Landroid/preference/AutoListPreference;->getPatchName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    if-nez v3, :cond_1f

    :cond_1d
    add-int/lit16 v13, v12, -0x30

    if-nez v13, :cond_1e          # if not image

    invoke-static {v4}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    if-eqz v13, :cond_21

    iget v13, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v13}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual {p0, v4}, Landroid/preference/AutoListPreference;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v13, :cond_1f

    :cond_1e
    add-int/lit16 v13, v12, -0x31

    if-nez v13, :cond_1f          # if not audio

    invoke-static {v4}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    if-eqz v13, :cond_21

    iget v13, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v13}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v13

    if-eqz v13, :cond_21

    :cond_1f
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v5, :cond_20

    iget-object v11, p0, Landroid/preference/AutoListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_20

    array-length v13, v11

    if-ge v14, v13, :cond_20

    aget-object v5, v11, v14

    add-int/lit8 v14, v14, 0x1

    :cond_20
    check-cast v3, Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Landroid/preference/AutoListPreference;->isFilteredEntries(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_21
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    new-instance v13, Landroid/preference/AutoListPreference$Object;

    invoke-direct {v13, v3, v4, v5}, Landroid/preference/AutoListPreference$Object;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_21

    invoke-interface {v1, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v13, ";"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :catch_2
    move-exception v13

    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0 # app
        0x1 -> :sswitch_0 # app-l
        0x2 -> :sswitch_1 # activity
        0x3 -> :sswitch_1 # service
        0x4 -> :sswitch_1 # receiver
       0x10 -> :sswitch_2 # script
       0x11 -> :sswitch_2 # script-b
       0x12 -> :sswitch_2 # script-o
       0x13 -> :sswitch_2 # script-n
       0x20 -> :sswitch_2 # patch
       0x30 -> :sswitch_2 # image
       0x31 -> :sswitch_2 # audio
       0x40 -> :sswitch_2 # file
    .end sparse-switch
.end method

.method private static addObject(Ljava/util/List;Ljava/util/List;Ljava/lang/StringBuffer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    new-instance v0, Landroid/preference/AutoListPreference$Object;

    invoke-direct {v0, p3, p4, p5}, Landroid/preference/AutoListPreference$Object;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private getShortListValue()Ljava/util/ArrayList;
    .locals 7

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private refreshProgressText(II)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "max"         # I

    .prologue
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v1, v1, v2

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mProgressString:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->removeRefreshProgressDelayed()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runRefreshProgressDelayed()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/preference/AutoListPreference$3;

    invoke-direct {v1, p0}, Landroid/preference/AutoListPreference$3;-><init>(Landroid/preference/AutoListPreference;)V

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p0, Landroid/preference/AutoListPreference;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeRefreshProgressDelayed()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/preference/AutoListPreference;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/AutoListPreference;->mRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private getScriptName(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x2800 # 10 kb

    if-gt v0, v1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    const-string v1, "#!/system/bin/sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "#script"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    :cond_0
    const-string v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v1, v1, 0x3

    const-string v2, "***"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_1

    if-lt v2, v1, :cond_1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private getPatchName(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x14

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0, p1}, Landroid/preference/AutoListPreference;->getPatchNameSDK21(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/preference/AutoListPreference;->getPatchNameSDK19(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPatchNameSDK19(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v1, 0x0

    const/16 v3, 0x200

    :try_start_1
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
#    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v2, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v3

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getPatchNameSDK21(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    const/16 v1, 0x200

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
#    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Landroid/preference/AutoListPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v3

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private presetFilePath()V
    .locals 2

    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit8 v1, v0, -0x4

    if-lez v1, :cond_1          # if simple, app, app-l, activity, service, receiver

    add-int/lit16 v1, v0, -0x10

    if-eqz v1, :cond_0          # if script

    add-int/lit16 v1, v0, -0x11

    if-eqz v1, :cond_0          # if script-b

    add-int/lit16 v1, v0, -0x20

    if-nez v1, :cond_1          # if not patch

    :cond_0
    new-instance v0, Landroid/preference/AutoListPreference$AsyncTask$1;

    invoke-direct {v0, p0}, Landroid/preference/AutoListPreference$AsyncTask$1;-><init>(Landroid/preference/AutoListPreference;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/preference/AutoListPreference$AsyncTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private createGenericList()V
    .locals 2

    .prologue
    new-instance v0, Landroid/preference/AutoListPreference$AsyncTask$2;

    invoke-direct {v0, p0}, Landroid/preference/AutoListPreference$AsyncTask$2;-><init>(Landroid/preference/AutoListPreference;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/preference/AutoListPreference$AsyncTask$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mLoadItems:Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Landroid/preference/AutoListPreference;->mMultiChoice:Z

    if-nez v1, :cond_0

    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v0, v0, -0x31

    if-nez v0, :cond_1          # if audio

    :cond_0
    iget-object v0, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->setASet(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->postASet(Z)V

    iget-object v2, p0, Landroid/preference/AutoListPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/preference/AutoSet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_2

    :goto_0
    iget-boolean v0, p0, Landroid/preference/AutoListPreference;->mPathListPersistend:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getASet()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-direct {p0}, Landroid/preference/AutoListPreference;->stopMedia()V

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mLoadItems:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mLoadItems:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/preference/AutoListPreference;->mLoadItems:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-boolean v1, p0, Landroid/preference/AutoListPreference;->mCreateListCancel:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mLoadItems:Landroid/os/AsyncTask;

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->removeRefreshProgressDelayed()V

    :cond_0
    return-void
.end method

.method private runSH([Ljava/lang/String;Z)V
    .locals 5
    .param p1, "cmdLineArr"   # [Ljava/lang/String;
    .param p2, "mount"        # Z

    .prologue
    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "/system/bin/sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "su\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_0

    const-string v2, "mount -o rw,remount /system\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    array-length v4, p1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FF RUNSH LOG ERROR: "

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public prepareFilePaths()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget v0, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v1, v0, -0x10

    if-eqz v1, :cond_0          # if script

    add-int/lit16 v1, v0, -0x11

    if-eqz v1, :cond_0          # if script-b

    add-int/lit16 v1, v0, -0x20

    if-nez v1, :cond_3          # if not patch

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Landroid/preference/AutoSet$Utils;->sPathListArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/AutoSet$Utils;->setBootScriptsPath(Landroid/content/Context;)V

    sget-object v1, Landroid/preference/AutoSet$Utils;->sBootScriptsPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "/system"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v1}, Landroid/preference/AutoListPreference;->createPathCmdList(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_1
    const-string v1, "/system/vendor/overlay/"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v1}, Landroid/preference/AutoListPreference;->createPathCmdList(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-direct {p0, v1, v4}, Landroid/preference/AutoListPreference;->runSH([Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method private static createPathCmdList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    .prologue
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "mkdir "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "chmod -R 755 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDestinationPathFileNameList()Ljava/util/ArrayList;
    .locals 6

    const/4 v0, 0x0

    sget-object v2, Landroid/preference/AutoSet$Utils;->sBootScriptsPath:Ljava/lang/String;

    iget v1, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v3, v1, -0x10

    if-eqz v3, :cond_0          # if script

    add-int/lit16 v3, v1, -0x11

    if-eqz v3, :cond_0          # if script-b

    const-string v2, "/system/vendor/overlay/"

    add-int/lit16 v3, v1, -0x20

    if-nez v3, :cond_2          # if patch

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iput-object v0, p0, Landroid/preference/AutoListPreference;->mDestinationFileNameList:Ljava/util/ArrayList;

    return-object v0

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private getSourcePathFileNameList()Ljava/util/ArrayList;
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iput-object v0, p0, Landroid/preference/AutoListPreference;->mSourceFileNameList:Ljava/util/ArrayList;

    return-object v0

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private getSourcePathFileNameList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iput-object v0, p0, Landroid/preference/AutoListPreference;->mSourceFileNameList:Ljava/util/ArrayList;

    return-object v0

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public updateValueToDestinationPath()V
    .locals 7

    .prologue
    iget-object v0, p0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/preference/AutoListPreference;->getPathFromKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_0
    invoke-direct {p0}, Landroid/preference/AutoListPreference;->getDestinationPathFileNameList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .local v4, "len$dst":I
    invoke-direct {p0}, Landroid/preference/AutoListPreference;->getSourcePathFileNameList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    .local v3, "i$dst":I
    :goto_0
    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/preference/AutoListPreference;->mPathList:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->valuePathToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Landroid/preference/AutoSet$Utils;->putString(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)Z

#    iput-object v0, p0, Landroid/preference/AutoListPreference;->mValue:Ljava/lang/String;

#    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->setValue(Ljava/lang/String;)V

#    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->handleOutDependents(Ljava/lang/String;)Z

#    move-result v0

#    invoke-super {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

#    invoke-direct {p0, v0}, Landroid/preference/AutoListPreference;->getSummary(Z)Ljava/lang/String;

#    move-result-object v0

#    invoke-virtual {p0, v0}, Landroid/preference/AutoListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :cond_5
    const-string v0, ""

    goto :goto_1
.end method

.method private handleFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/preference/AutoSet$Utils;->sBootScriptsPath:Ljava/lang/String;

    iget v1, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit8 v2, v1, -0x4

    if-lez v2, :cond_5          # if simple, app, app-l, activity, service, receiver

    add-int/lit16 v2, v1, -0x10

    if-eqz v2, :cond_0          # if script

    add-int/lit16 v2, v1, -0x11

    if-eqz v2, :cond_0          # if script-b

    const-string v0, "/system/vendor/overlay/"

    add-int/lit16 v2, v1, -0x20

    if-nez v2, :cond_5          # if not patch

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/preference/AutoListPreference;->mSourceFileNameList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mDestinationFileNameList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, p1, v5}, Landroid/preference/AutoListPreference;->checkMatchesValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v6, "rm "

    invoke-direct {v7, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v6, "cp "

    invoke-direct {v7, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v6, "chmod 755 "

    invoke-direct {v7, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "/system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/preference/AutoListPreference;->runSH([Ljava/lang/String;Z)V

    :cond_5
    return-void

    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private checkMatchesValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "value"            # Ljava/lang/String;
    .param p2, "compareString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private valuePathToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"  # Ljava/lang/String;

    .prologue
    move-object v0, p1

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mTypeValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "file":Ljava/io/File;
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private valueUriToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"  # Ljava/lang/String;

    .prologue
    move-object v0, p1

    iget-object v1, p0, Landroid/preference/AutoListPreference;->mTypeValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/preference/AutoListPreference$DocumentUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private checkFileType(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"  # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v3, p0, Landroid/preference/AutoListPreference;->mListType:I

    add-int/lit16 v4, v3, -0x10

    if-eqz v4, :cond_2          # if script

    add-int/lit16 v4, v3, -0x11

    if-eqz v4, :cond_2          # if script-b

    add-int/lit16 v4, v3, -0x12

    if-eqz v4, :cond_2          # if script-o

    add-int/lit16 v4, v3, -0x13

    if-eqz v4, :cond_2          # if script-n

    add-int/lit16 v4, v3, -0x20

    if-eqz v4, :cond_3          # if patch

    add-int/lit16 v4, v3, -0x40

    if-eqz v4, :cond_0          # if file

    :try_start_1
    invoke-static {v2}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v2

    iget v2, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit16 v4, v3, -0x30

    if-eqz v4, :cond_4          # if image

    add-int/lit16 v4, v3, -0x31

    if-eqz v4, :cond_5          # if audio

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-direct {p0, v1}, Landroid/preference/AutoListPreference;->getScriptName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Landroid/preference/AutoListPreference;->getPatchName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    goto :goto_1

    :cond_5
    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method