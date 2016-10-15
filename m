X-GM-THRID: 6341764941506150400
X-Received: by 10.31.149.143 with SMTP id x137mr4958273vkd.13.1476570393651;
        Sat, 15 Oct 2016 15:26:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.80 with SMTP id f16ls11594346otd.28.gmail; Sat, 15 Oct
 2016 15:26:33 -0700 (PDT)
X-Received: by 10.31.124.133 with SMTP id x127mr4862757vkc.8.1476570393215;
        Sat, 15 Oct 2016 15:26:33 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x244.google.com (mail-ua0-x244.google.com. [2607:f8b0:400c:c08::244])
        by gmr-mx.google.com with ESMTPS id p131si3895260vkf.1.2016.10.15.15.26.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 15:26:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) client-ip=2607:f8b0:400c:c08::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x244.google.com with SMTP id p25so542026uaa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 15:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fUCxXzrZJmuvSwrMyHTMvszdQ8y5ig56ikApJ8x+P9A=;
        b=yH+IxL1t0BCV6XYZ0WKK+kF8sRIOf4Jdv/ABxnbrNgHDoC8m7qDi/auOJpwxc4VSkD
         Y6eLA9/AgvtLPEPvJb/KPmeSe0PkjdRTY/Na+MJWfrM2lHLHwcRhKC+OA2EciFK1OFu1
         fwMdfgoFnLlci6piBxqD6rInt8GuLAN3/4NYqAYZPNKVCEf3oImmEe/UI5fNAT/Da9FN
         CxczrDtPqZxzJ52Dzk7iOZUnMSrqoJnKAOEirlzOAK7agoyCOrTv9tAxGjTQF6nROvfx
         vCSZeJkPFNDwWWqIFXFzZp3h2kNHR87nto7gMd6jg/yBgRPXiVAc4Gf1sJV9ZxRPltkO
         mReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fUCxXzrZJmuvSwrMyHTMvszdQ8y5ig56ikApJ8x+P9A=;
        b=bGbqLDWJod0HGQxKCnZGuzGWOxFd0vJAECYU+KWxHLQEF+u2rrWj+IrTJwajPx+YI6
         8QpFVDv4fLXq95Xmrp/wOiSOlxd7mtfJIVHHapjPoZ/KYPF/0FTlOBN1IaYn1dCHj7hC
         DjQWva5fCWHurZ8Bo9RJ2J0dxj+Kys5M4zQsV67Rzqhd+HcM1Ohsunh98C6flMGhlEKg
         ZA7zo7qwoQLT6SzkXypi18Hp3D6L5zISQk9sPQZUjtF9Xh96QKaOQYZLFUfzfH6sHuS1
         +R2tfbVtxHuBUPZiVWUcMm833CUEWpKU1NBzmnbVwj0+yQg5cgql+Cmm3IImhUnjHmrI
         4Vtw==
X-Gm-Message-State: AA6/9RklS/T+oFSgkOfbEQZ9YTJAdqp4Qq/xjwIauItBQve5xANGil2dZpC5moNQ5zIojQ==
X-Received: by 10.176.81.219 with SMTP id h27mr2172892uaa.65.1476570392994;
        Sat, 15 Oct 2016 15:26:32 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id i188sm9296891vki.28.2016.10.15.15.26.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 15:26:32 -0700 (PDT)
Date: Sat, 15 Oct 2016 19:26:26 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wilc1000: Remove unnecessary extern variables.
Message-ID: <20161015222626.GA18120@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Extern variables and functions used in only one file were removed
from .h files, and made static in the .c files they're used.

Extern variable wilc_initialized was declared and never used, so it was
removed.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: Make functions of v1 static in the only .c file that uses them.
 Add other variables and functions cleanups.

 drivers/staging/wilc1000/host_interface.h         | 1 -
 drivers/staging/wilc1000/linux_wlan.c             | 6 ++++--
 drivers/staging/wilc1000/wilc_sdio.c              | 3 ++-
 drivers/staging/wilc1000/wilc_spi.c               | 3 ++-
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 5 -----
 drivers/staging/wilc1000/wilc_wlan.h              | 6 ------
 6 files changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index ddfea29..f36d3b5 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -367,7 +367,6 @@ extern u8 wilc_connected_ssid[6];
 extern u8 wilc_multicast_mac_addr_list[WILC_MULTICAST_TABLE_SIZE][ETH_ALEN];
 
 extern int wilc_connecting;
-extern u8 wilc_initialized;
 extern struct timer_list wilc_during_ip_timer;
 
 #endif
diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 6370a5e..42bb86b 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -37,6 +37,8 @@ static void linux_wlan_tx_complete(void *priv, int status);
 static int  mac_init_fn(struct net_device *ndev);
 static struct net_device_stats *mac_stats(struct net_device *dev);
 static int  mac_ioctl(struct net_device *ndev, struct ifreq *req, int cmd);
