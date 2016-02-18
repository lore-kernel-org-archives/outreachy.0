X-GM-THRID: 6252750007665950720
X-Received: by 10.129.41.70 with SMTP id p67mr9294244ywp.33.1455831808409;
        Thu, 18 Feb 2016 13:43:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.20 with SMTP id h20ls2279149ioe.98.gmail; Thu, 18 Feb
 2016 13:43:28 -0800 (PST)
X-Received: by 10.98.42.67 with SMTP id q64mr5389952pfq.9.1455831807990;
        Thu, 18 Feb 2016 13:43:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id ff2si1286701pad.2.2016.02.18.13.43.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 13:43:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id q63so38325937pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 13:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Bny+PFFknos12EM/1ziaBfkWPg/V9K+6Hs/r8jIUWio=;
        b=hTSTOv0iZm6yfP/QzkAp3kTsFdNNDIGhLtF8ko9K01KP6jeO8IfJS42emC3J7xmRs3
         fHSjPf5Wl9xvVA9T1AMMSqpfrTlQxUHHLThzWJhFSglkMsyfqJk85qZiLTnybSbkyG2m
         0yw8ujPYRz2KI+hTRvqZsWgq9IgeknMKRQPqnu2yFNh3zgawUWS36dfIGJf2e9d+YKFM
         QUkT60xdPzKuZ3sKEQtmSin6RuUDXKQErynxXuNKqpQrF7KPQYOjFIKAYhq9suMQr1ti
         e+YMYmR9AE+sXH5M4wSOQpusXMtWGB+euNWZMtrlZuHSqOJPCLbGVfVYI/PzsDPQDDow
         qWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Bny+PFFknos12EM/1ziaBfkWPg/V9K+6Hs/r8jIUWio=;
        b=Una803eE77eNqIqe0yX1lBnMIwlm708rhYjYGV/vMCc/AwJpB02o/5tKgzRxsWlHFt
         078aGFDnhWb3D3sJDVBT7MQwtPqiB9yFgnXcElLK1nz0wWiMX4ZxDww/Cd+F+W9QZo2p
         9aPwjlkYOuvY0qYSdcBlFJqR3oQSfV2setg1lpUgs9wmsp72+iw2eMyPiangjmBfeRur
         4iCr6SHgRQe9M7F6HXDKHu0pG0GPBpeeJ9XSXo5tbclnITiudw13zCh/szWqEopebUFZ
         z7jOoMuRsVu5a8U7lR0BQQTtXF91iqj+VbtenwH792Z/xsXmOWvuIyBAiTJA6Y8q8gLB
         Gd9A==
X-Gm-Message-State: AG10YOR+/LO3xI97qusecfdcylXV03DqZPRN8dTVz3xUmeL0/5/Jit8T6Mz8FGE36gSUCw==
X-Received: by 10.98.2.197 with SMTP id 188mr13500252pfc.3.1455831807884;
        Thu, 18 Feb 2016 13:43:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i15sm12508389pfi.55.2016.02.18.13.43.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 13:43:27 -0800 (PST)
Date: Fri, 19 Feb 2016 03:13:56 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Drop useless initialisation
Message-ID: <20160218214356.GA8324@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Removed initialisation of a varible if it is immediately reassigned.

Changes were made using Coccinelle.

