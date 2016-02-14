X-GM-THRID: 6250919415582294016
X-Received: by 10.182.112.193 with SMTP id is1mr9056364obb.38.1455405590574;
        Sat, 13 Feb 2016 15:19:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.19 with SMTP id o19ls1217647ioe.53.gmail; Sat, 13 Feb
 2016 15:19:50 -0800 (PST)
X-Received: by 10.66.236.129 with SMTP id uu1mr8788634pac.18.1455405590271;
        Sat, 13 Feb 2016 15:19:50 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x229.google.com (mail-qk0-x229.google.com. [2607:f8b0:400d:c09::229])
        by gmr-mx.google.com with ESMTPS id w126si1409638ywe.6.2016.02.13.15.19.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:19:50 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) client-ip=2607:f8b0:400d:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x229.google.com with SMTP id x1so43890158qkc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 15:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=alxiFR7TDX1rmya7jANT8iB2fON+FYZS3XCNDfwqY1o=;
        b=JLGeLWXuMnHXZhgCTLNKcceEoLd7RVoHzDzioIuuXeArOr54cHK1XOxDFgZDQ+YcFB
         iVCtAem5cqc60xbcr+5BbZyZNyoT/MwqJQ6FZs39ghlqgUdmZ1OgvXxpmpA5Bghai7Yt
         Q+Kn9sLk1qY4Wk9lheBLxRgzpjmBbQQVZLctiNXcZ2C3V72rZZykM4aOLNkoN8+6+djg
         HpJ2SSsn996RMCMX4dRqli8pJOB1HvgmJ00pfu3CRyjSE/ua9j0/l26uVdDIy/m7ESEE
         tXfkJ2Jjrcs+4RBo77pBOXIAwwmz2wdYumL+Sggt9lXfP3hwIGFEflEeRuWaDR4gxiNv
         3CqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=alxiFR7TDX1rmya7jANT8iB2fON+FYZS3XCNDfwqY1o=;
        b=TAfLrmLHiGNWsV/oAblvR1HY+proamoFx2NOymO6mnfr5cF7VVgPps2N+/3yWkT7oM
         sXwUiZHcLOLchUSEQ2wYUAgLV2mSqbgdmTesKoQdUq5KFBV8sMfezpnbTructbX5w5I7
         gEw48cfWm61MvVhxjxAzl85FTugEioDt62AH3s0c0/8uj9PfYh7BLtYZI7om4SGxdQ1K
         +Sxbe1GDLcCPWt7GRaFJe0Rvtd/6IwMA1s6aBQPxB51TY69/fzRnncnsEwdjKYv27sdq
         AXSOy1e5W4yGkZ0WvCfVlTb0VKfNbBtRT9VBvX3GbmJhZ0CIp/+F4rp/yNo0e2A58Rkr
         Eb5g==
X-Gm-Message-State: AG10YOQY/Wgoi7/sL/L3LO9QCeUPNikAneZHE45PPFoH37BIQqZxQI0t5NGJgQmaDC98AA==
X-Received: by 10.55.78.70 with SMTP id c67mr11092150qkb.37.1455405590076;
        Sat, 13 Feb 2016 15:19:50 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id y188sm8255902qhb.10.2016.02.13.15.19.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:19:49 -0800 (PST)
Date: Sat, 13 Feb 2016 23:19:10 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Include KERN_ facility level for printk()
Message-ID: <20160214041910.GA25485@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch includes KERN_ facility level for printk(). KERN_INFO is
justified here as the messages here are informational.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/wilc_debugfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_debugfs.c b/drivers/staging/wilc1000/wilc_debugfs.c
index 8e7186b..da7ec8b 100644
--- a/drivers/staging/wilc1000/wilc_debugfs.c
+++ b/drivers/staging/wilc1000/wilc_debugfs.c
@@ -69,9 +69,9 @@ static ssize_t wilc_debug_level_write(struct file *filp, const char __user *buf,
 	atomic_set(&WILC_DEBUG_LEVEL, (int)flag);
 
 	if (flag == 0)
-		printk("Debug-level disabled\n");
+		printk(KERN_INFO "Debug-level disabled\n");
 	else
-		printk("Debug-level enabled\n");
+		printk(KERN_INFO "Debug-level enabled\n");
 
 	return count;
 }
-- 
2.5.0


