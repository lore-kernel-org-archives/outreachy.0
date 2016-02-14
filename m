X-GM-THRID: 6250978636756680704
X-Received: by 10.66.249.41 with SMTP id yr9mr5179086pac.37.1455419379485;
        Sat, 13 Feb 2016 19:09:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.82 with SMTP id n79ls1168874ion.52.gmail; Sat, 13 Feb
 2016 19:09:38 -0800 (PST)
X-Received: by 10.66.148.69 with SMTP id tq5mr9617673pab.28.1455419378874;
        Sat, 13 Feb 2016 19:09:38 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id 12si2067521pfb.1.2016.02.13.19.09.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 19:09:38 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id x65so68345233pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 19:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Dp0uoGlfcaoa940trTIARIN9AUjn5nWK4dAVR+ZTJZ0=;
        b=FCCdQu8SrAp4pW1h5/toCBDSs/ISggK3Vr3mB5r1EWiN6hIsArz5cHQAGRomqKiXg1
         LvdBEDeZIGl47q2LcnLbANiDJBGsVEnHIVPJnpzzuUh9TvJteaqrOJsbgJKx93Zllzwb
         fkoAej2ZUFbWUlLZS1qRknIBGQ9bqbU0VbStDGFkghMu5LR7WGBjl27OAD+LEzvsMMIY
         Y+qTWFey/1tEQBtHps6AvNtUkksc7crruKr33/8/df9NySNPIU7L59KHR4hvaeesvXqt
         +UaP/rUaWuM4rCdrq4wRuWMeSclFscTu8IKa0TGW4vYzdZEGZrNrLPAy8JFCWmGRumjg
         UmXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Dp0uoGlfcaoa940trTIARIN9AUjn5nWK4dAVR+ZTJZ0=;
        b=gmcrQXUrsPoTx53IQFciWMsMSNkz7P0Wz/bRiogS+hsJdy+r1qg5p5wgHsUh8mgYGS
         rVgUPBwzyMBCyy5U3DnJlfx6T0B1/wHqcm/MZNPEOjIyKrS+Pw+pexQSETxSrT66vq4o
         EbzS6snNIi8bx2Z6ZL6dBqKe0MMkkL/sNmxyoGVkHmtReD9M1pIYzMarVloviCNctSi1
         xmlP16K90OnOzi1SJ8S5myWfDFGAxlBrDk6RDOaCuC2xuIE03TxhX+x/MNTPJXH1eZrM
         wBC+54NavczwvJUH5jS4eCRCqKmox96vPgqgxWOptX5eEdlLduFhiliUzRlNqZnwTx+C
         BLCg==
X-Gm-Message-State: AG10YOQZdZoUxSKDCzAEio0xc0RY/kNXOTFu6PYOkXfZgH60obNbl6m3T0FFGNhoHN9snw==
X-Received: by 10.98.33.131 with SMTP id o3mr13726934pfj.97.1455419378760;
        Sat, 13 Feb 2016 19:09:38 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.102])
        by smtp.gmail.com with ESMTPSA id dg1sm29018833pad.18.2016.02.13.19.09.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 19:09:38 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: wilc1000: fix multiple checkpatch errors
Date: Sun, 14 Feb 2016 11:09:32 +0800
Message-Id: <1455419372-6149-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Address the following checkpatch errors:
* ERROR: "(foo*)" should be "(foo *)"
* ERROR: space required after that ',' (ctx:VxV)
* ERROR: spaces prohibited around that '->' (ctx:WxV)
* ERROR: do not initialise statics to false
* ERROR: do not initialise statics to 0x00

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c         | 2 +-
 drivers/staging/wilc1000/wilc_spi.c               | 9 ++++++---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 4 ++--
 drivers/staging/wilc1000/wilc_wlan.c              | 2 +-
 4 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 5570707..7b2c926 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2679,7 +2679,7 @@ static int hostIFthread(void *pvArg)
 {
 	u32 u32Ret;
 	struct host_if_msg msg;
-	struct wilc *wilc = (struct wilc*)pvArg;
+	struct wilc *wilc = (struct wilc *)pvArg;
 	struct wilc_vif *vif;
 
 	memset(&msg, 0, sizeof(struct host_if_msg));
diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 2928712..339956e 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -514,7 +514,8 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 					crc[0] = rb[rix++];
 					crc[1] = rb[rix++];
 				} else {
-					dev_err(&spi->dev,"buffer overrun when reading crc.\n");
+					dev_err(&spi->dev,
+					  "buffer overrun when reading crc.\n");
 					result = N_FAIL;
 					return result;
 				}
@@ -680,7 +681,8 @@ static int spi_data_write(struct wilc *wilc, u8 *b, u32 sz)
 		 **/
 		if (!g_spi.crc_off) {
 			if (wilc_spi_tx(wilc, crc, 2)) {
-				dev_err(&spi->dev,"Failed data block crc write, bus error...\n");
+				dev_err(&spi->dev,
+				 "Failed data block crc write, bus error...\n");
 				result = N_FAIL;
 				break;
 			}
@@ -1074,7 +1076,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 				ret = wilc_spi_write_reg(wilc,
 							 WILC_VMM_CORE_CTL, 1);
 				if (!ret) {
-					dev_err(&spi->dev,"fail write reg vmm_core_ctl...\n");
+					dev_err(&spi->dev,
+					    "fail write reg vmm_core_ctl...\n");
 					goto _fail_;
 				}
 			}
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 97d1b80..4f1fb2e 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -157,7 +157,7 @@ static u8 wlan_channel = INVALID_CHANNEL;
 static u8 curr_channel;
 static u8 p2p_oui[] = {0x50, 0x6f, 0x9A, 0x09};
 static u8 p2p_local_random = 0x01;
-static u8 p2p_recv_random = 0x00;
+static u8 p2p_recv_random;
 static u8 p2p_vendor_spec[] = {0xdd, 0x05, 0x00, 0x08, 0x40, 0x03};
 static bool wilc_ie;
 
@@ -2126,7 +2126,7 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
 
 	priv = wiphy_priv(wiphy);
 	vif = netdev_priv(dev);
-	wl = vif ->wilc;
+	wl = vif->wilc;
 	PRINT_D(HOSTAPD_DBG, "Starting ap\n");
 
 	PRINT_D(HOSTAPD_DBG, "Interval = %d\n DTIM period = %d\n Head length = %zu Tail length = %zu\n",
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index a396ac9..ef65e8e 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -325,7 +325,7 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
 	return 1;
 }
 
-static bool enabled = false;
+static bool enabled;
 
 void wilc_enable_tcp_ack_filter(bool value)
 {
-- 
1.9.1


