.class Lcom/android/bluetooth/pbap/BluetoothPbapService$1;
.super Landroid/os/Handler;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-string v3, "com.android.bluetooth.pbap.userconfirmtimeout"

    .line 569
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 605
    :goto_0
    :sswitch_0
    return-void

    .line 571
    :sswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 578
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 580
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v3, -0xf4241

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->removePbapNotification(I)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V

    .line 581
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 584
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 586
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v3, -0xf4242

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->removePbapNotification(I)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V

    .line 587
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 590
    .end local v0           #i:Landroid/content/Intent;
    :sswitch_4
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 598
    :sswitch_5
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v3, "com.android.bluetooth.pbap.authchall"

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->createPbapNotification(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$600(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V

    .line 599
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 569
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138b -> :sswitch_5
    .end sparse-switch
.end method
