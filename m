X-GM-THRID: 6341057310426660864
X-Received: by 10.200.51.97 with SMTP id u30mr2314299qta.16.1476392455529;
        Thu, 13 Oct 2016 14:00:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.12 with SMTP id 12ls7060023otg.13.gmail; Thu, 13 Oct
 2016 14:00:55 -0700 (PDT)
X-Received: by 10.157.14.207 with SMTP id 73mr2431285otj.32.1476392455055;
        Thu, 13 Oct 2016 14:00:55 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id p131si2662470vkf.1.2016.10.13.14.00.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 14:00:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id x79so14637069lff.2
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 14:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+4rI6+Q1/5uz0EmGuBb/AFv6lPNo79cqYEbS1sxH8FI=;
        b=Asst+B4fzeT1ltzakpManJyQj4LbJapcm0gJYe7qsYxaq2bPgkbjPwmo04zddv/KNi
         6PJwTRmZIGjE3JMZtEp0VTJFBTTavZiHfncAHMVVl4pz69R3hWGmcksnuAPKwDtYejxT
         8cbDP5efB+qOToiBgRIf7yf30I0fLPtPDQsdLoXGv1NvM34Tp46IpabPHk+U/Lp1qWR+
         2Kr701JQ5vOydg5aYwENgs043SCCI9H0HI55ilqlholoi8+p7KE0TxRKpo+/StZLnOn2
         vJxkIAY0eZ2RNcD10AEoZdpHVWXU3Gf0gtpyEXMYWJot+SQft7VtmbUQXeX5OfOptI8D
         eMkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+4rI6+Q1/5uz0EmGuBb/AFv6lPNo79cqYEbS1sxH8FI=;
        b=PEPJAMvBKGMOVMP9mT3Iw4zQo2W0OkNuE7yUpTbIj/ELKckvdOyZUAQVVWNhUDLORv
         APHX4xAiZ5fh9jWmPDyZJ/kqBX6jFgy2xQ8bEkzCC/STaLa79GC3tfmP7xLxkSErQtol
         Vqvt1iuCHbPnGUVZPFmngicrSd1XuHO+x+0VLQdBUcBNxl3AjwpMTSljTKVhqnaRa2Ne
         0Hv9W4TBEXryefeC166fYa1vQDBLmxEfib3FKLoEXoj1I1WxBp0j1CdsMV2d3cKFtRsG
         FuoxopHsFKk0ZifGfRP4ne4kCVIWr9p4qI8hjLSj4CCGauuuSqDzI+h09zRQi9cPZotX
         m+AQ==
X-Gm-Message-State: AA6/9RkdwOJHzmkhYKic+u1cn3sILNe/38YvS04PZqPSATsslISo84ijh/S666LT2rU4bQ==
X-Received: by 10.194.111.229 with SMTP id il5mr7755825wjb.135.1476392453399;
        Thu, 13 Oct 2016 14:00:53 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id c7sm25650017wjk.19.2016.10.13.14.00.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 14:00:52 -0700 (PDT)
Date: Fri, 14 Oct 2016 00:00:51 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: Compress return logic into one line
Message-ID: <20161013210051.GA8259@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Simplify function returns by merging assignment and return into
one command line.

Delete unnecesarry return variable.

Found with Coccinelle
@@
expression e, ret;
@@

-ret =
+return
        e;
-return ret

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c       |  4 +---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 18 +++++-------------
 2 files changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 4b51c0a..6229947 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -224,9 +224,7 @@ static inline u16 get_asoc_status(u8 *data)
 	u16 asoc_status;
 
 	asoc_status = data[3];
-	asoc_status = (asoc_status << 8) | data[2];
-
-	return asoc_status;
+	return (asoc_status << 8) | data[2];
 }
 
 static inline u16 get_asoc_id(u8 *data)
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 60d8b05..60e1bc3 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1590,28 +1590,25 @@ static int remain_on_channel(struct wiphy *wiphy,
 	priv->strRemainOnChanParams.u32ListenDuration = duration;
 	priv->strRemainOnChanParams.u32ListenSessionID++;
 
-	s32Error = wilc_remain_on_channel(vif,
+	return wilc_remain_on_channel(vif,
 				priv->strRemainOnChanParams.u32ListenSessionID,
 				duration, chan->hw_value,
 				WILC_WFI_RemainOnChannelExpired,
 				WILC_WFI_RemainOnChannelReady, (void *)priv);
-
-	return s32Error;
 }
 
 static int cancel_remain_on_channel(struct wiphy *wiphy,
 				    struct wireless_dev *wdev,
 				    u64 cookie)
 {
-	s32 s32Error = 0;
 	struct wilc_priv *priv;
 	struct wilc_vif *vif;
 
 	priv = wiphy_priv(wiphy);
 	vif = netdev_priv(priv->dev);
 
-	s32Error = wilc_listen_state_expired(vif, priv->strRemainOnChanParams.u32ListenSessionID);
-	return s32Error;
+	return wilc_listen_state_expired(vif,
+			priv->strRemainOnChanParams.u32ListenSessionID);
 }
 
 static int mgmt_tx(struct wiphy *wiphy,
@@ -1935,12 +1932,10 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
 	wilc_wlan_set_bssid(dev, wl->vif[vif->idx]->src_addr, AP_MODE);
 	wilc_set_power_mgmt(vif, 0, 0);
 
-	s32Error = wilc_add_beacon(vif, settings->beacon_interval,
+	return wilc_add_beacon(vif, settings->beacon_interval,
 				   settings->dtim_period, beacon->head_len,
 				   (u8 *)beacon->head, beacon->tail_len,
 				   (u8 *)beacon->tail);
-
-	return s32Error;
 }
 
 static int change_beacon(struct wiphy *wiphy, struct net_device *dev,
@@ -1948,16 +1943,13 @@ static int change_beacon(struct wiphy *wiphy, struct net_device *dev,
 {
 	struct wilc_priv *priv;
 	struct wilc_vif *vif;
-	s32 s32Error = 0;
 
 	priv = wiphy_priv(wiphy);
 	vif = netdev_priv(priv->dev);
 
-	s32Error = wilc_add_beacon(vif, 0, 0, beacon->head_len,
+	return wilc_add_beacon(vif, 0, 0, beacon->head_len,
 				   (u8 *)beacon->head, beacon->tail_len,
 				   (u8 *)beacon->tail);
-
-	return s32Error;
 }
 
 static int stop_ap(struct wiphy *wiphy, struct net_device *dev)
-- 
2.7.4


