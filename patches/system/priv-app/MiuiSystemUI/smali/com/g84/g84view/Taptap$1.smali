.class Lcom/g84/g84view/Taptap$1;
.super Ljava/lang/Object;
.source "Taptap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/g84/g84view/Taptap;->clickshit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/g84/g84view/Taptap;


# direct methods
.method constructor <init>(Lcom/g84/g84view/Taptap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/g84/g84view/Taptap$1;->this$0:Lcom/g84/g84view/Taptap;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 28
    iget-object v1, p0, Lcom/g84/g84view/Taptap$1;->this$0:Lcom/g84/g84view/Taptap;

    iget-object v1, v1, Lcom/g84/g84view/Taptap;->mHits:[J

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/g84/g84view/Taptap$1;->this$0:Lcom/g84/g84view/Taptap;

    iget-object v3, v3, Lcom/g84/g84view/Taptap;->mHits:[J

    iget-object v4, p0, Lcom/g84/g84view/Taptap$1;->this$0:Lcom/g84/g84view/Taptap;

    iget-object v4, v4, Lcom/g84/g84view/Taptap;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget-object v1, p0, Lcom/g84/g84view/Taptap$1;->this$0:Lcom/g84/g84view/Taptap;

    iget-object v1, v1, Lcom/g84/g84view/Taptap;->mHits:[J

    iget-object v2, p0, Lcom/g84/g84view/Taptap$1;->this$0:Lcom/g84/g84view/Taptap;

    iget-object v2, v2, Lcom/g84/g84view/Taptap;->mHits:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 30
    iget-object v1, p0, Lcom/g84/g84view/Taptap$1;->this$0:Lcom/g84/g84view/Taptap;

    iget-object v1, v1, Lcom/g84/g84view/Taptap;->mHits:[J

    aget-wide v2, v1, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 32
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 34
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
