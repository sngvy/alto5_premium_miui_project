.class Landroid/preference/AutoListPreference$1;
.super Ljava/lang/Object;
.source "AutoListPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Landroid/preference/AutoListPreference$1;->this$0:Landroid/preference/AutoListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Landroid/preference/AutoListPreference$1;->this$0:Landroid/preference/AutoListPreference;

    iget-object v0, v0, Landroid/preference/AutoListPreference;->mListAdapter:Landroid/preference/AutoListPreference$ListAdapter;

    :try_start_0
    invoke-virtual {v0}, Landroid/preference/AutoListPreference$ListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
