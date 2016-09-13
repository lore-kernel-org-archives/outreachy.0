X-GM-THRID: 6329749764443209728
X-Received: by 10.157.11.233 with SMTP id 96mr8541121oth.42.1473759711056;
        Tue, 13 Sep 2016 02:41:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.87 with SMTP id t81ls921554ota.36.gmail; Tue, 13 Sep
 2016 02:41:50 -0700 (PDT)
X-Received: by 10.157.30.131 with SMTP id n3mr5479093otn.18.1473759710711;
        Tue, 13 Sep 2016 02:41:50 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id y124si3006026pfg.1.2016.09.13.02.41.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:41:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id ph5so2901486pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 02:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZgVqxOsRJBQDnCbwfxOKQ2yA5EwiwVp2BcJCg25vaTE=;
        b=HvIcgiGXClIQIlW8SIhnwRdVuIbLSU8qNdoxRaeT2V6O4pT7dZkmF+AY56MbINhUz+
         MJ8aJdgWmCtJ30og7TXe7bJTRk48ht5AZK8lsKyoAc1yUmMUDPvOpsP+tdpbIY5LUOhP
         ZQbDKso9wA40+KJVg3YRWPlnAZ3vtlJVTptDoFaQ09ajFg0Oe5Mg9ITCAjJnTwK5tEnx
         iV6TUm740irZsQspgnWYPTPc4hITkcqKb2mrXjjqZUlbejUEnDAfUhkAFtgd/P791xcq
         Crjb/H7fwKsVN0FQF1r+usAX3xLtmf8bN1shvN3SsLiX8+EnNmemkvQhQoPTQB6euYtA
         NnSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZgVqxOsRJBQDnCbwfxOKQ2yA5EwiwVp2BcJCg25vaTE=;
        b=JbQUKCkAOjhgD2P3UY6wFV+bo2vUbkFS4Bv549djvHamElf5ewLFRu/Hpsd9zjyihm
         J+O8D9hzQyXbYUQMWundfRmUci/rU8oYomHYWLMf4hk9OfxFZ4l+p4ylihirkhPVEeXS
         bLULFaSz4IjD9a1q5QfNwUbfNyyz1r8EOCZs+IkTnSwHCLF6irJ+Ou5OF00KodF5yV+I
         WN/ghFAkIqK+V3B0f40prCBXNlwy9xgfT3wOdR6YpBMylI849sB3gGL8oTzR6nK30qbR
         9bsAK9HJuVgQ0wX3+n0Cb3Ltg/eYus1nesvSMoVHyTzAs9A3CSc+4qp3Tk81XgayIyku
         fhOw==
X-Gm-Message-State: AE9vXwO4yjYazc6frq5UJkVNjRc8nNJmAp9DM0tFkwu/s8j36F/crap0/nrXyGtRmnFjBw==
X-Received: by 10.66.20.165 with SMTP id o5mr42595279pae.142.1473759710457;
        Tue, 13 Sep 2016 02:41:50 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id q14sm10751338pfg.63.2016.09.13.02.41.48
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 02:41:50 -0700 (PDT)
Date: Tue, 13 Sep 2016 15:11:35 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: media: lirc: lirc_imon.c: Alignment should
 match open parenthesis
Message-ID: <cf7e7362308491fa76f7de5d00e302fbbc583fde.1473758274.git.anchalj109@gmail.com>
References: <cover.1473758274.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473758274.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

CHECK: Alignment should match open parenthesis

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
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


