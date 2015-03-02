X-GM-THRID: 6035575144448
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,44622202b52d33bf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr4015050lae.7.1425321922955;
        Mon, 02 Mar 2015 10:45:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.2 with SMTP id iq2ls472987lac.100.gmail; Mon, 02 Mar
 2015 10:45:22 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr4016062laj.6.1425321922462;
        Mon, 02 Mar 2015 10:45:22 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id i7si724329wif.0.2015.03.02.10.45.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:45:22 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id x12so35308224wgg.6
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 10:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5T94nqxrgZ6+kSPoOUVs0Z2ZG93R5o6EsNrFSjd11AY=;
        b=KWe4zPvtKa0F2M86Dn9ffbUh6HktTPTv854v1JUauFTflo8PvHFH98GEXFQZhyjBTs
         qTy/ESEZr+d3nuEIy+bDVQ/lhpdgRnFcCfYoJl5Wvu0b2kDfmtTNvhPEvoTw/JzQgnFI
         gL77ZSDRbuqPHyKSA20Wli3mIqj/Ql7PKdwsLx3D+NdZb9mecmYfY5+1cdzmMel6kxIS
         zd7gNkBYbB5dr5SmzDerq18x0dmyu5pnEidYVDotiOZPdZTDXFGM6AMLqIVcOZb8MPTX
         yyUBy+UfWb1Wdg/HDXdlQPL7xABzP2qXsvVpyIR4OyRWJUroig9mQ8cuwbmxeG5N+3EJ
         HTrw==
X-Received: by 10.180.90.176 with SMTP id bx16mr38457375wib.14.1425321922250;
        Mon, 02 Mar 2015 10:45:22 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id s19sm17190240wik.18.2015.03.02.10.45.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:45:21 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 95532621FB; Mon,  2 Mar 2015 21:45:24 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v10 4/4] Staging: emxx_udc: Clean dev_err() logging
Date: Mon,  2 Mar 2015 21:45:23 +0300
Message-Id: <1425321923-4125-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err.
dev_err includes the function name in the log printout, so there is no
need to include it manually.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v10: nothing. 

 drivers/staging/emxx_udc/emxx_udc.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 35dc1c4..cfe55dc 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2632,7 +2632,7 @@ static int nbu2ss_ep_enable(
 	if ((udc->driver == NULL)
 		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
 
-		dev_err(ep->udc->dev, " *** %s, udc !!\n", __func__);
+		dev_err(ep->udc->dev, "  udc !!\n");
 		return -ESHUTDOWN;
 	}
 
@@ -2773,8 +2773,7 @@ static int nbu2ss_ep_queue(
 	}
 
 	if (unlikely(!udc->driver)) {
-		dev_err(udc->dev, "%s, bogus device state %p\n", __func__,
-				udc->driver);
+		dev_err(udc->dev, "bogus device state %p\n", udc->driver);
 		return -ESHUTDOWN;
 	}
 
@@ -2813,8 +2812,7 @@ static int nbu2ss_ep_queue(
 
 		result = _nbu2ss_start_transfer(udc, ep, req, FALSE);
 		if (result < 0) {
-			dev_err(udc->dev, " *** %s, result = %d\n", __func__,
-					result);
+			dev_err(udc->dev, " ** result = %d\n", result);
 			list_del(&req->queue);
 		} else if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT)) {
 #ifdef USE_DMA
@@ -2904,7 +2902,7 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, " *** %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, " *** bad udc\n");
 		return -EINVAL;
 	}
 
@@ -2958,7 +2956,7 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, "%s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "bad udc\n");
 		return -EINVAL;
 	}
 
@@ -3006,7 +3004,7 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, "%s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "bad udc\n");
 		return;
 	}
 
@@ -3056,7 +3054,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "udc == NULL\n");
 		return -EINVAL;
 	}
 
@@ -3086,7 +3084,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "udc == NULL\n");
 		return -EINVAL;
 	}
 
-- 
1.9.1


