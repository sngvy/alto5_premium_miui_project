.class Landroid/preference/AutoColorPickerDialog$2;
.super Ljava/lang/Object;
.source "AutoColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/AutoColorPickerDialog;->setColorAndClickAction(Landroid/preference/AutoColorPickerPanelView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/AutoColorPickerDialog;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Landroid/preference/AutoColorPickerDialog;I)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Landroid/preference/AutoColorPickerDialog$2;->this$0:Landroid/preference/AutoColorPickerDialog;

    iput p2, p0, Landroid/preference/AutoColorPickerDialog$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog$2;->this$0:Landroid/preference/AutoColorPickerDialog;

    # getter for: Landroid/preference/AutoColorPickerDialog;->mColorPicker:Landroid/preference/AutoColorPickerView;
    invoke-static {v0}, Landroid/preference/AutoColorPickerDialog;->access$100(Landroid/preference/AutoColorPickerDialog;)Landroid/preference/AutoColorPickerView;

    move-result-object v0

    iget v1, p0, Landroid/preference/AutoColorPickerDialog$2;->val$color:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/preference/AutoColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    goto :goto_0
.end method
