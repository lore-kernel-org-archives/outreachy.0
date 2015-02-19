X-GM-THRID: 505789022208
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,370d94720141cc10
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.44 with SMTP id eb12mr716703wic.4.1424314230256;
        Wed, 18 Feb 2015 18:50:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.199 with SMTP id x7ls110569lae.0.gmail; Wed, 18 Feb
 2015 18:50:29 -0800 (PST)
X-Received: by 10.112.46.106 with SMTP id u10mr257911lbm.3.1424314229827;
        Wed, 18 Feb 2015 18:50:29 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id ev8si6302793wib.3.2015.02.18.18.50.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 18:50:29 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f53.google.com with SMTP id a1so4640140wgh.12
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 18:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Vg6TT1ReTnK4uEUx1NFGvvV6P+azxDZlwOm8IauKVWI=;
        b=yr4FU05pPKs38Ks1XvqxPARHifrLw0kB8SqqSLoBUTLIP36BjR1EBcmS2XD60YcLh7
         tAi+2Of2+Rz/+DebUGpjN5tQPMlKfCR7egwpiF72HDECmK57SAdCoQnmF/5zmAVg7Vns
         5TKFaAhIw2pf3syl5BBoCMMhdUS2N+3Po3hMd5GYKgd1bLpRw76dNKkGh9eCsE6doKKE
         crD2ls3aHdCJ/rO8BHTXAH8rRQWEC0I7J+1gNtb3DRZPeP4ayyHlgaenaKMNWhhY5TW1
         HP/WjKnHX9rIuWvuJz+72NmofSUqznLJ5aI+7rRft2fRNAqKfTJJ0HD8VGyS5RPAPAxm
         GQkA==
X-Received: by 10.181.12.105 with SMTP id ep9mr10776297wid.85.1424314229746;
        Wed, 18 Feb 2015 18:50:29 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.174.108])
        by mx.google.com with ESMTPSA id l4sm28138672wiw.9.2015.02.18.18.50.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 18:50:28 -0800 (PST)
Date: Thu, 19 Feb 2015 04:50:25 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/8] staging: fbtft: fix braces {} are not necessary for
 single statement blocks
Message-ID: <6c2e12b30a74e2869363fa77af843a56bdf8dab2.1424313311.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl warning:
braces {} are not necessary for single statement blocks

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1331.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
index da7464f..a7b77a5 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -69,9 +69,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 
 	if (unlikely(par->debug & DEBUG_WRITE_REGISTER)) {
 		va_start(args, len);
-		for (i = 0; i < len; i++) {
+		for (i = 0; i < len; i++)
 			buf[i] = (u8)va_arg(args, unsigned int);
-		}
 		va_end(args);
 		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device, u8, buf, len, "%s: ", __func__);
 	}
@@ -91,9 +90,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 
 	if (len) {
 		i = len;
-		while (i--) {
+		while (i--)
 			*buf++ = (u8)va_arg(args, unsigned int);
-		}
 		ret = par->fbtftops.write(par, par->buf, len * (sizeof(u8)));
 		if (ret < 0) {
 			va_end(args);
-- 
1.9.3


