.class Lcom/android/thememanager/ApplyThemeForScreenshot$1;
.super Ljava/lang/Object;
.source "ApplyThemeForScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ApplyThemeForScreenshot;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ApplyThemeForScreenshot;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ApplyThemeForScreenshot;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/thememanager/ApplyThemeForScreenshot$1;->this$0:Lcom/android/thememanager/ApplyThemeForScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/thememanager/ApplyThemeForScreenshot$1;->this$0:Lcom/android/thememanager/ApplyThemeForScreenshot;

    invoke-virtual {v0}, Lcom/android/thememanager/ApplyThemeForScreenshot;->back()V

    .line 30
    return-void
.end method
