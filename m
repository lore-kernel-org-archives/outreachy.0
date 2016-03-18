X-GM-THRID: 6263429030948634624
X-Received: by 10.107.128.217 with SMTP id k86mr11924893ioi.12.1458318707612;
        Fri, 18 Mar 2016 09:31:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.142 with SMTP id o14ls1167954ioi.29.gmail; Fri, 18 Mar
 2016 09:31:47 -0700 (PDT)
X-Received: by 10.66.249.41 with SMTP id yr9mr12632993pac.37.1458318707174;
        Fri, 18 Mar 2016 09:31:47 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si2000274pfb.1.2016.03.18.09.31.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 09:31:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so18043333pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 09:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oOfeqwRlHbWYnXtTufi01dbp7+qAyTCKC3MIxXlLMGo=;
        b=yG2hcxYudPrC3bNPpng1jJT/3ZQU3zRMcESL2dwsAPrUwsNKiNUIlArB2pWnaFfoFE
         ePDiopRGwVTlVp5whTsfNhy/qZVVpPUNF5gvbkkDHX/YLObIjOxvxXWshpviCC/HKDDU
         fOYn5ZjMI7TFAlBD8XPdt/AJ5XEMhUxERwwuI6hTAb+Lsqn+GTbIhld/5FfbOI60m+CB
         veMF2xk0QcKzEvj8XwSBQS38vVz5Umqq7i5zQzGdLccpPRV8/n/f7tqqRLAovsukTR7t
         KjVRZFspP07i0Fq+4EVRevFCrIXmL9TnXhej04PTPnRDw5jGUsJNOHCK8UBXdShP46dI
         +0EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oOfeqwRlHbWYnXtTufi01dbp7+qAyTCKC3MIxXlLMGo=;
        b=aHroLdtu+Yg4aqAfDhM3aTwuhB4snDAILM4mGBT5Vd0b+AYp8b5mGLyNCOdJR3J4+9
         OU8mRAUHQ2wUeVZPVbAMcUBn2//r0DVc/Zt0T4mlN6w1SyhdJDszVMIvrS8N89THdisq
         dcuj7tPmZeATh+PYXLERr1b6xqbw0ea8/jZWRvz/IUK4rzX+OuWjp//QOdV/YG4rxR2T
         KPz8wd0dhICd8wYcB3GF1Ke8aGwohGrJnuBj7bvap8PFcvFwFiITOY4fOpO2Y2rGBQVL
         NYhc28hQKl9itBxuDeEzhmKi6ZuLEbU+UStyrX2iS9f43xtqSy9NrrtWOSigAEd22P0e
         67pw==
X-Gm-Message-State: AD7BkJJp55kmxCTFltA0YaLozwB7Ntcs+defPFOvQaK4caCCRPB6bI8i/MeNNz9HmG9/oA==
X-Received: by 10.98.32.218 with SMTP id m87mr25101766pfj.48.1458318707033;
        Fri, 18 Mar 2016 09:31:47 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.148])
        by smtp.gmail.com with ESMTPSA id u2sm22111244pfi.26.2016.03.18.09.31.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 09:31:46 -0700 (PDT)
Date: Fri, 18 Mar 2016 15:02:41 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: fbtft: fb_agm1264k-fl: No space is necessary
 after cast.
Message-ID: <875c51db26347b4aa79e1d2e4c176b203b81b1f6.1458292699.git.bankarsandhya512@gmail.com>
References: <cover.1458292699.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458292699.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

No space is necessary after cast.This problem is found  by checkpatch.pl script. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index ba9fc44..82b46cd 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -414,7 +414,7 @@ static int write(struct fbtft_par *par, void *buf, size_t len)
 	while (len--) {
 		u8 i, data;
 
-		data = *(u8 *) buf++;
+		data = *(u8 *)buf++;
 
 		/* set data bus */
 		for (i = 0; i < 8; ++i)
-- 
1.8.3.4


