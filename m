X-GM-THRID: 6249926489518637056
X-Received: by 10.66.190.41 with SMTP id gn9mr42143214pac.0.1455174407049;
        Wed, 10 Feb 2016 23:06:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.3 with SMTP id h3ls870855qge.77.gmail; Wed, 10 Feb 2016
 23:06:46 -0800 (PST)
X-Received: by 10.129.4.201 with SMTP id 192mr40908282ywe.15.1455174406465;
        Wed, 10 Feb 2016 23:06:46 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id 79si944435pft.0.2016.02.10.23.06.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 23:06:46 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id yy13so24567836pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 23:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZjixaONBYMGlHY8gaF4YrdEAgEztqketH2zbi71GSuE=;
        b=OIfQRKxpFMWkRhlqqMmW4q9FmF6PEzGAz2Cl14qYeTTmQmpOBfkNTidJMOfOYMBcnR
         1gAC5M0Hc1FoJ+FZS78iIdbciUEgS/E65fMId2CwIBBVyZLbCPQHIEp9VXJ9ZCgzlmY6
         Iw8lk0PPV5AU2c3G23VcaxOlPp+sKYddJgE9FyTiqq9/BmaGUfu0a06CBgDfUSIFzCfn
         RNbq4ZSxi8HwrqK4RlXUxuFnXaaY+S1R7HhBg8ajmmXw458/afn6BkKkq1KkW1z74ool
         6zpgMxlvgO2CHLAjs9qeSs250YoWt0PuONhArxgK/G3VuOSaYNmfVXePkd2tJnJxP7rg
         EgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ZjixaONBYMGlHY8gaF4YrdEAgEztqketH2zbi71GSuE=;
        b=M3QBAFKV6CJozerdu1plJ3FalRK7un1Jp2XnnmLzPU2i5QoWsAjDpkhPEbaGRt2TCp
         WzfMFvI3WUZqLr2DO+19Zpb9zldNFLFu7qR96AlS6zb2h7Pcj1J6ci2YqvCLKfKKUjkq
         OppBetI8IiE78snu8UCp10DDlR5If1l8yZyWR1nKAOw1R8iY7jOz+BFu6XT0uDb2h8YH
         NkhNnSV2UWbh0pYoYXXmTp9hubT/Atnxh6YWMPfAzzV8zBVHppBCGzXKoi86bybH4397
         4P6gMAwr2B4pahjnHBU/H33E9/pk+6aBUj/bTJTR8j3QuL5ZHkXrVJ9bMI4X46E3yqBR
         g4jg==
X-Gm-Message-State: AG10YOSv+soFV++dWHNCnpSQm5aa5qCQYVI/ZMxh0QtoODygEaSbLZfCpRcc0sRYh5LOIA==
X-Received: by 10.66.253.137 with SMTP id aa9mr64505010pad.139.1455174406317;
        Wed, 10 Feb 2016 23:06:46 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id ux2sm9668852pac.46.2016.02.10.23.06.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 23:06:45 -0800 (PST)
Date: Wed, 10 Feb 2016 23:06:45 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6656: replace explicit NULL comparison with !
 operator
Message-ID: <20160211070636.GA16318@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace explicit NULL comparison with ! operator to simplify code.

Found with Coccinelle:
@@
expression e;
statement s0, s1;
@@

if (
(
+ !
e
- == NULL
 || ...
)
 ) s0 else s1

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 10 +++++-----
 drivers/staging/vt6656/usbpipe.c  |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index a2f23ae..05f86ff 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -431,7 +431,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 	for (ii = 0; ii < priv->num_tx_context; ii++) {
 		tx_context = kmalloc(sizeof(struct vnt_usb_send_context),
 								GFP_KERNEL);
-		if (tx_context == NULL)
+		if (!tx_context)
 			goto free_tx;
 
 		priv->tx_context[ii] = tx_context;
@@ -462,13 +462,13 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 
 		/* allocate URBs */
 		rcb->urb = usb_alloc_urb(0, GFP_ATOMIC);
-		if (rcb->urb == NULL) {
+		if (!rcb->urb) {
 			dev_err(&priv->usb->dev, "Failed to alloc rx urb\n");
 			goto free_rx_tx;
 		}
 
 		rcb->skb = dev_alloc_skb(priv->rx_buf_sz);
-		if (rcb->skb == NULL)
+		if (!rcb->skb)
 			goto free_rx_tx;
 
 		rcb->in_use = false;
@@ -479,13 +479,13 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 	}
 
 	priv->interrupt_urb = usb_alloc_urb(0, GFP_ATOMIC);
-	if (priv->interrupt_urb == NULL) {
+	if (!priv->interrupt_urb) {
 		dev_err(&priv->usb->dev, "Failed to alloc int urb\n");
 		goto free_rx_tx;
 	}
 
 	priv->int_buf.data_buf = kmalloc(MAX_INTERRUPT_SIZE, GFP_KERNEL);
-	if (priv->int_buf.data_buf == NULL) {
+	if (!priv->int_buf.data_buf) {
 		usb_free_urb(priv->interrupt_urb);
 		goto free_rx_tx;
 	}
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 351a99f..bec5baf 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -210,7 +210,7 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
 	struct urb *urb;
 
 	urb = rcb->urb;
-	if (rcb->skb == NULL) {
+	if (!rcb->skb) {
 		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
 		return status;
 	}
-- 
2.1.4


