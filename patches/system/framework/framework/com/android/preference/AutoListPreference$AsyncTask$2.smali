.class Landroid/preference/AutoListPreference$AsyncTask$2;
.super Landroid/os/AsyncTask;
.source "AutoListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/AutoListPreference;->createGenericList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/AutoListPreference;

# direct methods
.method constructor <init>(Landroid/preference/AutoListPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/AutoListPreference$AsyncTask$2;->this$0:Landroid/preference/AutoListPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/preference/AutoListPreference$AsyncTask$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Landroid/preference/AutoListPreference$AsyncTask$2;->this$0:Landroid/preference/AutoListPreference;

    :try_start_0
    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->createList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroid/preference/AutoListPreference;->mGenericList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/preference/AutoListPreference;->mListType:I

    if-ltz v1, :cond_0

    iget-object v2, v0, Landroid/preference/AutoListPreference;->mGenericList:Ljava/util/List;

    new-instance v1, Landroid/preference/AutoListPreference$AsyncTask$2$1;

    invoke-direct {v1, p0}, Landroid/preference/AutoListPreference$AsyncTask$2$1;-><init>(Landroid/preference/AutoListPreference$AsyncTask$2;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    new-instance v1, Landroid/preference/AutoListPreference$ListAdapter;

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/preference/AutoListPreference$ListAdapter;-><init>(Landroid/content/Context;Landroid/preference/AutoListPreference;)V

    iget-object v2, v0, Landroid/preference/AutoListPreference;->mGenericList:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/preference/AutoListPreference$ListAdapter;->setAdapter(Ljava/util/List;)V

    iput-object v1, v0, Landroid/preference/AutoListPreference;->mListAdapter:Landroid/preference/AutoListPreference$ListAdapter;

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/preference/AutoListPreference$AsyncTask$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const/16 v2, 0x8

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/preference/AutoListPreference$AsyncTask$2;->this$0:Landroid/preference/AutoListPreference;

    iget-object v1, v0, Landroid/preference/AutoListPreference;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Landroid/preference/AutoListPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v0, Landroid/preference/AutoListPreference;->mListAdapter:Landroid/preference/AutoListPreference$ListAdapter;

    iget-object v0, v0, Landroid/preference/AutoListPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Landroid/preference/AutoListPreference$AsyncTask$2;->this$0:Landroid/preference/AutoListPreference;

    iget-object v1, v0, Landroid/preference/AutoListPreference;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Landroid/preference/AutoListPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->refreshDrawableState()V

    return-void
.end method
