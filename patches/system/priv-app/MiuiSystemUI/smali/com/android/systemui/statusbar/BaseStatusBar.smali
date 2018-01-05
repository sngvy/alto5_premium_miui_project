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

    .line 275
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 330
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFullscreenStackBounds:Landroid/graphics/Rect;

    .line 331
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 694
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 1320
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

.method static synthetic access$200(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V
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
    const/4 v9, 0x0

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

    if-eqz v8, :cond_2

    move-object v7, v6

    .line 252
    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 257
    :cond_0
    if-eqz v7, :cond_4

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
    if-ge v4, v0, :cond_3

    .line 264
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v8, v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(IZ)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 265
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v8, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    if-ne v8, v3, :cond_1

    .line 266
    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v4

    iput v8, v1, Lcom/android/systemui/analytics/ClickEvent;->index:I

    .line 263
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 255
    .end local v0    # "N":I
    .end local v1    # "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v3    # "expandedNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    .end local v4    # "i":I
    .end local v5    # "isFold":Z
    :cond_2
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_0

    .line 269
    .restart local v0    # "N":I
    .restart local v1    # "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    .restart local v3    # "expandedNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    .restart local v4    # "i":I
    .restart local v5    # "isFold":Z
    :cond_3
    iput-boolean v9, v1, Lcom/android/systemui/analytics/ClickEvent;->floatNotification:Z

    .line 270
    iput-boolean v9, v1, Lcom/android/systemui/analytics/ClickEvent;->keyguardNotification:Z

    .line 271
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 273
    .end local v0    # "N":I
    .end local v1    # "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    .end local v3    # "expandedNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    .end local v4    # "i":I
    .end local v5    # "isFold":Z
    :cond_4
    return-void
.end method

.method private formatMediaContentView(Landroid/view/View;)V
    .locals 8
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 571
    invoke-static {p1}, Lcom/android/systemui/SystemUICompatibility;->getMediaActionGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 572
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v5, :cond_1

    .line 573
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 574
    .local v1, "childCount":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x70a0045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 575
    .local v0, "childColor":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 576
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 577
    .local v4, "view":Landroid/view/View;
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 578
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 579
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 575
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
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

    .line 827
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 828
    .local v3, "n":Landroid/app/Notification;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 829
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 830
    .local v7, "userId":I
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UsbNotificationController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/UsbNotificationController;

    move-result-object v6

    .line 831
    .local v6, "usbNotificationController":Lcom/android/systemui/statusbar/policy/UsbNotificationController;
    iget-object v8, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    iget-boolean v8, v8, Landroid/app/MiuiNotification;->customizedIcon:Z

    if-eqz v8, :cond_0

    .line 832
    invoke-static {p0, v3}, Lcom/android/systemui/CompatibilityM;->getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 833
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 834
    invoke-static {v0, v10}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    .line 866
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v8

    .line 836
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

    .line 838
    :cond_1
    const-string v8, "com.android.contacts.activities.TwelveKeyDialer.png"

    invoke-static {p0, v8}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    goto :goto_0

    .line 840
    :cond_2
    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/policy/UsbNotificationController;->isUsbNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Lcom/android/systemui/statusbar/policy/UsbNotificationController;->getChargingIconRes()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 842
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 843
    invoke-static {v0, v10}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    goto :goto_0

    .line 845
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isImeNotificaion(Lcom/android/systemui/statusbar/ExpandedNotification;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 846
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x702008c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 847
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 848
    invoke-static {v0, v10}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    goto :goto_0

    .line 850
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

    .line 854
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 855
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    if-gez v7, :cond_6

    .line 856
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v7

    .line 858
    :cond_6
    const/4 v8, 0x0

    invoke-interface {v5, v4, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 859
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_7

    .line 860
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {p0, v2, v8}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 862
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .line 863
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

    .line 866
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method protected static isImeNotificaion(Lcom/android/systemui/statusbar/ExpandedNotification;)Z
    .locals 3
    .param p0, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandedNotification;->getId()I

    move-result v0

    .line 1345
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

    .line 1260
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "miui.showAction"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1261
    .local v4, "showRightAction":Z
    if-eqz v4, :cond_2

    .line 1262
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1263
    .local v0, "action":Landroid/widget/TextView;
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1264
    .local v3, "largeAction":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 1265
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1266
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7020000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1268
    new-instance v6, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    const v6, 0x1020083

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1277
    .local v5, "when":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1278
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    :cond_0
    const v6, 0x102033d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1281
    .local v1, "chronometer":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1282
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    :cond_1
    const v6, 0x1020340

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1285
    .local v2, "info":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 1286
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    .end local v0    # "action":Landroid/widget/TextView;
    .end local v1    # "chronometer":Landroid/view/View;
    .end local v2    # "info":Landroid/view/View;
    .end local v3    # "largeAction":Landroid/widget/TextView;
    .end local v5    # "when":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 434
    return-void
.end method


# virtual methods
.method protected addNotificationViews(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1038
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->isFold()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    return-object v0
.end method

.method protected addNotificationViews(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 8
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;
    .param p3, "fold"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1044
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addNotificationViews(key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", notification="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1050
    .local v2, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1052
    invoke-static {p2}, Lcom/android/systemui/CompatibilityM;->createStatusBarIcon(Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/ExpandedIcon;

    move-result-object v1

    .line 1053
    .local v1, "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/systemui/statusbar/ExpandedIcon;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1054
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Ljava/lang/String;)V

    move-object v2, v4

    .line 1080
    .end local v2    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_0
    return-object v2

    .line 1058
    .restart local v2    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, p2, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1059
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPanelView()Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelView;->getNotificationContainer()Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1060
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Ljava/lang/String;)V

    move-object v2, v4

    .line 1062
    goto :goto_0

    .line 1065
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->indexOf(Landroid/os/IBinder;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1067
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    .line 1074
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUserId()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/applock/AppLockHelper;->getCurrentUserIdIfNeeded(II)I

    move-result v3

    .line 1075
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v3}, Lcom/android/systemui/statusbar/phone/applock/AppLockHelper;->shouldShowPublicNotificationByAppLock(Landroid/content/Context;Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    .line 1078
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method public addPublicNotificationView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "row"    # Landroid/view/View;

    .prologue
    .line 692
    return-void
.end method

.method protected applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V
    .locals 8
    .param p1, "sbn"    # Lcom/android/systemui/statusbar/ExpandedNotification;
    .param p2, "expandedView"    # Landroid/view/View;

    .prologue
    .line 797
    const v4, 0x1020006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 798
    .local v1, "icon":Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 801
    invoke-static {p2}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/CompatibilityM;->getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 803
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 804
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 809
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 810
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 812
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 813
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 814
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7070008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 815
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 816
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    return-void

    .line 807
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getRowIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 819
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPaddingLeft:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPaddingRight:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 496
    const/16 v0, 0x3ff

    .line 497
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 498
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 499
    return-void
.end method

.method protected clearNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V
    .locals 1
    .param p1, "sbn"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {p1, v0}, Lcom/android/systemui/SystemUICompatibility;->onNotificationClear(Lcom/android/systemui/statusbar/ExpandedNotification;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1025
    return-void
.end method

.method protected closeFold(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 399
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 505
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method public dismissIntruder()V
    .locals 0

    .prologue
    .line 477
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
    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    .line 473
    :cond_0
    return-void
.end method

.method protected doPendingJob()V
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->doPendingJob(Z)V

    .line 937
    return-void
.end method

.method protected doPendingJob(Z)V
    .locals 17
    .param p1, "floatNotification"    # Z

    .prologue
    .line 940
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPendingKey:Landroid/os/IBinder;

    if-nez v14, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPendingKey:Landroid/os/IBinder;

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    .line 944
    .local v5, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v5, :cond_0

    .line 947
    iget-object v12, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    .line 948
    .local v12, "sbn":Lcom/android/systemui/statusbar/ExpandedNotification;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-object v3, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 949
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-object v6, v14, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 950
    .local v6, "fullScreenIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_6

    move-object v11, v3

    .line 951
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    iget-object v14, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationType()I

    move-result v14

    sget v15, Lcom/android/systemui/statusbar/ExpandedNotification;->KEYGUARD_NOTIFICATION_TYPE:I

    if-ne v14, v15, :cond_7

    const/4 v8, 0x1

    .line 952
    .local v8, "keyguardNotification":Z
    :goto_2
    const/4 v7, 0x0

    .line 953
    .local v7, "index":I
    const/4 v13, 0x0

    .line 954
    .local v13, "sessionIndex":I
    if-eqz v5, :cond_2

    .line 955
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationSession:Lcom/android/systemui/statusbar/phone/rank/ISession;

    invoke-interface {v14, v5}, Lcom/android/systemui/statusbar/phone/rank/ISession;->getSessionIndex(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v13

    .line 956
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v14, v5}, Lcom/android/systemui/statusbar/NotificationData;->indexOffsetLast(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v7

    .line 958
    :cond_2
    if-eqz v11, :cond_4

    .line 959
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 960
    .local v10, "overlay":Landroid/content/Intent;
    const-string v14, "com.xiaomi.xmsf"

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 961
    const-string v14, "systemui_session_click_index"

    invoke-virtual {v10, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 962
    const-string v14, "systemui_click_index"

    invoke-virtual {v10, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    const-string v14, "systemui_click_type"

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationType()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 966
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15, v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v15, "keyguard"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 974
    .local v9, "kgm":Landroid/app/KeyguardManager;
    if-eqz v9, :cond_4

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 977
    .end local v9    # "kgm":Landroid/app/KeyguardManager;
    .end local v10    # "overlay":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {v12, v14}, Lcom/android/systemui/SystemUICompatibility;->onNotificationClick(Lcom/android/systemui/statusbar/ExpandedNotification;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 979
    if-eqz v5, :cond_5

    .line 980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->clickTime:J

    .line 982
    new-instance v2, Lcom/android/systemui/analytics/ClickEvent;

    invoke-direct {v2}, Lcom/android/systemui/analytics/ClickEvent;-><init>()V

    .line 983
    .local v2, "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v14

    iput-object v14, v2, Lcom/android/systemui/analytics/ClickEvent;->notificationEvent:Lcom/android/systemui/analytics/NotificationEvent;

    .line 984
    iput v7, v2, Lcom/android/systemui/analytics/ClickEvent;->index:I

    .line 985
    iput v13, v2, Lcom/android/systemui/analytics/ClickEvent;->sessionIndex:I

    .line 986
    move/from16 v0, p1

    iput-boolean v0, v2, Lcom/android/systemui/analytics/ClickEvent;->floatNotification:Z

    .line 987
    iput-boolean v8, v2, Lcom/android/systemui/analytics/ClickEvent;->keyguardNotification:Z

    .line 988
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v14

    invoke-virtual {v14, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Lcom/android/systemui/AnalyticsHelper;->trackNotificationClick(Landroid/content/Context;Ljava/lang/String;I)V

    .line 991
    .end local v2    # "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPendingKey:Landroid/os/IBinder;

    goto/16 :goto_0

    .end local v7    # "index":I
    .end local v8    # "keyguardNotification":Z
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v13    # "sessionIndex":I
    :cond_6
    move-object v11, v6

    .line 950
    goto/16 :goto_1

    .line 951
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 967
    .restart local v7    # "index":I
    .restart local v8    # "keyguardNotification":Z
    .restart local v10    # "overlay":Landroid/content/Intent;
    .restart local v13    # "sessionIndex":I
    :catch_0
    move-exception v4

    .line 969
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
    .line 1293
    return-void
.end method

.method protected expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "expand"    # Z

    .prologue
    .line 1086
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x707000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1088
    .local v1, "rowHeight":I
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1089
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 1091
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1096
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    return p2

    .line 1094
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected getContextForUser(I)Landroid/content/Context;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 311
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 315
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

    .line 323
    :cond_0
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract getExpandedViewMaxHeight()I
.end method

.method protected getNotificationLongClicker()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 437
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
    .line 1012
    const-string v0, "StatusBar"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->clearNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1015
    return-void
.end method

.method public inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
    .locals 24
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "floatNotification"    # Z

    .prologue
    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x707000a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 588
    .local v15, "minHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7070018

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 590
    .local v14, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z

    .line 591
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    move-object/from16 v19, v0

    .line 592
    .local v19, "sbn":Lcom/android/systemui/statusbar/ExpandedNotification;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/CompatibilityN;->getContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v16

    .line 593
    .local v16, "oneU":Landroid/widget/RemoteViews;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/CompatibilityN;->getBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 594
    .local v12, "large":Landroid/widget/RemoteViews;
    if-nez v16, :cond_0

    .line 595
    const/16 v21, 0x0

    .line 684
    :goto_0
    return v21

    .line 599
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 601
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v21, 0x703002d

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 604
    .local v18, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPanelView()Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/PanelView;->getNotificationContainer()Landroid/view/ViewGroup;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRowLayout(Landroid/view/ViewGroup;)V

    .line 605
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setService(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 608
    new-instance v21, Lcom/android/systemui/statusbar/policy/FilterInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/FilterInfo;-><init>(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setPackageInfo(Lcom/android/systemui/statusbar/policy/FilterInfo;)V

    .line 609
    const v21, 0x7080006

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    .line 610
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 611
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/view/View;

    move-result-object v20

    .line 612
    .local v20, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x70d0046

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 618
    const v21, 0x7080025

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 619
    .local v4, "content":Landroid/view/ViewGroup;
    const v21, 0x7080111

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 623
    .local v3, "adaptive":Landroid/view/ViewGroup;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 624
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v9, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 625
    .local v9, "fullScreenIntent":Landroid/app/PendingIntent;
    if-eqz v5, :cond_6

    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Landroid/view/View$OnClickListener;

    move-result-object v13

    .line 627
    .local v13, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
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

    .line 631
    const/4 v8, 0x0

    .line 632
    .local v8, "expandedOneU":Landroid/view/View;
    const/4 v7, 0x0

    .line 634
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

    .line 635
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 637
    invoke-static {v8}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 638
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 640
    :cond_1
    if-eqz v12, :cond_3

    .line 642
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

    .line 643
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v7, v0, v1, v2}, Lcom/android/systemui/CompatibilityN;->wrapExpandedLarge(Landroid/view/View;Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 645
    invoke-static {v7}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 646
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 648
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->moveActionToRightIfNeed(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_3
    if-eqz v8, :cond_4

    .line 658
    new-instance v17, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    .local v17, "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 661
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 662
    move-object/from16 v0, v17

    invoke-virtual {v3, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 665
    .end local v17    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    :cond_4
    if-eqz v7, :cond_5

    .line 666
    new-instance v17, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    .restart local v17    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    add-int/lit8 v21, v15, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 669
    move-object/from16 v0, v17

    iput v14, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 670
    move-object/from16 v0, v17

    invoke-virtual {v3, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 673
    .end local v17    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    :cond_5
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDrawingCacheEnabled(Z)V

    .line 675
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

    .line 676
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 677
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 678
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 679
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 680
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setLargeView(Landroid/view/View;)V

    .line 682
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addPublicNotificationView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 683
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInEditMode:Z

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->switchToEditModeIfNeeded(Z)V

    .line 684
    const/16 v21, 0x1

    goto/16 :goto_0

    .end local v7    # "expandedLarge":Landroid/view/View;
    .end local v8    # "expandedOneU":Landroid/view/View;
    .end local v13    # "listener":Landroid/view/View$OnClickListener;
    .restart local v5    # "contentIntent":Landroid/app/PendingIntent;
    :cond_6
    move-object v5, v9

    .line 625
    goto/16 :goto_1

    .line 651
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v7    # "expandedLarge":Landroid/view/View;
    .restart local v8    # "expandedOneU":Landroid/view/View;
    .restart local v13    # "listener":Landroid/view/View$OnClickListener;
    :catch_0
    move-exception v6

    .line 652
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

    .line 653
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

    .line 654
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 675
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
    .line 1334
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
    .line 705
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isNotificationForCurrentProfiles(Lcom/android/systemui/statusbar/ExpandedNotification;)Z
    .locals 3
    .param p1, "n"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1324
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1325
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUserId()I

    move-result v0

    .line 1330
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
    .line 891
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$BaseNotificationClicker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$BaseNotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/ExpandedNotification;Z)V

    return-object v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 1318
    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 489
    const/16 v0, 0x3fe

    .line 490
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 491
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 492
    return-void
.end method

.method protected abstract registerStatusBarAndAddNotifications()V
.end method

.method protected release()V
    .locals 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1314
    return-void
.end method

.method protected removeNotificationViews(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 5
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 1022
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

    .line 1023
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1024
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 1025
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

    .line 1026
    const/4 v0, 0x0

    .line 1033
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    return-object v0

    .line 1029
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1030
    .local v1, "rowParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1031
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method protected resetNotificationPile()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 788
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    .line 789
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 790
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 791
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    .line 792
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setUserExpanded(Z)Z

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
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
    .line 701
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 702
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
    .line 1299
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

    .line 742
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData;->getIsGutsAnimate(Landroid/view/View;)Z

    move-result v4

    .line 743
    .local v4, "isAnimate":Z
    const v6, 0x7080053

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 744
    .local v3, "guts":Landroid/view/View;
    const v6, 0x7080111

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 745
    .local v0, "adaptive":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 746
    if-eqz v0, :cond_0

    if-nez v4, :cond_0

    .line 747
    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/NotificationData;->setGutsAnimate(Landroid/view/View;Z)Z

    .line 748
    sget-object v6, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 749
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 750
    sget-object v6, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 751
    .local v2, "anim2":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 752
    new-instance v6, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v6, p0, v3, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 759
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 760
    new-instance v6, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 769
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "anim2":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 748
    nop

    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 750
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

    .line 1373
    const/16 v0, 0x3fb

    .line 1374
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1375
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1376
    return-void

    :cond_0
    move v3, v2

    .line 1375
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
    .line 1378
    return-void
.end method

.method public start()V
    .locals 13

    .prologue
invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerAutoSetReceiver()V

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 333
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 334
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getContextForUser(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContextForUser:Landroid/content/Context;

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v12}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 348
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 352
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationKeys:Ljava/util/ArrayList;

    .line 354
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->registerCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 357
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBinders:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerStatusBarAndAddNotifications()V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    aget v0, v0, v12

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(I)V

    .line 365
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

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-eqz v0, :cond_2

    move v0, v11

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 369
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

    .line 371
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

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v7

    .line 375
    .local v7, "N":I
    const/4 v10, 0x0

    .line 376
    .local v10, "viewIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v7, :cond_5

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v9

    .line 378
    .local v9, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v9, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/ExpandedIcon;

    invoke-direct {v1, v9}, Lcom/android/systemui/statusbar/ExpandedIcon;-><init>(Lcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-virtual {p0, v0, v8, v10, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/systemui/statusbar/ExpandedIcon;)V

    .line 380
    add-int/lit8 v10, v10, 0x1

    .line 376
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v7    # "N":I
    .end local v8    # "i":I
    .end local v9    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v10    # "viewIndex":I
    :cond_2
    move v0, v12

    .line 366
    goto :goto_0

    :cond_3
    move v0, v12

    .line 371
    goto :goto_1

    :cond_4
    move v11, v12

    goto :goto_2

    .line 394
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
    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 1354
    :cond_0
    return-void
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x3fd

    .line 483
    .local v0, "msg":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 484
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 485
    return-void

    .line 481
    .end local v0    # "msg":I
    :cond_0
    const/16 v0, 0x3fc

    goto :goto_0
.end method

.method public toggleSplitScreen()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1358
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleSplitScreenMode(II)V

    .line 1359
    return-void
.end method

.method protected abstract toggleSplitScreenMode(II)V
.end method

.method protected trackNotificationExposureWhenCollapse()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 1381
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1382
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1383
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 1384
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1401
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    return-void

    .line 1387
    .restart local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    sub-int v4, v0, v3

    .line 1388
    .local v4, "index":I
    new-instance v2, Lcom/android/systemui/analytics/ExposeEvent;

    invoke-direct {v2}, Lcom/android/systemui/analytics/ExposeEvent;-><init>()V

    .line 1389
    .local v2, "event":Lcom/android/systemui/analytics/ExposeEvent;
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/analytics/ExposeEvent;->notificationEvent:Lcom/android/systemui/analytics/NotificationEvent;

    .line 1390
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/android/systemui/analytics/ExposeEvent;->messageList:Ljava/util/List;

    .line 1391
    iget-object v5, v2, Lcom/android/systemui/analytics/ExposeEvent;->messageList:Ljava/util/List;

    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1392
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1393
    iget-wide v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    cmp-long v5, v8, v12

    if-lez v5, :cond_2

    .line 1394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    sub-long v6, v8, v10

    .line 1395
    .local v6, "length":J
    cmp-long v5, v6, v12

    if-lez v5, :cond_2

    const-wide/32 v8, 0x36ee80

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/analytics/ExposeEvent;->canAdd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1396
    iget-object v5, v2, Lcom/android/systemui/analytics/ExposeEvent;->messageList:Ljava/util/List;

    new-instance v8, Lcom/android/systemui/analytics/ExposeMessage;

    iget-wide v10, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    const-string v9, "statusbar"

    invoke-direct {v8, v10, v11, v9, v4}, Lcom/android/systemui/analytics/ExposeMessage;-><init>(JLjava/lang/String;I)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1399
    .end local v6    # "length":J
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1382
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected updateCurrentProfilesCache()V
    .locals 0

    .prologue
    .line 1338
    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method protected updateLockscreenNotificationSetting()V
    .locals 0

    .prologue
    .line 1341
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;)V
    .locals 24
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v15

    .line 1114
    .local v15, "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    move-object/from16 v17, v0

    .line 1116
    .local v17, "oldNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/analytics/NotificationEvent;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/analytics/NotificationEvent;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1117
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/analytics/NotificationEvent;->getCreateTimeStamp()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/android/systemui/analytics/NotificationEvent;->setCreateTimeStamp(J)V

    .line 1120
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v14

    .line 1121
    .local v14, "oldContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v13

    .line 1123
    .local v13, "oldBigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lcom/android/systemui/CompatibilityN;->cacheContentViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/Context;Landroid/app/Notification;)Z

    .line 1124
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 1125
    .local v7, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 1144
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

    .line 1150
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

    .line 1158
    .local v5, "bigContentsUnchanged":Z
    :goto_1
    const/16 v18, 0x0

    .line 1159
    .local v18, "orderUnchanged":Z
    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    .line 1160
    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    .line 1161
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/NotificationData;->indexOf(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v16

    .line 1164
    .local v16, "oldIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1165
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

    .line 1168
    .end local v16    # "oldIndex":I
    :cond_2
    :goto_2
    const/16 v19, 0x0

    .line 1169
    .local v19, "updateOldResult":Z
    if-eqz v18, :cond_c

    .line 1174
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

    .line 1175
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1176
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 1178
    :cond_3
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 1179
    if-eqz v4, :cond_5

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 1181
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

    .line 1182
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1183
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 1185
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

    .line 1186
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 1189
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1190
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Landroid/view/View$OnClickListener;

    move-result-object v11

    .line 1191
    .local v11, "listener":Landroid/view/View$OnClickListener;
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1192
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInEditMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->switchToEditModeIfNeeded(Z)V

    .line 1195
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/CompatibilityM;->createStatusBarIcon(Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/ExpandedIcon;

    move-result-object v10

    .line 1196
    .local v10, "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setExpandedNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1197
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/systemui/statusbar/ExpandedIcon;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 1198
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

    .line 1257
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v10    # "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    .end local v11    # "listener":Landroid/view/View$OnClickListener;
    :cond_6
    :goto_3
    return-void

    .line 1144
    .end local v5    # "bigContentsUnchanged":Z
    .end local v8    # "contentsUnchanged":Z
    .end local v18    # "orderUnchanged":Z
    .end local v19    # "updateOldResult":Z
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1150
    .restart local v8    # "contentsUnchanged":Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1165
    .restart local v5    # "bigContentsUnchanged":Z
    .restart local v16    # "oldIndex":I
    .restart local v18    # "orderUnchanged":Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 1202
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

    .line 1203
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    .line 1205
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    const/16 v19, 0x1

    .line 1213
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v10    # "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    .end local v11    # "listener":Landroid/view/View$OnClickListener;
    :cond_c
    :goto_4
    if-nez v19, :cond_e

    .line 1217
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->userExpanded()Z

    move-result v20

    .line 1218
    .local v20, "wasExpanded":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1219
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    .line 1221
    .local v12, "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v12, :cond_6

    .line 1224
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->addTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->addTime:J

    .line 1225
    iget v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->updateTimes:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->updateTimes:I

    .line 1226
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    .line 1228
    iget-boolean v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->isLastSeen:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->isLastSeen:Z

    .line 1229
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastInvisibleTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastInvisibleTime:J

    .line 1230
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    .line 1231
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->totalExposeTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->totalExposeTime:J

    .line 1232
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    .line 1233
    if-eqz v20, :cond_d

    .line 1234
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    .line 1235
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setUserExpanded(Z)Z

    .line 1237
    :cond_d
    iget-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotification()V

    .line 1242
    .end local v12    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v20    # "wasExpanded":Z
    :cond_e
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/view/View;

    .line 1245
    const/16 v21, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_3

    .line 1208
    :catch_0
    move-exception v9

    .line 1209
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
    .line 399
    const v1, 0x708010c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandedNotification;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :goto_0
    return-object v0

    .line 424
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePublicNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "ent"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method protected visibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1003
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 562
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
