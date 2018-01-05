.class Landroid/preference/AutoColorPickerDialog$1;
.super Ljava/lang/Object;
.source "AutoColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/AutoColorPickerDialog;->setUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/AutoColorPickerDialog;


# direct methods
.method constructor <init>(Landroid/preference/AutoColorPickerDialog;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Landroid/preference/AutoColorPickerDialog$1;->this$0:Landroid/preference/AutoColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog$1;->this$0:Landroid/preference/AutoColorPickerDialog;

    # getter for: Landroid/preference/AutoColorPickerDialog;->mHex:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/preference/AutoColorPickerDialog;->access$000(Landroid/preference/AutoColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "text":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/preference/AutoSet$Utils;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "newColor":I
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog$1;->this$0:Landroid/preference/AutoColorPickerDialog;

    # getter for: Landroid/preference/AutoColorPickerDialog;->mColorPicker:Landroid/preference/AutoColorPickerView;
    invoke-static {v2}, Landroid/preference/AutoColorPickerDialog;->access$100(Landroid/preference/AutoColorPickerDialog;)Landroid/preference/AutoColorPickerView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/preference/AutoColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "newColor":I
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v2

    goto :goto_0
.end method
