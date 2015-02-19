X-GM-THRID: 505789022208
X-Received: by 10.181.13.236 with SMTP id fb12mr386836wid.1.1424313836165;
        Wed, 18 Feb 2015 18:43:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.102 with SMTP id q6ls106010laa.24.gmail; Wed, 18 Feb
 2015 18:43:54 -0800 (PST)
X-Received: by 10.112.124.142 with SMTP id mi14mr259433lbb.1.1424313834715;
        Wed, 18 Feb 2015 18:43:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id cl5si8927901wib.3.2015.02.18.18.43.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 18:43:54 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f44.google.com with SMTP id k14so4743383wgh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 18:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=U0UlI3q3lSvLCE7j+yRbOXQiKR0jLI5FFOLbYxmeXgQ=;
        b=eK1QD5FAiF0zdpDfuChiWMKXtnP+dI7RUgW9DyYRwCD1wMmyoI+Lq4htdKirA7tjvk
         jOQIGrbXeSNKJWqPmsfueIknSH6nsmlupBozZkIN85OrwDra7vFuywzTYEw8IDO8vzX9
         AT7InUKb6XyEnWh7lnFUx/nPPRNTjEdEj7jc6cx9ob1TLIFfty76lmkG7ywTYUqMxT6a
         0NUTW2MWfqhZsNWMoJxH5S3NawHBKLzT80KxRObCO2QOb1GTV4gvIcHPNDj4hZyRn+tj
         CUZSAPMMVCph/8NHMH1woJG7a6XzLe7yjVLSPSFKjB4HfBLvGWY9SKe+3HoOc9n0Illc
         2ErA==
X-Received: by 10.194.178.161 with SMTP id cz1mr4760604wjc.102.1424313834624;
        Wed, 18 Feb 2015 18:43:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.174.108])
        by mx.google.com with ESMTPSA id g10sm28127185wic.7.2015.02.18.18.43.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 18:43:54 -0800 (PST)
Date: Thu, 19 Feb 2015 04:43:51 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/8] staging: fbtft: fix space prohibited before that ','
Message-ID: <e5d05f92b594feac8f04a5fc119330be0c68ad2f.1424313310.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl error:
space prohibited before that ','

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fb_ili9340.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ili9340.c b/drivers/staging/fbtft/fb_ili9340.c
index 985687d..c869871 100644
--- a/drivers/staging/fbtft/fb_ili9340.c
+++ b/drivers/staging/fbtft/fb_ili9340.c
@@ -39,12 +39,12 @@ static int init_display(struct fbtft_par *par)
 	par->fbtftops.reset(par);
 
 	write_reg(par, 0xEF, 0x03, 0x80, 0x02);
-	write_reg(par, 0xCF, 0x00 , 0XC1 , 0X30);
-	write_reg(par, 0xED, 0x64 , 0x03 , 0X12 , 0X81);
-	write_reg(par, 0xE8, 0x85 , 0x00 , 0x78);
-	write_reg(par, 0xCB, 0x39 , 0x2C , 0x00 , 0x34 , 0x02);
+	write_reg(par, 0xCF, 0x00, 0XC1, 0X30);
+	write_reg(par, 0xED, 0x64, 0x03, 0X12, 0X81);
+	write_reg(par, 0xE8, 0x85, 0x00, 0x78);
+	write_reg(par, 0xCB, 0x39, 0x2C, 0x00, 0x34, 0x02);
 	write_reg(par, 0xF7, 0x20);
-	write_reg(par, 0xEA, 0x00 , 0x00);
+	write_reg(par, 0xEA, 0x00, 0x00);
 
 	/* Power Control 1 */
 	write_reg(par, 0xC0, 0x23);
-- 
1.9.3


