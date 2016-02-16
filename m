X-GM-THRID: 6251864015306227712
X-Received: by 10.182.243.135 with SMTP id wy7mr20170047obc.8.1455625522914;
        Tue, 16 Feb 2016 04:25:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.229 with SMTP id 92ls3584272qgp.65.gmail; Tue, 16 Feb
 2016 04:25:22 -0800 (PST)
X-Received: by 10.31.168.130 with SMTP id r124mr21114588vke.10.1455625522100;
        Tue, 16 Feb 2016 04:25:22 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x235.google.com (mail-qg0-x235.google.com. [2607:f8b0:400d:c04::235])
        by gmr-mx.google.com with ESMTPS id t198si2234875ywe.3.2016.02.16.04.25.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 04:25:22 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) client-ip=2607:f8b0:400d:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x235.google.com with SMTP id b35so130912581qge.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 04:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=X7ezFExomKlp3qyR0uFvz1uhHKLJ7h6XXMe6dA47GjE=;
        b=u85UVwopZ7pQMwGrCI68Z0u4UlghpOtgjLxu+k7hOfW/cKUbJFjhl1JlhQJRrR7Yqy
         OB6fzKCKlUMqh1+lBdZarD6pbtH1R/DDBObFSKUSOs26GjQzvb+2K4/5f+ujPHjys9VL
         mTm1vB9NJGYxvq2HQu8Jd6An4SBlFblm2M1XDtJ2iC2sTncas/mUI7fjUxergFsnN7hd
         dQbYbmT7SI5o3McSjOqTRwSarDiMfUAF2M/31gJUB+JcqADmpU14nILhpURUFPxGNCAX
         mX0oQuinnOhxUBwFnfX9U3u0m6lPwM1rM5PX9jZUT9sFf88r27GxWoQ1/Pz6lgljhg9P
         3rkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=X7ezFExomKlp3qyR0uFvz1uhHKLJ7h6XXMe6dA47GjE=;
        b=DHQWXDFI5ATQiXCDxlzbGumB0+smdmcXgqaDDhfAfNfUWQUfGzRlLHPkRnIc6nRCW3
         iVBEo5HGKyx8iPukU1bng3DNB7qDwlz4ua7J+IgINPgJus8jfaygNWVSjTBwhJmuNVxj
         WGBwqjWvWbyQYbhuOLjdHIPhmq7bAnYvXGSb6Fmwrjyg3Y/IrmiN93YAuqwNJGUExMEJ
         enGKaw5C5caTEs0Kv1e8Nicctyq/mRWkL7BBzbO6USRT0JzjD46t3m7fcPK0NIDUh1hP
         G+LRSu/4SY2urulzGNUTCKT+kwWJRSR0sJtuJAall5b5G2X3wCLLY2SVURDeNZdE5R6Y
         rxhQ==
X-Gm-Message-State: AG10YORprd2SilAxTJwfWeMK0P9Ge9WZEZJTP92+tzg7SDqTd2SjjEeCEDF6o8nDYT0XUQ==
X-Received: by 10.140.220.69 with SMTP id q66mr9186650qhb.103.1455625521940;
        Tue, 16 Feb 2016 04:25:21 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id y16sm11000393qgd.49.2016.02.16.04.25.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 04:25:21 -0800 (PST)
Date: Tue, 16 Feb 2016 12:24:40 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Remove explicit pointer cast in
 assignments
Message-ID: <20160216172440.GA10563@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

In this file, the values returned by rtllib_priv() are unnecessarily cast
into a pointer type in some assignment statements. Remove the cast as it
is unneeded.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 8f989a9..0b06482 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -288,7 +288,7 @@ static void _rtl92e_tx_timeout(struct net_device *dev)
 
 void rtl92e_irq_enable(struct net_device *dev)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 
 	priv->irq_enabled = 1;
 
@@ -297,7 +297,7 @@ void rtl92e_irq_enable(struct net_device *dev)
 
 void rtl92e_irq_disable(struct net_device *dev)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 
 	priv->ops->irq_disable(dev);
 
@@ -306,7 +306,7 @@ void rtl92e_irq_disable(struct net_device *dev)
 
 static void _rtl92e_set_chan(struct net_device *dev, short ch)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 
 	RT_TRACE(COMP_CH, "=====>%s()====ch:%d\n", __func__, ch);
 	if (priv->chan_forced)
@@ -1546,14 +1546,14 @@ static void _rtl92e_watchdog_timer_cb(unsigned long data)
 *****************************************************************************/
 void rtl92e_rx_enable(struct net_device *dev)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 
 	priv->ops->rx_enable(dev);
 }
 
 void rtl92e_tx_enable(struct net_device *dev)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 
 	priv->ops->tx_enable(dev);
 
@@ -1612,7 +1612,7 @@ static void _rtl92e_free_tx_ring(struct net_device *dev, unsigned int prio)
 static void _rtl92e_hard_data_xmit(struct sk_buff *skb, struct net_device *dev,
 				   int rate)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 	int ret;
 	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb +
 				    MAX_DEV_ADDR_SIZE);
@@ -1643,7 +1643,7 @@ static void _rtl92e_hard_data_xmit(struct sk_buff *skb, struct net_device *dev,
 
 static int _rtl92e_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 	int ret;
 	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb +
 				    MAX_DEV_ADDR_SIZE);
@@ -1676,7 +1676,7 @@ static int _rtl92e_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
 
 static void _rtl92e_tx_isr(struct net_device *dev, int prio)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 
 	struct rtl8192_tx_ring *ring = &priv->tx_ring[prio];
 
@@ -1850,7 +1850,7 @@ static short _rtl92e_alloc_rx_ring(struct net_device *dev)
 static int _rtl92e_alloc_tx_ring(struct net_device *dev, unsigned int prio,
 				 unsigned int entries)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 	struct tx_desc *ring;
 	dma_addr_t dma;
 	int i;
@@ -1944,7 +1944,7 @@ void rtl92e_reset_desc_ring(struct net_device *dev)
 void rtl92e_update_rx_pkt_timestamp(struct net_device *dev,
 				    struct rtllib_rx_stats *stats)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 
 	if (stats->bIsAMPDU && !stats->bFirstMPDU)
 		stats->mac_time = priv->LastRxDescTSF;
@@ -2022,7 +2022,7 @@ void rtl92e_copy_mpdu_stats(struct rtllib_rx_stats *psrc_stats,
 
 static void _rtl92e_rx_normal(struct net_device *dev)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 	struct rtllib_hdr_1addr *rtllib_hdr = NULL;
 	bool unicast_packet = false;
 	bool bLedBlinking = true;
@@ -2128,7 +2128,7 @@ done:
 
 static void _rtl92e_tx_resume(struct net_device *dev)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 	struct rtllib_device *ieee = priv->rtllib;
 	struct sk_buff *skb;
 	int queue_index;
@@ -2279,7 +2279,7 @@ static int _rtl92e_set_mac_adr(struct net_device *dev, void *mac)
 /* based on ipw2200 driver */
 static int _rtl92e_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 {
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 	struct iwreq *wrq = (struct iwreq *)rq;
 	int ret = -1;
 	struct rtllib_device *ieee = priv->rtllib;
@@ -2403,7 +2403,7 @@ out:
 static irqreturn_t _rtl92e_irq(int irq, void *netdev)
 {
 	struct net_device *dev = (struct net_device *) netdev;
-	struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
+	struct r8192_priv *priv = rtllib_priv(dev);
 	unsigned long flags;
 	u32 inta;
 	u32 intb;
-- 
2.5.0


