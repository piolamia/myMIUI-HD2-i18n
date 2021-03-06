.class public Lcom/android/monitor/DialogTrafficSettingItem;
.super Landroid/widget/LinearLayout;
.source "DialogTrafficSettingItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/monitor/DialogTrafficSettingItem$DialogClosedListener;
    }
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDialogClosedListener:Lcom/android/monitor/DialogTrafficSettingItem$DialogClosedListener;

.field private mSettingKey:Landroid/widget/TextView;

.field private mSettingValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/monitor/DialogTrafficSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object p1, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p1, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 104
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 106
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mDialogClosedListener:Lcom/android/monitor/DialogTrafficSettingItem$DialogClosedListener;

    iget-object v1, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mContentView:Landroid/view/View;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/android/monitor/DialogTrafficSettingItem$DialogClosedListener;->onDialogClosed(Landroid/view/View;Z)V

    .line 112
    return-void

    .line 110
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 61
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/android/monitor/DialogTrafficSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mSettingKey:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/android/monitor/DialogTrafficSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mSettingValue:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mSettingKey:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setOnDialogClosedListener(Lcom/android/monitor/DialogTrafficSettingItem$DialogClosedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mDialogClosedListener:Lcom/android/monitor/DialogTrafficSettingItem$DialogClosedListener;

    .line 78
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mSettingValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public showDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "contentView"
    .parameter "title"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The dialog view should not be null, at least with an edit text"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mContentView:Landroid/view/View;

    .line 89
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 94
    iget-object v1, p0, Lcom/android/monitor/DialogTrafficSettingItem;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 95
    .local v0, dialog:Landroid/app/Dialog;
    invoke-direct {p0, v0}, Lcom/android/monitor/DialogTrafficSettingItem;->requestInputMethod(Landroid/app/Dialog;)V

    .line 96
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 97
    return-void
.end method
