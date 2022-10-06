.class Lcom/mediatek/wfo/impl/WifiPdnHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiPdnHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 606
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 609
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 614
    const/4 v0, 0x4

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 616
    .local v0, "wifiState":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v3, 0x3f5

    invoke-virtual {v2, v3, v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 617
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 618
    .end local v0    # "wifiState":I
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_8

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "WifiPdnHandler"

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 620
    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 621
    .local v0, "isAirplaneModeOn":Z
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AIRPLANE_MODE_CHANGED isAirplaneModeOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 626
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    .line 625
    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 627
    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    .line 629
    .local v4, "flightMode":Z
    :goto_0
    const/4 v5, 0x0

    .local v5, "phoneId":I
    :goto_1
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$100(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 630
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v7, "wos_flight_mode_support_bool"

    invoke-static {v6, v7, v5, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$200(Lcom/mediatek/wfo/impl/WifiPdnHandler;Ljava/lang/String;IZ)Z

    move-result v6

    .line 632
    .local v6, "wfcConfig":Z
    if-nez v6, :cond_4

    .line 633
    invoke-static {p1, v5}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v7

    .line 634
    .local v7, "imsMgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v7}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 635
    if-eqz v4, :cond_3

    .line 636
    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v9, "Wos_in_flight change to disable"

    invoke-virtual {v8, v9}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v7, v3, v3, v1}, Lcom/android/ims/ImsManager;->changeMmTelCapability(IIZ)V

    goto :goto_2

    .line 641
    :cond_3
    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v9, "Wos_in_flight change to enable"

    invoke-virtual {v8, v9}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v7, v3, v3, v3}, Lcom/android/ims/ImsManager;->changeMmTelCapability(IIZ)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v6    # "wfcConfig":Z
    .end local v7    # "imsMgr":Lcom/android/ims/ImsManager;
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v4    # "flightMode":Z
    .end local v5    # "phoneId":I
    :cond_5
    goto :goto_3

    .line 651
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v3, "Wos_in_flight changeMmTelCapability fail."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 649
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :catch_1
    move-exception v1

    .line 650
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "Wos_in_flight Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_3
    nop

    .line 655
    :goto_4
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x480

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 656
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    .end local v0    # "isAirplaneModeOn":Z
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_8

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 658
    const-string v0, "android.net.wifi.extra.SCAN_AVAILABLE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 660
    .local v0, "state":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive WIFI_SCAN_AVAILABLE, state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 662
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 663
    .end local v0    # "state":Z
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_8

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 664
    nop

    .line 665
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 666
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    goto :goto_5

    :cond_8
    move v2, v1

    .line 667
    .local v2, "isWifiConnected":Z
    :goto_5
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive NETWORK_STATE_CHANGED_ACTION, mIsWifiConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$300(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " networkInfo.isConnected(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 669
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$300(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$400(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 670
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v5, 0x3e8

    .line 672
    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    move v3, v1

    :goto_6
    const/4 v6, 0x0

    .line 670
    invoke-virtual {v4, v5, v3, v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 674
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v3, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    .end local v1    # "msg":Landroid/os/Message;
    :cond_a
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$402(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)Z

    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "isWifiConnected":Z
    goto :goto_7

    .line 677
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 679
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_CARRIER_CONFIG_CHANGED mIsAirplaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$500(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$500(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 681
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$600(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    goto :goto_8

    .line 677
    :cond_c
    :goto_7
    nop

    .line 684
    :cond_d
    :goto_8
    return-void

    .line 610
    :cond_e
    :goto_9
    return-void
.end method
