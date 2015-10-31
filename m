X-GM-THRID: 6211915181056851968
X-Received: by 10.182.104.137 with SMTP id ge9mr12665118obb.49.1446324209725;
        Sat, 31 Oct 2015 13:43:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.68 with SMTP id 62ls1505929qgy.90.gmail; Sat, 31 Oct
 2015 13:43:28 -0700 (PDT)
X-Received: by 10.129.85.80 with SMTP id j77mr12347464ywb.31.1446324208871;
        Sat, 31 Oct 2015 13:43:28 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si1301531pac.2.2015.10.31.13.43.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 13:43:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so111187432pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 13:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TUdJpZafs6Vn17Y2DuVYBmxFHDF31N5KgTEgSLm4DR8=;
        b=qQOShQ4nyaaehz8LnWxXb024muN+f8MsjQuaIv0DP3et5MxKXVScD3pakgTbrRrUWa
         XS5OfF2YTzQQhmqmqQ0Et44C3fBl4vpjYYSurAefCRfuP5/SP/VaHdhLUBKmgwxcLPHl
         RM8iGl4mfAdCzZw90J/Ek945xEQQO0TsmcwEyMzgtfRW2UGqBaLMeJ41oeDhmeOT/2i8
         jPazAYltF7myqOtZUQH0sAkjSrcAzCo0bgY+vfg+G0wI8cd+M/yAePt1glEQGqllue9f
         7YofRvGl6ZzxcPmixStoJXjPBg37W8AZpYv7XJVK6kgJzmq3IjWE/RPzyC1CiHUXt9fj
         SSUg==
X-Received: by 10.68.226.161 with SMTP id rt1mr16716736pbc.98.1446324208672;
        Sat, 31 Oct 2015 13:43:28 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.213.28])
        by smtp.gmail.com with ESMTPSA id ub4sm15434597pac.29.2015.10.31.13.43.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 13:43:28 -0700 (PDT)
Date: Sun, 1 Nov 2015 02:13:24 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove extern from function declarations
Message-ID: <20151031204323.GA9685@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove extern specifier since functions have it by default.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c         | 4 ++--
 drivers/staging/wilc1000/linux_mon.c              | 2 +-
 drivers/staging/wilc1000/linux_wlan.c             | 4 ++--
 drivers/staging/wilc1000/linux_wlan_sdio.c        | 4 ++--
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 ++++----
 drivers/staging/wilc1000/wilc_wlan.c              | 2 +-
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index bb833d3..f2df312 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -505,8 +505,8 @@ tstrWILC_WFIDrv *gu8FlushedJoinReqDrvHandler;
 
 static void *host_int_ParseJoinBssParam(tstrNetworkInfo *ptstrNetworkInfo);
 
-extern void chip_sleep_manually(u32 u32SleepTime);
-extern int linux_wlan_get_num_conn_ifcs(void);
+void chip_sleep_manually(u32 u32SleepTime);
+int linux_wlan_get_num_conn_ifcs(void);
 
 static int add_handler_in_list(tstrWILC_WFIDrv *handler)
 {
diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index bde4095..2f8f3ca 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -28,7 +28,7 @@ extern linux_wlan_t *g_linux_wlan;
 
 static struct net_device *wilc_wfi_mon; /* global monitor netdev */
 
-extern int  mac_xmit(struct sk_buff *skb, struct net_device *dev);
+int  mac_xmit(struct sk_buff *skb, struct net_device *dev);
 
 
 u8 srcAdd[6];
diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 4737f0d..a80defb 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -1048,10 +1048,10 @@ static void wlan_deinitialize_threads(linux_wlan_t *nic)
 #ifdef COMPLEMENT_BOOT
 
 extern volatile int probe;
-extern u8 core_11b_ready(void);
+u8 core_11b_ready(void);
 
 #define READY_CHECK_THRESHOLD		30
-extern void wilc_wlan_global_reset(void);
+void wilc_wlan_global_reset(void);
 u8 wilc1000_prepare_11b_core(wilc_wlan_inp_t *nwi, linux_wlan_t *nic)
 {
 	u8 trials = 0;
diff --git a/drivers/staging/wilc1000/linux_wlan_sdio.c b/drivers/staging/wilc1000/linux_wlan_sdio.c
index b1c6b6f..090cd55 100644
--- a/drivers/staging/wilc1000/linux_wlan_sdio.c
+++ b/drivers/staging/wilc1000/linux_wlan_sdio.c
@@ -24,8 +24,8 @@
 
 struct sdio_func *local_sdio_func;
 extern linux_wlan_t *g_linux_wlan;
-extern int wilc_netdev_init(void);
-extern void wilc_handle_isr(void);
+int wilc_netdev_init(void);
+void wilc_handle_isr(void);
 
 static unsigned int sdio_default_speed;
 
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 153ada8..2d5e326 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -22,11 +22,11 @@
 #define IS_MGMT_STATUS_SUCCES			0x040
 #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
 
-extern int linux_wlan_get_firmware(perInterface_wlan_t *p_nic);
-extern u16 Set_machw_change_vir_if(bool bValue);
+int linux_wlan_get_firmware(perInterface_wlan_t *p_nic);
+u16 Set_machw_change_vir_if(bool bValue);
 
-extern int mac_open(struct net_device *ndev);
-extern int mac_close(struct net_device *ndev);
+int mac_open(struct net_device *ndev);
+int mac_close(struct net_device *ndev);
 
 tstrNetworkInfo astrLastScannedNtwrksShadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
 u32 u32LastScannedNtwrksCountShadow;
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index e11d3d3..f14a278 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -18,7 +18,7 @@
  ********************************************/
 extern wilc_hif_func_t hif_sdio;
 extern wilc_hif_func_t hif_spi;
-extern void WILC_WFI_mgmt_rx(u8 *buff, u32 size);
+void WILC_WFI_mgmt_rx(u8 *buff, u32 size);
 u32 wilc_get_chipid(u8 update);
 u16 Set_machw_change_vir_if(bool bValue);
 
-- 
1.9.1


