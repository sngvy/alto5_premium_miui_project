.class Landroid/preference/AutoListPreference$AsyncTask$2$1;
.super Ljava/lang/Object;
.source "AutoListPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/AutoListPreference$AsyncTask$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/preference/AutoListPreference$Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/AutoListPreference$AsyncTask$2;


# direct methods
.method constructor <init>(Landroid/preference/AutoListPreference$AsyncTask$2;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/AutoListPreference$AsyncTask$2$1;->this$1:Landroid/preference/AutoListPreference$AsyncTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/preference/AutoListPreference$Object;Landroid/preference/AutoListPreference$Object;)I
    .locals 3

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p1, Landroid/preference/AutoListPreference$Object;->entrie:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/preference/AutoListPreference$Object;->entrie:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/preference/AutoListPreference$Object;

    if-eqz v1, :cond_0

    instance-of v1, p2, Landroid/preference/AutoListPreference$Object;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/preference/AutoListPreference$Object;

    check-cast p2, Landroid/preference/AutoListPreference$Object;

    invoke-virtual {p0, p1, p2}, Landroid/preference/AutoListPreference$AsyncTask$2$1;->compare(Landroid/preference/AutoListPreference$Object;Landroid/preference/AutoListPreference$Object;)I

    move-result v0

    :cond_0
    return v0
.end method
