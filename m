X-GM-THRID: 6251387013409275904
X-Received: by 10.98.43.132 with SMTP id r126mr14355077pfr.5.1455514465872;
        Sun, 14 Feb 2016 21:34:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.160.37 with SMTP id xh5ls782634igb.42.canary; Sun, 14 Feb
 2016 21:34:25 -0800 (PST)
X-Received: by 10.107.18.216 with SMTP id 85mr15808647ios.16.1455514465553;
        Sun, 14 Feb 2016 21:34:25 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ui7si3150433pab.0.2016.02.14.21.34.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 21:34:25 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so6738788pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 21:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=P2OyOZyiAowDeBDtxXSrt9Sq/bzeXzEiwtYrN/vEqKk=;
        b=Lv4uKiKm6dLzWh2WPbetZWq9uiF0FHe7eQSr3sgdG64JOEBItIyMRlb1wrxdZ+a7r/
         bKjd/DdUf8YXBug2wAiYs2jW6rh+lHm7AgwOSNB2HBylGgKIjQI9wGCt6gsJl88ekJID
         Nb/4f4Bj8+Uw7Z/iFnCXG0W3m0BDqzYQDHPtXcFyTOosvZVApokRJxbn5V6okFzovIOc
         OBjEdrbdLveifeu7fKHxR5KUQU91W8/ZM2kQJ9nVg+IiypYMftHIeHa1tY2Txh5/u1jC
         /pztn1MVvqoy0dvIyz/hSHqv46yn8g8RwnjMd1G00ps7fm0Oi50GE7SiIX/dFjZsf1kl
         Ek+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=P2OyOZyiAowDeBDtxXSrt9Sq/bzeXzEiwtYrN/vEqKk=;
        b=SlctC5vDcbJYVvDIh7yKhxCr/TGC3374qhab/QLAtM2rfx8KMty92LlPGGuZs4+CJ1
         c6xQFRd9C5w3QEq+BvyUNSo0f86uSpcvDyWZRnAOuszdcw0c4zzurriWxTXuzVByRV6Q
         IZzCFJNBuGkCLbryDb/X0QNXJaiJwFBhXpVNzVzzaJVHqVWQXegYpC4dWIVx8Ny5HbM8
         Dd2xg7Ut4w+yRlZpamuUFgoCUqEQqv8Au9yZ9PVKyIJ0FSOvXJlgFNzzUsIYtVHaNhen
         zj9uvzlv1Jc7J670X2CBy6gIxZPSSMcEdXDwr6bxL6alxofPLwGw6DQ4DbososcQ7CdZ
         i8ew==
X-Gm-Message-State: AG10YOQi1/byaWU3jD6ZgK17kRl5h1RPW7bSyXJm+VZUrfpZjwCExwlUHAUvOlBWc/7Q5A==
X-Received: by 10.67.6.226 with SMTP id cx2mr20706803pad.93.1455514465431;
        Sun, 14 Feb 2016 21:34:25 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.36])
        by smtp.gmail.com with ESMTPSA id ah10sm35158585pad.23.2016.02.14.21.34.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 21:34:24 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 1/2] staging: wilc1000: Remove whitespace checkpatch errors
Date: Mon, 15 Feb 2016 13:34:16 +0800
Message-Id: <bf2ba268e14b1a664ffecb075bc4b6bdb8f520c9.1455513866.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455513866.git.eraretuya@gmail.com>
References: <cover.1455513866.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455513866.git.eraretuya@gmail.com>
References: <cover.1455513866.git.eraretuya@gmail.com>

Address the following checkpatch errors concerning whitespace:
* ERROR: trailing whitespace
* ERROR: space required after that ',' (ctx:VxV)
* ERROR: spaces prohibited around that '->' (ctx:WxV)

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c         | 2 +-
 drivers/staging/wilc1000/linux_mon.c              | 2 +-
 drivers/staging/wilc1000/wilc_spi.c               | 9 ++++++---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 4 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index d1eedfb..04337c7 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3352,7 +3352,7 @@ static s32 host_int_get_assoc_res_info(struct wilc_vif *vif,
 		PRINT_ER("Failed to send association response config packet\n");
 		return -EINVAL;
 	}
-	
+
 	*pu32RcvdAssocRespInfoLen = wid.size;
 	return result;
 }
diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index 21f35d7..9fcb497 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -302,7 +302,7 @@ struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_devi
 	struct WILC_WFI_mon_priv *priv;
 
 	/*If monitor interface is already initialized, return it*/
-	if (wilc_wfi_mon) 
+	if (wilc_wfi_mon)
 		return wilc_wfi_mon;
 
 	wilc_wfi_mon = alloc_etherdev(sizeof(struct WILC_WFI_mon_priv));
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
index 81a2ee9..46c6e32 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -2126,7 +2126,7 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
 
 	priv = wiphy_priv(wiphy);
 	vif = netdev_priv(dev);
-	wl = vif ->wilc;
+	wl = vif->wilc;
 	PRINT_D(HOSTAPD_DBG, "Starting ap\n");
 
 	PRINT_D(HOSTAPD_DBG, "Interval = %d\n DTIM period = %d\n Head length = %zu Tail length = %zu\n",
-- 
1.9.1


