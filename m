X-GM-THRID: 6250301403759116288
X-Received: by 10.182.240.226 with SMTP id wd2mr2840945obc.0.1455300307896;
        Fri, 12 Feb 2016 10:05:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.72 with SMTP id f69ls932065ioe.21.gmail; Fri, 12 Feb
 2016 10:05:07 -0800 (PST)
X-Received: by 10.50.70.42 with SMTP id j10mr4737227igu.9.1455300307484;
        Fri, 12 Feb 2016 10:05:07 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id tn7si1643159pac.1.2016.02.12.10.05.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 10:05:07 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so4084038pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 10:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=nDhQ9dOmMt26HAxcU9V4qW4+1wNmgZmaQLCY+2JmVJE=;
        b=OOnrofzsu7P5ruQqOIK3yLaJa92G1c3KcWevZDZHg3g/ebJH3o8T16kf0l+2KkG2DZ
         a3SQjJyj9VHqc86fZEUMImABFYvy5mrQfBlZYoboDIEJRMo6RCN7JFytinMr6MsJOSzW
         qoe2F96vg+i3OMj0O5xWtAo4vT4lqwzbok3l1ycuccG02NUgxxdJ206pmRFsMiQZsTn/
         zCeLy3SJHFdjTAImlJnUS/3TAgeRrFsQupgwsjec7IoF+7EVX31t5VqtghW1R76wcZrM
         7MA2xADq80Asr8wz+pv4HEBYW6qQFORpolxenVfI42T9SNNDr3+9n0PloaOVpML5qGJ8
         fY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=nDhQ9dOmMt26HAxcU9V4qW4+1wNmgZmaQLCY+2JmVJE=;
        b=ZczfgAfmT0zNW5iSeELP8mnb2rfASGwIAMw0TcV7Z4smtUdFXADDs+ge/iWy9ydSP1
         pY9BDQrXy0w2KkTlA9IeEs49lNqY4sP/BqmhkhB/oAoFxa9ZkwpZXKLk0T99OV9BCTbR
         uzujZotnKHTqcocWFC+jwnn31Ke+H1k0f0kLp0vNMr07FLz67nJfs22VDuFRbKB7RwGg
         91jCVYKNeF0IULMvG4RAs6xXUpsra56kLwsYL3NeuBT22ioF6R7dBstDUwNF7yW9oqat
         T0cz9jZLPRYtpdx6B4OZFH+HmOvp+E6IjX/3CS6H8UPSirLPEKttGg+M/0MFXWBhq2pg
         5j0A==
X-Gm-Message-State: AG10YOQdJ3tamUoVro4GS5oW9YS/oA3A3IYXsG1DvoKz4hBN2oIbJG0Qy7MQv2gkJDgpAw==
X-Received: by 10.66.102.106 with SMTP id fn10mr4174802pab.60.1455300307334;
        Fri, 12 Feb 2016 10:05:07 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id p8sm20930382pfi.34.2016.02.12.10.05.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 10:05:06 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: vt6656: replace GFP_ATOMIC with GFP_KERNEL for urb allocation
Date: Fri, 12 Feb 2016 10:05:01 -0800
Message-Id: <1455300301-3351-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20160212072127.GA14416@d830.WORKGROUP>
References: <20160212072127.GA14416@d830.WORKGROUP>

Replace GFP_ATOMIC with GFP_KERNEL during urb buffer allocation.
This makes vnt_alloc_bufs() consistent in setting GFP_KERNEL during
kmalloc() and usb_alloc_urb(). GFP_KERNEL is safe because we are in
process context, not in an interrupt handler, nor holding any spinlock.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
Changes in v3:
- changed 2 additional instances in same function
- modified changelog
Changes in v2:
-  expanded abbreviations changelog


 drivers/staging/vt6656/main_usb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 05f86ff..f9afab7 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -439,7 +439,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 		tx_context->pkt_no = ii;
 
 		/* allocate URBs */
-		tx_context->urb = usb_alloc_urb(0, GFP_ATOMIC);
+		tx_context->urb = usb_alloc_urb(0, GFP_KERNEL);
 		if (!tx_context->urb) {
 			dev_err(&priv->usb->dev, "alloc tx urb failed\n");
 			goto free_tx;
@@ -461,7 +461,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 		rcb->priv = priv;
 
 		/* allocate URBs */
-		rcb->urb = usb_alloc_urb(0, GFP_ATOMIC);
+		rcb->urb = usb_alloc_urb(0, GFP_KERNEL);
 		if (!rcb->urb) {
 			dev_err(&priv->usb->dev, "Failed to alloc rx urb\n");
 			goto free_rx_tx;
@@ -478,7 +478,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 			goto free_rx_tx;
 	}
 
-	priv->interrupt_urb = usb_alloc_urb(0, GFP_ATOMIC);
+	priv->interrupt_urb = usb_alloc_urb(0, GFP_KERNEL);
 	if (!priv->interrupt_urb) {
 		dev_err(&priv->usb->dev, "Failed to alloc int urb\n");
 		goto free_rx_tx;
-- 
2.1.4


