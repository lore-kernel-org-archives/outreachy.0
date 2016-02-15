X-GM-THRID: 6251095544771379200
X-Received: by 10.112.29.69 with SMTP id i5mr1322719lbh.15.1455552489742;
        Mon, 15 Feb 2016 08:08:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.117 with SMTP id e108ls154773qge.77.gmail; Mon, 15 Feb
 2016 08:08:09 -0800 (PST)
X-Received: by 10.129.109.197 with SMTP id i188mr15944787ywc.8.1455552488747;
        Mon, 15 Feb 2016 08:08:08 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id ff2si2966739pad.2.2016.02.15.08.08.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 08:08:08 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id q63so89302331pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 08:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=CW/KiPWmIJkmPwMy21184LSmanXCCBGp27hpH5aRv4M=;
        b=c4KQnqPaBoYmeJHSrlVTkio7AkUYEg3lQ0cYz02keXG+vAw7O45Vz21jjeXEeCLL3l
         YPn46K1aTwDMqce1kjM6B4d3NH06AzpCpI7uKf1hLNiMohik6M0VoDvlttcUn9lay/ch
         Xb09XOv52FW8qrbW241rBp0asMYtfBx+f9pbkrLyDANtyEPHbZYF7HlqRsiwuD9P7JiF
         xvMH/kCI1yUrWcUEfeFnehfuuD3tHJlu16ryveXy47kKwsz/jTxaa+5PWqI9bNm6CkSY
         mu0RZ69uce8rsBJwR4+2ll+eI6vyCTy7k4cGf/DeKtIqvf7zmo1mwuy85B8e41s+wlDC
         lsFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=CW/KiPWmIJkmPwMy21184LSmanXCCBGp27hpH5aRv4M=;
        b=I6z/fsLG3R6hyQ96VDwHrJ6nyPQ38DmeYxAchYPoBkORgF7D1RKZmDCFf1UAq56SV0
         7mQDJ/+rWbfT7LAt48i69t4Rs6oRQgM9/CGH9ne7FJT5r/PM+UyCe8+1Kn4dIWU4EE2H
         lXvsdkegRd9rL82UTpW8PDRik3qfiv4bwflwGWXIiA4w8DZ3F3pukJmmun4MNVeUNfYU
         9yc/ebl3M0W4ERby05q0lrDueck7kpTaQw/vr8NHOwfE69C3DN8DH3yFrXKVdYTpFQNb
         lOYiCWxjbTQjF/mLgTsBEfpxeBjpWo/X0mNqVGnIko52oWAxCa5df9hQF7V5ugpPvjJu
         AK2A==
X-Gm-Message-State: AG10YOTCo01CJAde8jCR/L2rQmpgfjlg2BhVvv72EzsN6/XJFVQEkedBZiCqWlo6giAUDA==
X-Received: by 10.98.68.220 with SMTP id m89mr24135575pfi.65.1455552488506;
        Mon, 15 Feb 2016 08:08:08 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id s23sm39583003pfi.12.2016.02.15.08.08.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 08:08:07 -0800 (PST)
Date: Mon, 15 Feb 2016 21:38:27 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft: Fix block comment coding style
Message-ID: <20160215160706.GA30344@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add the required leading * on subsequent lines as well as 
move the */ on a separate line. Checkpatch found this issue.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 3bcbabf..6c9cdd2 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -130,7 +130,8 @@ static int fbtft_request_gpios(struct fbtft_par *par)
 	while (gpio->name[0]) {
 		flags = FBTFT_GPIO_NO_MATCH;
 		/* if driver provides match function, try it first,
-		   if no match use our own */
+		 * if no match use our own
+		 */
 		if (par->fbtftops.request_gpios_match)
 			flags = par->fbtftops.request_gpios_match(par, gpio);
 		if (flags == FBTFT_GPIO_NO_MATCH)
@@ -518,8 +519,7 @@ static ssize_t fbtft_fb_write(struct fb_info *info, const char __user *buf,
 		"%s: count=%zd, ppos=%llu\n", __func__,  count, *ppos);
 	res = fb_sys_write(info, buf, count, ppos);
 
-	/* TODO: only mark changed area
-	   update all for now */
+	/* TODO: only mark changed area update all for now */
 	par->fbtftops.mkdirty(info, -1, 0);
 
 	return res;
-- 
1.9.1


