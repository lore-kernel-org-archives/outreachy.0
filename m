X-GM-THRID: 6331637573158436864
X-Received: by 10.107.176.80 with SMTP id z77mr2549312ioe.52.1474201603830;
        Sun, 18 Sep 2016 05:26:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.9 with SMTP id b9ls2532113ioe.23.gmail; Sun, 18 Sep
 2016 05:26:43 -0700 (PDT)
X-Received: by 10.36.249.199 with SMTP id l190mr1837076ith.29.1474201603338;
        Sun, 18 Sep 2016 05:26:43 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id e66si320137pfk.2.2016.09.18.05.26.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 05:26:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so5626285pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 05:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ASIn1jdW9rrJzbKGh5e8ZWUka+6dCP/cqQ75zyOKP9Y=;
        b=Xh4RmTlJya6JgcPvgmIelyO5nF74bG8Zw+OfI0xED4tVsUOFuXuvHKdBcMdjmQuF+j
         c/Rm4JmJ4ZDRomYHrS4qz5JZqMLc+cqiEYaKoDDm7rFEByk+1RCJ2cpgxS3llAS88M6G
         XUhG8BAJJzfuBPwEp9mI1tkSLhi2UpdwKNhoCgEdovBehPAHKytfcgpK7gFuUFNCBu4k
         spyQAXegcmIpUQL7uIsw2pgspGdhruWMs2XSSuu8MrxhkQoYZR4+D3EpXBkiJfq7afkP
         Yt+iOuXoysEQpYiqOcyzr+LYmbqkoAWfpA/vJP1fy5hndHIQikjzbp3vX5CCvFSfYrjB
         w78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ASIn1jdW9rrJzbKGh5e8ZWUka+6dCP/cqQ75zyOKP9Y=;
        b=OyvMvDGfG8Os17NzYfebHF4RBQKt9FkndBpVj1GhRFlwmkSJTdOCfZJJFWmqUo+n2v
         5vmefV7sJwjEodxhtabriyb9+MgkgbgydftalFp1KeLFem1MuBczLfDMVhYc03Zqvqv7
         Vf6XnTN3gdsyjkniYZ/2xm1/6Z54KQx6myitlGqkywIuMytw/BTgTdqmJS8JFL+Qeh7v
         lm9TNDANdl9c7YvQwuhltaTXhEiW0RI04avkbhBzEwXEyg/h5BHpnEMkN3N3i9e0lqtk
         3oFa84ArASg9qCTsg7QD5yPrq2M89z4wGj0WaMhqexB5uSdbgCBWNdiL4eBBo12gOx0x
         N7XA==
X-Gm-Message-State: AE9vXwMx2AKslx4nLCwoo28lpb+sNiECEhxQdKYTsoWXikSeisRJVyw93fGVuOUkVtM/Lw==
X-Received: by 10.66.227.4 with SMTP id rw4mr38507702pac.119.1474201603108;
        Sun, 18 Sep 2016 05:26:43 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.140.218])
        by smtp.gmail.com with ESMTPSA id z12sm48604293pfk.53.2016.09.18.05.26.30
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 05:26:41 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 18 Sep 2016 17:56:25 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: rtl8192u: Remove useless type conversion
Date: Sun, 18 Sep 2016 17:56:24 +0530
Message-Id: <1474201584-19843-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Some type conversions like casting a pointer to a pointer of same type,
casting to the original type using addressof(&) operator etc. are not
needed. Therefore, remove them. Done using coccinelle:

@@
type t;
t *p;
t a;
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
Changes in v2:
* Modify the coccinelle script.

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c      |  2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c |  2 +-
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c    |  6 +++---
 drivers/staging/rtl8192u/r8192U_core.c                 | 10 +++++-----
 drivers/staging/rtl8192u/r8192U_dm.c                   |  6 +++---
 5 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 051c2be..89cbc07 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -1027,7 +1027,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 				ieee,
 				(PTS_COMMON_INFO *) &pRxTS,
 				hdr->addr2,
-				(u8)Frame_QoSTID((u8 *)(skb->data)),
+				Frame_QoSTID((u8 *)(skb->data)),
 				RX_DIR,
 				true))
 		{
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
index b86b28a..8dc2f16 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4472,10 +4472,10 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 				 */
 				pstats->SignalQuality =
 					precord_stats->SignalQuality =
-					(u8)(evm & 0xff);
+					evm & 0xff;
 			pstats->RxMIMOSignalQuality[i] =
 				precord_stats->RxMIMOSignalQuality[i] =
-				(u8)(evm & 0xff);
+				evm & 0xff;
 		}
 
 
@@ -5010,8 +5010,7 @@ static int rtl8192_usb_probe(struct usb_interface *intf,
 
 	dev->netdev_ops = &rtl8192_netdev_ops;
 
-	dev->wireless_handlers =
-		(struct iw_handler_def *)&r8192_wx_handlers_def;
+	dev->wireless_handlers = &r8192_wx_handlers_def;
 
 	dev->type = ARPHRD_ETHER;
 
@@ -5219,7 +5218,8 @@ void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
 		} else {
 			/* Key Material */
 			if (KeyContent) {
-				write_nic_dword(dev, WCAMI, (u32)(*(KeyContent + i - 2)));
+				write_nic_dword(dev, WCAMI,
+						*(KeyContent + i - 2));
 				write_nic_dword(dev, RWCAM, TargetCommand);
 			}
 		}
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


