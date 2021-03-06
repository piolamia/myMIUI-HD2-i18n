.class public Lcom/android/browser/controller/DiscuzX15ForumDataDetector;
.super Lcom/android/browser/controller/ForumDataDetector;
.source "DiscuzX15ForumDataDetector.java"


# direct methods
.method public constructor <init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 0
    .parameter "identity"
    .parameter "controller"
    .parameter "webView"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/controller/ForumDataDetector;-><init>(ILcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 22
    return-void
.end method

.method private detectBodyClass()V
    .locals 6

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetector;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v1, "js/forum_common.js"

    const-string v2, "detectBodyAttr"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "class"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "bodyclass"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromAsset(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private getPageTypeFromBodyClass(Ljava/lang/String;)Lcom/android/browser/controller/ForumController$ForumPageType;
    .locals 1
    .parameter "bodyClass"

    .prologue
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 43
    const-string v0, "pg_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Category:Lcom/android/browser/controller/ForumController$ForumPageType;

    .line 60
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-string v0, "pg_forumdisplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleList:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 49
    :cond_1
    const-string v0, "pg_viewthread"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget-object v0, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_ArticleDetail:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 52
    :cond_2
    const-string v0, "pg_post"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    sget-object v0, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Posting:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 55
    :cond_3
    const-string v0, "pg_logging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    sget-object v0, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Logging:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0

    .line 60
    :cond_4
    sget-object v0, Lcom/android/browser/controller/ForumController$ForumPageType;->ForumPageType_Unknown:Lcom/android/browser/controller/ForumController$ForumPageType;

    goto :goto_0
.end method


# virtual methods
.method public detectPageType()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/browser/controller/DiscuzX15ForumDataDetector;->detectBodyClass()V

    .line 27
    return-void
.end method

.method public onParamDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 35
    const-string v0, "bodyclass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0, p2}, Lcom/android/browser/controller/DiscuzX15ForumDataDetector;->getPageTypeFromBodyClass(Ljava/lang/String;)Lcom/android/browser/controller/ForumController$ForumPageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/controller/DiscuzX15ForumDataDetector;->onPageTypeDetected(Lcom/android/browser/controller/ForumController$ForumPageType;)V

    .line 38
    :cond_0
    return-void
.end method
