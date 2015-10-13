X-GM-THRID: 6205242953520119808
X-Received: by 10.140.144.215 with SMTP id 206mr30651673qhq.6.1444770710694;
        Tue, 13 Oct 2015 14:11:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.137.104 with SMTP id qh8ls1521841igb.30.canary; Tue, 13 Oct
 2015 14:11:50 -0700 (PDT)
X-Received: by 10.50.134.199 with SMTP id pm7mr2692131igb.0.1444770710120;
        Tue, 13 Oct 2015 14:11:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id zg1si529130pbb.2.2015.10.13.14.11.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 14:11:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id rc13so31966100pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 14:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NjyqUHQEtuLMBa7upcOLlIquemB+ZHEDZ1fCiKF/1FE=;
        b=nwD+XUi5QaVGlU3KwpzfrmNXVWqIJ7FKBLUwyxUGzSiS0VOLCsoX2CXufboVxrIo6r
         punKkJ54Ru8DYh1oeWZDHV8D1PzmbXDyWz11C851hya5CZcdbDNtPBiIk5QU3e0FKxJb
         tCgzLjvDfYLUNzfxvoA590Kwdn9z3qQq4/gyweTTe1QfMjYNfvX1QWp/v8l3Nz94oEMR
         G5ZuPe0Ue23FDaIrpguc0uI9xOPlJI7oF6jf6+rDgrDDNkxiK5ywuVoXKnzjjBRiqvuZ
         cv1ZvLLpB9y1Uabprx8uZS/yYStku7ScCeom0Nh9r16vLKkaqv4TLWVHa2KThuxnn2H8
         rSBw==
X-Received: by 10.68.219.4 with SMTP id pk4mr43304541pbc.138.1444770709995;
        Tue, 13 Oct 2015 14:11:49 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id qa5sm5546377pbc.70.2015.10.13.14.11.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 14:11:49 -0700 (PDT)
Date: Wed, 14 Oct 2015 02:41:40 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: sm750: Remove unused code
Message-ID: <20151013211140.GA12128@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove declaration and a statement comprising of a variable which is not
used throughout the code.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
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


