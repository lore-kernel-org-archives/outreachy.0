X-GM-THRID: 6333834735065759744
X-Received: by 10.200.45.232 with SMTP id q37mr2767297qta.78.1474710944609;
        Sat, 24 Sep 2016 02:55:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.25.138 with SMTP id 132ls7098429ioz.13.gmail; Sat, 24 Sep
 2016 02:55:44 -0700 (PDT)
X-Received: by 10.107.145.134 with SMTP id t128mr2607202iod.14.1474710944174;
        Sat, 24 Sep 2016 02:55:44 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si3021924pfw.1.2016.09.24.02.55.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:55:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so6414250pfy.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 02:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=iPbWIlQM3B5W/8IRTIEbakYMrsmCY7/yNfrNcgZRpcM=;
        b=lp94iJtQUm3SnCXgsy95Y0tNXD2hxiw/tlBNSOnAyHJH3uWNXIUgGKhr/F6+iV31So
         ubLcWLPB7Fnqnl2nCVdGZ3iuvFwxQ9sAZqdj5/FewviclP3TmB/szcU3fS/xUhf/TfcA
         te4LJAfs+BZEoL0QOIJx1F0Bt+SKI7AuL5km4nvYWCxt5HdjpQKvvgMn5iEUSk+SUPP9
         Urz7hYHAnoiTP5Yeb6gUF9uTA24PD/zSRxe4q5XX+moMGesYJPBnBWJJIngdiSowlIii
         LHC2rmWm41L//e3KpEpZNOFKJfvvKhvC1nEk5p1ZI8bznxs/QDrKKEkdV4t8+dY/TpQU
         A4fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iPbWIlQM3B5W/8IRTIEbakYMrsmCY7/yNfrNcgZRpcM=;
        b=fTm+BSrS6dkMeQMaM1YiFm24HDc7nb6cYc0winZfu+/sd9Cs6meSDZTtJcjbisyNFD
         f+lt5aeQ/w90p3DngMdboU8JVpDtbo+T+bywIQXO1eJB9NBoYLJsSFXdQZKzvsDzkFQw
         JkNIUYFv7XNUSBRWuYTwhBhMfGEvOmJkgsZtk/+WLnlRp8Ch8JY57e9mMAn1e0ra1upB
         +zi6a+p/7zKB6ehaTNTj1Pytkc0L0sDU0fB81SLjm3n79oX9xLuij34yGOqFADrWmnFt
         PK4O0SN8pYR3hL8OX5eEZPqOxgeZ/MTZgwDdeN0bKEEwoBU8UssnwPrpojI8wQMmgFDf
         SeIw==
X-Gm-Message-State: AE9vXwO1+3emdI5D0ZkQCWBgpZBZZgqirF1RX5LdKU42eSkXcBdYxxWTu3xQz3iW195sDw==
X-Received: by 10.98.15.8 with SMTP id x8mr20112796pfi.141.1474710943976;
        Sat, 24 Sep 2016 02:55:43 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id 21sm17233640pfo.80.2016.09.24.02.55.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:55:43 -0700 (PDT)
Date: Sat, 24 Sep 2016 15:25:37 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Namrata A Shettar <namrataashettar@gmail.com>,
	Amitoj Kaur Chawla <amitoj1606@gmail.com>,
	Tapasweni Pathak <tapaswenipathak@gmail.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Shraddha Barke <shraddha.6596@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 6/6] staging: media: lirc: Replace data type with pointer in
 sizeof()
Message-ID: <c8caeedace5534475eeadfa5286256e361761edb.1474708456.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474708455.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace data tupe with pointer of same type in sizeof() to resolve
checkpatch issue as they are of the same size.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/media/lirc/lirc_sasem.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index 9eb1eec..828efb3 100644
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
@@ -548,8 +543,7 @@ static void ir_close(void *data)
 		deregister_from_lirc(context);
 
 		if (!context->vfd_isopen) {
-
-			mutex_unlock(&context->ctx_lock);
+                	mutex_unlock(&context->ctx_lock);
 			delete_context(context);
 			return;
 		}
@@ -633,7 +627,6 @@ static void usb_rx_callback(struct urb *urb)
 		return;
 
 	switch (urb->status) {
-
 	case -ENOENT:		/* usbcore unlink successful! */
 		return;
 
@@ -651,8 +644,6 @@ static void usb_rx_callback(struct urb *urb)
 	usb_submit_urb(context->rx_urb, GFP_ATOMIC);
 }
 
-
-
 /**
  * Callback function for USB core API: Probe
  */
@@ -709,7 +700,6 @@ static int sasem_probe(struct usb_interface *interface,
 
 		} else if (!vfd_ep_found &&
 			usb_endpoint_is_int_out(ep)) {
-
 			tx_endpoint = ep;
 			vfd_ep_found = 1;
 			if (debug)
@@ -735,17 +725,17 @@ static int sasem_probe(struct usb_interface *interface,
 	/* Allocate memory */
 	alloc_status = 0;
 
-	context = kzalloc(sizeof(struct sasem_context), GFP_KERNEL);
+	context = kzalloc(sizeof(*context), GFP_KERNEL);
 	if (!context) {
 		alloc_status = 1;
 		goto alloc_status_switch;
 	}
-	driver = kzalloc(sizeof(struct lirc_driver), GFP_KERNEL);
+	driver = kzalloc(sizeof(*driver), GFP_KERNEL);
 	if (!driver) {
 		alloc_status = 2;
 		goto alloc_status_switch;
 	}
-	rbuf = kmalloc(sizeof(struct lirc_buffer), GFP_KERNEL);
+	rbuf = kmalloc(sizeof(*rbuf), GFP_KERNEL);
 	if (!rbuf) {
 		alloc_status = 3;
 		goto alloc_status_switch;
-- 
2.7.4


