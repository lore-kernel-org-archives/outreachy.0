X-GM-THRID: 6329775590649888768
X-Received: by 10.36.149.9 with SMTP id m9mr226922itd.10.1473765724107;
        Tue, 13 Sep 2016 04:22:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.38 with SMTP id x38ls79860ioe.42.gmail; Tue, 13 Sep
 2016 04:22:03 -0700 (PDT)
X-Received: by 10.66.246.136 with SMTP id xw8mr238294pac.14.1473765723537;
        Tue, 13 Sep 2016 04:22:03 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si3356123pfe.0.2016.09.13.04.22.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 04:22:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id ph5so3000624pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 04:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Z0rAiqvGLw5Nx+o3HoJyzvj19iRt1VQ0TDAxD2qE+/U=;
        b=q3XKBV8g39JHm0g4KNxgN4RPCFhtT8r0yqhmPe+FP54KggzXO5RUt3xWR10bv9gK/i
         NDC/CwvJ9ZdTkRtg3EV7xmo1JixupdcLzU+j36WI9NiuMopFgOUS/jd8j9yapTLDxl6u
         0l7Vg5qbGZeMLaG80oXCgmLdgYVUALkg+Lnc5CfSUIzTBVLej13uWovzd1sAtJWUq/3s
         5MEBTk85OdJA0lhojzEY6D+LkAPiRDM7JqPtajrz6lF2Jwx2jgdDSNbbeG0ocHqEabpx
         sgF6ZmjQpt3w9Mybi8Ah5an3NFWEACHgJAkTbDWenJZ/3V/yT32chS/DZazllQwxQv0X
         S79w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Z0rAiqvGLw5Nx+o3HoJyzvj19iRt1VQ0TDAxD2qE+/U=;
        b=Q57vQSxV9j8b2cYj3/Gcnj83/W/njde+QcFy1ai0bkyAmVUMCh2b/2BtaIN9aY0y8n
         uLwi0/yqY9Byq2kG9JIkFXRvFlZwulI6JGzdbAfrhNpYKy5dY+NOuC28CM3Ww9vEONTE
         vpAbMkz7mpvkf3wJ9icayKo7tGgiEzAzRHeRDlfY5W4uv91RRcXRqIvDQtGyQu/DkGb/
         0k0bjbeLL0OcPzy3y9goVDSVvku54gPE8lGhZGa6+qBBJJo6RM033zI1Z/lNNQ7K6ym6
         dpJNOaVgViQfWzVgCGD0lGnyt3OlyIOirbTyP8g+cYpFZqtML6fFhqAnMPIL2SQTuf/j
         7XuQ==
X-Gm-Message-State: AE9vXwM5aBJ3rJvJkHm/hEtSoJEBrm27E0cjtG9UsHAvDOL1+3sbIPCLT7TsrJa+auU+sA==
X-Received: by 10.66.192.102 with SMTP id hf6mr370670pac.102.1473765723349;
        Tue, 13 Sep 2016 04:22:03 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id s1sm30624344paz.47.2016.09.13.04.22.00
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 04:22:02 -0700 (PDT)
Date: Tue, 13 Sep 2016 16:51:51 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org
Subject: [PATCH v2 6/6] staging: media: lirc: lirc_imon: Fix alignment with
 the open parenthesis
Message-ID: <20160913112141.GA10820@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix alignment to match open parenthesis.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	changes in v2:
	- make commit message clear
 drivers/staging/media/lirc/lirc_imon.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index ee12da2..b1c28e5 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -587,7 +587,7 @@ static void imon_incoming_packet(struct imon_context *context,
 
 	if (len != 8) {
 		dev_warn(dev, "imon %s: invalid incoming packet size (len = %d, intf%d)\n",
-			__func__, len, intf);
+			 __func__, len, intf);
 		return;
 	}
 
@@ -828,7 +828,7 @@ static int imon_probe(struct usb_interface *interface,
 	}
 
 	dev_info(dev, "Registered iMON driver (lirc minor: %d)\n",
-			lirc_minor);
+		 lirc_minor);
 
 	/* Needed while unregistering! */
 	driver->minor = lirc_minor;
@@ -849,8 +849,8 @@ static int imon_probe(struct usb_interface *interface,
 		context->display = 1;
 
 	usb_fill_int_urb(context->rx_urb, context->usbdev,
-		usb_rcvintpipe(context->usbdev,
-			context->rx_endpoint->bEndpointAddress),
+			 usb_rcvintpipe(context->usbdev,
+			 context->rx_endpoint->bEndpointAddress),
 		context->usb_rx_buf, sizeof(context->usb_rx_buf),
 		usb_rx_callback, context,
 		context->rx_endpoint->bInterval);
@@ -875,7 +875,7 @@ static int imon_probe(struct usb_interface *interface,
 	}
 
 	dev_info(dev, "iMON device (%04x:%04x, intf%d) on usb<%d:%d> initialized\n",
-		vendor, product, ifnum, usbdev->bus->busnum, usbdev->devnum);
+		 vendor, product, ifnum, usbdev->bus->busnum, usbdev->devnum);
 
 	/* Everything went fine. Just unlock and return retval (with is 0) */
 	mutex_unlock(&context->ctx_lock);
@@ -966,8 +966,8 @@ static int imon_resume(struct usb_interface *intf)
 	struct imon_context *context = usb_get_intfdata(intf);
 
 	usb_fill_int_urb(context->rx_urb, context->usbdev,
-		usb_rcvintpipe(context->usbdev,
-			context->rx_endpoint->bEndpointAddress),
+			 usb_rcvintpipe(context->usbdev,
+			 context->rx_endpoint->bEndpointAddress),
 		context->usb_rx_buf, sizeof(context->usb_rx_buf),
 		usb_rx_callback, context,
 		context->rx_endpoint->bInterval);
-- 
1.9.1


