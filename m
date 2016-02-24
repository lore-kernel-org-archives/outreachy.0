X-GM-THRID: 6254894706255200256
X-Received: by 10.66.148.69 with SMTP id tq5mr37755604pab.28.1456331160224;
        Wed, 24 Feb 2016 08:26:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.41 with SMTP id r9ls1349460obf.14.gmail; Wed, 24 Feb
 2016 08:25:59 -0800 (PST)
X-Received: by 10.182.199.70 with SMTP id ji6mr36559469obc.32.1456331159626;
        Wed, 24 Feb 2016 08:25:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id yd9si485369pab.1.2016.02.24.08.25.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 08:25:59 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id yy13so14974371pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 08:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QqNEXCitHaWsYsp7MyxW7oTYNg0bXMQZyaMs6dpahvA=;
        b=gPzWFtSOUgUoADP1nUc/4HMUIeHF4B1n7ZdRN/PbQu9ROOLX8GcWoXKrr5rE3068T9
         REgbRY4yae/Q50xMdvVAjXTwMhjubWkLrX+6+sOzCj2fHvFGvqLqScy/EMiW690fsDF+
         g2QFvUoSHY6ZUcxGRHyuLP51JzoiK0j/8B91HHB90015S8kzLS/kW9kKnb2EUC+BeyaT
         QI9t0g1raT73q9uiCEJzXAfVH1GxYTS11LBh+cTPAyXORPJfbom4W5FuGx333CB/m+Vo
         rvVSrT6zc8lCoaKWz11lBMCzEqsyxhhsCW5DwKLMX66yhWu8Z0zC6hzQN3Pyi7JCuZ+u
         VoSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=QqNEXCitHaWsYsp7MyxW7oTYNg0bXMQZyaMs6dpahvA=;
        b=EgWAqPRxtldf7+WWlZAaNd/bPNa/CB7Fmw9BkAbaWHlTiHFIYPpm27PsB7a24/mvHi
         Hxgtx317ZkQWUjtgxqURAg04zJHkOcIO+p/U53yTdahz6yUyhEy14PIG9p+A+q1abcrk
         HWWL9XL6sUHkAmxqCkdVFsx1xbmCyvsPyTAiBRlv++4ovIhAiNJNFfinIxnU6npAO2Hw
         gH20krWojLDRimB4EnqexmUgljahmGVoaQT/8MaqdNDxEeJ/zEY7JZzIqwXJHaGF7AaF
         j6u6/18hsSalgibgVvxLNO5nAA6lvZTmlkOHNjXC+KRafqE1vfRP25Z+W+LgRPP+A+UO
         qOdw==
X-Gm-Message-State: AG10YOTsb8sYf+roMfbla/94w8XETg39moQPYiJTvazZdzy/8ySRVudBzld622qpm6/fNw==
X-Received: by 10.66.145.194 with SMTP id sw2mr55387854pab.69.1456331159396;
        Wed, 24 Feb 2016 08:25:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id v7sm6148952pfi.56.2016.02.24.08.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 08:25:58 -0800 (PST)
Date: Wed, 24 Feb 2016 21:55:49 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: Remove unnecessary macro
Message-ID: <20160224162549.GA3992@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary macro SUBMIT_URB by replacing it with a direct call
to usb_submit_urb()

This change was made with the help of the following Coccinelle semantic 
patch:

//<smpl>
@@
identifier f,g;
@@
* #define f(...) g(...)
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 09b4b2c..602c3f3 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -126,8 +126,6 @@
 #include <linux/usb.h>
 #include <linux/byteorder/generic.h>
 
-#define SUBMIT_URB(u, f)  usb_submit_urb(u, f)
-
 #include "p80211types.h"
 #include "p80211hdr.h"
 #include "p80211mgmt.h"
@@ -346,7 +344,7 @@ static int submit_rx_urb(hfa384x_t *hw, gfp_t memflags)
 	result = -ENOLINK;
 	if (!hw->wlandev->hwremoved &&
 	    !test_bit(WORK_RX_HALT, &hw->usb_flags)) {
-		result = SUBMIT_URB(&hw->rx_urb, memflags);
+		result = usb_submit_urb(&hw->rx_urb, memflags);
 
 		/* Check whether we need to reset the RX pipe */
 		if (result == -EPIPE) {
@@ -395,7 +393,7 @@ static int submit_tx_urb(hfa384x_t *hw, struct urb *tx_urb, gfp_t memflags)
 	if (netif_running(netdev)) {
 		if (!hw->wlandev->hwremoved &&
 		    !test_bit(WORK_TX_HALT, &hw->usb_flags)) {
-			result = SUBMIT_URB(tx_urb, memflags);
+			result = usb_submit_urb(tx_urb, memflags);
 
 			/* Test whether we need to reset the TX pipe */
 			if (result == -EPIPE) {
@@ -2925,7 +2923,7 @@ static void hfa384x_usbctlxq_run(hfa384x_t *hw)
 		hw->ctlx_urb.transfer_flags |= USB_QUEUE_BULK;
 
 		/* Now submit the URB and update the CTLX's state */
-		result = SUBMIT_URB(&hw->ctlx_urb, GFP_ATOMIC);
+		result = usb_submit_urb(&hw->ctlx_urb, GFP_ATOMIC);
 		if (result == 0) {
 			/* This CTLX is now running on the active queue */
 			head->state = CTLX_REQ_SUBMITTED;
-- 
1.9.1


