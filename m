X-GM-THRID: 6392252135167229952
X-Received: by 10.46.84.69 with SMTP id y5mr2389617ljd.21.1488491272308;
        Thu, 02 Mar 2017 13:47:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.201 with SMTP id o192ls72630wmg.4.canary-gmail; Thu, 02
 Mar 2017 13:47:51 -0800 (PST)
X-Received: by 10.28.166.144 with SMTP id p138mr12399wme.1.1488491271308;
        Thu, 02 Mar 2017 13:47:51 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id h62si14447wme.2.2017.03.02.13.47.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:47:51 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u108so7206738wrb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 13:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yyo9HZr1GYC0+Tvbtgbz0BSiZm67bbmrIv8otE3a1Ow=;
        b=gWi7hthU8wEssnNad8UmSSEIdLybzoYFwfCtvPKHRfl6C4Z1poiScYUtWIfyXXxerM
         MGOMztncB8aeYrZAeULOrVkwVexgePKafaPZz94TaO2uskMLTh59VtMnMYlzKnAssEss
         DZedMDdzGyX6kyA8UYothTx4CKkpmCrt1EjffOYsgdPB4w6pOp0OKiyua0g3LX24AVHg
         Ix6h8Dgqu6RLehfSHWWHNneTUAonPGmj5UTK/Q7kTVgVe88HnLOD815B2hFytQ4RvyvL
         uSEDzPNvZuAERbISHOJm4+yGviorVZ/lJeh327Pyv3Ukf/7XjS2pI4xd+HHXeXSJi9+Z
         +nTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yyo9HZr1GYC0+Tvbtgbz0BSiZm67bbmrIv8otE3a1Ow=;
        b=uAyigC9KlhBBb7RUmEn/aSmlEMML6hP24GLobv7zD4mLMP1PQMsL/apAL7Mkh9oKUX
         LTQH2FhArEBRipbpdEWDInsn0fUBtSDf+IoxTfFDuxXv3gzdSgaNxvyYzooOz+OrhTcV
         BnE5LInOFeKvz+sqzrDc1fXvJnxHfG1q1Z0XPExLUcV0bsqpCebucyClmCoWZrKosDue
         uymkas1Ivj08uQNn1S0ySSzqUnOKZx/oCYOqImlQoa+fyEZ03Y1HFZjRnMOqeAg7UsPj
         g66skVOOoltj5YbeMQ4XSbXTx/DCT8YMrK+j0h2fRuDdwo9MpNSlO1p4d94RrOOCmbco
         CT/g==
X-Gm-Message-State: AMke39np7HEVgQUQbUoxoUm49WIsyoGlyaQl5E9p1IrD2YLGjk/t/m0PniZEbjbwbHU+yQ==
X-Received: by 10.223.167.138 with SMTP id j10mr14019793wrc.178.1488491271069;
        Thu, 02 Mar 2017 13:47:51 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([188.25.92.59])
        by smtp.gmail.com with ESMTPSA id q4sm12468743wrc.35.2017.03.02.13.47.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 13:47:49 -0800 (PST)
Date: Thu, 2 Mar 2017 23:47:48 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3] staging:rtl8192u: Check memory allocation
Message-ID: <20170302214748.GA9824@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Check if the allocation is not successful and
return the error code -ENOMEM.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
        - use a goto pattern to handle the allocation fails
	- use exiting a function to free the memory in case of fail
	- move the free function above the initialization

Changes in v3:
	- free the r8192_priv structure in case one of the urb
	  allocation fails
	- break the loop when an uninitialized pointer is reached

 drivers/staging/rtl8192u/r8192U_core.c | 120 +++++++++++++++++++--------------
 1 file changed, 70 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index b631990..11210e3 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1677,11 +1677,68 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 	return -1;
 }
 
