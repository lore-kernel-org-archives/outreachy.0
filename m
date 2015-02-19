X-GM-THRID: 566645227520
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,aff877e338498959
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.119.141 with SMTP id ku13mr322831lbb.7.1424325349907;
        Wed, 18 Feb 2015 21:55:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.211.114 with SMTP id nb18ls1327884wic.26.canary; Wed, 18
 Feb 2015 21:55:49 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr771090wid.1.1424325349526;
        Wed, 18 Feb 2015 21:55:49 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com. [74.125.82.182])
        by gmr-mx.google.com with ESMTPS id ta1si6328459wic.1.2015.02.18.21.55.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 21:55:49 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.182 as permitted sender) client-ip=74.125.82.182;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.182 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so5191748wes.9
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 21:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=GIfOJyjedTk78gyy8jHxAIB0g7E0ZRvKAq8NmyfR2NA=;
        b=ZdcF/gvdtr0j/vYItJU1XIuXssFbiwR7/LmMHVFKTQKRhLThGmt3zORx0pBVAGKyYW
         nLvBkMIwaQYqo67BtBJSi9ytgvueJJJvGVJctWmUbvhXzOwfCxqCniwQSXsh3HOOPn+r
         cFz6vtmHsymNoZiQeRjdsLEIXyE7wl+zWakavU8BsQmZmxZBdj0LWGbKJhpAPKtiRAue
         HFQOuBI6DNju508WbCsWtP14Mnbf3JeZQUZ3iOP2DeCMJNc4zMkJTiTW6TmVH6czNkxd
         7e3AkNqngiDw/ubQ93sZ+/L4HBLqcSOTn2+5C/TjzvBJ7SXxOCsP6npIO9FrjWXmfVUk
         JDJQ==
X-Received: by 10.194.84.176 with SMTP id a16mr5281489wjz.113.1424325349432;
        Wed, 18 Feb 2015 21:55:49 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.198])
        by mx.google.com with ESMTPSA id jg3sm32627842wid.0.2015.02.18.21.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 21:55:48 -0800 (PST)
Date: Thu, 19 Feb 2015 07:55:43 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: wlan-ng: replace init_timer by setup_timer
Message-ID: <2a1aedd0a627b530c154e9db287091d0ca987011.1424324574.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424324574.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424324574.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch replaces init_timer and the 2 step initialization of function
and data by setup_timer to make the code more concise.

The issue was discovered using the following coccinelle script:

@@
expression ds, e1, e2;
@@

-init_timer (&ds);
+setup_timer (&ds, e1, e2);
...
(
-ds.function = e1; 
...
-ds.data = e2; 
|
-ds.data = e2; 
...
-ds.function = e1; 
)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 28cd1c4..c85b1b5 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -557,17 +557,13 @@ void hfa384x_create(hfa384x_t *hw, struct usb_device *usb)
 	INIT_WORK(&hw->link_bh, prism2sta_processing_defer);
 	INIT_WORK(&hw->usb_work, hfa384x_usb_defer);
 
-	init_timer(&hw->throttle);
-	hw->throttle.function = hfa384x_usb_throttlefn;
-	hw->throttle.data = (unsigned long)hw;
+	setup_timer(&hw->throttle, hfa384x_usb_throttlefn, (unsigned long)hw);
 
-	init_timer(&hw->resptimer);
-	hw->resptimer.function = hfa384x_usbctlx_resptimerfn;
-	hw->resptimer.data = (unsigned long)hw;
+	setup_timer(&hw->resptimer, hfa384x_usbctlx_resptimerfn,
+		    (unsigned long)hw);
 
-	init_timer(&hw->reqtimer);
-	hw->reqtimer.function = hfa384x_usbctlx_reqtimerfn;
-	hw->reqtimer.data = (unsigned long)hw;
+	setup_timer(&hw->reqtimer, hfa384x_usbctlx_reqtimerfn,
+		    (unsigned long)hw);
 
 	usb_init_urb(&hw->rx_urb);
 	usb_init_urb(&hw->tx_urb);
@@ -577,9 +573,8 @@ void hfa384x_create(hfa384x_t *hw, struct usb_device *usb)
 	hw->state = HFA384x_STATE_INIT;
 
 	INIT_WORK(&hw->commsqual_bh, prism2sta_commsqual_defer);
-	init_timer(&hw->commsqual_timer);
-	hw->commsqual_timer.data = (unsigned long)hw;
-	hw->commsqual_timer.function = prism2sta_commsqual_timer;
+	setup_timer(&hw->commsqual_timer, prism2sta_commsqual_timer,
+		    (unsigned long)hw);
 }
 
 /*----------------------------------------------------------------
-- 
1.9.3


