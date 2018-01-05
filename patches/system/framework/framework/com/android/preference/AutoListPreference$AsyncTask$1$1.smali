.class Landroid/preference/AutoListPreference$AsyncTask$1$1;
.super Landroid/os/AsyncTask;
.source "AutoListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/AutoListPreference$AsyncTask$1;
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
.field final synthetic this$1:Landroid/preference/AutoListPreference$AsyncTask$1;


# direct methods
.method constructor <init>(Landroid/preference/AutoListPreference$AsyncTask$1;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/AutoListPreference$AsyncTask$1$1;->this$1:Landroid/preference/AutoListPreference$AsyncTask$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/preference/AutoListPreference$AsyncTask$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Landroid/preference/AutoListPreference$AsyncTask$1$1;->this$1:Landroid/preference/AutoListPreference$AsyncTask$1;

    iget-object v0, v0, Landroid/preference/AutoListPreference$AsyncTask$1;->this$0:Landroid/preference/AutoListPreference;

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->updateValueToDestinationPath()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/preference/AutoListPreference$AsyncTask$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/preference/AutoListPreference$AsyncTask$1$1;->this$1:Landroid/preference/AutoListPreference$AsyncTask$1;

    iget-object v0, v0, Landroid/preference/AutoListPreference$AsyncTask$1;->this$0:Landroid/preference/AutoListPreference;

    invoke-virtual {v0}, Landroid/preference/AutoListPreference;->getASet()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
