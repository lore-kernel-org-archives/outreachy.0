X-GM-THRID: 6332120256066093056
X-Received: by 10.157.3.1 with SMTP id 1mr116304otv.29.1474311634970;
        Mon, 19 Sep 2016 12:00:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.231 with SMTP id s94ls241026ota.17.gmail; Mon, 19 Sep
 2016 12:00:34 -0700 (PDT)
X-Received: by 10.129.145.5 with SMTP id i5mr13666297ywg.55.1474311634604;
        Mon, 19 Sep 2016 12:00:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si6878088pfe.0.2016.09.19.12.00.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 12:00:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so4339434pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 12:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1gB6cY+92VYME6hdWQdNBEICHWXzoMPyUXGDu9smiPI=;
        b=SnBQI/Ucu1eK+QdTGNMdszdtWqcXDAB802vMuW+qSv5N854DShV89T00Lst0d1Rh44
         tPP2beCrm8keW1PfFqQiIBLOYkOJlMinumAhAt/wW6tCT7/H+ADrc4KF+qUBDHfvJcXj
         vgfOoJib154slSp84db0WYqhFbg2n0S3sa3tQJqj7+qZUKyykwXio2WRgQd6SN3HACDK
         rOFkHnDK5xfjPbWs99cNpiV5Zih5smk3KJdGVrFt7g+CMHUDmesZeRLqKccjWspqTtLA
         uA5iBcqxa5YH+EFBXnUh0NB/Z814vUj/q3GzagHKFLjzxGfjQLe2+Jz/PtQKCu2vrejj
         MJWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1gB6cY+92VYME6hdWQdNBEICHWXzoMPyUXGDu9smiPI=;
        b=AUxeDB9Tm1TBH67rqvEpuYdES/hLVc6WXOlqFW/DYllbfDUIhGQ8sLuJcYX1UiVSzm
         bzpf6vHpbifLnTQWddnv4hqFDa8t6qsyJGq6P0geWsxW8slGnwWSiG2gJXQOLSsz+tYJ
         O4gRE7IeRGbtGp8Hl5qfXgm6VkHqXufsyNK/oCJhZ5CiHaUYXtMkbK/Ggx0sM7eTbNYd
         Iw+oPuO3BF5pLZ7qmUoaFwG4hVYzCllIp+SnCXQSC/BPsA6RgfKUDz/dSRrMNOMS+3J2
         OhyJrDIu3iSNOb575eGrJtrmLGxw+2fuTFZyY/NbiKC0pY+pywLc1Y4bJXpGfnGKJ0hP
         JnxA==
X-Gm-Message-State: AE9vXwPaBH9HJjHshrDpYbGd+Py7JI+KCsxXv6SJt7UD6wcJjwQDG0/olOJMks3+TU2yiQ==
X-Received: by 10.66.138.37 with SMTP id qn5mr49660416pab.33.1474311634111;
        Mon, 19 Sep 2016 12:00:34 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.138.71])
        by smtp.gmail.com with ESMTPSA id b64sm73336789pfa.82.2016.09.19.12.00.31
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 12:00:33 -0700 (PDT)
Date: Tue, 20 Sep 2016 00:30:19 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] Staging: comedi: Use USB_ENDPOINT_DIR_MASK instead of
 USB_DIR_IN
Message-ID: <20160919190019.GA9583@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

USB_ENDPOINT_DIR_MASK and USB_DIR_IN have the same value, 
but USB_ENDPOINT_DIR_MASK is more correct for use as a mask.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/comedi/drivers/dt9812.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt9812.c b/drivers/staging/comedi/drivers/dt9812.c
index 7ebca86..40a7d97 100644
--- a/drivers/staging/comedi/drivers/dt9812.c
+++ b/drivers/staging/comedi/drivers/dt9812.c
@@ -676,7 +676,7 @@ static int dt9812_find_endpoints(struct comedi_device *dev)
 			dir = USB_DIR_IN;
 			break;
 		}
-		if ((ep->bEndpointAddress & USB_DIR_IN) != dir) {
+		if ((ep->bEndpointAddress & USB_ENDPOINT_DIR_MASK) != dir) {
 			dev_err(dev->class_dev,
 				"Endpoint has wrong direction\n");
 			return -ENODEV;
-- 
1.7.1


