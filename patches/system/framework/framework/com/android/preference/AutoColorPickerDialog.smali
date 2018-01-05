.class public Landroid/preference/AutoColorPickerDialog;
.super Landroid/app/Dialog;
.source "AutoColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/AutoColorPickerView$OnColorChangedListener;

# instance fields
.field private mBlack:Landroid/preference/AutoColorPickerPanelView;

.field private mColorPicker:Landroid/preference/AutoColorPickerView;

.field private mBlue:Landroid/preference/AutoColorPickerPanelView;

.field private mGreen:Landroid/preference/AutoColorPickerPanelView;

.field private mHex:Landroid/widget/EditText;

.field private mListener:Landroid/preference/AutoColorPickerDialog$OnColorChangedListener;

.field public mNewColor:Landroid/preference/AutoColorPickerPanelView;

.field private mOldColor:Landroid/preference/AutoColorPickerPanelView;

.field private mRed:Landroid/preference/AutoColorPickerPanelView;

.field private mSetButton:Landroid/widget/ImageButton;

.field private mWhite:Landroid/preference/AutoColorPickerPanelView;

.field private mYellow:Landroid/preference/AutoColorPickerPanelView;

.field private mColorPickerPreference:Landroid/preference/AutoColorPickerPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialColor"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0, p2}, Landroid/preference/AutoColorPickerDialog;->init(I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Landroid/preference/AutoColorPickerDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/preference/AutoColorPickerDialog;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mHex:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/AutoColorPickerDialog;)Landroid/preference/AutoColorPickerView;
    .locals 1
    .param p0, "x0"    # Landroid/preference/AutoColorPickerDialog;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mColorPicker:Landroid/preference/AutoColorPickerView;

    return-object v0
.end method

.method private init(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0}, Landroid/preference/AutoColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 71
    invoke-virtual {p0, v1}, Landroid/preference/AutoColorPickerDialog;->requestWindowFeature(I)Z

    .line 72
    invoke-direct {p0, p1}, Landroid/preference/AutoColorPickerDialog;->setUp(I)V

    .line 74
    return-void
.end method

