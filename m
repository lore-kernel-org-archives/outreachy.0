X-GM-THRID: 6339122887440465920
X-Received: by 10.36.189.71 with SMTP id x68mr1105348ite.30.1475942062007;
        Sat, 08 Oct 2016 08:54:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.7 with SMTP id h7ls7592993otb.23.gmail; Sat, 08 Oct
 2016 08:54:21 -0700 (PDT)
X-Received: by 10.200.34.169 with SMTP id f38mr4087138qta.68.1475942061644;
        Sat, 08 Oct 2016 08:54:21 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si6630425pab.2.2016.10.08.08.54.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 08:54:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t25so4573926pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 08:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=m2urLBZy6sVrSenX3+CIMYp5Hcnzf4yyQ62WVTdWcw8=;
        b=yh2rfBwD1CZEyFXuy76rD+JQN45B023kNWF0e+V412Zhg60vc8fs3s33Md9BBlE/eP
         39d6X3CD59LGsmbanm/2YS45YMlkfiYSmzpVqctcAAAFHHBJtw4nndivRtdN8aZpq5+U
         P2LY98mKCVuttC00/9t7OTNOP3yU3r+1EkZ19LFHmpV4//1wptESGvdxSbgPwojMrw+G
         G33dHj0UVznsihkF/0JzXnkqgJc8bdDOCN4H5+exu8Ao3YhzlfJXgPFtkRJqFTGWLCVd
         K+yytZKVbBXigHnsjfmM76A7bziZWnmQXX8szfJfLcGW4VwaKNSWhiwz54aSbYL/kuXc
         GD5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=m2urLBZy6sVrSenX3+CIMYp5Hcnzf4yyQ62WVTdWcw8=;
        b=G/81P+wqk6Z2IQV3LNtLwpqC347x0YtSZuxrurlVEwRTvCWyB4WQBecmg9C8WUiGzs
         uGJ9ndiY2DU6NenGbwtXZ1VgUnW/8Xc551xzJDMZStXbeBxForn4J/vatyZTIqYCL2AS
         pQoHsyZIqAbEWlQK5petTmd+EIKLSHL2s29Fc+iXjFhfp3gmPLdryKPE5ufmswNTGZSg
         PWt55KuB2cxVqKgCpuQvRwL0xBmNQQV3+Tectlm0Radj0dUSGw/OwclMHoOEg7y3zR+o
         IZYx7vpH+JySZaA0HWpDWiYxGnpX7vk38jCA4LrB5iFJugdTM5PhsZkaV5iUtl7wBvKw
         g6Ww==
X-Gm-Message-State: AA6/9Rnv/ZPHL6ls17tO1UdhYUl3KU3vcV8InOCzszAbcg8AUXNDwfi9cbEqlrztS0vjMA==
X-Received: by 10.98.141.146 with SMTP id p18mr37598763pfk.17.1475942060907;
        Sat, 08 Oct 2016 08:54:20 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.183.145])
        by smtp.gmail.com with ESMTPSA id aa6sm39271545pad.46.2016.10.08.08.54.11
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 08:54:19 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 08 Oct 2016 21:23:57 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Remove useless type conversion
Date: Sat,  8 Oct 2016 21:23:55 +0530
Message-Id: <1475942035-30991-1-git-send-email-bhumirks@gmail.com>
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
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 3 +--
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c    | 6 +++---
 drivers/staging/rtl8192u/r8192U_core.c                 | 3 +--
 drivers/staging/rtl8192u/r8192U_dm.c                   | 6 +++---
 4 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 4c2b341..bef60b6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -807,8 +807,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 		*(tag++) = MFIE_TYPE_IBSS_SET;
 		*(tag++) = 2;
 
-		put_unaligned_le16(ieee->current_network.atim_window,
-				   (u8 *)tag);
+		put_unaligned_le16(ieee->current_network.atim_window, tag);
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
index 5d2d181..457eeb5 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4961,8 +4961,7 @@ static int rtl8192_usb_probe(struct usb_interface *intf,
 
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