+static int wilc_mac_open(struct net_device *ndev);
+static int wilc_mac_close(struct net_device *ndev);
 static void wilc_set_multicast_list(struct net_device *dev);
 
 bool wilc_enable_ps = true;
@@ -847,7 +849,7 @@ static int mac_init_fn(struct net_device *ndev)
 	return 0;
 }
 
-int wilc_mac_open(struct net_device *ndev)
+static int wilc_mac_open(struct net_device *ndev)
 {
 	struct wilc_vif *vif;
 
@@ -1038,7 +1040,7 @@ int wilc_mac_xmit(struct sk_buff *skb, struct net_device *ndev)
 	return 0;
 }
 
-int wilc_mac_close(struct net_device *ndev)
+static int wilc_mac_close(struct net_device *ndev)
 {
 	struct wilc_priv *priv;
 	struct wilc_vif *vif;
diff --git a/drivers/staging/wilc1000/wilc_sdio.c b/drivers/staging/wilc1000/wilc_sdio.c
index 39b73fb2..3ad7cec 100644
--- a/drivers/staging/wilc1000/wilc_sdio.c
+++ b/drivers/staging/wilc1000/wilc_sdio.c
@@ -39,6 +39,7 @@ struct wilc_sdio {
 };
 
 static struct wilc_sdio g_sdio;
+static const struct wilc_hif_func wilc_hif_sdio;
 
 static int sdio_write_reg(struct wilc *wilc, u32 addr, u32 data);
 static int sdio_read_reg(struct wilc *wilc, u32 addr, u32 *data);
@@ -1100,7 +1101,7 @@ static int sdio_sync_ext(struct wilc *wilc, int nint)
  *
  ********************************************/
 
-const struct wilc_hif_func wilc_hif_sdio = {
+static const struct wilc_hif_func wilc_hif_sdio = {
 	.hif_init = sdio_init,
 	.hif_deinit = sdio_deinit,
 	.hif_read_reg = sdio_read_reg,
diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 572e57d..55d53c3 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -30,6 +30,7 @@ struct wilc_spi {
 };
 
 static struct wilc_spi g_spi;
+static const struct wilc_hif_func wilc_hif_spi;
 
 static int wilc_spi_read(struct wilc *wilc, u32, u8 *, u32);
 static int wilc_spi_write(struct wilc *wilc, u32, u8 *, u32);
@@ -1134,7 +1135,7 @@ static int wilc_spi_sync_ext(struct wilc *wilc, int nint)
  *      Global spi HIF function table
  *
  ********************************************/
-const struct wilc_hif_func wilc_hif_spi = {
+static const struct wilc_hif_func wilc_hif_spi = {
 	.hif_init = wilc_spi_init,
 	.hif_deinit = _wilc_spi_deinit,
 	.hif_read_reg = wilc_spi_read_reg,
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index fca96d3..762d093 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -90,17 +90,12 @@ static const struct wiphy_wowlan_support wowlan_support = {
 #define IS_MGMT_STATUS_SUCCES			0x040
 #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
 
-extern int wilc_mac_open(struct net_device *ndev);
-extern int wilc_mac_close(struct net_device *ndev);
-
 static struct network_info last_scanned_shadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
 static u32 last_scanned_cnt;
 struct timer_list wilc_during_ip_timer;
 static struct timer_list hAgingTimer;
 static u8 op_ifcs;
 
-u8 wilc_initialized = 1;
-
 #define CHAN2G(_channel, _freq, _flags) {	 \
 		.band             = NL80211_BAND_2GHZ, \
 		.center_freq      = (_freq),		 \
diff --git a/drivers/staging/wilc1000/wilc_wlan.h b/drivers/staging/wilc1000/wilc_wlan.h
index de6c4dd..11365ef 100644
--- a/drivers/staging/wilc1000/wilc_wlan.h
+++ b/drivers/staging/wilc1000/wilc_wlan.h
@@ -248,9 +248,6 @@ struct wilc_hif_func {
 	void (*disable_interrupt)(struct wilc *nic);
 };
 
-extern const struct wilc_hif_func wilc_hif_spi;
-extern const struct wilc_hif_func wilc_hif_sdio;
-
 /********************************************
  *
  *      Configuration Structure
@@ -297,9 +294,6 @@ void wilc_enable_tcp_ack_filter(bool value);
 int wilc_wlan_get_num_conn_ifcs(struct wilc *);
 int wilc_mac_xmit(struct sk_buff *skb, struct net_device *dev);
 
-int wilc_mac_open(struct net_device *ndev);
-int wilc_mac_close(struct net_device *ndev);
-
 void WILC_WFI_p2p_rx(struct net_device *dev, u8 *buff, u32 size);
 void host_wakeup_notify(struct wilc *wilc);
 void host_sleep_notify(struct wilc *wilc);
-- 
2.7.4


