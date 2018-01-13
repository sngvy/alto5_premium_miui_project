.class public Lcom/g84/KeyguardDoubleTapLock;
.super Landroid/widget/LinearLayout;
.source "Taptap.java"


# instance fields
.field mHits:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/g84/KeyguardDoubleTapLock;->mHits:[J

    .line 16
    invoke-virtual {p0}, Lcom/g84/KeyguardDoubleTapLock;->clickshit()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/g84/KeyguardDoubleTapLock;->mHits:[J

    .line 22
    invoke-virtual {p0}, Lcom/g84/KeyguardDoubleTapLock;->clickshit()V

    .line 23
    return-void
.end method


# virtual methods
.method public clickshit()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcom/g84/KeyguardDoubleTapLock$1;

    invoke-direct {v0, p0}, Lcom/g84/KeyguardDoubleTapLock$1;-><init>(Lcom/g84/KeyguardDoubleTapLock;)V

    invoke-virtual {p0, v0}, Lcom/g84/KeyguardDoubleTapLock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
