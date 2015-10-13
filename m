X-GM-THRID: 6205249313638973440
X-Received: by 10.129.159.71 with SMTP id w68mr29623956ywg.28.1444772191190;
        Tue, 13 Oct 2015 14:36:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.21.7 with SMTP id r7ls1491561ige.4.canary; Tue, 13 Oct 2015
 14:36:30 -0700 (PDT)
X-Received: by 10.66.229.69 with SMTP id so5mr31114634pac.26.1444772190857;
        Tue, 13 Oct 2015 14:36:30 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si502943pac.2.2015.10.13.14.36.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 14:36:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id rc13so32442760pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 14:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=DVZyybOP0FDaBx50eFldpvg2EqrIEMAkTGSaQ3BljSU=;
        b=YGk3b1Kh0cpsNX4TU1KT8cw5f0bihGBGp0vy8nGpCWPJpoHjTwDzoyXlSfHuF9FF3g
         UV2uKW2/uZkIFNUed7/+jHbaXoaSO9vDog8iDOJwIwq9bRpRlBjBv5Gc76fqkNgxSNB9
         vX+9bBE1SzICSj1+ZuYCzyVeq0ULIV7tACYf6JHoZdCNrOaaXNuUuE1jlvLkdy9awDGd
         fE0uR/a8pjEpGq7z0GQsecOdXCEsuaikyLHMB4o62api8p+Ne0vQAF9pxbaifLBPNgER
         BPM3AQ+HQPeZ0ZicWUm0jgkLL5HjX27YOmrUb+05IYgVbW2lDt3svGMSEBS5x8chEpSt
         fiqA==
X-Received: by 10.68.69.35 with SMTP id b3mr43883670pbu.22.1444772190765;
        Tue, 13 Oct 2015 14:36:30 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id of1sm5632939pbc.11.2015.10.13.14.36.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 14:36:29 -0700 (PDT)
Date: Wed, 14 Oct 2015 03:06:20 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: sm750fb: sm750: Remove irrelevant code
Message-ID: <20151013213620.GA13205@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable ret is only declared and initialized to 0, but never
referenced, so remove it.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	-Make commit message clearer.

 drivers/staging/sm750fb/sm750.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 8c1ecb3..805a403 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -524,14 +524,12 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,
 	struct lynxfb_crtc *crtc;
 	struct lynxfb_output *output;
 	struct lynx_share *share;
-	int ret;
 	resource_size_t request;
 
 	par = info->par;
 	crtc = &par->crtc;
 	output = &par->output;
 	share = par->share;
-	ret = 0;
 
 	pr_debug("check var:%dx%d-%d\n",
 		 var->xres,
-- 
2.1.0


