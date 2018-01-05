.class Landroid/preference/AutoListPreference$2;
.super Ljava/lang/Object;
.source "AutoListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/AutoListPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/AutoListPreference;


# direct methods
.method constructor <init>(Landroid/preference/AutoListPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/AutoListPreference$2;->this$0:Landroid/preference/AutoListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .prologue

    iget-object v0, p0, Landroid/preference/AutoListPreference$2;->this$0:Landroid/preference/AutoListPreference;

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->startActivityForResult()V

    return-void
.end method