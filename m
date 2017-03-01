X-GM-THRID: 6392252135167229952
X-Received: by 10.46.83.7 with SMTP id h7mr1486277ljb.24.1488403803104;
        Wed, 01 Mar 2017 13:30:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.132 with SMTP id f4ls556977lji.41.gmail; Wed, 01 Mar 2017
 13:30:02 -0800 (PST)
X-Received: by 10.46.69.7 with SMTP id s7mr1374782lja.18.1488403802190;
        Wed, 01 Mar 2017 13:30:02 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id h198si615547wmg.1.2017.03.01.13.30.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 13:30:02 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so1921205wma.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 13:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=caM8jp6J6q/QoGa4sneHcvWFPr/Ak6OYGV/COcFiSqU=;
        b=RX9yAg/OGLWggOuJ4KaNGXSPH9Kv7zbmOoOeDQP/Rdl0gkKHyDzP1LGSY3b4N4oGni
         FGNdi7sUuX8HVUewdQJ/rzXqNOrA4OwkCv9m8/sG+S7lRfhJFmPRMndR1imWuX2i4Sy3
         uHf6snTsPeJfU+8L5TWSByw/bXW9s53yUTUfZV6BddV4BcD4DCy/+kHgz3bzQnxgNeQt
         YRpUqfe/4j6stLrRZcSJE9f5zfx8C4I+EdtqGYQt6V14wye9uHNDIFmvfhB13bJ+uyQD
         uDyYrzlVEGBfb1jY3rQfSe7+WJTZ2J5Ck93cntR9Dc593ZUH2PjGLFYYus3GsOmSZYR3
         kyfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=caM8jp6J6q/QoGa4sneHcvWFPr/Ak6OYGV/COcFiSqU=;
        b=erjFamW6aL5LzlmVZX+fHWv8s+rlPrZZ44MkE6jUrirUFSl3ccExXpTggwcfVe0XVM
         vFNRc6pq3LSgx9L6AzSFBWMzZf5hFzVvzOn7fndTxNX/g2BjeTmAag9y6zzFJ45OAf4O
         kNvRnFH4NQVtDYZY+B1GDU+2iVBY4TI6Ri/GlW6YV5c22dhnkmLqbhQaI1h8KeU34vNz
         FCKZZLa4VFKKzqeAKTc5vslNXOUJ4xoBhnsuaJ4/ezClEyih3LrsIkvXLG3Gkovbnf7v
         +rf28QRk95oo/Xuili3jrcnQJ01fIoajSwa+NofqrJI1DjDnylPnvUKoa3Nc2EHM9GgT
         fF4w==
X-Gm-Message-State: AMke39kPpWAle/uJ4LWAt5QsIzfH5yRv37uuzpeINwCWnpYoF6ZxBqE5RGFOUZaTUjQInQ==
X-Received: by 10.28.28.69 with SMTP id c66mr5487767wmc.28.1488403801939;
        Wed, 01 Mar 2017 13:30:01 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id 128sm6928392wmp.11.2017.03.01.13.30.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 13:30:00 -0800 (PST)
Date: Wed, 1 Mar 2017 23:30:00 +0200
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging:rtl8192u: Check memory allocation
Message-ID: <20170301213000.GA14437@fireworks>
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

 drivers/staging/rtl8192u/r8192U_core.c | 109 ++++++++++++++++++---------------
 1 file changed, 60 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index b631990..08d7e70 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1677,6 +1677,56 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
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
+			usb_kill_urb(priv->rx_urb[i]);
+			kfree(priv->rx_urb[i]->transfer_buffer);
+			usb_free_urb(priv->rx_urb[i]);
+		}
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
@@ -1689,9 +1739,13 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
 #ifndef JACKSON_NEW_RX
 	for (i = 0; i < (MAX_RX_URB + 1); i++) {
 		priv->rx_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
+		if(!priv->rx_urb[i])
+			goto exit;
 
 		priv->rx_urb[i]->transfer_buffer =
 			kmalloc(RX_URB_SIZE, GFP_KERNEL);
+		if(!priv->rx_urb[i]->transfer_buffer)
+			goto exit;
 
 		priv->rx_urb[i]->transfer_buffer_length = RX_URB_SIZE;
 	}
@@ -1704,6 +1758,9 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
 
 		priv->rx_urb[16] = usb_alloc_urb(0, GFP_KERNEL);
 		priv->oldaddr = kmalloc(16, GFP_KERNEL);
+		if(!priv->oldaddr)
+			goto exit;
+
 		oldaddr = priv->oldaddr;
 		align = ((long)oldaddr) & 3;
 		if (align) {
@@ -1732,57 +1789,11 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
 
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
-
-#ifndef JACKSON_NEW_RX
 
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
-	kfree(priv->rx_urb);
-	priv->rx_urb = NULL;
-	kfree(priv->oldaddr);
-	priv->oldaddr = NULL;
-
-	kfree(priv->pp_rxskb);
-	priv->pp_rxskb = 0;
-
-#endif
+exit:
+	rtl8192_usb_deleteendpoints(dev);
+	return -ENOMEM;
 }
-#endif
 
 static void rtl8192_update_ratr_table(struct net_device *dev);
 static void rtl8192_link_change(struct net_device *dev)
-- 
2.7.4


