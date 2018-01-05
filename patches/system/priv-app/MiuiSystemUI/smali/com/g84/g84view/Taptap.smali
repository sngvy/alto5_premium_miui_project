.class public Lcom/g84/g84view/Taptap;
.super Landroid/widget/LinearLayout;
.source "Taptap.java"


# instance fields
.field mHits:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/g84/g84view/Taptap;->mHits:[J

    .line 16
    invoke-virtual {p0}, Lcom/g84/g84view/Taptap;->clickshit()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/g84/g84view/Taptap;->mHits:[J

    .line 22
    invoke-virtual {p0}, Lcom/g84/g84view/Taptap;->clickshit()V

    .line 23
    return-void
.end method


# virtual methods
.method public clickshit()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/g84/g84view/Taptap$1;

    invoke-direct {v0, p0}, Lcom/g84/g84view/Taptap$1;-><init>(Lcom/g84/g84view/Taptap;)V

    invoke-virtual {p0, v0}, Lcom/g84/g84view/Taptap;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
