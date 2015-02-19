X-GM-THRID: 505789022208
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,370d94720141cc10
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.50.106 with SMTP id b10mr270390lbo.8.1424314549670;
        Wed, 18 Feb 2015 18:55:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.33 with SMTP id cj1ls114323lad.53.gmail; Wed, 18 Feb
 2015 18:55:49 -0800 (PST)
X-Received: by 10.112.160.3 with SMTP id xg3mr267000lbb.5.1424314549099;
        Wed, 18 Feb 2015 18:55:49 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com. [74.125.82.180])
        by gmr-mx.google.com with ESMTPS id el6si775042wib.2.2015.02.18.18.55.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 18:55:49 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.180 as permitted sender) client-ip=74.125.82.180;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.180 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f180.google.com with SMTP id u56so4723346wes.10
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 18:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=h/njd2MTYYFww4zK6fCkhwqCDxlR50ndEv6hZNpzIeg=;
        b=CZTJDE+zsiNYMlY8Efude820qqCgBK9hh+l9/1PTQp2PLardRuXkMJZBipLgC8EprR
         PubZ7OJAJlvpqKwlZ/FoqL7QxNUiw9UrdWzvznxnI77/j1xHy4JeaqZRGDQ6XwxTaNcm
         FinDH7B+Q3Yhatuj7VppI8wX483pBztpPVEXs61T7RodDdIeyORktBUU+GDSC/ZRN0kG
         wtX6VfS6QYRG++uCISU27klECdZIvrdQjJoRFnHevNRXkti5/Y4xZJnewIfaj0nLP6y2
         7EKmq7HjjYaLotLBVNu8gf9/IFMpQpnhsKi3ScQAxoX6pDLTGD8fRi14piV658Z2bWzo
         6nqw==
X-Received: by 10.180.98.105 with SMTP id eh9mr2988980wib.51.1424314549023;
        Wed, 18 Feb 2015 18:55:49 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.174.108])
        by mx.google.com with ESMTPSA id d10sm35335348wjn.45.2015.02.18.18.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 18:55:48 -0800 (PST)
Date: Thu, 19 Feb 2015 04:55:45 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/8] staging: fbtft: fix space required after that ','
Message-ID: <806dbc5b7fc71f1b1047a36782238ae1171e18f8.1424313311.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl error:
space required after that ','

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fb_st7735r.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_st7735r.c b/drivers/staging/fbtft/fb_st7735r.c
index b63aa38..078f502 100644
--- a/drivers/staging/fbtft/fb_st7735r.c
+++ b/drivers/staging/fbtft/fb_st7735r.c
@@ -68,7 +68,7 @@ static int default_init_sequence[] = {
 
 	/* PWCTR4 - Power Control
 	     BCLK/2, Opamp current small & Medium low */
-	-1, 0xC3,0x8A,0x2A,
+	-1, 0xC3, 0x8A, 0x2A,
 
 	/* PWCTR5 - Power Control */
 	-1, 0xC4, 0x8A, 0xEE,
@@ -148,21 +148,21 @@ static int set_var(struct fbtft_par *par)
 #define CURVE(num, idx)  curves[num*par->gamma.num_values + idx]
 static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 {
-	int i,j;
+	int i, j;
 
 	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
 
 	/* apply mask */
 	for (i = 0; i < par->gamma.num_curves; i++)
 		for (j = 0; j < par->gamma.num_values; j++)
-			CURVE(i,j) &= 0b111111;
+			CURVE(i, j) &= 0b111111;
 
 	for (i = 0; i < par->gamma.num_curves; i++)
 		write_reg(par, 0xE0 + i,
 			CURVE(i, 0), CURVE(i, 1), CURVE(i, 2), CURVE(i, 3),
 			CURVE(i, 4), CURVE(i, 5), CURVE(i, 6), CURVE(i, 7),
 			CURVE(i, 8), CURVE(i, 9), CURVE(i, 10), CURVE(i, 11),
-			CURVE(i, 12), CURVE(i, 13), CURVE(i, 14), CURVE(i,15));
+			CURVE(i, 12), CURVE(i, 13), CURVE(i, 14), CURVE(i, 15));
 
 	return 0;
 }
-- 
1.9.3


