X-GM-THRID: 6253384037971263488
X-Received: by 10.107.128.102 with SMTP id b99mr19137421iod.1.1455979430011;
        Sat, 20 Feb 2016 06:43:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.93 with SMTP id m90ls385009iod.18.gmail; Sat, 20 Feb
 2016 06:43:49 -0800 (PST)
X-Received: by 10.66.228.102 with SMTP id sh6mr7353953pac.12.1455979429450;
        Sat, 20 Feb 2016 06:43:49 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id u66si2413062pfa.2.2016.02.20.06.43.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 06:43:49 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fl4so66311866pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 06:43:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=lS68vANMFVW1dDuFrIsDjaak168stE915oCXoDLp6sY=;
        b=NGQYCegTp0SFyQlB2vaDN+AkW652vN30VrXh0hJ4o+hWyEqwd+Z3wD9M7olAYzObue
         9B90wNyM2v+unlH1UwujqnGmhgQUsOcq8qg7DYJFfxcgOtEAfdbELp/LbjeSSZla8U6u
         b0GpQXVV+hROe1UpeUv8vSCCSvQMFIpgn0pV+P63mhxL6NatSSDRa+Zs0T3wS+KqtXpi
         3V6reTGuGvYk9Yb2sSz6IyCmizIvXMzgFYLreI3RgWnPepHM/TaDvYEWDt2Wf0IvAI09
         wZ/jwXZCF3gbmbwaj8ZPN5c9J8FduVcDaC/AeevamnnSnsdgVUWDpcjpvA7dsOYwQNnL
         Y2pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lS68vANMFVW1dDuFrIsDjaak168stE915oCXoDLp6sY=;
        b=FloOxaJU/I5v8h9xF9ITb+0IlMDUrVnW/88PfPuAHO36drkukGGQg3CTnsoFIQR4YZ
         plsSG0lvCw4sIcMJ0k34vtUa02LNAetPWw0yrk+l4fXk3w7rxKalzAYs0iyAF7oJO/pM
         goQl4m1nYGYOZoJTam1InW26wPeyJ3YlYwU6aG142i3j2yz1L/jg4PGhAY7RdZ8Uyu0n
         UtnEzC0vBXhoQ0t5fGnsJtLCpz6eI7chyzPucW0Dfymxj+c5tWTFgrczrmb5vr9K/9hD
         X4q9QBwsmQVSwYEz9GwhltVKhn3XQ9QjMARJ9Wz2MvYUfuObFU2WX+oN4dvc9Cs3Hc1J
         1ZAQ==
X-Gm-Message-State: AG10YOTPVzptIacbpx6yBqyK2gXVi5UI0S7q0GdgHunRxOyvLqZSmF+HrvyiBxWx6kd26A==
X-Received: by 10.67.23.202 with SMTP id ic10mr18310188pad.127.1455979429333;
        Sat, 20 Feb 2016 06:43:49 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.184.176])
        by smtp.gmail.com with ESMTPSA id dg12sm25212786pac.47.2016.02.20.06.43.43
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 06:43:48 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 20 Feb 2016 20:13:37 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: emxx_udc: Remove __func__ from dev_err
Date: Sat, 20 Feb 2016 20:13:35 +0530
Message-Id: <1455979415-13693-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes __func__ argument from dev_err as dev_err includes the
function name in the log printout, so there is no need to include it
manually.
Found using coccinelle:

@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

@script:python b@
e << a.msg;
y;
@@

if(e.find("%s: ") == True):
        m = e.replace("%s: ", "");
        coccinelle.y = m;
elif(e.find("%s ") == True):
        m = e.replace("%s ", "");
        coccinelle.y = m;
else:
        m = e.replace("%s", "");

@c@
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index a1f624f..c5a551b 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2561,7 +2561,7 @@ static int nbu2ss_ep_enable(
 	if ((!udc->driver)
 		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
 
-		dev_err(ep->udc->dev, " *** %s, udc !!\n", __func__);
+		dev_err(ep->udc->dev, "udc !!\n");
 		return -ESHUTDOWN;
 	}
 
@@ -2700,8 +2700,7 @@ static int nbu2ss_ep_queue(
 	}
 
 	if (unlikely(!udc->driver)) {
-		dev_err(udc->dev, "%s, bogus device state %p\n", __func__,
-			udc->driver);
+		dev_err(udc->dev, "bogus device state %p\n", udc->driver);
 		return -ESHUTDOWN;
 	}
 
@@ -2740,8 +2739,7 @@ static int nbu2ss_ep_queue(
 
 		result = _nbu2ss_start_transfer(udc, ep, req, FALSE);
 		if (result < 0) {
-			dev_err(udc->dev, " *** %s, result = %d\n", __func__,
-				result);
+			dev_err(udc->dev, "result = %d\n", result);
 			list_del(&req->queue);
 		} else if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT)) {
 #ifdef USE_DMA
@@ -2827,7 +2825,7 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, " *** %s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "bad udc\n");
 		return -EINVAL;
 	}
 
@@ -2879,7 +2877,7 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, "%s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "bad udc\n");
 		return -EINVAL;
 	}
 
@@ -2925,7 +2923,7 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
 
 	udc = ep->udc;
 	if (!udc) {
-		dev_err(ep->udc->dev, "%s, bad udc\n", __func__);
+		dev_err(ep->udc->dev, "bad udc\n");
 		return;
 	}
 
@@ -2972,7 +2970,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (!udc) {
-		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "udc == NULL\n");
 		return -EINVAL;
 	}
 
@@ -3000,7 +2998,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
 
 	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
 	if (!udc) {
-		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
+		dev_err(&pgadget->dev, "udc == NULL\n");
 		return -EINVAL;
 	}
 
-- 
1.9.1


