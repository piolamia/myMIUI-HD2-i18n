.class Lcom/android/mms/ui/MessageEditableActivityBase$8;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 491
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 481
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onUserInteraction()V

    .line 485
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #calls: Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$000(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    .line 488
    return-void
.end method
