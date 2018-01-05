.class Landroid/preference/AutoListPreference$ListAdapter$1;
.super Landroid/widget/Filter;
.source "AutoListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/AutoListPreference$ListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/AutoListPreference$ListAdapter;


# direct methods
.method constructor <init>(Landroid/preference/AutoListPreference$ListAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/AutoListPreference$ListAdapter$1;->this$1:Landroid/preference/AutoListPreference$ListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    invoke-direct {p0, p1}, Landroid/preference/AutoListPreference$ListAdapter$1;->filtering(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v1, p0, Landroid/preference/AutoListPreference$ListAdapter$1;->this$1:Landroid/preference/AutoListPreference$ListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Landroid/preference/AutoListPreference$ListAdapter;->filteredList:Ljava/util/List;

    iget-object v0, p0, Landroid/preference/AutoListPreference$ListAdapter$1;->this$1:Landroid/preference/AutoListPreference$ListAdapter;

    invoke-virtual {v0}, Landroid/preference/AutoListPreference$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private filtering(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/preference/AutoListPreference$ListAdapter$1;->this$1:Landroid/preference/AutoListPreference$ListAdapter;

    iget-object v3, v3, Landroid/preference/AutoListPreference$ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Landroid/preference/AutoListPreference$Object;

    if-eqz v6, :cond_0

    check-cast v4, Landroid/preference/AutoListPreference$Object;

    iget-object v5, v4, Landroid/preference/AutoListPreference$Object;->entrie:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method