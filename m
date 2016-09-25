X-GM-THRID: 6334235309031555072
X-Received: by 10.66.156.228 with SMTP id wh4mr2228452pab.65.1474804084462;
        Sun, 25 Sep 2016 04:48:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.198 with SMTP id s64ls502311otb.15.gmail; Sun, 25 Sep
 2016 04:48:04 -0700 (PDT)
X-Received: by 10.157.44.41 with SMTP id f38mr3562724otb.78.1474804084058;
        Sun, 25 Sep 2016 04:48:04 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si3695056pfw.1.2016.09.25.04.48.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 04:48:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so7640261pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Sep 2016 04:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q87eqnFlojf205QsLTGLOnWJpFbRNs6fsZs0XVCwQoI=;
        b=aalhqN7T2IGmrL0EY/q9NdwEnD/+WLfE2AzyMnqpEkEvCM9f3nycNnSO2zVcsRS9j4
         UM1irIBZjoT7wpWgWABpQZDSkRcj7eVBqwtclffkuM8IQdRVeRbGpk1bcTa5TzEllsOx
         O1W0EiUfO+7BOyzIjHIVLoVDI3C1xih1M/vm22UFs/snqcoZQW7tiKTaG2ZFsQV+COJ2
         CIKiPdpdMTHMLQ5g4jb7ouAQFTdqnF8r1LTyQn39HgoQcQ/xLvA6lnXVaOe7esz8zAnI
         AhWP9ytPZiQcFzDSPK5WW5dH+arNQzzySXZHRH7CYRAwZjSupepUZrLr02hbUvFSLVEC
         o80A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q87eqnFlojf205QsLTGLOnWJpFbRNs6fsZs0XVCwQoI=;
        b=OXTe4hRuj/MalvM2POBcH4XTtx4RpiwkHUUkY3wpSCmLqUi2ikkLvMyjj22ZSisLy2
         XX0chgLI0EIPkXuMERTEZG/CbIVp1xomhcZUUqYjG6DeDowXGUkMFIrMGJNcgbyOuxkX
         oxOFsZHjCmonBdiHn78erjcaJLqr92HQpiZAcEd9iPMJ6ljUEcAzHl66zsiT4VIkO6Pk
         ZDtZ0/iQQkoKxu69V4VMsqM1FptHhPawmQrof75S0k9APFJZPd353F5PBsZGaOxwLFd4
         9zZcn/BONKckD2xpQ/1ZEq4I25V/My0jW+GnC+LEuTgPptxTNEoQz+okljMnQX8+zIuR
         Bslw==
X-Gm-Message-State: AE9vXwNWL1quVjwvVsLaP/s1cBGJWYdudXQ3FYOmqTU/Cx+Dv2N66sc5J6XpkZpAzyajQg==
X-Received: by 10.98.155.7 with SMTP id r7mr28886395pfd.171.1474804083831;
        Sun, 25 Sep 2016 04:48:03 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id 28sm17977493pfp.33.2016.09.25.04.48.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 04:48:03 -0700 (PDT)
Date: Sun, 25 Sep 2016 17:17:57 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: media: lirc: Remove unnecessary blank lines
Message-ID: <20160925114753.GA6664@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unneccessary blank lines to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 Changes in v2:
 - Subject line and commit message

 drivers/staging/media/lirc/lirc_sasem.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index 6ea1947..4678ae1 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -47,7 +47,6 @@
 #include <media/lirc.h>
 #include <media/lirc_dev.h>
 
-
 #define MOD_AUTHOR	"Oliver Stabel <oliver.stabel@gmx.de>, " \
 			"Tim Davies <tim@opensystems.net.au>"
 #define MOD_DESC	"USB Driver for Sasem Remote Controller V1.1"
@@ -86,7 +85,6 @@ static void ir_close(void *data);
 #define SASEM_DATA_BUF_SZ	32
 
 struct sasem_context {
-
 	struct usb_device *dev;
 	int vfd_isopen;			/* VFD port has been opened */
 	unsigned int vfd_contrast;	/* VFD contrast */
@@ -156,7 +154,6 @@ static int debug;
 
 
 /*** M O D U L E   C O D E ***/
-
 MODULE_AUTHOR(MOD_AUTHOR);
 MODULE_DESCRIPTION(MOD_DESC);
 MODULE_LICENSE("GPL");
@@ -186,7 +183,6 @@ static void deregister_from_lirc(struct sasem_context *context)
 	else
 		dev_info(&context->dev->dev,
 			 "Deregistered Sasem driver (minor:%d)\n", minor);
-
 }
 
 /**
@@ -297,7 +293,6 @@ static int vfd_close(struct inode *inode, struct file *file)
 		context->vfd_isopen = 0;
 		dev_info(&context->dev->dev, "VFD port closed\n");
 		if (!context->dev_present && !context->ir_isopen) {
-
 			/* Device disconnected before close and IR port is
 			 * not open. If IR port is open, context will be
 			 * deleted by ir_close. */
@@ -546,9 +541,7 @@ static void ir_close(void *data)
 		 * at disconnect time, so do it now.
 		 */
 		deregister_from_lirc(context);
-
 		if (!context->vfd_isopen) {
-
 			mutex_unlock(&context->ctx_lock);
 			delete_context(context);
 			return;
@@ -633,7 +626,6 @@ static void usb_rx_callback(struct urb *urb)
 		return;
 
 	switch (urb->status) {
-
 	case -ENOENT:		/* usbcore unlink successful! */
 		return;
 
@@ -651,8 +643,6 @@ static void usb_rx_callback(struct urb *urb)
 	usb_submit_urb(context->rx_urb, GFP_ATOMIC);
 }
 
-
-
 /**
  * Callback function for USB core API: Probe
  */
@@ -709,7 +699,6 @@ static int sasem_probe(struct usb_interface *interface,
 
 		} else if (!vfd_ep_found &&
 			usb_endpoint_is_int_out(ep)) {
-
 			tx_endpoint = ep;
 			vfd_ep_found = 1;
 			if (debug)
-- 
2.7.4


