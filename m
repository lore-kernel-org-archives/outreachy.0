X-GM-THRID: 6250819727244918784
X-Received: by 10.182.247.97 with SMTP id yd1mr13913639obc.9.1455497899091;
        Sun, 14 Feb 2016 16:58:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.115 with SMTP id w106ls2537220qgw.64.gmail; Sun, 14 Feb
 2016 16:58:18 -0800 (PST)
X-Received: by 10.129.72.199 with SMTP id v190mr13874331ywa.44.1455497898529;
        Sun, 14 Feb 2016 16:58:18 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id w126si1679318ywe.6.2016.02.14.16.58.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:58:18 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id e124so4897674qkc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 16:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=epQeXSz/HHXu3S1aaNuSMmAiMkd1KJRJoupGRt7Bn54=;
        b=QiKcsVZSSsR5VDfv3d4FdqozYAvwelHifwwFcG93/wcX4J8SuqlKha1+x5YMIcjELf
         jGRCtlQYTXWtIZyvbbuhlYU5b2ydQJ0nSbFDNDfbZN6Xx8B3YenKuiO7R8FQMVN+Vn0g
         eZCoMoZ6FOsxwi4H5JHyiXRq0NSZDGudZrV/rXsKpeQNzjAzz4n4kSbcaDsGXEw4zxgu
         DqJ3/yLSJtZ6gPrF/hZ8S7Ic7EtGM4YbrmzNSi11qB+LYnOz6d3HgWTGTSK8qOOdrrax
         iknMBKhHHuInEYktyJod5lQLXjCxaxv8XqJS2UvSpcYbwwpwbC/ma/Df6x09dUWVwALa
         Msbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=epQeXSz/HHXu3S1aaNuSMmAiMkd1KJRJoupGRt7Bn54=;
        b=hya+BkmllgnActRlaq9z8MgtG4e0w7ftx1iwzRFzbb9Jrcc0EONrcNBByndS7bTQcO
         nSHTA39r5F6ox9RbUDqR8fr9vh1PsIlpVj7avfrUpwiZEAp2GiB+03VtWdI62ICSMyId
         4zy6bBwW+ZUB3R+WEzXp8Pi/1yrw4zDgf6dhfGOem+kPkwrDok6N4p+w5KG4AjJJKNtV
         mgiCaxq4pLiUONbkMoHBeeNotPxnweb/X15wsCrjnnzxNT1T3K91pVi1X7TLfQyaZOrJ
         Uw+K9zRJ8GpzdALFwEwdLEDNMxUIAAIo4OQpT7N2Cl0IMSfWSKcicxxII5Sqwst/Xeja
         qj/A==
X-Gm-Message-State: AG10YOQ4fS7D1F58/KI1Jl4N8nRTB2seqH7R1NVCsUJddJuvu2XZM8Qn6H5t07eBmeeIJw==
X-Received: by 10.55.75.131 with SMTP id y125mr16967831qka.61.1455497898346;
        Sun, 14 Feb 2016 16:58:18 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:1481:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id b6sm10291136qkh.12.2016.02.14.16.58.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:58:18 -0800 (PST)
Date: Mon, 15 Feb 2016 00:57:38 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: xgifb: Fix comment style
Message-ID: <20160215055738.GA3629@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fix comments to use trailing */ on separate lines.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v2:
 * Removed trailing white spaces.

 drivers/staging/xgifb/vb_init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 879a7e6..26b539b 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -57,7 +57,8 @@ XGINew_GetXG20DRAMType(struct xgi_hw_device_info *HwDeviceExtension,
 		data = xgifb_reg_get(pVBInfo->P3d4, 0x48);
 		/* HOTPLUG_SUPPORT */
 		/* for current XG20 & XG21, GPIOH is floating, driver will
-		 * fix DDR temporarily */
+		 * fix DDR temporarily
+		 */
 		/* DVI read GPIOH */
 		data &= 0x01; /* 1=DDRII, 0=DDR */
 		/* ~HOTPLUG_SUPPORT */
-- 
2.5.0


