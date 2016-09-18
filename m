X-GM-THRID: 6331683912219099136
X-Received: by 10.66.126.10 with SMTP id mu10mr2621113pab.110.1474210040254;
        Sun, 18 Sep 2016 07:47:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.160.11 with SMTP id o11ls220142ite.2.canary; Sun, 18 Sep
 2016 07:47:19 -0700 (PDT)
X-Received: by 10.107.18.87 with SMTP id a84mr2877979ioj.82.1474210039614;
        Sun, 18 Sep 2016 07:47:19 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id e66si363414pfk.2.2016.09.18.07.47.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 07:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so3309684pfj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 07:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KWVxYlbU0iU5QHiWkTOLw+bXH4HJFApoAjH8Kn5+NwA=;
        b=EaH39vRSM2fTxJ6swym9oMWAE8E0GeEghIYEwZr6s4jPPpnRXjVXOFwt+vXSeSH8u8
         3koGC+ZLveVdJlQt6rfhVBqQfydq1g63bA01XF0ZYk4vPVo4iPatERSid9pw3WIbLrLw
         2+mPXlwMWo5D4eol+C+suCqtcaZJWAu8K6WyVG8tYIQ9CeYXAPKArfLT8XIPUMqHZoCg
         ojXfk8Jn4zgKFeSO8FfZ6MHrkI2JImqhckFF9H5n7nJ/EIlWAr8XcoRAbJSZtBfOOP+B
         MEs49/t8Ioe24fJwf08rFj6hJX5Vfa9jSbjHoPLD655UVmf27J7powtU+0LBoJCpIEYX
         m0Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KWVxYlbU0iU5QHiWkTOLw+bXH4HJFApoAjH8Kn5+NwA=;
        b=EVWk4C+vv9sBxHyJmITnqKz8BCxe9gjEhqNRP8sxlwycZxkTBzIjqtUlvSbQOjvzCX
         fdr0S7xE6f5emyTwgGb7rsGs33OM/xLoRGLRD8S5GJTvI7q/Pc3bsn24LrXNmDHeTCsm
         GvasGEJaKQzq1Z0WMTXLmx+ZwrPIWgo9X/u4sk8flSP6CPZ8C3k7cehKQt+rj/fc9bRg
         UOaWp7OhDmTjvML79FS6j7NKOx5dCWOvmCb1xql+dd2hMtOpNlaXCmjszU2zC46JUw9N
         u+cB4OAbcF30h+NPOWTZw/2AoKXphHFSUhVQOQvaSZ57vbL7e2G67jmh0YHv3Crt5WGf
         Ylow==
X-Gm-Message-State: AE9vXwP8eqnFTUG9bSquJ1pa6Fcp4pcZR5DUjY9rIDC2KF8juRT9Wm9VIhjbZRfPBIif5A==
X-Received: by 10.98.22.21 with SMTP id 21mr9475799pfw.4.1474210039243;
        Sun, 18 Sep 2016 07:47:19 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.93.227])
        by smtp.gmail.com with ESMTPSA id d188sm12691751pfd.3.2016.09.18.07.47.16
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 07:47:18 -0700 (PDT)
Date: Sun, 18 Sep 2016 20:17:57 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] Staging: comedi: Use usb_endpoint_dir_in(endpoint) instead
 of (endpoint->bEndpointAddress & USB_DIR_IN).
Message-ID: <20160918144757.GA3786@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use usb_endpoint_dir_in(endpoint) instead of (endpoint->bEndpointAddress & USB_DIR_IN).

This correction is made using below coccinelle script:

@@
struct usb_endpoint_descriptor *endpoint;
expression E;
@@
(
- endpoint->bEndpointAddress & USB_DIR_IN
+ usb_endpoint_dir_in(endpoint)
|
- endpoint->bEndpointAddress == USB_DIR_IN
+ usb_endpoint_dir_in(endpoint)
|
- (endpoint->bEndpointAddress & E) == USB_DIR_IN
+ usb_endpoint_dir_in(endpoint)
)


Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/comedi/drivers/dt9812.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt9812.c b/drivers/staging/comedi/drivers/dt9812.c
index 7ebca86..4007c45 100644
--- a/drivers/staging/comedi/drivers/dt9812.c
+++ b/drivers/staging/comedi/drivers/dt9812.c
@@ -676,7 +676,7 @@ static int dt9812_find_endpoints(struct comedi_device *dev)
 			dir = USB_DIR_IN;
 			break;
 		}
-		if ((ep->bEndpointAddress & USB_DIR_IN) != dir) {
+		if ((usb_endpoint_dir_in(ep)) != dir) {
 			dev_err(dev->class_dev,
 				"Endpoint has wrong direction\n");
 			return -ENODEV;
-- 
1.7.1


