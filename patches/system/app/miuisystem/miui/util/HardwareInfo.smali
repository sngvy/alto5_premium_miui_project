.class public Lmiui/util/HardwareInfo;
.super Ljava/lang/Object;
.source "HardwareInfo.java"


# static fields
.field private static DEBUG_MEMORY_PERFORMANCE:Z = false

.field private static DEBUG_MEMORY_PERFORMANCE_MASK:I = 0x0

.field private static final GB:J = 0x40000000L

.field private static final MB:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "HardwareInfo"

.field private static sDevice2Memory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sDevice2MemoryAdjust:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTotalMemory:J

.field private static sTotalPhysicalMemory:J

.field private static sWhetstoneActivityManager:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide v8, 0x80000000L

    const-wide/32 v6, -0x20000000

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/32 v4, 0x40000000

    .line 21
    const-wide/16 v2, 0x0

    sput-wide v2, Lmiui/util/HardwareInfo;->sTotalMemory:J

    .line 26
    sput v1, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE_MASK:I

    .line 27
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "persist.sys.mem_perf_debug"

    invoke-static {v2, v0}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE_MASK:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    .line 32
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "hwu9200"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "hwu9500"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "maguro"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "ville"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "LT26i"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "ventana"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "stuttgart"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "t03g"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "pisces"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "HM2014501"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "leo"

    const-wide v2, 0x100000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "HM2014011"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "HM2013022"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "HM2013023"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "com.miui.whetstone.WhetstoneActivityManager"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmiui/util/HardwareInfo;->sWhetstoneActivityManager:Ljava/lang/Class;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    .line 53
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    const-string v1, "lcsh92_wet_xm_td"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    const-string v1, "lcsh92_wet_xm_kk"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidCacheMemory()J
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 109
    const-wide/16 v0, -0x1

    .line 110
    .local v0, "cacheMemory":J
    sget-object v3, Lmiui/util/HardwareInfo;->sWhetstoneActivityManager:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 111
    sget-object v3, Lmiui/util/HardwareInfo;->sWhetstoneActivityManager:Ljava/lang/Class;

    const-string v6, "getAndroidCachedEmptyProcessMemory"

    const-class v7, Ljava/lang/Long;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v6, v7, v8}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v2

    .line 113
    .local v2, "ref":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 116
    .end local v2    # "ref":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Long;>;"
    :cond_0
    sget-boolean v3, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE:Z

    if-eqz v3, :cond_1

    .line 117
    const-string v3, "HardwareInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get CacheMemory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .end local v0    # "cacheMemory":J
    :goto_0
    return-wide v0

    .restart local v0    # "cacheMemory":J
    :cond_2
    move-wide v0, v4

    goto :goto_0
.end method

.method public static getFreeMemory()J
    .locals 8

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory_source()J

    move-result-wide v0

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v4

    long-to-double v2, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v6

    long-to-double v6, v0

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static getFreeMemory_source()J
    .locals 16

    .prologue
    const-wide/16 v14, 0x400

    .line 85
    invoke-static {}, Lmiui/util/HardwareInfo;->getAndroidCacheMemory()J

    move-result-wide v0

    .line 86
    .local v0, "cacheMemory":J
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v8

    .line 87
    .local v8, "totalPhysicalMemory":J
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalMemory()J

    move-result-wide v6

    .line 88
    .local v6, "totalMemory":J
    invoke-static {}, Lmiui/os/MiuiProcessUtil;->getFreeMemory()J

    move-result-wide v10

    div-long v2, v10, v14

    .line 89
    .local v2, "free":J
    add-long v10, v2, v0

    const-wide/16 v12, 0x2

    mul-long/2addr v12, v8

    sub-long/2addr v12, v6

    mul-long/2addr v10, v12

    div-long/2addr v10, v8

    mul-long v4, v10, v14

    .line 90
    .local v4, "result":J
    return-wide v4
.end method

.method public static getLowMemoryLimitation()J
    .locals 6

    .prologue
    .line 96
    :try_start_0
    const-string v3, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-static {v3}, Lmiui/os/FileUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 98
    .local v2, "value":I
    mul-int/lit8 v3, v2, 0x4

    mul-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    .line 102
    .end local v2    # "value":I
    :goto_0
    return-wide v4

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getTotalMemory()J
    .locals 4

    .prologue
    .line 59
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lmiui/os/MiuiProcessUtil;->getTotalMemory()J

    move-result-wide v0

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    .line 62
    :cond_0
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    return-wide v0
.end method

.method public static getTotalPhysicalMemory()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 67
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    .line 80
    :cond_0
    :goto_0
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    return-wide v0

    .line 73
    :cond_1
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalMemory()J

    move-result-wide v0

    div-long/2addr v0, v4

    const-wide/32 v2, 0x19000

    add-long/2addr v0, v2

    const-wide/32 v2, 0x80000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x200

    mul-long/2addr v0, v2

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    .line 75
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-wide v2, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    goto :goto_0
.end method
