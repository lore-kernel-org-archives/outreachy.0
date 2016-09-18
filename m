X-GM-THRID: 6331637573158436864
X-Received: by 10.107.57.198 with SMTP id g189mr2820300ioa.88.1474199251532;
        Sun, 18 Sep 2016 04:47:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.17 with SMTP id n17ls7474657ota.40.gmail; Sun, 18 Sep
 2016 04:47:31 -0700 (PDT)
X-Received: by 10.129.168.197 with SMTP id f188mr13403775ywh.39.1474199251202;
        Sun, 18 Sep 2016 04:47:31 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si5589972pfe.0.2016.09.18.04.47.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 04:47:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so5615543pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 04:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Qs/VgJbINdamiQqLBUehK7TqFJdL0ORvhi+uCcdyNa4=;
        b=sCYw0zB6mRp5UzrjCbwGiqtYSEmv+khCVTkWUBPBcq77RQVc5l4NFR3tAJy97sGcGK
         iPZFRMuBmXGghgOQEN+ByD1GiifDHw/DpEjPc5lchSQrZaAD7vBcV5uyIdrwX9p5rkCb
         7JCjRc2O1ZdyqpEJEs1cEeZdXT/DhUHvjpyc0/8iCxLTfdYLJ7GHU/HIYRsBcgo7c5UA
         s2M8xbbvSFuA8duIQulHIMN/Bcc/WodIyvZZdeBnY+Ooshxy9E9suh7pqiw9a7fLfVdv
         l8Qn6jd9zo700YzQEbWxq/3lq1Cy5OEBeGUen/vhWp/JWb9XaSck9+rs9FnrwoatLn+0
         CrdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Qs/VgJbINdamiQqLBUehK7TqFJdL0ORvhi+uCcdyNa4=;
        b=Hr4ko9SRqsXfYpWDTGy8l7JeZZUm2X2c3YYI1/MJcF2Dw+w/EZQOSvC1dJG048mBaV
         b+cPAt7S4PPpa0dgYQdRSws53gbvUDR8Oa8dc7QiTf4tX+rGx3sePncbPOzcBke1jUpF
         J/3r6KQkQ2TbyDXdyxmbkokf33vultDcdfVa2fuxV0Mq3FAgkboPbJ0dRBv+M+AQB5YI
         AhIHi4L1F0dMSPMblbVCUSyYnCdKXTqSy82tGovzHNrIwqp+swNINm8xXVCyUOZCj0Fw
         xhEcrtfEesmtjuFOrBLhawBxRJ09Um75atCGRQvP7GJ6IhxfLPQvCQqo3MjZ8H6teGpz
         FLSQ==
X-Gm-Message-State: AE9vXwO0SgoZ8qZy8lYVO+6fQrcvhzxsAgAFQYHNE4esYvbU566rKVld+PjLITUop7seWg==
X-Received: by 10.66.17.137 with SMTP id o9mr38303917pad.48.1474199250961;
        Sun, 18 Sep 2016 04:47:30 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.141.185])
        by smtp.gmail.com with ESMTPSA id i7sm24133365paf.9.2016.09.18.04.47.19
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 04:47:29 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 18 Sep 2016 17:17:09 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Remove useless type conversion
Date: Sun, 18 Sep 2016 17:16:58 +0530
Message-Id: <1474199218-15749-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Some type conversions like casting a pointer to a pointer of same type,
casting to the original type using addressof(&) operator etc. are not
needed. Therefore, remove them. Done using coccinelle:

@@
type t;
t *p,a;
@@
(
- (t)(a)
+ a
|
- (t *)(p)
+ p
|
- (t *)(&a)
+ &a
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c    | 6 +++---
 drivers/staging/rtl8192u/r8192U_core.c                 | 3 +--
 drivers/staging/rtl8192u/r8192U_dm.c                   | 6 +++---
 4 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 49db1b7..10a8040 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -806,7 +806,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 		*(tag++) = 2;
 
 		put_unaligned_le16(ieee->current_network.atim_window,
-				   (u8 *)tag);
+				   tag);
 		tag+=2;
 	}
 
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 28737ec..98fbb6e 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -354,7 +354,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
 
 	req = (struct rtl_80211_hdr_3addr *) skb->data;
 	tag = (u8 *)req;
-	dst = (u8 *)(&req->addr2[0]);
+	dst = &req->addr2[0];
 	tag += sizeof(struct rtl_80211_hdr_3addr);
 	pDialogToken = tag + 2;  //category+action
 	pBaParamSet = (PBA_PARAM_SET)(tag + 3);   //+DialogToken
@@ -452,7 +452,7 @@ int ieee80211_rx_ADDBARsp(struct ieee80211_device *ieee, struct sk_buff *skb)
 	}
 	rsp = (struct rtl_80211_hdr_3addr *)skb->data;
 	tag = (u8 *)rsp;
-	dst = (u8 *)(&rsp->addr2[0]);
+	dst = &rsp->addr2[0];
 	tag += sizeof(struct rtl_80211_hdr_3addr);
 	pDialogToken = tag + 2;
 	pStatusCode = (u16 *)(tag + 3);
@@ -590,7 +590,7 @@ int ieee80211_rx_DELBA(struct ieee80211_device *ieee, struct sk_buff *skb)
 
 	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
 	delba = (struct rtl_80211_hdr_3addr *)skb->data;
-	dst = (u8 *)(&delba->addr2[0]);
+	dst = &delba->addr2[0];
 	pDelBaParamSet = (PDELBA_PARAM_SET)&delba->payload[2];
 
 	if(pDelBaParamSet->field.Initiator == 1)
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index b86b28a..9a7f1df 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -5010,8 +5010,7 @@ static int rtl8192_usb_probe(struct usb_interface *intf,
 
 	dev->netdev_ops = &rtl8192_netdev_ops;
 
-	dev->wireless_handlers =
-		(struct iw_handler_def *)&r8192_wx_handlers_def;
+	dev->wireless_handlers = &r8192_wx_handlers_def;
 
 	dev->type = ARPHRD_ETHER;
 
diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 1e0e53c..9209aad 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -150,7 +150,7 @@ void deinit_hal_dm(struct net_device *dev)
 #ifdef USB_RX_AGGREGATION_SUPPORT
 void dm_CheckRxAggregation(struct net_device *dev)
 {
-	struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
+	struct r8192_priv *priv = ieee80211_priv(dev);
 	PRT_HIGH_THROUGHPUT	pHTInfo = priv->ieee80211->pHTInfo;
 	static unsigned long	lastTxOkCnt;
 	static unsigned long	lastRxOkCnt;
@@ -2346,7 +2346,7 @@ dm_CheckEdcaTurbo_EXIT:
 
 static void dm_init_ctstoself(struct net_device *dev)
 {
-	struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
+	struct r8192_priv *priv = ieee80211_priv(dev);
 
 	priv->ieee80211->bCTSToSelfEnable = true;
 	priv->ieee80211->CTSToSelfTH = CTSToSelfTHVal;
@@ -2354,7 +2354,7 @@ static void dm_init_ctstoself(struct net_device *dev)
 
 static void dm_ctstoself(struct net_device *dev)
 {
-	struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
+	struct r8192_priv *priv = ieee80211_priv(dev);
 	PRT_HIGH_THROUGHPUT	pHTInfo = priv->ieee80211->pHTInfo;
 	static unsigned long				lastTxOkCnt;
 	static unsigned long				lastRxOkCnt;
-- 
1.9.1