+#ifdef THOMAS_BEACON
+static void rtl8192_usb_deleteendpoints(struct net_device *dev)
+{
+	int i;
+	struct r8192_priv *priv = ieee80211_priv(dev);
+
+	if (priv->rx_urb) {
+		for (i = 0; i < (MAX_RX_URB + 1); i++) {
+			usb_kill_urb(priv->rx_urb[i]);
+			usb_free_urb(priv->rx_urb[i]);
+		}
+		kfree(priv->rx_urb);
+		priv->rx_urb = NULL;
+	}
+	kfree(priv->oldaddr);
+	priv->oldaddr = NULL;
+
+	kfree(priv->pp_rxskb);
+	priv->pp_rxskb = NULL;
+}
+#else
+void rtl8192_usb_deleteendpoints(struct net_device *dev)
+{
+	int i;
+	struct r8192_priv *priv = ieee80211_priv(dev);
+
+#ifndef JACKSON_NEW_RX
+
+	if (priv->rx_urb) {
+		for (i = 0; i < (MAX_RX_URB + 1); i++) {
+			if(!priv->rx_urb[i])
+				break;
+			usb_kill_urb(priv->rx_urb[i]);
+			if(!riv->rx_urb[i]->transfer_buffer)
+				break;
+			kfree(priv->rx_urb[i]->transfer_buffer);
+			usb_free_urb(priv->rx_urb[i]);
+		}
+
+		if(i < (MAX_RX_URB + 1))
+			usb_free_urb(priv->rx_urb[i]);
+		kfree(priv->rx_urb);
+		priv->rx_urb = NULL;
+	}
+#else
+	kfree(priv->rx_urb);
+	priv->rx_urb = NULL;
+	kfree(priv->oldaddr);
+	priv->oldaddr = NULL;
+
+	kfree(priv->pp_rxskb);
+	priv->pp_rxskb = 0;
+
+#endif
+}
+#endif
+
 static short rtl8192_usb_initendpoints(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
-	priv->rx_urb = kmalloc(sizeof(struct urb *) * (MAX_RX_URB + 1),
+	priv->rx_urb = kzalloc(sizeof(struct urb *) * (MAX_RX_URB + 1),
 			       GFP_KERNEL);
 	if (!priv->rx_urb)
 		return -ENOMEM;
@@ -1689,9 +1746,13 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
 #ifndef JACKSON_NEW_RX
 	for (i = 0; i < (MAX_RX_URB + 1); i++) {
 		priv->rx_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
+		if(!priv->rx_urb[i])
+			goto exit;
 
 		priv->rx_urb[i]->transfer_buffer =
-			kmalloc(RX_URB_SIZE, GFP_KERNEL);
+			kzalloc(RX_URB_SIZE, GFP_KERNEL);
+		if(!priv->rx_urb[i]->transfer_buffer)
+			goto exit;
 
 		priv->rx_urb[i]->transfer_buffer_length = RX_URB_SIZE;
 	}
@@ -1704,6 +1765,9 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
 
 		priv->rx_urb[16] = usb_alloc_urb(0, GFP_KERNEL);
 		priv->oldaddr = kmalloc(16, GFP_KERNEL);
+		if(!priv->oldaddr)
+			goto exit;
+
 		oldaddr = priv->oldaddr;
 		align = ((long)oldaddr) & 3;
 		if (align) {
@@ -1732,57 +1796,13 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
 
 	netdev_dbg(dev, "End of initendpoints\n");
 	return 0;
-}
-
-#ifdef THOMAS_BEACON
-static void rtl8192_usb_deleteendpoints(struct net_device *dev)
-{
-	int i;
-	struct r8192_priv *priv = ieee80211_priv(dev);
-
-	if (priv->rx_urb) {
-		for (i = 0; i < (MAX_RX_URB + 1); i++) {
-			usb_kill_urb(priv->rx_urb[i]);
-			usb_free_urb(priv->rx_urb[i]);
-		}
-		kfree(priv->rx_urb);
-		priv->rx_urb = NULL;
-	}
-	kfree(priv->oldaddr);
-	priv->oldaddr = NULL;
-
-	kfree(priv->pp_rxskb);
-	priv->pp_rxskb = NULL;
-}
-#else
-void rtl8192_usb_deleteendpoints(struct net_device *dev)
-{
-	int i;
-	struct r8192_priv *priv = ieee80211_priv(dev);
 
-#ifndef JACKSON_NEW_RX
-
-	if (priv->rx_urb) {
-		for (i = 0; i < (MAX_RX_URB + 1); i++) {
-			usb_kill_urb(priv->rx_urb[i]);
-			kfree(priv->rx_urb[i]->transfer_buffer);
-			usb_free_urb(priv->rx_urb[i]);
-		}
-		kfree(priv->rx_urb);
-		priv->rx_urb = NULL;
-	}
-#else
+exit:
+	rtl8192_usb_deleteendpoints(dev);
 	kfree(priv->rx_urb);
-	priv->rx_urb = NULL;
-	kfree(priv->oldaddr);
-	priv->oldaddr = NULL;
-
-	kfree(priv->pp_rxskb);
-	priv->pp_rxskb = 0;
-
-#endif
+	DMESGE("Endpoint Alloc Failure");
+	return -ENOMEM;
 }
-#endif
 
 static void rtl8192_update_ratr_table(struct net_device *dev);
 static void rtl8192_link_change(struct net_device *dev)
-- 
2.7.4


