.class Lcom/miui/player/helper/controller/SearchBarController$2;
.super Ljava/lang/Object;
.source "SearchBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/controller/SearchBarController;->setSearchActionAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/SearchBarController;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/controller/SearchBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/miui/player/helper/controller/SearchBarController$2;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController$2;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    iget-object v0, v0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 161
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController$2;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    iget-object v0, v0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 162
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController$2;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/SearchBarController;->showHistoryList(Z)V

    .line 163
    return-void
.end method
