.class Lcom/android/fileexplorer/FileViewInteractionHub$10;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 727
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 728
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    :goto_0
    #setter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I
    invoke-static {v2, v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1402(Lcom/android/fileexplorer/FileViewInteractionHub;I)I

    .line 730
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 731
    .local v1, itemId:I
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$200(Lcom/android/fileexplorer/FileViewInteractionHub;)Lcom/android/fileexplorer/IFileInteractionListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->onOperation(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 797
    :goto_1
    return v2

    .end local v1           #itemId:I
    :cond_0
    move v3, v5

    .line 728
    goto :goto_0

    .line 734
    .restart local v1       #itemId:I
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 793
    const/4 v2, 0x0

    goto :goto_1

    .line 736
    :sswitch_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSearch()V

    .line 796
    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #setter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I
    invoke-static {v2, v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1402(Lcom/android/fileexplorer/FileViewInteractionHub;I)I

    move v2, v4

    .line 797
    goto :goto_1

    .line 739
    :sswitch_1
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCreateFolder()V

    goto :goto_2

    .line 742
    :sswitch_2
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationReferesh()V
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1500(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    goto :goto_2

    .line 745
    :sswitch_3
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSelectAllOrCancel()V
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$500(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    goto :goto_2

    .line 748
    :sswitch_4
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationShowSysFiles()V
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1600(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    goto :goto_2

    .line 751
    :sswitch_5
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationFavorite()V
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1700(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    goto :goto_2

    .line 755
    :sswitch_6
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 756
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    sget-object v3, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->name:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->onSortChanged(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)V

    goto :goto_2

    .line 759
    :sswitch_7
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 760
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    sget-object v3, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->size:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->onSortChanged(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)V

    goto :goto_2

    .line 763
    :sswitch_8
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 764
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    sget-object v3, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->date:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->onSortChanged(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)V

    goto :goto_2

    .line 767
    :sswitch_9
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 768
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    sget-object v3, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->type:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->onSortChanged(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)V

    goto :goto_2

    .line 772
    :sswitch_a
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCopy()V
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$300(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    goto :goto_2

    .line 775
    :sswitch_b
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationPaste()V
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1800(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    goto :goto_2

    .line 778
    :sswitch_c
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationMove()V
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$400(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    goto :goto_2

    .line 781
    :sswitch_d
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSend()V

    goto :goto_2

    .line 784
    :sswitch_e
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationRename()V

    goto :goto_2

    .line 787
    :sswitch_f
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationDelete()V

    goto :goto_2

    .line 790
    :sswitch_10
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$10;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationInfo()V

    goto :goto_2

    .line 734
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_d
        0x8 -> :sswitch_e
        0x9 -> :sswitch_f
        0xa -> :sswitch_10
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0xd -> :sswitch_8
        0xe -> :sswitch_9
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_5
        0x68 -> :sswitch_a
        0x69 -> :sswitch_b
        0x6a -> :sswitch_c
        0x75 -> :sswitch_4
    .end sparse-switch
.end method
