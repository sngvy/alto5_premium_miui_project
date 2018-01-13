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
    .line 191
    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/android/systemui/statusbar/BaseStatusBar;->EDIT_MODE_ALPHA:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 193
    new-instance v0, Lcom/android/systemui/statusbar/phone/rank/NotificationSession;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/rank/NotificationSession;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationSession:Lcom/android/systemui/statusbar/phone/rank/ISession;

    .line 207
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 224
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    .line 276
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 331
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFullscreenStackBounds:Landroid/graphics/Rect;

    .line 332
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 701
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 1326
    iput v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->checkActionClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private checkActionClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 250
    .local v6, "p":Landroid/view/ViewParent;
    const/4 v7, 0x0

    .line 251
    .local v7, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_0
    if-eqz v6, :cond_0

    .line 252
    instance-of v8, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_2

    move-object v7, v6

    .line 253
    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 258
    :cond_0
    if-eqz v7, :cond_4

    .line 259
    new-instance v1, Lcom/android/systemui/analytics/ClickEvent;

    invoke-direct {v1}, Lcom/android/systemui/analytics/ClickEvent;-><init>()V

    .line 260
    .local v1, "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotification()Lcom/android/systemui/statusbar/ExpandedNotification;

    move-result-object v3

    .line 261
    .local v3, "expandedNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v8

    iput-object v8, v1, Lcom/android/systemui/analytics/ClickEvent;->notificationEvent:Lcom/android/systemui/analytics/NotificationEvent;

    .line 262
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandedNotification;->isFold()Z

    move-result v5

    .line 263
    .local v5, "isFold":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/NotificationData;->size(Z)I

    move-result v0

    .line 264
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 265
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v8, v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(IZ)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 266
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v8, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    if-ne v8, v3, :cond_1

    .line 267
    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v4

    iput v8, v1, Lcom/android/systemui/analytics/ClickEvent;->index:I

    .line 264
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 256
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

    .line 270
    .restart local v0    # "N":I
    .restart local v1    # "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    .restart local v3    # "expandedNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    .restart local v4    # "i":I
    .restart local v5    # "isFold":Z
    :cond_3
    iput-boolean v9, v1, Lcom/android/systemui/analytics/ClickEvent;->floatNotification:Z

    .line 271
    iput-boolean v9, v1, Lcom/android/systemui/analytics/ClickEvent;->keyguardNotification:Z

    .line 272
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 274
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
    .line 578
    invoke-static {p1}, Lcom/android/systemui/SystemUICompatibility;->getMediaActionGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 579
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v5, :cond_1

    .line 580
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 581
    .local v1, "childCount":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x70a004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 582
    .local v0, "childColor":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 583
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 584
    .local v4, "view":Landroid/view/View;
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 585
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 586
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 582
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
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

    .line 833
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 834
    .local v3, "n":Landroid/app/Notification;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 835
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 836
    .local v7, "userId":I
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UsbNotificationController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/UsbNotificationController;

    move-result-object v6

    .line 837
    .local v6, "usbNotificationController":Lcom/android/systemui/statusbar/policy/UsbNotificationController;
    iget-object v8, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    iget-boolean v8, v8, Landroid/app/MiuiNotification;->customizedIcon:Z

    if-eqz v8, :cond_0

    .line 838
    invoke-static {p0, v3}, Lcom/android/systemui/CompatibilityM;->getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 839
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 840
    invoke-static {v0, v10}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    .line 872
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v8

    .line 842
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

    .line 844
    :cond_1
    const-string v8, "com.android.contacts.activities.TwelveKeyDialer.png"

    invoke-static {p0, v8}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    goto :goto_0

    .line 846
    :cond_2
    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/policy/UsbNotificationController;->isUsbNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Lcom/android/systemui/statusbar/policy/UsbNotificationController;->getChargingIconRes()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 848
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 849
    invoke-static {v0, v10}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    goto :goto_0

    .line 851
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isImeNotificaion(Lcom/android/systemui/statusbar/ExpandedNotification;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 852
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x702009d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 853
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 854
    invoke-static {v0, v10}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    goto :goto_0

    .line 856
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

    .line 860
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 861
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    if-gez v7, :cond_6

    .line 862
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v7

    .line 864
    :cond_6
    const/4 v8, 0x0

    invoke-interface {v5, v4, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 865
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_7

    .line 866
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {p0, v2, v8}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 868
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .line 869
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

    .line 872
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method protected static isImeNotificaion(Lcom/android/systemui/statusbar/ExpandedNotification;)Z
    .locals 3
    .param p0, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandedNotification;->getId()I

    move-result v0

    .line 1351
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

    .line 1266
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "miui.showAction"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1267
    .local v4, "showRightAction":Z
    if-eqz v4, :cond_2

    .line 1268
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1269
    .local v0, "action":Landroid/widget/TextView;
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1270
    .local v3, "largeAction":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 1271
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1272
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7020002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1274
    new-instance v6, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1282
    const v6, 0x1020083

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1283
    .local v5, "when":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1284
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    :cond_0
    const v6, 0x102033d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1287
    .local v1, "chronometer":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1288
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    :cond_1
    const v6, 0x1020340

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1291
    .local v2, "info":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 1292
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1296
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
    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 441
    return-void
.end method


# virtual methods
.method protected addNotificationViews(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1044
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

    .line 1050
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

    .line 1053
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

    .line 1056
    .local v2, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1058
    invoke-static {p2}, Lcom/android/systemui/CompatibilityM;->createStatusBarIcon(Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/ExpandedIcon;

    move-result-object v1

    .line 1059
    .local v1, "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/systemui/statusbar/ExpandedIcon;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1060
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

    .line 1086
    .end local v2    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_0
    return-object v2

    .line 1064
    .restart local v2    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, p2, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1065
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPanelView()Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelView;->getNotificationContainer()Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1066
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

    .line 1068
    goto :goto_0

    .line 1071
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->indexOf(Landroid/os/IBinder;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1073
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    .line 1080
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUserId()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/applock/AppLockHelper;->getCurrentUserIdIfNeeded(II)I

    move-result v3

    .line 1081
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v3}, Lcom/android/systemui/statusbar/phone/applock/AppLockHelper;->shouldShowPublicNotificationByAppLock(Landroid/content/Context;Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    .line 1084
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method public addPublicNotificationView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "row"    # Landroid/view/View;

    .prologue
    .line 699
    return-void
.end method

.method protected applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V
    .locals 7
    .param p1, "sbn"    # Lcom/android/systemui/statusbar/ExpandedNotification;
    .param p2, "expandedView"    # Landroid/view/View;

    .prologue
    .line 804
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 805
    .local v1, "icon":Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 807
    invoke-static {p2}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 808
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/CompatibilityM;->getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 809
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 810
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 815
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 816
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 819
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 820
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 821
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 822
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    return-void

    .line 813
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getRowIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 825
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
    .line 503
    const/16 v0, 0x3ff

    .line 504
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 506
    return-void
.end method

.method protected clearNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V
    .locals 1
    .param p1, "sbn"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1024
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
    .line 512
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method public dismissIntruder()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method protected dismissNavGuideDialog()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    .line 480
    :cond_0
    return-void
.end method

.method protected doPendingJob()V
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->doPendingJob(Z)V

    .line 943
    return-void
.end method

.method protected doPendingJob(Z)V
    .locals 17
    .param p1, "floatNotification"    # Z

    .prologue
    .line 946
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPendingKey:Landroid/os/IBinder;

    if-nez v14, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPendingKey:Landroid/os/IBinder;

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    .line 950
    .local v5, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v5, :cond_0

    .line 953
    iget-object v12, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    .line 954
    .local v12, "sbn":Lcom/android/systemui/statusbar/ExpandedNotification;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-object v3, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 955
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-object v6, v14, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 956
    .local v6, "fullScreenIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_6

    move-object v11, v3

    .line 957
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    iget-object v14, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationType()I

    move-result v14

    sget v15, Lcom/android/systemui/statusbar/ExpandedNotification;->KEYGUARD_NOTIFICATION_TYPE:I

    if-ne v14, v15, :cond_7

    const/4 v8, 0x1

    .line 958
    .local v8, "keyguardNotification":Z
    :goto_2
    const/4 v7, 0x0

    .line 959
    .local v7, "index":I
    const/4 v13, 0x0

    .line 960
    .local v13, "sessionIndex":I
    if-eqz v5, :cond_2

    .line 961
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationSession:Lcom/android/systemui/statusbar/phone/rank/ISession;

    invoke-interface {v14, v5}, Lcom/android/systemui/statusbar/phone/rank/ISession;->getSessionIndex(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v13

    .line 962
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v14, v5}, Lcom/android/systemui/statusbar/NotificationData;->indexOffsetLast(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v7

    .line 964
    :cond_2
    if-eqz v11, :cond_4

    .line 965
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 966
    .local v10, "overlay":Landroid/content/Intent;
    const-string v14, "com.xiaomi.xmsf"

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 967
    const-string v14, "systemui_session_click_index"

    invoke-virtual {v10, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 968
    const-string v14, "systemui_click_index"

    invoke-virtual {v10, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 969
    const-string v14, "systemui_click_type"

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationType()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15, v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v15, "keyguard"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 980
    .local v9, "kgm":Landroid/app/KeyguardManager;
    if-eqz v9, :cond_4

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 983
    .end local v9    # "kgm":Landroid/app/KeyguardManager;
    .end local v10    # "overlay":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {v12, v14}, Lcom/android/systemui/SystemUICompatibility;->onNotificationClick(Lcom/android/systemui/statusbar/ExpandedNotification;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 985
    if-eqz v5, :cond_5

    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->clickTime:J

    .line 988
    new-instance v2, Lcom/android/systemui/analytics/ClickEvent;

    invoke-direct {v2}, Lcom/android/systemui/analytics/ClickEvent;-><init>()V

    .line 989
    .local v2, "clickEvent":Lcom/android/systemui/analytics/ClickEvent;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v14

    iput-object v14, v2, Lcom/android/systemui/analytics/ClickEvent;->notificationEvent:Lcom/android/systemui/analytics/NotificationEvent;

    .line 990
    iput v7, v2, Lcom/android/systemui/analytics/ClickEvent;->index:I

    .line 991
    iput v13, v2, Lcom/android/systemui/analytics/ClickEvent;->sessionIndex:I

    .line 992
    move/from16 v0, p1

    iput-boolean v0, v2, Lcom/android/systemui/analytics/ClickEvent;->floatNotification:Z

    .line 993
    iput-boolean v8, v2, Lcom/android/systemui/analytics/ClickEvent;->keyguardNotification:Z

    .line 994
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v14

    invoke-virtual {v14, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Lcom/android/systemui/AnalyticsHelper;->trackNotificationClick(Landroid/content/Context;Ljava/lang/String;I)V

    .line 997
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

    .line 956
    goto/16 :goto_1

    .line 957
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 973
    .restart local v7    # "index":I
    .restart local v8    # "keyguardNotification":Z
    .restart local v10    # "overlay":Landroid/content/Intent;
    .restart local v13    # "sessionIndex":I
    :catch_0
    move-exception v4

    .line 975
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
    .line 1299
    return-void
.end method

.method protected expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "expand"    # Z

    .prologue
    .line 1092
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x707000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1094
    .local v1, "rowHeight":I
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1095
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 1097
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1102
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    return p2

    .line 1100
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected getContextForUser(I)Landroid/content/Context;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 312
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 316
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

    .line 324
    :cond_0
    :goto_0
    return-object v0

    .line 320
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract getExpandedViewMaxHeight()I
.end method

.method protected getNotificationLongClicker()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 444
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
    .line 1018
    const-string v0, "StatusBar"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->clearNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1021
    return-void
.end method

.method public inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
    .locals 24
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "floatNotification"    # Z

    .prologue
    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x707000a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 595
    .local v15, "minHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7070018

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 597
    .local v14, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z

    .line 598
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    move-object/from16 v19, v0

    .line 599
    .local v19, "sbn":Lcom/android/systemui/statusbar/ExpandedNotification;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/CompatibilityN;->getContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v16

    .line 600
    .local v16, "oneU":Landroid/widget/RemoteViews;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/CompatibilityN;->getBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 601
    .local v12, "large":Landroid/widget/RemoteViews;
    if-nez v16, :cond_0

    .line 602
    const/16 v21, 0x0

    .line 691
    :goto_0
    return v21

    .line 606
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 608
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v21, 0x703002f

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 611
    .local v18, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPanelView()Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/PanelView;->getNotificationContainer()Landroid/view/ViewGroup;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRowLayout(Landroid/view/ViewGroup;)V

    .line 612
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setService(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 615
    new-instance v21, Lcom/android/systemui/statusbar/policy/FilterInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/FilterInfo;-><init>(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setPackageInfo(Lcom/android/systemui/statusbar/policy/FilterInfo;)V

    .line 616
    const v21, 0x7080006

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    .line 617
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/view/View;

    move-result-object v20

    .line 619
    .local v20, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x70d0046

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 625
    const v21, 0x7080025

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 626
    .local v4, "content":Landroid/view/ViewGroup;
    const v21, 0x7080119

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 630
    .local v3, "adaptive":Landroid/view/ViewGroup;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 631
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v9, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 632
    .local v9, "fullScreenIntent":Landroid/app/PendingIntent;
    if-eqz v5, :cond_6

    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Landroid/view/View$OnClickListener;

    move-result-object v13

    .line 634
    .local v13, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
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

    .line 638
    const/4 v8, 0x0

    .line 639
    .local v8, "expandedOneU":Landroid/view/View;
    const/4 v7, 0x0

    .line 641
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

    .line 642
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 644
    invoke-static {v8}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 645
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 647
    :cond_1
    if-eqz v12, :cond_3

    .line 649
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

    .line 650
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v7, v0, v1, v2}, Lcom/android/systemui/CompatibilityN;->wrapExpandedLarge(Landroid/view/View;Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 652
    invoke-static {v7}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 653
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 655
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->moveActionToRightIfNeed(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :cond_3
    if-eqz v8, :cond_4

    .line 665
    new-instance v17, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    .local v17, "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 668
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 669
    move-object/from16 v0, v17

    invoke-virtual {v3, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 672
    .end local v17    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    :cond_4
    if-eqz v7, :cond_5

    .line 673
    new-instance v17, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    .restart local v17    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    add-int/lit8 v21, v15, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 676
    move-object/from16 v0, v17

    iput v14, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 677
    move-object/from16 v0, v17

    invoke-virtual {v3, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 680
    .end local v17    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    :cond_5
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDrawingCacheEnabled(Z)V

    .line 682
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

    .line 683
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 684
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 685
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 686
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 687
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setLargeView(Landroid/view/View;)V

    .line 689
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addPublicNotificationView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 690
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInEditMode:Z

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->switchToEditModeIfNeeded(Z)V

    .line 691
    const/16 v21, 0x1

    goto/16 :goto_0

    .end local v7    # "expandedLarge":Landroid/view/View;
    .end local v8    # "expandedOneU":Landroid/view/View;
    .end local v13    # "listener":Landroid/view/View$OnClickListener;
    .restart local v5    # "contentIntent":Landroid/app/PendingIntent;
    :cond_6
    move-object v5, v9

    .line 632
    goto/16 :goto_1

    .line 658
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v7    # "expandedLarge":Landroid/view/View;
    .restart local v8    # "expandedOneU":Landroid/view/View;
    .restart local v13    # "listener":Landroid/view/View$OnClickListener;
    :catch_0
    move-exception v6

    .line 659
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

    .line 660
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

    .line 661
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 682
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
    .line 1340
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
    .line 221
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isNotificationForCurrentProfiles(Lcom/android/systemui/statusbar/ExpandedNotification;)Z
    .locals 3
    .param p1, "n"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1330
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1331
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandedNotification;->getUserId()I

    move-result v0

    .line 1336
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
    .line 897
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$BaseNotificationClicker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$BaseNotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/ExpandedNotification;Z)V

    return-object v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 1324
    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 496
    const/16 v0, 0x3fe

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

.method protected abstract registerStatusBarAndAddNotifications()V
.end method

.method protected release()V
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1320
    return-void
.end method

.method protected removeNotificationViews(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 5
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 1028
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

    .line 1029
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1030
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 1031
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

    .line 1032
    const/4 v0, 0x0

    .line 1039
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    return-object v0

    .line 1035
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1036
    .local v1, "rowParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1037
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method protected resetNotificationPile()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 795
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    .line 796
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 797
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 798
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    .line 799
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setUserExpanded(Z)Z

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
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
    .line 708
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 709
    return-void
.end method

.method protected showNavGuideDialog(Z)V
    .locals 0
    .param p1, "fromProvision"    # Z

    .prologue
    .line 243
    return-void
.end method

.method protected showNotificationEvenIfUnprovisioned(Lcom/android/systemui/statusbar/ExpandedNotification;)Z
    .locals 1
    .param p1, "sbn"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1305
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

    .line 749
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData;->getIsGutsAnimate(Landroid/view/View;)Z

    move-result v4

    .line 750
    .local v4, "isAnimate":Z
    const v6, 0x708005c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 751
    .local v3, "guts":Landroid/view/View;
    const v6, 0x7080119

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 752
    .local v0, "adaptive":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 753
    if-eqz v0, :cond_0

    if-nez v4, :cond_0

    .line 754
    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/NotificationData;->setGutsAnimate(Landroid/view/View;Z)Z

    .line 755
    sget-object v6, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 756
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 757
    sget-object v6, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 758
    .local v2, "anim2":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 759
    new-instance v6, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v6, p0, v3, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 766
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 767
    new-instance v6, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 776
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "anim2":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 755
    nop

    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 757
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

    .line 1379
    const/16 v0, 0x3fb

    .line 1380
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1381
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1382
    return-void

    :cond_0
    move v3, v2

    .line 1381
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
    .line 1384
    return-void
.end method

.method public start()V
    .locals 13

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerAutoSetReceiver()V
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 334
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 335
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getContextForUser(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContextForUser:Landroid/content/Context;

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v12}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 349
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 353
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationKeys:Ljava/util/ArrayList;

    .line 355
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->registerCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 358
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBinders:Ljava/util/ArrayList;

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerStatusBarAndAddNotifications()V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    aget v0, v0, v12

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(I)V

    .line 366
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

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSwitches:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-eqz v0, :cond_2

    move v0, v11

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 370
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

    .line 372
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

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v7

    .line 376
    .local v7, "N":I
    const/4 v10, 0x0

    .line 377
    .local v10, "viewIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v7, :cond_5

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v9

    .line 379
    .local v9, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v9, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/ExpandedIcon;

    invoke-direct {v1, v9}, Lcom/android/systemui/statusbar/ExpandedIcon;-><init>(Lcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-virtual {p0, v0, v8, v10, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/systemui/statusbar/ExpandedIcon;)V

    .line 381
    add-int/lit8 v10, v10, 0x1

    .line 377
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v7    # "N":I
    .end local v8    # "i":I
    .end local v9    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v10    # "viewIndex":I
    :cond_2
    move v0, v12

    .line 367
    goto :goto_0

    :cond_3
    move v0, v12

    .line 372
    goto :goto_1

    :cond_4
    move v11, v12

    goto :goto_2

    .line 395
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
    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 1360
    :cond_0
    return-void
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x3fd

    .line 490
    .local v0, "msg":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 491
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 492
    return-void

    .line 488
    .end local v0    # "msg":I
    :cond_0
    const/16 v0, 0x3fc

    goto :goto_0
.end method

.method public toggleSplitScreen()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1364
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleSplitScreenMode(II)V

    .line 1365
    return-void
.end method

.method protected abstract toggleSplitScreenMode(II)V
.end method

.method protected trackNotificationExposureWhenCollapse()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 1387
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1388
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1389
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 1390
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1407
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    return-void

    .line 1393
    .restart local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    sub-int v4, v0, v3

    .line 1394
    .local v4, "index":I
    new-instance v2, Lcom/android/systemui/analytics/ExposeEvent;

    invoke-direct {v2}, Lcom/android/systemui/analytics/ExposeEvent;-><init>()V

    .line 1395
    .local v2, "event":Lcom/android/systemui/analytics/ExposeEvent;
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/analytics/ExposeEvent;->notificationEvent:Lcom/android/systemui/analytics/NotificationEvent;

    .line 1396
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/android/systemui/analytics/ExposeEvent;->messageList:Ljava/util/List;

    .line 1397
    iget-object v5, v2, Lcom/android/systemui/analytics/ExposeEvent;->messageList:Ljava/util/List;

    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1398
    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1399
    iget-wide v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    cmp-long v5, v8, v12

    if-lez v5, :cond_2

    .line 1400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    sub-long v6, v8, v10

    .line 1401
    .local v6, "length":J
    cmp-long v5, v6, v12

    if-lez v5, :cond_2

    const-wide/32 v8, 0x36ee80

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/analytics/ExposeEvent;->canAdd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1402
    iget-object v5, v2, Lcom/android/systemui/analytics/ExposeEvent;->messageList:Ljava/util/List;

    new-instance v8, Lcom/android/systemui/analytics/ExposeMessage;

    iget-wide v10, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    const-string v9, "statusbar"

    invoke-direct {v8, v10, v11, v9, v4}, Lcom/android/systemui/analytics/ExposeMessage;-><init>(JLjava/lang/String;I)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    .end local v6    # "length":J
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1388
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected updateCurrentProfilesCache()V
    .locals 0

    .prologue
    .line 1344
    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method protected updateLockscreenNotificationSetting()V
    .locals 0

    .prologue
    .line 1347
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;)V
    .locals 24
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/ExpandedNotification;

    .prologue
    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v15

    .line 1120
    .local v15, "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    move-object/from16 v17, v0

    .line 1122
    .local v17, "oldNotification":Lcom/android/systemui/statusbar/ExpandedNotification;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/analytics/NotificationEvent;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/analytics/NotificationEvent;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1123
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/analytics/NotificationEvent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/analytics/NotificationEvent;->getCreateTimeStamp()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/android/systemui/analytics/NotificationEvent;->setCreateTimeStamp(J)V

    .line 1126
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v14

    .line 1127
    .local v14, "oldContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v13

    .line 1129
    .local v13, "oldBigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lcom/android/systemui/CompatibilityN;->cacheContentViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/Context;Landroid/app/Notification;)Z

    .line 1130
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 1131
    .local v7, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/systemui/CompatibilityN;->getBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 1150
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

    .line 1156
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

    .line 1164
    .local v5, "bigContentsUnchanged":Z
    :goto_1
    const/16 v18, 0x0

    .line 1165
    .local v18, "orderUnchanged":Z
    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    .line 1166
    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/statusbar/ExpandedNotification;

    .line 1167
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/NotificationData;->indexOf(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v16

    .line 1170
    .local v16, "oldIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1171
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

    .line 1174
    .end local v16    # "oldIndex":I
    :cond_2
    :goto_2
    const/16 v19, 0x0

    .line 1175
    .local v19, "updateOldResult":Z
    if-eqz v18, :cond_c

    .line 1180
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

    .line 1181
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1182
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 1184
    :cond_3
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 1185
    if-eqz v4, :cond_5

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 1187
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

    .line 1188
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/SystemUICompatibility;->isMediaNotification(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1189
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->formatMediaContentView(Landroid/view/View;)V

    .line 1191
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

    .line 1192
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowIcon(Lcom/android/systemui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 1195
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1196
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/ExpandedNotification;Z)Landroid/view/View$OnClickListener;

    move-result-object v11

    .line 1197
    .local v11, "listener":Landroid/view/View$OnClickListener;
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1198
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInEditMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->switchToEditModeIfNeeded(Z)V

    .line 1201
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/CompatibilityM;->createStatusBarIcon(Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/ExpandedIcon;

    move-result-object v10

    .line 1202
    .local v10, "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setExpandedNotification(Lcom/android/systemui/statusbar/ExpandedNotification;)V

    .line 1203
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/systemui/statusbar/ExpandedIcon;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 1204
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

    .line 1263
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v10    # "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    .end local v11    # "listener":Landroid/view/View$OnClickListener;
    :cond_6
    :goto_3
    return-void

    .line 1150
    .end local v5    # "bigContentsUnchanged":Z
    .end local v8    # "contentsUnchanged":Z
    .end local v18    # "orderUnchanged":Z
    .end local v19    # "updateOldResult":Z
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1156
    .restart local v8    # "contentsUnchanged":Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1171
    .restart local v5    # "bigContentsUnchanged":Z
    .restart local v16    # "oldIndex":I
    .restart local v18    # "orderUnchanged":Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 1208
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

    .line 1209
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    .line 1211
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    const/16 v19, 0x1

    .line 1219
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v10    # "ic":Lcom/android/systemui/statusbar/ExpandedIcon;
    .end local v11    # "listener":Landroid/view/View$OnClickListener;
    :cond_c
    :goto_4
    if-nez v19, :cond_e

    .line 1223
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;->userExpanded()Z

    move-result v20

    .line 1224
    .local v20, "wasExpanded":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1225
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/systemui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    .line 1227
    .local v12, "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v12, :cond_6

    .line 1230
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->addTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->addTime:J

    .line 1231
    iget v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->updateTimes:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->updateTimes:I

    .line 1232
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    .line 1234
    iget-boolean v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->isLastSeen:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->isLastSeen:Z

    .line 1235
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastInvisibleTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastInvisibleTime:J

    .line 1236
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastVisibleTime:J

    .line 1237
    iget-wide v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->totalExposeTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->totalExposeTime:J

    .line 1238
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    .line 1239
    if-eqz v20, :cond_d

    .line 1240
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    .line 1241
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setUserExpanded(Z)Z

    .line 1243
    :cond_d
    iget-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotification()V

    .line 1248
    .end local v12    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v20    # "wasExpanded":Z
    :cond_e
    iget-object v0, v15, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandedNotification;)Landroid/view/View;

    .line 1251
    const/16 v21, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_3

    .line 1214
    :catch_0
    move-exception v9

    .line 1215
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
    .line 402
    const v1, 0x7080114

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandedNotification;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :goto_0
    return-object v0

    .line 431
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePublicNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "ent"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method protected visibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1009
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 569
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