.method private setUp(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflater":Landroid/view/LayoutInflater;
    const-string v3, "zff_autoset_dialog_color_picker"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "layout":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/preference/AutoColorPickerDialog;->setContentView(Landroid/view/View;)V

    const-string v3, "zff_autoset_color_picker_view"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/AutoColorPickerView;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mColorPicker:Landroid/preference/AutoColorPickerView;

    const-string v3, "zff_autoset_old_color_panel"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/AutoColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mOldColor:Landroid/preference/AutoColorPickerPanelView;

    const-string v3, "zff_autoset_new_color_panel"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/AutoColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mNewColor:Landroid/preference/AutoColorPickerPanelView;

    const-string v3, "zff_autoset_white_panel"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/AutoColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mWhite:Landroid/preference/AutoColorPickerPanelView;

    const-string v3, "zff_autoset_black_panel"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/AutoColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mBlack:Landroid/preference/AutoColorPickerPanelView;

    const-string v3, "zff_autoset_blue_panel"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/AutoColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mBlue:Landroid/preference/AutoColorPickerPanelView;

    const-string v3, "zff_autoset_red_panel"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/AutoColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mRed:Landroid/preference/AutoColorPickerPanelView;

    const-string v3, "zff_autoset_green_panel"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/AutoColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mGreen:Landroid/preference/AutoColorPickerPanelView;

    const-string v3, "zff_autoset_yellow_panel"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/preference/AutoColorPickerPanelView;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mYellow:Landroid/preference/AutoColorPickerPanelView;

    const-string v3, "zff_autoset_hex"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mHex:Landroid/widget/EditText;

    const-string v3, "zff_autoset_enter"

    invoke-static {v2, v3}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mOldColor:Landroid/preference/AutoColorPickerPanelView;

    invoke-virtual {v2}, Landroid/preference/AutoColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/preference/AutoColorPickerDialog;->mColorPicker:Landroid/preference/AutoColorPickerView;

    invoke-virtual {v3}, Landroid/preference/AutoColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Landroid/preference/AutoColorPickerDialog;->mColorPicker:Landroid/preference/AutoColorPickerView;

    invoke-virtual {v4}, Landroid/preference/AutoColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 108
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mOldColor:Landroid/preference/AutoColorPickerPanelView;

    invoke-virtual {v2, p0}, Landroid/preference/AutoColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mNewColor:Landroid/preference/AutoColorPickerPanelView;

    invoke-virtual {v2, p0}, Landroid/preference/AutoColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mColorPicker:Landroid/preference/AutoColorPickerView;

    invoke-virtual {v2, p0}, Landroid/preference/AutoColorPickerView;->setOnColorChangedListener(Landroid/preference/AutoColorPickerView$OnColorChangedListener;)V

    .line 111
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mOldColor:Landroid/preference/AutoColorPickerPanelView;

    invoke-virtual {v2, p1}, Landroid/preference/AutoColorPickerPanelView;->setColor(I)V

    .line 112
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mColorPicker:Landroid/preference/AutoColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/preference/AutoColorPickerView;->setColor(IZ)V

    .line 114
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mWhite:Landroid/preference/AutoColorPickerPanelView;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/preference/AutoColorPickerDialog;->setColorAndClickAction(Landroid/preference/AutoColorPickerPanelView;I)V

    .line 115
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mBlack:Landroid/preference/AutoColorPickerPanelView;

    const/high16 v3, -0x1000000

    invoke-virtual {p0, v2, v3}, Landroid/preference/AutoColorPickerDialog;->setColorAndClickAction(Landroid/preference/AutoColorPickerPanelView;I)V

    .line 116
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mBlue:Landroid/preference/AutoColorPickerPanelView;

    const v3, -0xffff01

    invoke-virtual {p0, v2, v3}, Landroid/preference/AutoColorPickerDialog;->setColorAndClickAction(Landroid/preference/AutoColorPickerPanelView;I)V

    .line 117
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mRed:Landroid/preference/AutoColorPickerPanelView;

    const/high16 v3, -0x10000

    invoke-virtual {p0, v2, v3}, Landroid/preference/AutoColorPickerDialog;->setColorAndClickAction(Landroid/preference/AutoColorPickerPanelView;I)V

    .line 118
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mGreen:Landroid/preference/AutoColorPickerPanelView;

    const v3, -0xff0100

    invoke-virtual {p0, v2, v3}, Landroid/preference/AutoColorPickerDialog;->setColorAndClickAction(Landroid/preference/AutoColorPickerPanelView;I)V

    .line 119
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mYellow:Landroid/preference/AutoColorPickerPanelView;

    const/16 v3, -0x100

    invoke-virtual {p0, v2, v3}, Landroid/preference/AutoColorPickerDialog;->setColorAndClickAction(Landroid/preference/AutoColorPickerPanelView;I)V

    .line 121
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/preference/AutoColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    new-instance v3, Landroid/preference/AutoColorPickerDialog$1;

    invoke-direct {v3, p0}, Landroid/preference/AutoColorPickerDialog$1;-><init>(Landroid/preference/AutoColorPickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/preference/AutoColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "zff_autoset_new_color_panel"

    invoke-static {v2, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mListener:Landroid/preference/AutoColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mListener:Landroid/preference/AutoColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Landroid/preference/AutoColorPickerDialog;->mNewColor:Landroid/preference/AutoColorPickerPanelView;

    invoke-virtual {v1}, Landroid/preference/AutoColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/preference/AutoColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mColorPickerPreference:Landroid/preference/AutoColorPickerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mColorPickerPreference:Landroid/preference/AutoColorPickerPreference;

    invoke-virtual {v0, v1}, Landroid/preference/AutoColorPickerPreference;->setASet(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/AutoColorPickerPreference;->postASet(Z)V

    iget-object v1, v0, Landroid/preference/AutoColorPickerPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Landroid/preference/AutoSet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/AutoColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 143
    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mNewColor:Landroid/preference/AutoColorPickerPanelView;

    invoke-virtual {v0, p1}, Landroid/preference/AutoColorPickerPanelView;->setColor(I)V

    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/preference/AutoColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 210
    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mOldColor:Landroid/preference/AutoColorPickerPanelView;

    const-string v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/AutoColorPickerPanelView;->setColor(I)V

    .line 211
    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mColorPicker:Landroid/preference/AutoColorPickerView;

    const-string v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/preference/AutoColorPickerView;->setColor(IZ)V

    .line 212
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 202
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "old_color"

    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mOldColor:Landroid/preference/AutoColorPickerPanelView;

    invoke-virtual {v2}, Landroid/preference/AutoColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v1, "new_color"

    iget-object v2, p0, Landroid/preference/AutoColorPickerDialog;->mNewColor:Landroid/preference/AutoColorPickerPanelView;

    invoke-virtual {v2}, Landroid/preference/AutoColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Landroid/preference/AutoColorPickerDialog;->mColorPicker:Landroid/preference/AutoColorPickerView;

    invoke-virtual {v0, p1}, Landroid/preference/AutoColorPickerView;->setAlphaSliderVisible(Z)V

    .line 159
    return-void
.end method

.method public setColorAndClickAction(Landroid/preference/AutoColorPickerPanelView;I)V
    .locals 1
    .param p1, "previewRect"    # Landroid/preference/AutoColorPickerPanelView;
    .param p2, "color"    # I

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1, p2}, Landroid/preference/AutoColorPickerPanelView;->setColor(I)V

    .line 164
    new-instance v0, Landroid/preference/AutoColorPickerDialog$2;

    invoke-direct {v0, p0, p2}, Landroid/preference/AutoColorPickerDialog$2;-><init>(Landroid/preference/AutoColorPickerDialog;I)V

    invoke-virtual {p1, v0}, Landroid/preference/AutoColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_0
    return-void
.end method

.method public setOnColorChangedListener(Landroid/preference/AutoColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/preference/AutoColorPickerDialog$OnColorChangedListener;

    .prologue
    .line 182
    iput-object p1, p0, Landroid/preference/AutoColorPickerDialog;->mListener:Landroid/preference/AutoColorPickerDialog$OnColorChangedListener;

    .line 183
    return-void
.end method

.method public setColorPickerPreference(Landroid/preference/AutoColorPickerPreference;)V
    .locals 0
    .param p1, "colorpicker"    # Landroid/preference/AutoColorPickerPreference;

    .prologue
    iput-object p1, p0, Landroid/preference/AutoColorPickerDialog;->mColorPickerPreference:Landroid/preference/AutoColorPickerPreference;

    return-void
.end method