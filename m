X-GM-THRID: 6333834735065759744
X-Received: by 10.200.56.83 with SMTP id r19mr3247524qtb.57.1474735537310;
        Sat, 24 Sep 2016 09:45:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.207 with SMTP id w73ls10816501ota.8.gmail; Sat, 24 Sep
 2016 09:45:36 -0700 (PDT)
X-Received: by 10.157.19.117 with SMTP id q50mr3368876otq.54.1474735536971;
        Sat, 24 Sep 2016 09:45:36 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 7si3237154pfw.1.2016.09.24.09.45.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:45:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so6489391pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 09:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NvZRkA2aEPtIUKfkdcq0fK46eAmkCYRQXX5AiRknyRg=;
        b=Nah66+akdedS2eaBfaRa1CAnwKjq5NZccE4CJ9htoJG1QjIRpDi5Z4la5K3iB7HLGR
         Wcx7dgjXGWMvJDzOWSaPcj39QIgiikKNmR7F05uR/4IQPAEjjcbQjCVPPeh6bBLjTcM2
         FgMuIoWn+PsleLJjXFtZYbtGBg5l5BXg+TqqOqr53cANER9yVNI7/oHo5qcum5Prpfvo
         lZKVZUOdBbhnLySTJ0okoYRy5mimydNPufMeDwYaxyzm8x5i+JJFJrrTsH+EolokP/OV
         atgj1Q3/5sGJLkkygfgKVd5BP868tw+TcwfWtzzi5y65//4AbQicXxd8IUif6wOVyxhz
         BUTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NvZRkA2aEPtIUKfkdcq0fK46eAmkCYRQXX5AiRknyRg=;
        b=WbcI+x/B3dgJL14JZGrZWe7TPFU181gh3TICp9JJOyMplypuW/molUEcfcLZotqT9U
         8+vXhzmELwz9/JrbaoINzLZlj34CASLTXv1qTOb94lKOt8C6HoQLsSpI2cmBFzarH7Aq
         FRb3zbd1MtSHS1wASMpOJ7gs8iUOj3TvOFKRfBFqQNAbgo7RWWwC1AB0McSv4AMijCCx
         Y/Ym1ZbtXperNfpp4qgNxm5CUIV0iWhcPc690P0gvDq9a/+8mzjxtMFN+BmsPz18jjyt
         N0aLCncLDIM+lvR8y1gACoAqoWHe2qvEsTsUkNgR08g0Hd+xNjeAZQww/cSyOcG3fU9M
         QtWg==
X-Gm-Message-State: AE9vXwMIg78HP96N4wsXSNYHPdiV89xOt08Z6XrJLFMg2jU3adFzD50aYp1XoN1dq9E9mQ==
X-Received: by 10.66.149.138 with SMTP id ua10mr23270850pab.146.1474735536734;
        Sat, 24 Sep 2016 09:45:36 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id g14sm19654500pfb.77.2016.09.24.09.45.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:45:36 -0700 (PDT)
Date: Sat, 24 Sep 2016 22:15:30 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: media: lirc: Remove multiple blank lines
Message-ID: <20160924164525.GA12571@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove multiple blank lines to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
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


