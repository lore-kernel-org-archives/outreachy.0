X-GM-THRID: 8024457478144
X-Received: by 10.236.11.196 with SMTP id 44mr46800648yhx.31.1426221493802;
        Thu, 12 Mar 2015 21:38:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.67 with SMTP id j61ls1567381qge.67.gmail; Thu, 12 Mar
 2015 21:38:13 -0700 (PDT)
X-Received: by 10.236.8.69 with SMTP id 45mr30690110yhq.39.1426221493648;
        Thu, 12 Mar 2015 21:38:13 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x232.google.com (mail-pd0-x232.google.com. [2607:f8b0:400e:c02::232])
        by gmr-mx.google.com with ESMTPS id pc4si181049pac.0.2015.03.12.21.38.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 21:38:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) client-ip=2607:f8b0:400e:c02::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfl12 with SMTP id fl12so25702461pdb.9
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 21:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BpqhxYy4npKmX9sCdQXTo4e++LUG0eTeJJzu0TKDKj0=;
        b=IrHr+4p6cWwIbkZw2u+LN+6sVlct/V8/od54lNAM9Y5wFwBOpcscWjkvEGjglB974W
         3LaQwzqmWp8YsQWJnNc2Szw3oaahYE/edqbOh2FAKO3o6d7havaHouhvxi6k/vF6cxbX
         rdDgxVGQOaM2wC1GHgdYAN3pYIWPgB/rK/pnZ9KlA/hs1CV3ATgQogSg54b4eMMe3Zg6
         35xYbCnHMAZ5mHou0doaCc7ZAil/l8LN2wwxDjT2BEYZdElQuLqwmHPlBiBLmsT6pGM+
         3O1s+1usvXzYOYPm9eQfQjA/1XRifFGFanaquzSAzB42cV1Xldu7x5E9vVJ60q591rnl
         6FDg==
X-Received: by 10.66.123.110 with SMTP id lz14mr2024585pab.30.1426221493506;
        Thu, 12 Mar 2015 21:38:13 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id kn5sm1033560pdb.42.2015.03.12.21.38.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 21:38:12 -0700 (PDT)
Date: Fri, 13 Mar 2015 10:06:24 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtft: Remove unnecessary print messages
Message-ID: <20150313043624.GA5235@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

These print functions are called at the beginning
of the function and do not indicate any abnormal condition.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/fbtft/fb_hx8340bn.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/fbtft/fb_hx8340bn.c b/drivers/staging/fbtft/fb_hx8340bn.c
index 26a987a..54168f4 100644
--- a/drivers/staging/fbtft/fb_hx8340bn.c
+++ b/drivers/staging/fbtft/fb_hx8340bn.c
@@ -47,8 +47,6 @@ MODULE_PARM_DESC(emulate, "Force emulation in 9-bit mode");
 
 static int init_display(struct fbtft_par *par)
 {
-	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
-
 	par->fbtftops.reset(par);
 
 	/* BTL221722-276L startup sequence, from datasheet */
@@ -110,9 +108,6 @@ static int init_display(struct fbtft_par *par)
 
 static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 {
-	fbtft_par_dbg(DEBUG_SET_ADDR_WIN, par,
-		"%s(xs=%d, ys=%d, xe=%d, ye=%d)\n", __func__, xs, ys, xe, ye);
-
 	write_reg(par, FBTFT_CASET, 0x00, xs, 0x00, xe);
 	write_reg(par, FBTFT_RASET, 0x00, ys, 0x00, ye);
 	write_reg(par, FBTFT_RAMWR);
@@ -120,8 +115,6 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 
 static int set_var(struct fbtft_par *par)
 {
-	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
-
 	/* MADCTL - Memory data access control */
 	/* RGB/BGR can be set with H/W pin SRGB and MADCTL BGR bit */
 #define MY (1 << 7)
@@ -162,8 +155,6 @@ static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 		0b111, 0b111, 0b111, 0b111, 0b111, 0b111, 0b0, 0b0 };
 	int i, j;
 
-	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
-
 	/* apply mask */
 	for (i = 0; i < par->gamma.num_curves; i++)
 		for (j = 0; j < par->gamma.num_values; j++)
-- 
1.9.1


