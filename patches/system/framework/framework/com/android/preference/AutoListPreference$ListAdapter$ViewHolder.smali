.class Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AutoListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/AutoListPreference$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/AutoListPreference$ListAdapter;

.field tv:Landroid/widget/TextView;

.field tvs:Landroid/widget/TextView;

.field iv:Landroid/widget/ImageView;

.field rb:Landroid/widget/RadioButton;

.field chb:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/preference/AutoListPreference$ListAdapter;Landroid/view/View;)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->this$1:Landroid/preference/AutoListPreference$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->this$1:Landroid/preference/AutoListPreference$ListAdapter;

    invoke-virtual {v0}, Landroid/preference/AutoListPreference$ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v1, "zff_autoset_listText"

    invoke-static {v4, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const-string v1, "zff_autoset_listTextSecondary"

    invoke-static {v4, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->tvs:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/preference/AutoListPreference$ListAdapter;->this$0:Landroid/preference/AutoListPreference;

    iget-boolean v2, v2, Landroid/preference/AutoListPreference;->mVisibleValue:Z

    if-nez v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const-string v1, "zff_autoset_listImage"

    invoke-static {v4, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v2, v0, Landroid/preference/AutoListPreference$ListAdapter;->this$0:Landroid/preference/AutoListPreference;

    iget-object v3, v2, Landroid/preference/AutoListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    iget v2, v2, Landroid/preference/AutoListPreference;->mListType:I

    if-eqz v2, :cond_1          # if app

    add-int/lit8 v3, v2, -0x1

    if-eqz v3, :cond_1          # if app-l

    add-int/lit8 v3, v2, -0x2

    if-eqz v3, :cond_1          # if activity

    add-int/lit8 v3, v2, -0x3

    if-eqz v3, :cond_1          # if service

    add-int/lit8 v3, v2, -0x4

    if-eqz v3, :cond_1          # if receiver

    add-int/lit8 v3, v2, -0x30

    if-eqz v3, :cond_1          # if image

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const-string v1, "zff_autoset_listRadioButton"

    invoke-static {v4, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->rb:Landroid/widget/RadioButton;

    iget-object v2, v0, Landroid/preference/AutoListPreference$ListAdapter;->this$0:Landroid/preference/AutoListPreference;

    iget-boolean v2, v2, Landroid/preference/AutoListPreference;->mMultiChoice:Z

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_2
    const-string v1, "zff_autoset_listCheckBox"

    invoke-static {v4, v1}, Landroid/preference/AutoSet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->chb:Landroid/widget/CheckBox;

    if-nez v2, :cond_3

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3
    return-void
.end method
