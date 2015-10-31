X-GM-THRID: 6211753081535725568
X-Received: by 10.50.50.201 with SMTP id e9mr2312077igo.3.1446286663361;
        Sat, 31 Oct 2015 03:17:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.50 with SMTP id 47ls1610148qgo.70.gmail; Sat, 31 Oct
 2015 03:17:42 -0700 (PDT)
X-Received: by 10.31.134.2 with SMTP id i2mr10038547vkd.8.1446286662709;
        Sat, 31 Oct 2015 03:17:42 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id vy6si1131535pbc.1.2015.10.31.03.17.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:17:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so102004874pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9uOmyvavVmxyQiSmoyjboM370TNFu1uGJ0rF4Ij8ito=;
        b=eyJbwluwuS4m+xgBPHzSELWTa28NznN32dnylLgel/5VjWrQwb+xhK8x73LEFu0qcq
         2zFuDGirHl9Wb1sQKcRtsgnhXqKpdfy47p5nLRnvGk/AIp7upIWIGifQVedqlfLaogcV
         LMfo9LOpRiqkzpYUGPG51liBaxCRu86oHCvWeX+ihKSO97uuRVzO/YdUPQ1q2w7NfoN1
         NFsM13blRrcqaex5iIztRCneQOnOUILBocUiylQi1sZ1c6L1cH+VMaka8yFLzLRWX93I
         ovrjEF7Vya517vtPABnjBEgv2Z/bN8itRGWPW/aPmWfyjMJLh927l3hIDKTKIqsQEU4a
         bVmQ==
X-Received: by 10.68.57.176 with SMTP id j16mr14048651pbq.166.1446286662511;
        Sat, 31 Oct 2015 03:17:42 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.170.60])
        by smtp.gmail.com with ESMTPSA id ir4sm12955606pbb.93.2015.10.31.03.17.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:17:42 -0700 (PDT)
Date: Sat, 31 Oct 2015 15:47:38 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: wlan-ng: hfa384x_usb: Remove wrapper function
Message-ID: <1a26e17b532a7058294d72fcae09409745798004.1446286290.git.amitoj1606@gmail.com>
References: <cover.1446286289.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446286289.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove wrapper function that can be replaced by a single line of code.

As a result of the change, there is an unused variable which has also
been removed in this patch.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 30 +-----------------------------
 1 file changed, 1 insertion(+), 29 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index e3c9860..7551ac2 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -177,9 +177,6 @@ static void hfa384x_usbin_rx(wlandevice_t *wlandev, struct sk_buff *skb);
 
 static void hfa384x_usbin_info(wlandevice_t *wlandev, hfa384x_usbin_t *usbin);
 
-static void
-hfa384x_usbout_tx(wlandevice_t *wlandev, hfa384x_usbout_t *usbout);
-
 static void hfa384x_usbin_ctlx(hfa384x_t *hw, hfa384x_usbin_t *usbin,
 			       int urb_status);
 
@@ -3674,7 +3671,6 @@ static void hfa384x_usbin_info(wlandevice_t *wlandev, hfa384x_usbin_t *usbin)
 static void hfa384x_usbout_callback(struct urb *urb)
 {
 	wlandevice_t *wlandev = urb->context;
-	hfa384x_usbout_t *usbout = urb->transfer_buffer;
 
 #ifdef DEBUG_USB
 	dbprint_urb(urb);
@@ -3683,7 +3679,7 @@ static void hfa384x_usbout_callback(struct urb *urb)
 	if (wlandev && wlandev->netdev) {
 		switch (urb->status) {
 		case 0:
-			hfa384x_usbout_tx(wlandev, usbout);
+			prism2sta_ev_alloc(wlandev);
 			break;
 
 		case -EPIPE:
@@ -4038,30 +4034,6 @@ static int hfa384x_usbctlx_submit(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx)
 }
 
 /*----------------------------------------------------------------
-* hfa384x_usbout_tx
-*
-* At this point we have finished a send of a frame.  Mark the URB
-* as available and call ev_alloc to notify higher layers we're
-* ready for more.
-*
-* Arguments:
-*	wlandev		wlan device
-*	usbout		ptr to the usb transfer buffer
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
-static void hfa384x_usbout_tx(wlandevice_t *wlandev, hfa384x_usbout_t *usbout)
-{
-	prism2sta_ev_alloc(wlandev);
-}
-
-/*----------------------------------------------------------------
 * hfa384x_isgood_pdrcore
 *
 * Quick check of PDR codes.
-- 
1.9.1


