X-GM-THRID: 505789022208
X-Received: by 10.152.37.200 with SMTP id a8mr260525lak.5.1424314017431;
        Wed, 18 Feb 2015 18:46:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.98 with SMTP id v2ls90621lal.104.gmail; Wed, 18 Feb
 2015 18:46:56 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr266156lbb.6.1424314016881;
        Wed, 18 Feb 2015 18:46:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id ta1si6307830wic.1.2015.02.18.18.46.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 18:46:56 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f46.google.com with SMTP id a1so4710702wgh.5
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 18:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=OMuvwcF2inPrbB1k+NFzrQRLj5ecdXvULuAyD936kg4=;
        b=laShgm1eu3/ADWZ28aNPKUjieNsg3p+5tHwa0ymVzcVIifDTxfEmSgIzQVA9wpTD/w
         yw1DoOgGPQenbgIxqzZi1g/zCf3nqiG9SWxDeyv8oWi2Z0unVb1y/idMw8N1tGf+tGk4
         QnC6Z/VcGKJMaY4hzvs3stDr8k+v/El/FQgEdWKdesm0HBXXx8018bwMtBx9jYYwR75g
         6FzhiboznnE6KS2wDDHBRb2EnOiCCnydeJwsTdd5KFxS+nqiuVTYblj8/kjdAzkl7koW
         XolHb32l7yhfTmEfXmNXdBNR1j+1HVPkC9yKIbFLCT1DVYFALfTeEbvIWnHMw8DgmK3J
         smjA==
X-Received: by 10.180.95.97 with SMTP id dj1mr5820453wib.43.1424314016801;
        Wed, 18 Feb 2015 18:46:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.174.108])
        by mx.google.com with ESMTPSA id hn2sm35341208wjc.5.2015.02.18.18.46.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 18:46:56 -0800 (PST)
Date: Thu, 19 Feb 2015 04:46:53 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/8] staging: fbtft: fix braces {} are not necessary for
 single statement blocks
Message-ID: <e3970e4136a001b8076e5c0c98e338388e7ba5ec.1424313310.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl error:
braces {} are not necessary for single statement blocks

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fb_pcd8544.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_pcd8544.c b/drivers/staging/fbtft/fb_pcd8544.c
index 8b9ebfb..5e08a70 100644
--- a/drivers/staging/fbtft/fb_pcd8544.c
+++ b/drivers/staging/fbtft/fb_pcd8544.c
@@ -120,9 +120,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	for (x = 0; x < 84; x++) {
 		for (y = 0; y < 6; y++) {
 			*buf = 0x00;
-			for (i = 0; i < 8; i++) {
+			for (i = 0; i < 8; i++)
 				*buf |= (vmem16[(y*8+i)*84+x] ? 1 : 0) << i;
-			}
 			buf++;
 		}
 	}
-- 
1.9.3


