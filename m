X-GM-THRID: 160604094464
X-Received: by 10.180.182.44 with SMTP id eb12mr685544wic.4.1424195336882;
        Tue, 17 Feb 2015 09:48:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.116 with SMTP id cd20ls985741wib.30.canary; Tue, 17 Feb
 2015 09:48:56 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr3770360wjc.7.1424195336532;
        Tue, 17 Feb 2015 09:48:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id l8si5985971wia.0.2015.02.17.09.48.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 09:48:56 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id r20so35611423wiv.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 09:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=rDnVc8yYte876QlFFGYQjz53eMX6uAakKJSBeCsTYWM=;
        b=rgILKzQzSZpGA21AKQJP+++RBeaJ56J9g253wL5qwIaPM/BBJEDF9EhkwgV0gZG9g7
         +hufpxQNVONjk/AHDO1/jetWQx+4HaYX70BK/9lNd9lTQYMKCQqe21j8yeLXz0diHw/9
         2jfYu7ByMdK4cAgGryjyad8kUQgFPYr+RPiRNvp+rMuTHvTuCH9IHnF2qhyAGkT95h0h
         GCkZkf6TeXb5u5y4qUW4P4aTqT/x6q7M5VNps2MssaI2Urq/hU90ooHBUFeXKrciFx1k
         hOSUvDq40hQ/V2LgXreaD9HGBv3iFHEl9fjhCupO9Mnn1Z62B10JfdnQpEqpJWWpxhja
         MK6Q==
X-Received: by 10.180.81.33 with SMTP id w1mr59824570wix.74.1424195336442;
        Tue, 17 Feb 2015 09:48:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.178.20])
        by mx.google.com with ESMTPSA id m9sm11497646wiz.24.2015.02.17.09.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 09:48:55 -0800 (PST)
Date: Tue, 17 Feb 2015 19:48:51 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft: fix spacing errors
Message-ID: <20150217174851.GA7053@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl errors for
the file fb_bd663474.c:

ERROR: space prohibited before that close parenthesis ')'
ERROR: space prohibited after that open parenthesis '('
ERROR: space required after that ','

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v1: I know that typically one patch should fix one type of
checkpatch.pl error/warning but given that they are all 
spacing issues, I merged them into one patch.

 drivers/staging/fbtft/fb_bd663474.c | 100 ++++++++++++++++++------------------
 1 file changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/fbtft/fb_bd663474.c b/drivers/staging/fbtft/fb_bd663474.c
index 7e00c60..17a2162 100644
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
@@ -104,18 +104,18 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0x309, 0x050a);
 
 	/* RAM access settings */
-	write_reg(par, 0x400, 0x4027 );
-	write_reg(par, 0x401, 0x0000 );
-	write_reg(par, 0x402, 0x0000 );  /* First screen drive position (1) */
-	write_reg(par, 0x403, 0x013f );  /* First screen drive position (2) */
-	write_reg(par, 0x404, 0x0000 );
-
-	write_reg(par, 0x200, 0x0000 );
-	write_reg(par, 0x201, 0x0000 );
-	write_reg(par, 0x100, 0x7120 );
-	write_reg(par, 0x007, 0x0103 );
-	mdelay( 10 );
-	write_reg(par, 0x007, 0x0113 );
+	write_reg(par, 0x400, 0x4027);
+	write_reg(par, 0x401, 0x0000);
+	write_reg(par, 0x402, 0x0000);  /* First screen drive position (1) */
+	write_reg(par, 0x403, 0x013f);  /* First screen drive position (2) */
+	write_reg(par, 0x404, 0x0000);
+
+	write_reg(par, 0x200, 0x0000);
+	write_reg(par, 0x201, 0x0000);
+	write_reg(par, 0x100, 0x7120);
+	write_reg(par, 0x007, 0x0103);
+	mdelay(10);
+	write_reg(par, 0x007, 0x0113);
 
 	return 0;
 }
-- 
1.9.3


