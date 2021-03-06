.class public final Lcom/xiaomi/common/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/Logger$ILog;,
        Lcom/xiaomi/common/Logger$LogLevel;
    }
.end annotation


# static fields
.field private static mAndroidLogger:Lcom/xiaomi/common/Logger$ILog;

.field private static mExternalLogger:Lcom/xiaomi/common/Logger$ILog;

.field private static mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "lock"

    sput-object v0, Lcom/xiaomi/common/Logger;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static final getLogger()Lcom/xiaomi/common/Logger$ILog;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/xiaomi/common/Logger;->mExternalLogger:Lcom/xiaomi/common/Logger$ILog;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/xiaomi/common/Logger;->mExternalLogger:Lcom/xiaomi/common/Logger$ILog;

    .line 56
    :goto_0
    return-object v0

    .line 51
    :cond_0
    sget-object v0, Lcom/xiaomi/common/Logger;->mAndroidLogger:Lcom/xiaomi/common/Logger$ILog;

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/xiaomi/common/Logger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    new-instance v1, Lcom/xiaomi/common/AndroidLogger;

    invoke-direct {v1}, Lcom/xiaomi/common/AndroidLogger;-><init>()V

    sput-object v1, Lcom/xiaomi/common/Logger;->mAndroidLogger:Lcom/xiaomi/common/Logger$ILog;

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/xiaomi/common/Logger;->mAndroidLogger:Lcom/xiaomi/common/Logger$ILog;

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static registerLogger(Lcom/xiaomi/common/Logger$ILog;)V
    .locals 0
    .parameter "externalLogger"

    .prologue
    .line 44
    sput-object p0, Lcom/xiaomi/common/Logger;->mExternalLogger:Lcom/xiaomi/common/Logger$ILog;

    .line 45
    return-void
.end method
