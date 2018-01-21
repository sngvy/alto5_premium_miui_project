.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$BaseNotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;
    }
.end annotation


# static fields
.field public static EDIT_MODE_ALPHA:F


# instance fields
.field protected mAreaInfo1:Landroid/widget/TextView;

.field protected mAreaInfo2:Landroid/widget/TextView;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected mContextForUser:Landroid/content/Context;

.field public mCurrentUserId:I

.field protected mCurrentlyIntrudingNotification:Lcom/android/systemui/statusbar/ExpandedNotification;

.field private mDeviceProvisioned:Z

.field protected mDisplay:Landroid/view/Display;

.field protected mDockedStackBounds:Landroid/graphics/Rect;

.field protected mFullscreenStackBounds:Landroid/graphics/Rect;

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

.field protected mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field public mInEditMode:Z

.field private mLockscreenPublicMode:Z

.field protected mNotificationBlamePopup:Landroid/widget/PopupMenu;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field protected mNotificationKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotificationPaddingLeft:I

.field protected mNotificationPaddingRight:I

.field protected mNotificationSession:Lcom/android/systemui/statusbar/phone/rank/ISession;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPanelSlightlyVisible:Z

.field protected mPendingKey:Landroid/os/IBinder;

.field protected mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private mProvisioningObserver:Landroid/database/ContentObserver;

.field protected mRecentsPanel:Landroid/view/View;

.field protected mSecurityManager:Lmiui/security/SecurityManager;

.field protected mShowLockscreenNotifications:Z

