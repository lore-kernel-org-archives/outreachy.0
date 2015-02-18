X-GM-THRID: 447976833024
X-Received: by 10.42.209.12 with SMTP id ge12mr2251638icb.16.1424297540389;
        Wed, 18 Feb 2015 14:12:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.47 with SMTP id o44ls351340qgd.16.gmail; Wed, 18 Feb
 2015 14:12:20 -0800 (PST)
X-Received: by 10.236.203.161 with SMTP id f21mr1521052yho.49.1424297540213;
        Wed, 18 Feb 2015 14:12:20 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com. [209.85.192.170])
        by gmr-mx.google.com with ESMTPS id re6si2675218pab.1.2015.02.18.14.12.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 14:12:20 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 209.85.192.170 as permitted sender) client-ip=209.85.192.170;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 209.85.192.170 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfp1 with SMTP id fp1so4151141pdb.9
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 14:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=aVCSbBF0OARE5sF+FQJ/UMPUKh5cCJg/Fax82JlVBgA=;
        b=rm0q0erSFW/Nfw/X6cNqJLA7QbFGVQWLiIL2crpmJImVzuS2iKGf6pgywIeFlAiUzM
         nZQgeUidO7YIIJHbDQd4fv1TIxo1jw9zRgEPXH/xBzjRchugAuVFPix6Q25E/vZAnwjt
         AcDYEjtaExveJTQRZbo4tzmumTT+kSyAo5aA9leulgnJPOud5yTNVUb+PsckVfu6jCRj
         tNm1wvGqp6Pz+uHRgDvuMedUgqBNV7jd7tyOF8015BW99bUcw0DysEQRVFDYq1Qr2I4y
         1d556cJskLIqHEyoUpKSuBYHyL7bqwihzE+MX7BIlC8ngeFhHUt9bRU5A5BAaUtEcZah
         p39Q==
X-Received: by 10.70.132.129 with SMTP id ou1mr2375985pdb.162.1424297539840;
        Wed, 18 Feb 2015 14:12:19 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id z12sm21763068pdk.2.2015.02.18.14.12.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 14:12:19 -0800 (PST)
Date: Thu, 19 Feb 2015 03:43:15 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft: removed space before ')' and after '('
 parenthesis.
Message-ID: <20150218221315.GA14737@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This fixes the following checkpatch.pl errors:

ERROR: space prohibited after that open parenthesis '('
ERROR: space prohibited before that close parenthesis ')'

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/fbtft/fb_bd663474.c | 76 ++++++++++++++++++-------------------
 1 file changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/fbtft/fb_bd663474.c b/drivers/staging/fbtft/fb_bd663474.c
index 7e00c60..b64a0b9 100644
--- a/drivers/staging/fbtft/fb_bd663474.c
+++ b/drivers/staging/fbtft/fb_bd663474.c
@@ -47,49 +47,49 @@ static int init_display(struct fbtft_par *par)
 	/* Initialization sequence from Lib_UTFT */
 
 	/* oscillator start */
-	write_reg(par, 0x000,0x0001);	/*oscillator 0: stop, 1: operation */
+	write_reg(par, 0x000, 0x0001);	/*oscillator 0: stop, 1: operation */
 	mdelay(10);
 
 	/* Power settings */
-	write_reg(par, 0x100, 0x0000 ); /* power supply setup */
-	write_reg(par, 0x101, 0x0000 );
-	write_reg(par, 0x102, 0x3110 );
-	write_reg(par, 0x103, 0xe200 );
-	write_reg(par, 0x110, 0x009d );
-	write_reg(par, 0x111, 0x0022 );
-	write_reg(par, 0x100, 0x0120 );
-	mdelay( 20 );
-
-	write_reg(par, 0x100, 0x3120 );
-	mdelay( 80 );
+	write_reg(par, 0x100, 0x0000); /* power supply setup */
+	write_reg(par, 0x101, 0x0000);
+	write_reg(par, 0x102, 0x3110);
+	write_reg(par, 0x103, 0xe200);
+	write_reg(par, 0x110, 0x009d);
+	write_reg(par, 0x111, 0x0022);
+	write_reg(par, 0x100, 0x0120);
+	mdelay(20);
+
+	write_reg(par, 0x100, 0x3120);
+	mdelay(80);
 	/* Display control */
-	write_reg(par, 0x001, 0x0100 );
-	write_reg(par, 0x002, 0x0000 );
-	write_reg(par, 0x003, 0x1230 );
-	write_reg(par, 0x006, 0x0000 );
-	write_reg(par, 0x007, 0x0101 );
-	write_reg(par, 0x008, 0x0808 );
-	write_reg(par, 0x009, 0x0000 );
-	write_reg(par, 0x00b, 0x0000 );
-	write_reg(par, 0x00c, 0x0000 );
-	write_reg(par, 0x00d, 0x0018 );
+	write_reg(par, 0x001, 0x0100);
+	write_reg(par, 0x002, 0x0000);
+	write_reg(par, 0x003, 0x1230);
+	write_reg(par, 0x006, 0x0000);
+	write_reg(par, 0x007, 0x0101);
+	write_reg(par, 0x008, 0x0808);
+	write_reg(par, 0x009, 0x0000);
+	write_reg(par, 0x00b, 0x0000);
+	write_reg(par, 0x00c, 0x0000);
+	write_reg(par, 0x00d, 0x0018);
 	/* LTPS control settings */
-	write_reg(par, 0x012, 0x0000 );
-	write_reg(par, 0x013, 0x0000 );
-	write_reg(par, 0x018, 0x0000 );
-	write_reg(par, 0x019, 0x0000 );
-
-	write_reg(par, 0x203, 0x0000 );
-	write_reg(par, 0x204, 0x0000 );
-
-	write_reg(par, 0x210, 0x0000 );
-	write_reg(par, 0x211, 0x00ef );
-	write_reg(par, 0x212, 0x0000 );
-	write_reg(par, 0x213, 0x013f );
-	write_reg(par, 0x214, 0x0000 );
-	write_reg(par, 0x215, 0x0000 );
-	write_reg(par, 0x216, 0x0000 );
-	write_reg(par, 0x217, 0x0000 );
+	write_reg(par, 0x012, 0x0000);
+	write_reg(par, 0x013, 0x0000);
+	write_reg(par, 0x018, 0x0000);
+	write_reg(par, 0x019, 0x0000);
+
+	write_reg(par, 0x203, 0x0000);
+	write_reg(par, 0x204, 0x0000);
+
+	write_reg(par, 0x210, 0x0000);
+	write_reg(par, 0x211, 0x00ef);
+	write_reg(par, 0x212, 0x0000);
+	write_reg(par, 0x213, 0x013f);
+	write_reg(par, 0x214, 0x0000);
+	write_reg(par, 0x215, 0x0000);
+	write_reg(par, 0x216, 0x0000);
+	write_reg(par, 0x217, 0x0000);
 
 	/* Gray scale settings */
 	write_reg(par, 0x300, 0x5343);
-- 
1.9.1


