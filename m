X-GM-THRID: 6256120108487278592
X-Received: by 10.112.132.97 with SMTP id ot1mr851927lbb.10.1456616595442;
        Sat, 27 Feb 2016 15:43:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.87.207 with SMTP id l198ls126757wmb.38.canary; Sat, 27 Feb
 2016 15:43:15 -0800 (PST)
X-Received: by 10.28.223.195 with SMTP id w186mr315987wmg.3.1456616595038;
        Sat, 27 Feb 2016 15:43:15 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id w10si354311wmw.3.2016.02.27.15.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:43:15 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id l68so2508265wml.3
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=T10eI2oRcu3391B/Tnlz4jXFgkDkSgLHVsLlo+eG3A0=;
        b=GBYOgi9wgf42MEBUKMSRp2JOwNE84M5TFlMaQamDHQr8e/CPo+ho3fzPsDMD7ejZQU
         PK/hUwKwkdbteqMzrpyMnnNJtgpXYwwPvgZtxXoDjC6LM2FrwhD4nQxUkeOBmendnvB5
         RmiX6EWkvy0P9mXoV5dEwH1aBq9gOhj8kcJT7crg2KVgOznWB3PTDp20bbRB5ICdIW+s
         AuMNVhD5vkkj1ZtoDSSkiNBq/aeDp4+v0aZl8f47DejqdiXL1Bq1nEovZZGG0yaciJUj
         V2FizAZ8TRXrdj0aoRDeusiLMnpud5/MVI/cpg5m5EF2IfM0cCA12HQIae9QklSm+jX+
         Mx5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=T10eI2oRcu3391B/Tnlz4jXFgkDkSgLHVsLlo+eG3A0=;
        b=GqE6Ge7xuoo6DyPwFIwPRZkXQMeTlQUEl0Dc9JP6QeZtZ5vHOASlsMBS0N/0zA6XeC
         3JHu8gzz77Soqg9HOt5Y0gzqbsBr2BfyYaegXqxDEEEfVHVIVfthtEw7VoGv3DcW22wn
         CnFFFBnML0/wNWCRdPU/w1fXUGObRw/QeDx9OYDox1lQbz5iK77d8FlzTYTR7KAuomuO
         41PsoYZLUrTIx7w4NwSwTcf1W38xsPvROo2Hb8N/kTwmrSL4D3KB8UDctQ28JJ+UwJ5o
         tLNJd1rzF81fnq6RbX2wRSMc42Lds/7RnK3dgbr/uWyw6Pdroe7vRLSHVGIrBTlyBhGb
         Dt6w==
X-Gm-Message-State: AD7BkJJ5nGvBSpo/HqOY83+GyMzla+ize10HHhLEQInti/IcA7IonhsrG6elg3sh6QmolQ==
X-Received: by 10.28.210.73 with SMTP id j70mr4332283wmg.8.1456616594854;
        Sat, 27 Feb 2016 15:43:14 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id c7sm9134520wmd.13.2016.02.27.15.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:43:14 -0800 (PST)
Date: Sun, 28 Feb 2016 00:43:12 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 04/10] staging: octeon: Remove comparison to NULL
Message-ID: <c0f31e13efd81e046c6a7c665b3e5701a315c23c.1456615452.git.nevola@gmail.com>
References: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Comparison to NULL should be avoided in conditions. Chackpatch detected
these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/octeon/ethernet-mdio.c | 2 +-
 drivers/staging/octeon/ethernet-mem.c  | 4 ++--
 drivers/staging/octeon/ethernet-rx.c   | 6 +++---
 drivers/staging/octeon/ethernet-tx.c   | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
index 0ac11b1..e13a4ab 100644
--- a/drivers/staging/octeon/ethernet-mdio.c
+++ b/drivers/staging/octeon/ethernet-mdio.c
@@ -196,7 +196,7 @@ int cvm_oct_phy_setup_device(struct net_device *dev)
 	priv->phydev = of_phy_connect(dev, phy_node, cvm_oct_adjust_link, 0,
 				      PHY_INTERFACE_MODE_GMII);
 
-	if (priv->phydev == NULL)
+	if (!priv->phydev)
 		return -ENODEV;
 
 	priv->last_link = 0;
diff --git a/drivers/staging/octeon/ethernet-mem.c b/drivers/staging/octeon/ethernet-mem.c
index 5a5cdb3..d6172e4 100644
--- a/drivers/staging/octeon/ethernet-mem.c
+++ b/drivers/staging/octeon/ethernet-mem.c
@@ -34,7 +34,7 @@ static int cvm_oct_fill_hw_skbuff(int pool, int size, int elements)
 	while (freed) {
 		struct sk_buff *skb = dev_alloc_skb(size + 256);
 
-		if (unlikely(skb == NULL))
+		if (unlikely(!skb))
 			break;
 		skb_reserve(skb, 256 - (((unsigned long)skb->data) & 0x7f));
 		*(struct sk_buff **)(skb->data - sizeof(void *)) = skb;
@@ -98,7 +98,7 @@ static int cvm_oct_fill_hw_memory(int pool, int size, int elements)
 		 * just before the block.
 		 */
 		memory = kmalloc(size + 256, GFP_ATOMIC);
-		if (unlikely(memory == NULL)) {
+		if (unlikely(!memory)) {
 			pr_warn("Unable to allocate %u bytes for FPA pool %d\n",
 				elements * size, pool);
 			break;
diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index c35f4ef..ee6c5da 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -210,7 +210,7 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 
 		prefetch(work);
 		did_work_request = 0;
-		if (work == NULL) {
+		if (!work) {
 			if (OCTEON_IS_MODEL(OCTEON_CN68XX)) {
 				cvmx_write_csr(CVMX_SSO_WQ_IQ_DIS,
 					       1ull << pow_receive_group);
@@ -417,7 +417,7 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 	}
 	cvm_oct_rx_refill_pool(0);
 
-	if (rx_count < budget && napi != NULL) {
+	if (rx_count < budget && napi) {
 		/* No more work */
 		napi_complete(napi);
 		enable_irq(OCTEON_IRQ_WORKQ0 + pow_receive_group);
@@ -450,7 +450,7 @@ void cvm_oct_rx_initialize(void)
 		}
 	}
 
-	if (NULL == dev_for_napi)
+	if (!dev_for_napi)
 		panic("No net_devices were allocated.");
 
 	netif_napi_add(dev_for_napi, &cvm_oct_napi, cvm_oct_napi_poll,
diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 82e60ae..f1f693b 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -561,7 +561,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 
 	/* Get a packet buffer */
 	packet_buffer = cvmx_fpa_alloc(CVMX_FPA_PACKET_POOL);
-	if (unlikely(packet_buffer == NULL)) {
+	if (unlikely(!packet_buffer)) {
 		printk_ratelimited("%s: Failed to allocate a packet buffer\n",
 				   dev->name);
 		cvmx_fpa_free(work, CVMX_FPA_WQE_POOL, 1);
-- 
2.7.0


