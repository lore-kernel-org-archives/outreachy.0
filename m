X-GM-THRID: 6251168080852942848
X-Received: by 10.28.225.8 with SMTP id y8mr714606wmg.7.1455472526997;
        Sun, 14 Feb 2016 09:55:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.158.148 with SMTP id h142ls427112wme.12.canary; Sun, 14 Feb
 2016 09:55:26 -0800 (PST)
X-Received: by 10.194.24.233 with SMTP id x9mr1091479wjf.0.1455472526535;
        Sun, 14 Feb 2016 09:55:26 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id w197si467986wmw.3.2016.02.14.09.55.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 09:55:26 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id a4so6926571wme.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 09:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=B2AIYL1Vn/vTqNO3RoaeiHKvP0vIq9XAGZ7rMZRYI38=;
        b=a7rbwqeYWXuEYsLDQ9m5DPhwCeRN4sS3Odpmza7LNdCrE64Wzuq9TxZzePpgLjM95v
         iOQIwucut/IKe5e4DzSnbMWBIo+lDy7DyKiVNHaMeSHFJLCoYtamCNbNOiif0FCZgVMF
         6WQxyG4yO+7Lr/7fOw+zgyO37sGzgtGd03//KTD5hHrKVw+hfq6/jf1gqyokl9P9D/FN
         c8f4bcuEYXuZ2gXho7gqXJA8xLHMxLmrMP0xBMRhNi/hMVJRh9AweeckUGJMcv2nLs3+
         dDUOh5QI3vStESiIB/n8MEd3e7IgjZaynmrcTi216NoaeN0zA/Vn3OAZ/DQDwBffS2hE
         IM4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=B2AIYL1Vn/vTqNO3RoaeiHKvP0vIq9XAGZ7rMZRYI38=;
        b=ZuKQv8wKxmIhAH9tKeDNIR051fCXwl55nXegWf11tUOJzefpZM/UP5raQQto22VFlQ
         cPDrL9jUykKmxOgKd5WVb0LXIapBDnFtxmtWGhy8oozvhH5UgIBZDt4iYRfpQal/Qt3v
         SmBwxsPl6xBGSGR6H9ZNT+ZZUxkFQo/hd3c1ml7ADpg7WqRdU9fhZIpe7w3o1HmPS2A5
         XiRSjCgYt36zHtsAUnZEK7c5fg0Sj62wmJmSm04TSU/3pJSDy8rtMFd+57s/oZahji5W
         ydoIK3vybhblo8sXRwIJUnqeuDr76K5FgGJKFl5aMKyAtyS7UTmtGz+Xzs5IFxR0oIsy
         JYsQ==
X-Gm-Message-State: AG10YOSUlxzw3WWjukO2cRF6HI6Xhvr0U2MuXdS3XP4iyivFHvWk1E+11jQk6dP4OojlfA==
X-Received: by 10.28.92.13 with SMTP id q13mr124335wmb.43.1455472526416;
        Sun, 14 Feb 2016 09:55:26 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id v2sm11924940wmd.24.2016.02.14.09.55.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 09:55:25 -0800 (PST)
Date: Sun, 14 Feb 2016 18:55:23 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: netlogic: Fix parenthesis alignment
Message-ID: <20160214175519.GA1469@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Align arguments with the open parenthesis. Checkpatch found this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2: Fix ambiguous commit message, as Julia suggested.

 drivers/staging/netlogic/platform_net.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index 7806c2b..3217841 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -121,8 +121,8 @@ static struct platform_device *gmac_controller2_init(void *gmac0_addr)
 		ndata1.phy_addr[mac] = mac + 4 + 0x10;
 
 		xlr_resource_init(&xlr_net1_res[mac * 2],
-				xlr_gmac_offsets[mac + 4],
-				xlr_gmac_irqs[mac + 4]);
+				  xlr_gmac_offsets[mac + 4],
+				  xlr_gmac_irqs[mac + 4]);
 	}
 	xlr_net_dev1.num_resources = 8;
 
-- 
2.7.0


