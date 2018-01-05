.class Landroid/preference/AutoListPreference$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoListPreference.java"

# interfaces
.implements Landroid/widget/Filterable;

# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/AutoListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/AutoListPreference;

.field private mContext:Landroid/content/Context;

.field private alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/AutoListPreference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "x0"         # Landroid/preference/AutoListPreference;

    .prologue
    iput-object p1, p0, Landroid/preference/AutoListPreference$ListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/preference/AutoListPreference$ListAdapter;->this$0:Landroid/preference/AutoListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

# virtual methods
.method public setAdapter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    iput-object p1, p0, Landroid/preference/AutoListPreference$ListAdapter;->mList:Ljava/util/List;

    iput-object p1, p0, Landroid/preference/AutoListPreference$ListAdapter;->filteredList:Ljava/util/List;

    iget-object v0, p0, Landroid/preference/AutoListPreference$ListAdapter;->this$0:Landroid/preference/AutoListPreference;

    iput-object p1, v0, Landroid/preference/AutoListPreference;->mGenericList:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/preference/AutoListPreference$ListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/AutoListPreference$ListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    new-instance v0, Landroid/preference/AutoListPreference$ListAdapter$1;

    invoke-direct {v0, p0}, Landroid/preference/AutoListPreference$ListAdapter$1;-><init>(Landroid/preference/AutoListPreference$ListAdapter;)V

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/preference/AutoListPreference$AppListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/AutoListPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/preference/AutoListPreference$Object;

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    const/4 v3, 0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/preference/AutoListPreference$ListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/preference/AutoListPreference$ListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "zff_autoset_list_item_view"

    invoke-static {v1, v2}, Landroid/preference/AutoSet$Utils;->getIDinternalLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;

    invoke-direct {v1, p0, p2}, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;-><init>(Landroid/preference/AutoListPreference$ListAdapter;Landroid/view/View;)V

    .local v1, "vh":Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;

    invoke-virtual {p0, p1, v0}, Landroid/preference/AutoListPreference$ListAdapter;->setItem(ILandroid/preference/AutoListPreference$ListAdapter$ViewHolder;)V

    return-object p2
.end method

.method public setItem(ILandroid/preference/AutoListPreference$ListAdapter$ViewHolder;)V
    .locals 5
    .param p1, "i"          # I
    .param p2, "viewHolder" # Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;

    .prologue
    iget-object v0, p0, Landroid/preference/AutoListPreference$ListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/preference/AutoListPreference$Object;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/preference/AutoListPreference$Object;

    iget-object v1, p2, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/preference/AutoListPreference$Object;->entrie:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->tvs:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/preference/AutoListPreference$Object;->value:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v2, v0, Landroid/preference/AutoListPreference$Object;->thumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    check-cast v3, Ljava/lang/String;

    iget-object v2, p0, Landroid/preference/AutoListPreference$ListAdapter;->this$0:Landroid/preference/AutoListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/AutoListPreference;->compareCurrentItemAndValue(Ljava/lang/String;)Z

    move-result v2

    iget-object v0, p0, Landroid/preference/AutoListPreference$ListAdapter;->this$0:Landroid/preference/AutoListPreference;

    iget-boolean v3, v0, Landroid/preference/AutoListPreference;->mMultiChoice:Z

    if-nez v3, :cond_1

    iget-object v1, p2, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->rb:Landroid/widget/RadioButton;

    if-eqz v2, :cond_0

    iput p1, v0, Landroid/preference/AutoListPreference;->mCurrentIndex:I

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz v3, :cond_2

    :cond_1
    iget-object v1, p2, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->chb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void

    :cond_3
    const-string v3, ""

    iget-object v1, p2, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/preference/AutoListPreference$ListAdapter;->this$0:Landroid/preference/AutoListPreference;

    iget-object v2, v2, Landroid/preference/AutoListPreference;->mEmptyValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->tvs:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Landroid/preference/AutoListPreference$ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/preference/AutoListPreference$ListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method