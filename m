X-GM-THRID: 6204685727304777728
X-Received: by 10.182.137.227 with SMTP id ql3mr23072837obb.32.1444640971336;
        Mon, 12 Oct 2015 02:09:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.56.111 with SMTP id z15ls1073854igp.35.gmail; Mon, 12 Oct
 2015 02:09:30 -0700 (PDT)
X-Received: by 10.66.147.165 with SMTP id tl5mr23581974pab.21.1444640970261;
        Mon, 12 Oct 2015 02:09:30 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id zg1si1567871pbb.2.2015.10.12.02.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 02:09:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id lk4so149474659pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 02:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=hBx+yLdHJt/7VlTrkYwIzrLrK0ohDTQ/hNCw7KXESCU=;
        b=Gy0GXcJr+0yvaQ5rfDNsDthHDhDkhBUW3By1CT1hY9P9DpRVxbrPJOv7euonVjWnGK
         C1cgqN0LSsoDNCEQ2ruQCCwI2YHwHQFMEFrbCDfG1fp1Xs+cZF4I6ax+wg5DwNxk/KFO
         RSQfsl4E0qjRiejQLxBd1B+xtSuv/LDuR4oNLK62WVtVJBtM4Y/bqFlHttxGYs8Kfyiu
         3/kiIgszK3oS/OZhPBke4UXJVQLfi2qAdJq4vjTZRp8yxn7Zkhs6NxDTjI5rFTeYrIUG
         U64bUWbz2u4+BcYLPBH01EFko0n+UQPe+VJvnTew1zPNRCdTtl2kk6+8qbLzNifSh87+
         5TCw==
X-Received: by 10.68.98.99 with SMTP id eh3mr33129315pbb.126.1444640970135;
        Mon, 12 Oct 2015 02:09:30 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id rl17sm17193312pab.2.2015.10.12.02.09.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 02:09:29 -0700 (PDT)
Date: Mon, 12 Oct 2015 14:39:22 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: xgifb: XGI_main_26: Remove unused code
Message-ID: <20151012090922.GA30043@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unused variable and its occurences as it is not used anywhere in
the code.
Issue found using coccinelle.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 5a6251a4..e723082 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
 	unsigned int vtotal = 0;
 	unsigned int drate = 0, hrate = 0;
 	int found_mode = 0;
-	int refresh_rate, search_idx;
+	int search_idx;
 
 	if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) {
 		vtotal = var->upper_margin + var->yres + var->lower_margin
@@ -1266,10 +1266,6 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
 		xgifb_info->refresh_rate = 60;
 	}
 
-	/* Calculation wrong for 1024x600 - force it to 60Hz */
-	if ((var->xres == 1024) && (var->yres == 600))
-		refresh_rate = 60;
-
 	search_idx = 0;
 	while ((XGIbios_mode[search_idx].mode_no != 0) &&
 		(XGIbios_mode[search_idx].xres <= var->xres)) {
-- 
2.1.0


