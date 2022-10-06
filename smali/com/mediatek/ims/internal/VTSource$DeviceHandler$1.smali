.class Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "VTSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 1471
    iput-object p1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 1525
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v0, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [onClosed]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    .line 1527
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1200(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1528
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 1501
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v0, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [onDisconnected] cameraDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1500(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1500(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1504
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1502(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1200(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1507
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 1475
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v0, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [onError] error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$900(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v0, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1477
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$500(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$908(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)I

    .line 1483
    const-wide/16 v0, 0x190

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    goto :goto_0

    .line 1484
    :catch_0
    move-exception v0

    .line 1485
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1487
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1000(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1100(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;Ljava/lang/String;)V

    .line 1488
    return-void

    .line 1490
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1200(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1491
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v0, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$1300(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1492
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1400(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    goto :goto_1

    .line 1494
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v0, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mIsWaitRelease means call end or VTS error, ignore MA error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1400(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onOpenFail()V

    .line 1497
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 1511
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v0, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [onOpened]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1502(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 1513
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v0, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->access$1600(Lcom/mediatek/ims/internal/VTSource;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v4, v4, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1515
    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v4

    .line 1514
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1515
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1516
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v0, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [onOpened] Send message to handler ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v2, v2, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1517
    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->access$1600(Lcom/mediatek/ims/internal/VTSource;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1516
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1200(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1520
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;->this$1:Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->access$1400(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onOpenSuccess()V

    .line 1521
    return-void
.end method