@@
type T;
constant C;
expression e;
identifier i;
@@
T i
- = C
;
i = e;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 8 ++++----
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c     | 2 +-
 drivers/staging/rtl8192e/rtl819x_BAProc.c      | 6 +++---
 drivers/staging/rtl8192e/rtllib_rx.c           | 2 +-
 drivers/staging/rtl8192e/rtllib_softmac.c      | 2 +-
 drivers/staging/rtl8192e/rtllib_softmac_wx.c   | 2 +-
 6 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index e9c4f97..ba64a4f 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -680,7 +680,7 @@ static void _rtl92e_hwconfig(struct net_device *dev)

 	rtl92e_writeb(dev, BW_OPMODE, regBwOpMode);
 	{
-		u32 ratr_value = 0;
+		u32 ratr_value;

 		ratr_value = regRATR;
 		if (priv->rf_type == RF_1T2R)
@@ -1000,7 +1000,7 @@ void rtl92e_link_change(struct net_device *dev)
 	_rtl92e_update_msr(dev);

 	if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC) {
-		u32 reg = 0;
+		u32 reg;

 		reg = rtl92e_readl(dev, RCR);
 		if (priv->rtllib->state == RTLLIB_LINKED) {
@@ -1186,7 +1186,7 @@ void  rtl92e_fill_tx_desc(struct net_device *dev, struct tx_desc *pdesc,
 	struct r8192_priv *priv = rtllib_priv(dev);
 	dma_addr_t mapping = pci_map_single(priv->pdev, skb->data, skb->len,
 			 PCI_DMA_TODEVICE);
-	struct tx_fwinfo_8190pci *pTxFwInfo = NULL;
+	struct tx_fwinfo_8190pci *pTxFwInfo;

 	pTxFwInfo = (struct tx_fwinfo_8190pci *)skb->data;
 	memset(pTxFwInfo, 0, sizeof(struct tx_fwinfo_8190pci));
@@ -2235,7 +2235,7 @@ void rtl92e_disable_irq(struct net_device *dev)

 void rtl92e_clear_irq(struct net_device *dev)
 {
-	u32 tmp = 0;
+	u32 tmp;

 	tmp = rtl92e_readl(dev, ISR);
 	rtl92e_writel(dev, ISR, tmp);
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index ef03242..b6b714d 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -1875,7 +1875,7 @@ void rtl92e_dm_rf_pathcheck_wq(void *data)
 				  struct r8192_priv,
 				  rfpath_check_wq);
 	struct net_device *dev = priv->rtllib->dev;
-	u8 rfpath = 0, i;
+	u8 rfpath, i;

 	rfpath = rtl92e_readb(dev, 0xc04);

diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index c04a020..c7fd1b1 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -189,7 +189,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
 static void rtllib_send_ADDBAReq(struct rtllib_device *ieee, u8 *dst,
 				 struct ba_record *pBA)
 {
-	struct sk_buff *skb = NULL;
+	struct sk_buff *skb;

 	skb = rtllib_ADDBA(ieee, dst, pBA, 0, ACT_ADDBAREQ);

@@ -204,7 +204,7 @@ static void rtllib_send_ADDBAReq(struct rtllib_device *ieee, u8 *dst,
 static void rtllib_send_ADDBARsp(struct rtllib_device *ieee, u8 *dst,
 				 struct ba_record *pBA, u16 StatusCode)
 {
-	struct sk_buff *skb = NULL;
+	struct sk_buff *skb;

 	skb = rtllib_ADDBA(ieee, dst, pBA, StatusCode, ACT_ADDBARSP);
 	if (skb)
@@ -217,7 +217,7 @@ static void rtllib_send_DELBA(struct rtllib_device *ieee, u8 *dst,
 			      struct ba_record *pBA, enum tr_select TxRxSelect,
 			      u16 ReasonCode)
 {
-	struct sk_buff *skb = NULL;
+	struct sk_buff *skb;

 	skb = rtllib_DELBA(ieee, dst, pBA, TxRxSelect, ReasonCode);
 	if (skb)
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 37343ec..af64bd3 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -905,7 +905,7 @@ static size_t rtllib_rx_get_hdrlen(struct rtllib_device *ieee,
 {
 	struct rtllib_hdr_4addr *hdr = (struct rtllib_hdr_4addr *)skb->data;
 	u16 fc = le16_to_cpu(hdr->frame_ctl);
-	size_t hdrlen = 0;
+	size_t hdrlen;

 	hdrlen = rtllib_get_hdrlen(fc);
 	if (HTCCheck(ieee, skb->data)) {
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 19c3bff..25b5b5e 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -776,7 +776,7 @@ inline struct sk_buff *rtllib_authentication_req(struct rtllib_network *beacon,
 {
 	struct sk_buff *skb;
 	struct rtllib_authentication *auth;
-	int  len = 0;
+	int  len;

 	len = sizeof(struct rtllib_authentication) + challengelen +
 		     ieee->tx_headroom + 4;
diff --git a/drivers/staging/rtl8192e/rtllib_softmac_wx.c b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
index 86f52ac..01a75bd 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
@@ -243,7 +243,7 @@ int rtllib_wx_get_rate(struct rtllib_device *ieee,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	u32 tmp_rate = 0;
+	u32 tmp_rate;

 	tmp_rate = TxCountToDataRate(ieee,
 				     ieee->softmac_stats.CurrentShowTxate);
--
2.1.4


