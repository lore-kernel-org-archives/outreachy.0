X-GM-THRID: 6208147011756097536
X-Received: by 10.112.140.202 with SMTP id ri10mr2436513lbb.10.1445446873308;
        Wed, 21 Oct 2015 10:01:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.187.209 with SMTP id fu17ls81375wic.35.canary; Wed, 21 Oct
 2015 10:01:12 -0700 (PDT)
X-Received: by 10.194.248.131 with SMTP id ym3mr2462511wjc.7.1445446872487;
        Wed, 21 Oct 2015 10:01:12 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id d7si360934wiy.2.2015.10.21.10.01.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 10:01:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id ll6so100278128wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 10:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=vUBOw969RAMGOjISHDd5h8dOnDMKFKjRFpTQpwvAzDE=;
        b=yKkVLY8j6HlfKvOxvQ3/dpXRrlN73C+Jf6Vqhr2fOTL3Tae1ixmgDM9A6kT0iBIXG0
         ITiCysoSLWJwAwPBFbX/n/FBfL6UFqLfYzHd/iTXcein8HkN+F8eFDQwPVt+bCSItQw4
         IJ/QhyuqGFfH6JnnusOjI/Iqzo/5wuLDGk2GINMVnQuyJRTPqOzhuczil5vO+tMKzM2l
         0s3xG6ZPMk58uoemfPlHRmMEnkVJp/94xsvqz+GXzPOW0TaON4c/dMFJL8mm8am9W4TH
         c5dE0flLcwtccMrlcGur6maYdyupFS/fLjhUmkPe/2YGg6ddCQjpplglNhFIfIWDfsb6
         u52g==
X-Received: by 10.194.90.169 with SMTP id bx9mr13450546wjb.1.1445446872359;
        Wed, 21 Oct 2015 10:01:12 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.204])
        by smtp.gmail.com with ESMTPSA id x7sm24456745wia.10.2015.10.21.10.01.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 10:01:11 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 2/3] staging: octeon-usb: Replace kmalloc with kmalloc_array
Date: Wed, 21 Oct 2015 20:00:50 +0300
Message-Id: <b77de79d7c78d0ba03af7fbeb63e4369ce98ff1e.1445379358.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445379358.git.cristina.moraru09@gmail.com>
References: <cover.1445379358.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445379358.git.cristina.moraru09@gmail.com>
References: <cover.1445379358.git.cristina.moraru09@gmail.com>

Replace kmalloc with specialized function kmalloc_array
when the size is a multiplication of:
	number_of_elements * size_of_element

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index 6194028..6f28717 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -3216,9 +3216,9 @@ static int octeon_usb_urb_enqueue(struct usb_hcd *hcd,
 		 * Allocate a structure to use for our private list of
 		 * isochronous packets.
 		 */
-		iso_packet = kmalloc(urb->number_of_packets *
-				     sizeof(struct cvmx_usb_iso_packet),
-				     GFP_ATOMIC);
+		iso_packet = kmalloc_array(urb->number_of_packets,
+					   sizeof(struct cvmx_usb_iso_packet),
+					   GFP_ATOMIC);
 		if (iso_packet) {
 			int i;
 			/* Fill the list with the data from the URB */
-- 
1.9.1