.field protected mSwitches:[I

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/android/systemui/statusbar/BaseStatusBar;->EDIT_MODE_ALPHA:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 192
    new-instance v0, Lcom/android/systemui/statusbar/phone/rank/NotificationSession;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/rank/NotificationSession;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationSession:Lcom/android/systemui/statusbar/phone/rank/ISession;

    .line 206
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 223
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    .line 277
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 332
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFullscreenStackBounds:Landroid/graphics/Rect;

    .line 333
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 720
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 1345
    iput v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->checkActionClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendRemoveFoldEvents()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private checkActionClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 249
    .local v6, "p":Landroid/view/ViewParent;
    const/4 v7, 0x0

    .line 250
    .local v7, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_0
    if-eqz v6, :cond_0

    .line 251
    instance-of v8, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_3

    move-object v7, v6

    .line 252
    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 257
    :cond_0
    if-eqz v7, :cond_2

    .line 258
    new-instance v1, Lcom/android/systemui/analytics/ClickEvent;

    invoke-direct {v1}, Lcom/android/systemui/analytics/ClickEvent;-><init>()V

    .line 259
    .local v1, "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotification()Lcom/android/systemui/statusbar/ExpandedNotification;

    move-result-object v3

    .line 260
    .local v3, "expandedNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v8

    iput-object v8, v1, Lcom/android/systemui/analytics/ClickEvent;->notificationEvent:Lcom/android/systemui/analytics/NotificationEvent;

    .line 261
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandedNotification;->isFold()Z

    move-result v5

    .line 262
    .local v5, "isFold":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/NotificationData;->size(Z)I

    move-result v0

    .line 263
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 264
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v8, v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(IZ)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 265
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v8, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    if-ne v8, v3, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPanelView()Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->getNotificationContainer()Landroid/view/ViewGroup;

    move-result-object v8

    iget-object v9, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lcom/android/systemui/analytics/ClickEvent;->index:I

    .line 267
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationSession:Lcom/android/systemui/statusbar/phone/rank/ISession;

    invoke-interface {v8, v2}, Lcom/android/systemui/statusbar/phone/rank/ISession;->getSessionIndex(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v8

    iput v8, v1, Lcom/android/systemui/analytics/ClickEvent;->sessionIndex:I

    .line 271
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    const-string v8, "statusbar"

    iput-object v8, v1, Lcom/android/systemui/analytics/ClickEvent;->location:Ljava/lang/String;

    .line 272
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/systemui/analytics/ClickEvent;->groupNotification:Z

    .line 273
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 275
    .end local v0    # "N":I
    .end local v1    # "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    .end local v3    # "expandedNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    .end local v4    # "i":I
    .end local v5    # "isFold":Z
    :cond_2
    return-void

    .line 255
    :cond_3
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_0

    .line 263
    .restart local v0    # "N":I
    .restart local v1    # "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    .restart local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v3    # "expandedNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    .restart local v4    # "i":I
    .restart local v5    # "isFold":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private formatMediaContentView(Landroid/view/View;)V
    .locals 8
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 597
    invoke-static {p1}, Lcom/android/systemui/SystemUICompatibility;->getMediaActionGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 598
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v5, :cond_1

    .line 599
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 600
    .local v1, "childCount":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x70a004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 601
    .local v0, "childColor":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 602
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 603
    .local v4, "view":Landroid/view/View;
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 604
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 605
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 601
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    .end local v0    # "childColor":I
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static getRowIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "en"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    const/4 v10, 0x1

    .line 852
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 853
    .local v3, "n":Landroid/app/Notification;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 854
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 855
    .local v7, "userId":I
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UsbNotificationController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/UsbNotificationController;

    move-result-object v6

    .line 856
    .local v6, "usbNotificationController":Lcom/android/systemui/statusbar/policy/UsbNotificationController;
    iget-object v8, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    iget-boolean v8, v8, Landroid/app/MiuiNotification;->customizedIcon:Z

    if-eqz v8, :cond_0

    .line 857
    invoke-static {p0, v3}, Lcom/android/systemui/CompatibilityM;->getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 858
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 859
    invoke-static {v0, v10}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    .line 891
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v8

    .line 861
    :cond_0
    const-string v8, "com.android.incallui"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "com.android.phone"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "com.android.server.telecom"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 863
    :cond_1
    const-string v8, "com.android.contacts.activities.TwelveKeyDialer.png"

    invoke-static {p0, v8}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    goto :goto_0

    .line 865
    :cond_2
    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/policy/UsbNotificationController;->isUsbNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 866
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Lcom/android/systemui/statusbar/policy/UsbNotificationController;->getChargingIconRes()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 867
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 868
    invoke-static {v0, v10}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    goto :goto_0

    .line 870
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isImeNotificaion(Lcom/android/systemui/statusbar/ExpandedNotification;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 871
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x702009d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 872
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 873
    invoke-static {v0, v10}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    goto :goto_0

    .line 875
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    sget-boolean v8, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v8, :cond_5

    const-string v8, "com.chinamobile.cmccwifi"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v8}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 879
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 880
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    if-gez v7, :cond_6

    .line 881
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v7

    .line 883
    :cond_6
    const/4 v8, 0x0

    invoke-interface {v5, v4, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 884
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_7

    .line 885
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {p0, v2, v8}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 887
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .line 888
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "StatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed looking up ApplicationInfo for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method protected static isImeNotificaion(Lcom/android/systemui/statusbar/ExpandedNotification;)Z
    .locals 3
    .param p0, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandedNotification;->getId()I

    move-result v0

    .line 1370
    .local v0, "id":I
    const-string v1, "android"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x1040531

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveActionToRightIfNeed(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)V
    .locals 10
    .param p1, "expanded"    # Landroid/view/View;
    .param p2, "largeView"    # Landroid/view/View;
    .param p3, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    const v9, 0x1020335

    const/16 v8, 0x8

    .line 1285
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "miui.showAction"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1286
    .local v4, "showRightAction":Z
    if-eqz v4, :cond_2

    .line 1287
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1288
    .local v0, "action":Landroid/widget/TextView;
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1289
    .local v3, "largeAction":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 1290
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1291
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7020002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1293
    new-instance v6, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1301
    const v6, 0x1020083

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1302
    .local v5, "when":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1303
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1305
    :cond_0
    const v6, 0x102033d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1306
    .local v1, "chronometer":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1307
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1309
    :cond_1
    const v6, 0x1020340

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1310
    .local v2, "info":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 1311
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    .end local v0    # "action":Landroid/widget/TextView;
    .end local v1    # "chronometer":Landroid/view/View;
    .end local v2    # "info":Landroid/view/View;
    .end local v3    # "largeAction":Landroid/widget/TextView;
    .end local v5    # "when":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private sendRemoveFoldEvents()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 440
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->size(Z)I

    move-result v0

    .line 441
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 442
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(IZ)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 443
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    new-instance v3, Lcom/android/systemui/analytics/RemoveEvent;

    invoke-direct {v3}, Lcom/android/systemui/analytics/RemoveEvent;-><init>()V

    .line 445
    .local v3, "removeEvent":Lcom/android/systemui/analytics/RemoveEvent;
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/analytics/RemoveEvent;->notificationEvent:Lcom/android/systemui/analytics/NotificationEvent;

    .line 446
    sub-int v4, v0, v2

    iput v4, v3, Lcom/android/systemui/analytics/RemoveEvent;->index:I

    .line 447
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationSession:Lcom/android/systemui/statusbar/phone/rank/ISession;

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/phone/rank/ISession;->getSessionIndex(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/analytics/RemoveEvent;->sessionIndex:I

    .line 448
    const-string v4, "statusbar"

    iput-object v4, v3, Lcom/android/systemui/analytics/RemoveEvent;->location:Ljava/lang/String;

    .line 449
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/analytics/RemoveEvent;->groupNotification:Z

    .line 450
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 441
    .end local v3    # "removeEvent":Lcom/android/systemui/analytics/RemoveEvent;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 458
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 460
    return-void
.end method


# virtual methods
.method protected addNotificationViews(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1060
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->isFold()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    return-object v0
.end method

.method protected addNotificationViews(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 9
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;
    .param p3, "fold"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1066
    const-string v6, "StatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNotificationViews(key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", notification="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-instance v1, Lcom/android/systemui/analytics/ArriveEvent;

    invoke-direct {v1}, Lcom/android/systemui/analytics/ArriveEvent;-><init>()V

    .line 1069
    .local v1, "event":Lcom/android/systemui/analytics/ArriveEvent;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/analytics/ArriveEvent;->notificationEvent:Lcom/android/systemui/analytics/NotificationEvent;

    .line 1070
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1073
    new-instance v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1076
    .local v3, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1078
    invoke-static {p2}, Lcom/android/systemui/CompatibilityM;->createStatusBarIcon(Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/ExpandedIcon;

    move-result-object v2

    .line 1079
    .local v2, "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/systemui/statusbar/ExpandedIcon;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1080
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, p2, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Ljava/lang/String;)V

    move-object v3, v5

    .line 1106
    .end local v3    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_0
    return-object v3

    .line 1084
    .restart local v3    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, p2, v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1085
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPanelView()Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelView;->getNotificationContainer()Landroid/view/ViewGroup;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1086
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, p2, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Ljava/lang/String;)V

    move-object v3, v5

    .line 1088
    goto :goto_0

    .line 1091
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationData;->indexOf(Landroid/os/IBinder;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1093
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    .line 1100
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUserId()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/applock/AppLockHelper;->getCurrentUserIdIfNeeded(II)I

    move-result v4

    .line 1101
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lcom/android/systemui/statusbar/phone/applock/AppLockHelper;->shouldShowPublicNotificationByAppLock(Landroid/content/Context;Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    .line 1104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method public addPublicNotificationView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "row"    # Landroid/view/View;

    .prologue
    .line 718
    return-void
.end method

.method protected applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V
    .locals 7
    .param p1, "sbn"    # Lcom/android/systemui/statusbar/ExpandedNotification;
    .param p2, "expandedView"    # Landroid/view/View;

    .prologue
    .line 823
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 824
    .local v1, "icon":Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 826
    invoke-static {p2}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 827
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/CompatibilityM;->getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 828
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 829
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 834
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 835
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 837
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 838
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 839
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 840
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 841
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    return-void

    .line 832
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getRowIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 844
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPaddingLeft:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPaddingRight:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 522
    const/16 v0, 0x3ff

    .line 523
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 524
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 525
    return-void
.end method

.method protected clearNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V
    .locals 1
    .param p1, "sbn"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {p1, v0}, Lcom/android/systemui/SystemUICompatibility;->onNotificationClear(Lcom/android/systemui/statusbar/ExpandedNotification;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1041
    return-void
.end method

.method protected closeFold(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 400
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method public dismissIntruder()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method protected dismissNavGuideDialog()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    .line 499
    :cond_0
    return-void
.end method

.method protected doPendingJob()V
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->doPendingJob(Z)V

    .line 962
    return-void
.end method

.method protected doPendingJob(Z)V
    .locals 17
    .param p1, "floatNotification"    # Z

    .prologue
    .line 965
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPendingKey:Landroid/os/IBinder;

    if-nez v14, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPendingKey:Landroid/os/IBinder;

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    .line 969
    .local v5, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v5, :cond_0

    .line 972
    iget-object v12, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    .line 973
    .local v12, "sbn":Lcom/android/systemui/statusbar/ExpandedNotification;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-object v3, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 974
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-object v6, v14, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 975
    .local v6, "fullScreenIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_5

    move-object v11, v3

    .line 976
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    iget-object v14, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationType()I

    move-result v14

    sget v15, Lcom/android/systemui/statusbar/ExpandedNotification;->KEYGUARD_NOTIFICATION_TYPE:I

    if-ne v14, v15, :cond_6

    const/4 v8, 0x1

    .line 977
    .local v8, "keyguardNotification":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPanelView()Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/PanelView;->getNotificationContainer()Landroid/view/ViewGroup;

    move-result-object v14

    iget-object v15, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v14

    add-int/lit8 v7, v14, 0x1

    .line 978
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationSession:Lcom/android/systemui/statusbar/phone/rank/ISession;

    invoke-interface {v14, v5}, Lcom/android/systemui/statusbar/phone/rank/ISession;->getSessionIndex(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v13

    .line 979
    .local v13, "sessionIndex":I
    if-eqz v11, :cond_3

    .line 980
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 981
    .local v10, "overlay":Landroid/content/Intent;
    const-string v14, "com.xiaomi.xmsf"

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 982
    const-string v14, "systemui_session_click_index"

    invoke-virtual {v10, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    const-string v14, "systemui_click_index"

    invoke-virtual {v10, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 984
    const-string v14, "systemui_click_type"

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationType()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 987
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15, v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v15, "keyguard"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 995
    .local v9, "kgm":Landroid/app/KeyguardManager;
    if-eqz v9, :cond_3

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 998
    .end local v9    # "kgm":Landroid/app/KeyguardManager;
    .end local v10    # "overlay":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {v12, v14}, Lcom/android/systemui/SystemUICompatibility;->onNotificationClick(Lcom/android/systemui/statusbar/ExpandedNotification;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1000
    if-eqz v5, :cond_4

    .line 1001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->clickTime:J

    .line 1003
    new-instance v2, Lcom/android/systemui/analytics/ClickEvent;

    invoke-direct {v2}, Lcom/android/systemui/analytics/ClickEvent;-><init>()V

    .line 1004
    .local v2, "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v14

    iput-object v14, v2, Lcom/android/systemui/analytics/ClickEvent;->notificationEvent:Lcom/android/systemui/analytics/NotificationEvent;

    .line 1005
    iput v7, v2, Lcom/android/systemui/analytics/ClickEvent;->index:I

    .line 1006
    iput v13, v2, Lcom/android/systemui/analytics/ClickEvent;->sessionIndex:I

    .line 1007
    move/from16 v0, p1

    iput-boolean v0, v2, Lcom/android/systemui/analytics/ClickEvent;->floatNotification:Z

    .line 1008
    iput-boolean v8, v2, Lcom/android/systemui/analytics/ClickEvent;->keyguardNotification:Z

    .line 1009
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v14

    iput-boolean v14, v2, Lcom/android/systemui/analytics/ClickEvent;->groupNotification:Z

    .line 1010
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v14

    invoke-virtual {v14, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Lcom/android/systemui/AnalyticsHelper;->trackNotificationClick(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1013
    .end local v2    # "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPendingKey:Landroid/os/IBinder;

    goto/16 :goto_0

    .end local v7    # "index":I
    .end local v8    # "keyguardNotification":Z
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v13    # "sessionIndex":I
    :cond_5
    move-object v11, v6

    .line 975
    goto/16 :goto_1

    .line 976
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 988
    .restart local v7    # "index":I
    .restart local v8    # "keyguardNotification":Z
    .restart local v10    # "overlay":Landroid/content/Intent;
    .restart local v13    # "sessionIndex":I
    :catch_0
    move-exception v4

    .line 990
    .local v4, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v14, "StatusBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Sending contentIntent failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public exitFloatingNotification(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 1318
    return-void
.end method

.method protected expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "expand"    # Z

    .prologue
    .line 1112
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x707000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1114
    .local v1, "rowHeight":I
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1115
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 1117
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1122
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    return p2

    .line 1120
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected getContextForUser(I)Landroid/content/Context;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 313
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :cond_0
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract getExpandedViewMaxHeight()I
.end method

.method protected getNotificationLongClicker()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 463
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected abstract getPanelView()Lcom/android/systemui/statusbar/phone/PanelView;
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "n"    # Lcom/android/systemui/statusbar/ExpandedNotification;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1034
    const-string v0, "StatusBar"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->clearNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1037
    return-void
.end method

.method public inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
    .locals 24
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "floatNotification"    # Z

    .prologue
    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x707000a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 614
    .local v15, "minHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7070018

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 616
    .local v14, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z

    .line 617
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    move-object/from16 v19, v0

    .line 618
    .local v19, "sbn":Lcom/android/systemui/statusbar/ExpandedNotification;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/CompatibilityN;->getContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v16

    .line 619
    .local v16, "oneU":Landroid/widget/RemoteViews;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/CompatibilityN;->getBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 620
    .local v12, "large":Landroid/widget/RemoteViews;
    if-nez v16, :cond_0

    .line 621
    const/16 v21, 0x0

    .line 710
    :goto_0
    return v21

    .line 625
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 627
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v21, 0x703002f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 630
    .local v18, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPanelView()Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/PanelView;->getNotificationContainer()Landroid/view/ViewGroup;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRowLayout(Landroid/view/ViewGroup;)V

    .line 631
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setService(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 634
    new-instance v21, Lcom/android/systemui/statusbar/policy/FilterInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/FilterInfo;-><init>(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setPackageInfo(Lcom/android/systemui/statusbar/policy/FilterInfo;)V

    .line 635
    const v21, 0x7080006

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    .line 636
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/view/View;

    move-result-object v20

    .line 638
    .local v20, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x70d0046

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 644
    const v21, 0x7080025

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 645
    .local v4, "content":Landroid/view/ViewGroup;
    const v21, 0x7080119

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 649
    .local v3, "adaptive":Landroid/view/ViewGroup;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 650
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v9, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 651
    .local v9, "fullScreenIntent":Landroid/app/PendingIntent;
    if-eqz v5, :cond_6

    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Landroid/view/View$OnClickListener;

    move-result-object v13

    .line 653
    .local v13, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    const v21, 0x7080008

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 657
    const/4 v8, 0x0

    .line 658
    .local v8, "expandedOneU":Landroid/view/View;
    const/4 v7, 0x0

    .line 660
    .local v7, "expandedLarge":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/CompatibilityM;->getPackageContext(Landroid/content/Context;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v8

    .line 661
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 663
    invoke-static {v8}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 664
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 666
    :cond_1
    if-eqz v12, :cond_3

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/CompatibilityM;->getPackageContext(Landroid/content/Context;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v3, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v7

    .line 669
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v7, v0, v1, v2}, Lcom/android/systemui/CompatibilityN;->wrapExpandedLarge(Landroid/view/View;Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 671
    invoke-static {v7}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 672
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 674
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->moveActionToRightIfNeed(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :cond_3
    if-eqz v8, :cond_4

    .line 684
    new-instance v17, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    .local v17, "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 687
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 688
    move-object/from16 v0, v17

    invoke-virtual {v3, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 691
    .end local v17    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    :cond_4
    if-eqz v7, :cond_5

    .line 692
    new-instance v17, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    .restart local v17    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    add-int/lit8 v21, v15, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 695
    move-object/from16 v0, v17

    iput v14, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 696
    move-object/from16 v0, v17

    invoke-virtual {v3, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 699
    .end local v17    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    :cond_5
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDrawingCacheEnabled(Z)V

    .line 701
    const v22, 0x7080003

    if-eqz v12, :cond_7

    const/16 v21, 0x1

    :goto_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    .line 702
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 703
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 704
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 705
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 706
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setLargeView(Landroid/view/View;)V

    .line 708
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addPublicNotificationView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 709
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInEditMode:Z

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->switchToEditModeIfNeeded(Z)V

    .line 710
    const/16 v21, 0x1

    goto/16 :goto_0

    .end local v7    # "expandedLarge":Landroid/view/View;
    .end local v8    # "expandedOneU":Landroid/view/View;
    .end local v13    # "listener":Landroid/view/View$OnClickListener;
    .restart local v5    # "contentIntent":Landroid/app/PendingIntent;
    :cond_6
    move-object v5, v9

    .line 651
    goto/16 :goto_1

    .line 677
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v7    # "expandedLarge":Landroid/view/View;
    .restart local v8    # "expandedOneU":Landroid/view/View;
    .restart local v13    # "listener":Landroid/view/View$OnClickListener;
    :catch_0
    move-exception v6

    .line 678
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandedNotification;->getId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 679
    .local v10, "ident":Ljava/lang/String;
    const-string v21, "StatusBar"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "couldn\'t inflate view for notification "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 701
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "ident":Ljava/lang/String;
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_2
.end method

.method protected isCurrentProfile(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1359
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isNotificationForCurrentProfiles(Lcom/android/systemui/statusbar/ExpandedNotification;)Z
    .locals 3
    .param p1, "n"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1349
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1350
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUserId()I

    move-result v0

    .line 1355
    .local v0, "notificationUserId":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public makeClicker(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "sbn"    # Lcom/android/systemui/statusbar/ExpandedNotification;
    .param p3, "floatNotification"    # Z

    .prologue
    .line 916
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$BaseNotificationClicker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$BaseNotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/ExpandedNotification;Z)V

    return-object v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 1343
    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 515
    const/16 v0, 0x3fe

    .line 516
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 517
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 518
    return-void
.end method

.method protected abstract registerStatusBarAndAddNotifications()V
.end method

.method protected release()V
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1339
    return-void
.end method

.method protected removeNotificationViews(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 5
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 1044
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotificationViews(key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1046
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 1047
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotification for unknown key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v0, 0x0

    .line 1055
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    return-object v0

    .line 1051
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1052
    .local v1, "rowParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1053
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method protected resetNotificationPile()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 814
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    .line 815
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 816
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 817
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    .line 818
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setUserExpanded(Z)Z

    .line 815
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    return-void
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0
    .param p1, "publicMode"    # Z

    .prologue
    .line 727
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 728
    return-void
.end method

.method protected showNavGuideDialog(Z)V
    .locals 0
    .param p1, "fromProvision"    # Z

    .prologue
    .line 242
    return-void
.end method

.method protected showNotificationEvenIfUnprovisioned(Lcom/android/systemui/statusbar/ExpandedNotification;)Z
    .locals 1
    .param p1, "sbn"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1324
    invoke-static {p1}, Lcom/android/systemui/SystemUICompatibility;->showNotificationEvenIfUnprovisioned(Lcom/android/systemui/statusbar/ExpandedNotification;)Z

    move-result v0

    return v0
.end method

.method protected showRawNotification(Landroid/view/View;)Z
    .locals 12
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 768
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData;->getIsGutsAnimate(Landroid/view/View;)Z

    move-result v4

    .line 769
    .local v4, "isAnimate":Z
    const v6, 0x708005c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 770
    .local v3, "guts":Landroid/view/View;
    const v6, 0x7080119

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 771
    .local v0, "adaptive":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 772
    if-eqz v0, :cond_0

    if-nez v4, :cond_0

    .line 773
    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/NotificationData;->setGutsAnimate(Landroid/view/View;Z)Z

    .line 774
    sget-object v6, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 775
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 776
    sget-object v6, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 777
    .local v2, "anim2":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 778
    new-instance v6, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v6, p0, v3, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 785
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 786
    new-instance v6, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 795
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "anim2":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 774
    nop

    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 776
    :array_1
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method

.method public showRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1398
    const/16 v0, 0x3fb

    .line 1399
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1400
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1401
    return-void

    :cond_0
    move v3, v2

    .line 1400
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected showRecents(ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    .line 1403
    return-void
.end method

.method public start()V
    .locals 13

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerAutoSetReceiver()V
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 335
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 336
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getContextForUser(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContextForUser:Landroid/content/Context;

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v12}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 350
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 354
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationKeys:Ljava/util/ArrayList;

    .line 356
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->registerCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 359
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBinders:Ljava/util/ArrayList;

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerStatusBarAndAddNotifications()V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    aget v0, v0, v12

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(I)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    aget v1, v0, v11

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    const/4 v2, 0x7

    aget v2, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    const/16 v3, 0x8

    aget v3, v0, v3

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDockedStackBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-eqz v0, :cond_2

    move v0, v11

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    if-eqz v0, :cond_3

    move v0, v11

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {p0, v0, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHardKeyboardStatus(ZZ)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v7

    .line 377
    .local v7, "N":I
    const/4 v10, 0x0

    .line 378
    .local v10, "viewIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v7, :cond_5

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v9

    .line 380
    .local v9, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v9, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/ExpandedIcon;

    invoke-direct {v1, v9}, Lcom/android/systemui/statusbar/ExpandedIcon;-><init>(Lcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-virtual {p0, v0, v8, v10, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/systemui/statusbar/ExpandedIcon;)V

    .line 382
    add-int/lit8 v10, v10, 0x1

    .line 378
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v7    # "N":I
    .end local v8    # "i":I
    .end local v9    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v10    # "viewIndex":I
    :cond_2
    move v0, v12

    .line 368
    goto :goto_0

    :cond_3
    move v0, v12

    .line 373
    goto :goto_1

    :cond_4
    move v11, v12

    goto :goto_2

    .line 396
    .restart local v7    # "N":I
    .restart local v8    # "i":I
    .restart local v10    # "viewIndex":I
    :cond_5
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 1379
    :cond_0
    return-void
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x3fd

    .line 509
    .local v0, "msg":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 510
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 511
    return-void

    .line 507
    .end local v0    # "msg":I
    :cond_0
    const/16 v0, 0x3fc

    goto :goto_0
.end method

.method public toggleSplitScreen()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1383
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleSplitScreenMode(II)V

    .line 1384
    return-void
.end method

.method protected abstract toggleSplitScreenMode(II)V
.end method

.method protected updateCurrentProfilesCache()V
    .locals 0

    .prologue
    .line 1363
    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method protected updateLockscreenNotificationSetting()V
    .locals 0

    .prologue
    .line 1366
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;)V
    .locals 24
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v15

    .line 1140
    .local v15, "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    move-object/from16 v17, v0

    .line 1142
    .local v17, "oldNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/analytics/NotificationEvent;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/analytics/NotificationEvent;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/analytics/NotificationEvent;->getCreateTimeStamp()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/android/systemui/analytics/NotificationEvent;->setCreateTimeStamp(J)V

    .line 1146
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v14

    .line 1147
    .local v14, "oldContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v13

    .line 1149
    .local v13, "oldBigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lcom/android/systemui/CompatibilityN;->cacheContentViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/Context;Landroid/app/Notification;)Z

    .line 1150
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 1151
    .local v7, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 1170
    .local v4, "bigContentView":Landroid/widget/RemoteViews;
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v21

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/4 v8, 0x1

    .line 1176
    .local v8, "contentsUnchanged":Z
    :goto_0
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    if-nez v21, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_8

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_8

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v21

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    :cond_1
    const/4 v5, 0x1

    .line 1184
    .local v5, "bigContentsUnchanged":Z
    :goto_1
    const/16 v18, 0x0

    .line 1185
    .local v18, "orderUnchanged":Z
    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    .line 1186
    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    .line 1187
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/NotificationData;->indexOf(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v16

    .line 1190
    .local v16, "oldIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    .line 1194
    .end local v16    # "oldIndex":I
    :cond_2
    :goto_2
    const/16 v19, 0x0

    .line 1195
    .local v19, "updateOldResult":Z
    if-eqz v18, :cond_c

    .line 1200
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/systemui/CompatibilityM;->getPackageContext(Landroid/content/Context;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/content/Context;

    move-result-object v21

    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1201
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1202
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 1204
    :cond_3
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 1205
    if-eqz v4, :cond_5

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/systemui/CompatibilityM;->getPackageContext(Landroid/content/Context;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1208
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1209
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 1211
    :cond_4
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v22

    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->moveActionToRightIfNeed(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1212
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 1215
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1216
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Landroid/view/View$OnClickListener;

    move-result-object v11

    .line 1217
    .local v11, "listener":Landroid/view/View$OnClickListener;
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInEditMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->switchToEditModeIfNeeded(Z)V

    .line 1221
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/CompatibilityM;->createStatusBarIcon(Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/ExpandedIcon;

    move-result-object v10

    .line 1222
    .local v10, "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setExpandedNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1223
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/systemui/statusbar/ExpandedIcon;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 1224
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Couldn\'t update icon: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Ljava/lang/String;)V

    .line 1282
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v10    # "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    .end local v11    # "listener":Landroid/view/View$OnClickListener;
    :cond_6
    :goto_3
    return-void

    .line 1170
    .end local v5    # "bigContentsUnchanged":Z
    .end local v8    # "contentsUnchanged":Z
    .end local v18    # "orderUnchanged":Z
    .end local v19    # "updateOldResult":Z
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1176
    .restart local v8    # "contentsUnchanged":Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1191
    .restart local v5    # "bigContentsUnchanged":Z
    .restart local v16    # "oldIndex":I
    .restart local v18    # "orderUnchanged":Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 1228
    .end local v16    # "oldIndex":I
    .restart local v6    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v10    # "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    .restart local v11    # "listener":Landroid/view/View$OnClickListener;
    .restart local v19    # "updateOldResult":Z
    :cond_a
    iget-boolean v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1229
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    .line 1231
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    const/16 v19, 0x1

    .line 1239
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v10    # "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    .end local v11    # "listener":Landroid/view/View$OnClickListener;
    :cond_c
    :goto_4
    if-nez v19, :cond_e

    .line 1243
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->userExpanded()Z

    move-result v20

    .line 1244
    .local v20, "wasExpanded":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1245
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    .line 1247
    .local v12, "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v12, :cond_6

    .line 1250
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->addTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->addTime:J

    .line 1251
    iget v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->updateTimes:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->updateTimes:I

    .line 1252
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    .line 1254
    iget-boolean v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->isLastSeen:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->isLastSeen:Z

    .line 1255
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    .line 1256
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->totalExposeTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->totalExposeTime:J

    .line 1257
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    .line 1258
    if-eqz v20, :cond_d

    .line 1259
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    .line 1260
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setUserExpanded(Z)Z

    .line 1262
    :cond_d
    iget-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotification()V

    .line 1267
    .end local v12    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v20    # "wasExpanded":Z
    :cond_e
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/view/View;

    .line 1270
    const/16 v21, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_3

    .line 1234
    :catch_0
    move-exception v9

    .line 1235
    .local v9, "e":Ljava/lang/RuntimeException;
    const-string v21, "StatusBar"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Couldn\'t reapply views for package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method protected abstract updateNotificationIcons()V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/view/View;
    .locals 2
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 403
    const v1, 0x7080114

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 404
    .local v0, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandedNotification;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :goto_0
    return-object v0

    .line 434
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePublicNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "ent"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method protected visibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1025
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 588
    return-void
.end method

.method public registerAutoSetReceiver()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "ffx.intent.action.GLOBAL_BOOT_SCRIPTS_PATH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lfreeflax/systemui/AutoSet$Receiver;

    invoke-direct {v2}, Lfreeflax/systemui/AutoSet$Receiver;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v3, 0x18

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
