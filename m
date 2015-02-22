X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.4.229 with SMTP id n5mr912034lan.1.1424648646842;
        Sun, 22 Feb 2015 15:44:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.105 with SMTP id o9ls444310wic.38.gmail; Sun, 22 Feb
 2015 15:44:06 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr870961wid.1.1424648646574;
        Sun, 22 Feb 2015 15:44:06 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x241.google.com (mail-wg0-x241.google.com. [2a00:1450:400c:c00::241])
        by gmr-mx.google.com with ESMTPS id ta1si564137wic.1.2015.02.22.15.44.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:44:06 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) client-ip=2a00:1450:400c:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f65.google.com with SMTP id k14so7630747wgh.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 15:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=GoEeiOVQGhJU5Cb8PZSoMET0dVBpC7ITQM4Amqo0Xdk=;
        b=RbSHTQgXaO7M+J03mwHCmsoBh0IR+9xFLIXbEIrsNjn/a/wSe/iy9m86/kW2ulNyyJ
         BSPax3wCWF6kiHxd3cR5rY8/00cdV5yGHWTrSrZ3vNjA9PqlL+2d2aKcjknzRO2ziQCN
         O4VU36HMbLI8zGKuwvREwHTu/sFPuujdwSqAk+LBOycByIblelUQSd+hXBSh/DVZ8Qaz
         vldi0OfpHebMMYSppvQT+CpKnxQId39+Qn+9ZIERM8WEH/AG8XHDqLV1UmrjxxKbBanY
         5sIn4SW7P33st7G+fEDs1v/OKmrR40j2oQMoT50YTZULp5HDu9DhcfjdZ5tHY10CfOZc
         dbiQ==
X-Received: by 10.194.60.203 with SMTP id j11mr17227913wjr.5.1424648646471;
        Sun, 22 Feb 2015 15:44:06 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([95.187.195.53])
        by mx.google.com with ESMTPSA id lj13sm13435168wic.9.2015.02.22.15.44.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:44:05 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id F28AE632BF; Mon, 23 Feb 2015 02:44:02 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v4 6/6] Staging: emxx_udc: Clean dev_err() logging
Date: Mon, 23 Feb 2015 02:44:02 +0300
Message-Id: <3795f176c505e4cc29fc91d81e528bafb09aac52.1424645872.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424645871.git.hamohammed.sa@gmail.com>
References: <cover.1424645871.git.hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err.
dev_err includes the function name in the log printout, so there is no
need to include it manually.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index bf4801d..2c26751 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2637,7 +2637,7 @@ static int nbu2ss_ep_enable(
 	if ((udc->driver == NULL)
 		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
 
-		dev_err(udc->dev, " *** %s, udc !!\n", __func__);
+		dev_err(udc->dev, "udc !!\n");
 		return -ESHUTDOWN;
 	}
 
@@ -2778,7 +2778,7 @@ static int nbu2ss_ep_queue(
 	}
 
 	if (unlikely(!udc->driver)) {
-		dev_err(udc->dev, "%s, bogus device state %p\n", __func__, udc->driver);
+		dev_err(udc->dev, "bogus device state %p\n", udc->driver);
 		return -ESHUTDOWN;
 	}
 
@@ -2817,7 +2817,7 @@ static int nbu2ss_ep_queue(
 
 		result = _nbu2ss_start_transfer(udc, ep, req, FALSE);
 		if (result < 0) {
-			dev_err(udc->dev, " *** %s, result = %d\n", __func__, result);
+			dev_err(udc->dev, "result = %d\n", result);
 			list_del(&req->queue);
 		} else if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT)) {
 #ifdef USE_DMA
@@ -3059,7 +3059,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "udc == NULL\n");
 		return -EINVAL;
 	}
 
@@ -3089,7 +3089,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (udc == NULL) {
-		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "udc == NULL\n");
 		return -EINVAL;
 	}
 
-- 
1.9.1


