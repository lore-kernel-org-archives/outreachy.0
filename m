X-GM-THRID: 656204103680
X-Received: by 10.182.34.133 with SMTP id z5mr3719907obi.3.1424338482283;
        Thu, 19 Feb 2015 01:34:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.7 with SMTP id 7ls599137qgk.86.gmail; Thu, 19 Feb 2015
 01:34:42 -0800 (PST)
X-Received: by 10.236.28.102 with SMTP id f66mr3523885yha.31.1424338482127;
        Thu, 19 Feb 2015 01:34:42 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com. [209.85.220.48])
        by gmr-mx.google.com with ESMTPS id nt14si1088900pab.2.2015.02.19.01.34.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 01:34:42 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.48 as permitted sender) client-ip=209.85.220.48;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.48 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablf10 with SMTP id lf10so8193098pab.6
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 01:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=sNSxGTnnQ4PR2xndcpxRKW2Bb+yEbfP7vW54dulW4J0=;
        b=xbzIoV/WP8gES5imxES5GgFontS/8K/ndFm567V0PyWmKv5EZ13iG0rP14qVqgdxMK
         6JMjP+kAwX2J+iLpEN2FGvklkzi7mzosg2fesIpFPEkmoZKBXIqVOyEkipItgZdAQxJ5
         N+7w5L8KNdZ0xfuOE3X60Ke+HriNH96XVnGisGTqY/9tG+UA8FaC5zx+fOmPrG4ABz+d
         Gd++koLOabrwV1LCz3Adnfm2EZwya67gBwy0TJbaiKKHiZ/XOxtyKmollJgX4/ZHy0JT
         Sm11eN+ZR9K9TkciJAqR8TNZ2d0/hGsbH6ajuiNpQxVfwHDEEld9cS211jbp5dFz1vnR
         1VTw==
X-Received: by 10.66.144.100 with SMTP id sl4mr6101064pab.128.1424338482007;
        Thu, 19 Feb 2015 01:34:42 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id hf8sm23093298pbc.21.2015.02.19.01.34.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 01:34:41 -0800 (PST)
Date: Thu, 19 Feb 2015 15:04:27 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: Enclose macro in a do - while loop
Message-ID: <20150219093427.GA28027@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to enclose a multi line macro in a do - while loop.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 60a57b2..acd2088 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -2019,8 +2019,10 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
 }
 
 #define DEFINE_SYSFS_PROPERTY(prop, signal, size, mask, check)		\
-property_write(prop, signal size, mask, check)				\
-property_read(prop, size, mask)
+do {									\
+	property_write(prop, signal size, mask, check)			\
+	property_read(prop, size, mask)					\
+} while (0)
 
 #define property_str_read(prop, size)					\
 static ssize_t bcm2048_##prop##_read(struct device *dev,		\
-- 
1.9.1


