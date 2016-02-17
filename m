X-GM-THRID: 6252308314150928384
X-Received: by 10.50.61.132 with SMTP id p4mr24433225igr.0.1455731135971;
        Wed, 17 Feb 2016 09:45:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.70 with SMTP id k64ls3912512qgf.25.gmail; Wed, 17 Feb
 2016 09:45:35 -0800 (PST)
X-Received: by 10.13.227.133 with SMTP id m127mr2531515ywe.1.1455731135449;
        Wed, 17 Feb 2016 09:45:35 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id 12si360702pfb.1.2016.02.17.09.45.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 09:45:35 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id c10so15580377pfc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 09:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=6xp8tgI0eaj2Tl89NutNA26i+IvrNHOslrFMYXJpJ2g=;
        b=h78XM4n7kHnqiEaBdImaMthKzrPZDcauBgpBUv9nMckA8Lj1Ao9c7RbJ/pC8nsy74D
         AOohiLUt7mzwKERZCEqPmiFxczRHackkG0yOjZHCRkqW2ESZ8w/OcdJcl2kIforQpHbQ
         eZcz6XDCZbD20KHgcjKUOVEwMZPlyx4hg4jxeDV95RXRBWh+v3yC2NOfLaUZMloYgymr
         4qaVZqdy4Lvbip0+/tQDrk5gEKVT6liJnGDJ1aLnQlSl1SP6XVhYzlPeoyPYoUwb/KHo
         BNNWpKArvwBTOelApl3h8slscHv6O5A8GBg+xTcjQLJbeqB/bQlLYL5wEHRlrCryyujp
         gwcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=6xp8tgI0eaj2Tl89NutNA26i+IvrNHOslrFMYXJpJ2g=;
        b=TnJnZd100uJgw3WL9AElSvS9Vadr7BYiZumFEfngiE+WzJKnmfZX0FUSPapMiEF6ye
         DW7qp3SFJdu4A0ryh3qVuOZFvqZS0FM9ZUygE2z/EnmNey12qP0sAX5FlLdeIphjZuEC
         RMNeU3d+hchzW873KkyLMKM9OiYQTpUd2XS/VgBjZ549PkT5LNeoYNCmdbBP5FEvW897
         Hp2qhKxGTGQL3kJqH1cUTy35K+t/YUAYoSqaSbgyi8Om8HA3pjaw0BdEcetPBciJ/qWx
         krLIRAbYVTfKc1v2+ivo5eTfPewk2nzqWq5AJmzDGSFeDG44t0qAmetsY3JUmwRNWFAF
         LJuA==
X-Gm-Message-State: AG10YOS0wtD/ziIMIlx8XB8eL2MxvTmUP9WyefRc4lwhF2eHxSrShE43lxUWb+izweH+ow==
X-Received: by 10.98.43.194 with SMTP id r185mr3945711pfr.24.1455731135288;
        Wed, 17 Feb 2016 09:45:35 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id yl1sm4064463pac.35.2016.02.17.09.45.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 09:45:34 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: vt6656: simplify tests of successful urb status
Date: Wed, 17 Feb 2016 09:45:28 -0800
Message-Id: <1455731128-5315-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20160217170915.GA4387@d830.WORKGROUP>
References: <20160217170915.GA4387@d830.WORKGROUP>

Use if (status) in tests for successful urb status.

This replaces (status != 0) and (status == STATUS_SUCCESS).
(STATUS_SUCCESS is defined for NDIS status in this driver, but
was being misused)

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
Changes in v2:
- replace if (status !=0) with if (status)
- propogate change in two more instances
- update commit msg & changelog

 drivers/staging/vt6656/usbpipe.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index f27eb9a..f546553 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -116,7 +116,7 @@ static void vnt_start_interrupt_urb_complete(struct urb *urb)
 		break;
 	}
 
-	if (status != STATUS_SUCCESS) {
+	if (status) {
 		priv->int_buf.in_use = false;
 
 		dev_dbg(&priv->usb->dev, "%s status = %d\n", __func__, status);
@@ -221,7 +221,7 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
 			  rcb);
 
 	status = usb_submit_urb(urb, GFP_ATOMIC);
-	if (status != 0) {
+	if (status) {
 		dev_dbg(&priv->usb->dev, "Submit Rx URB failed %d\n", status);
 		return STATUS_FAILURE;
 	}
@@ -282,7 +282,7 @@ int vnt_tx_context(struct vnt_private *priv,
 			  context);
 
 	status = usb_submit_urb(urb, GFP_ATOMIC);
-	if (status != 0) {
+	if (status) {
 		dev_dbg(&priv->usb->dev, "Submit Tx URB failed %d\n", status);
 
 		context->in_use = false;
-- 
2.1.4


