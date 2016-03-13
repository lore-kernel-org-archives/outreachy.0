X-GM-THRID: 6261369966950350848
X-Received: by 10.140.153.14 with SMTP id 14mr12834443qhz.8.1457838959130;
        Sat, 12 Mar 2016 19:15:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.93.72 with SMTP id cs8ls538473igb.29.canary; Sat, 12 Mar
 2016 19:15:58 -0800 (PST)
X-Received: by 10.50.117.33 with SMTP id kb1mr7996526igb.2.1457838958866;
        Sat, 12 Mar 2016 19:15:58 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id w126si1001001ywe.6.2016.03.12.19.15.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:15:58 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x230.google.com with SMTP id s5so62975172qkd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 19:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AzuGZG3m031nHaKLksrksLYnlO4Axk03uHGpVuYle8g=;
        b=Pxp22AgCJNc6KsHI/QzACZPkEo82ME0DsnDSQ29eSsZ8GDfxctPoSGLlnUp9XtNu17
         e9WrKmtBn8IxIPp1Nmuijv62Lfrn6CvH+9mn0ye8jRSW9xSE+z9ZWFGsrxKfAINRqsQO
         ild9jA9F95uxsjNNGbtAvj5Rz9qF/ZIZRi3ODQHxUeHmQLqrAtrf6bu707+vsYJBl3eH
         wcdDFoZ6KoNV1dedaGxLJ8CYe9HdwgIeawFLWWvKgMtMZPs7+tbTjWjcNxBu874ZuOwt
         3D/uLOcsxwckXfQQ4j0QvIncY8sGlocoWivCNQDT3akcUEkFP698fJ1B3vAgMSpXoIhV
         n+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AzuGZG3m031nHaKLksrksLYnlO4Axk03uHGpVuYle8g=;
        b=M9KUmipICeeXpY5CxxGKrsJHitjRmazub4rDSikxDrmKwJF9kXnYuPEtWRjaxlGfc5
         b6ccb/J9wj0cXOZmnbtqU1B9zWIY8a19Ms2TXaGVstInrdo3M3bPqqKOq3koIljbRDE4
         d+TJbQikbqw9uWBVms4pgqylV6rP7LUTctvFfW/YRqOZTeJYs3jXRMDr9vQa41NE8ULi
         O11LAx005GjFyQgju4/OJSruFCQ+1TuVLkVxK0OhK8r/2L2Y78sNIb6Cf5ETfbO5umj5
         7eplyGwYMRCEk7cmjMRca+NBY70s69D7GhlnfaAh3EhK2dkMMbUo+K9Vzl9bdFM2KqhC
         kznA==
X-Gm-Message-State: AD7BkJKmoUnPkSFTb1jVjKbsP2/MQthDbFMmlwv6MvqgnpH/EvGKKiqAfNi41wCJvE4liw==
X-Received: by 10.55.77.202 with SMTP id a193mr21651926qkb.48.1457838958539;
        Sat, 12 Mar 2016 19:15:58 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id l36sm7336045qgd.29.2016.03.12.19.15.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 19:15:58 -0800 (PST)
Date: Sun, 13 Mar 2016 00:15:54 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH 2/2] staging: dgnc: fixed
 dgnc_major_transparent_print_registered calls in dgnc_tty.c
Message-ID: <589a3351f280163de7cbfd12a47335bc976a0d43.1457838430.git.juliana.orod@gmail.com>
References: <cover.1457838430.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457838430.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes dgnc_major_transparent_print_registered variable name in dgnc_tty.c
that was previously camelcased.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index c723fab..da2c7ed 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -273,7 +273,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	 */
 	tty_set_operations(&brd->PrintDriver, &dgnc_tty_ops);
 
-	if (!brd->dgnc_Major_TransparentPrint_Registered) {
+	if (!brd->dgnc_major_transparent_print_registered) {
 		/* Register Transparent Print devices */
 		rc = tty_register_driver(&brd->PrintDriver);
 		if (rc < 0) {
@@ -282,7 +282,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 				rc);
 			return rc;
 		}
-		brd->dgnc_Major_TransparentPrint_Registered = true;
+		brd->dgnc_major_transparent_print_registered = true;
 	}
 
 	dgnc_BoardsByMajor[brd->SerialDriver.major] = brd;
@@ -420,7 +420,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 		brd->dgnc_major_serial_registered = false;
 	}
 
-	if (brd->dgnc_Major_TransparentPrint_Registered) {
+	if (brd->dgnc_major_transparent_print_registered) {
 		dgnc_BoardsByMajor[brd->PrintDriver.major] = NULL;
 		brd->dgnc_TransparentPrint_Major = 0;
 		for (i = 0; i < brd->nasync; i++) {
@@ -430,7 +430,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 			tty_unregister_device(&brd->PrintDriver, i);
 		}
 		tty_unregister_driver(&brd->PrintDriver);
-		brd->dgnc_Major_TransparentPrint_Registered = false;
+		brd->dgnc_major_transparent_print_registered = false;
 	}
 
 	kfree(brd->SerialDriver.ttys);
-- 
2.7.2


