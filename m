X-GM-THRID: 447976833024
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ba918805c55279ee
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.30.106 with SMTP id r10mr6725295igh.0.1424352762091;
        Thu, 19 Feb 2015 05:32:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.51.17.6 with SMTP id ga6ls1655741igd.7.canary; Thu, 19 Feb
 2015 05:32:41 -0800 (PST)
X-Received: by 10.66.150.161 with SMTP id uj1mr4211592pab.36.1424352761842;
        Thu, 19 Feb 2015 05:32:41 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com. [209.85.192.182])
        by gmr-mx.google.com with ESMTPS id re6si2906268pab.1.2015.02.19.05.32.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 05:32:41 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 209.85.192.182 as permitted sender) client-ip=209.85.192.182;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 209.85.192.182 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfl12 with SMTP id fl12so8920449pdb.4
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 05:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vynEmdSkohiljM6y/7bXPsAKU9TUZrWXv1bb8x2Lg0w=;
        b=b+Vsm5kUopLQGdERufxK9JJrAckIW6Q6x8TftoL3pIWc5t/0n5G/06xAw1tZKj/87A
         aXX6wU4nxkhDwL38mWNhPkJ1XJ17JPleRxDf7/ynQIc+ZzEFsiMh+FLxjMPNlXgOOgZ4
         /7n6Ch50NpUN3kmsxRdS0pBayz/y5/GaSb7oPaoQC7N2UOv0s+V6lpzhZVyrgeTwaNRs
         X/mCA+WKpMOrqXnK+STPgf9+KA6fCaE31hvr29kE/9q1D7VvNnxZ9Rv0XaxtYLBamfux
         3STJyVcsdOT4FfEkdAfJrz6yoMganElG51JBZtCdvUGFP46N2jpnqiAp1wTMGP9sNhci
         QN6g==
X-Received: by 10.70.128.15 with SMTP id nk15mr7380105pdb.121.1424352761714;
        Thu, 19 Feb 2015 05:32:41 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from localhost.localdomain ([111.93.6.70])
        by mx.google.com with ESMTPSA id ju5sm23786770pbb.27.2015.02.19.05.32.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 05:32:41 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: [PATCH v2] staging: fbtft: removed space before ')' and after '(' parenthesis.
Date: Thu, 19 Feb 2015 19:02:52 +0530
Message-Id: <1424352772-6038-1-git-send-email-navyasri.tech@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following checkpatch.pl errors:

ERROR: space prohibited after that open parenthesis '('
ERROR: space prohibited before that close parenthesis ')'

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
   - This patch only contains the changes made to remove the space before and
    after parenthesis.
   - Doesn't contain other changes not mentioned the in the commit message.

 drivers/staging/fbtft/fb_bd663474.c | 74 ++++++++++++++++++-------------------
 1 file changed, 37 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/fbtft/fb_bd663474.c b/drivers/staging/fbtft/fb_bd663474.c
index 7e00c60..b1fef17 100644
--- a/drivers/staging/fbtft/fb_bd663474.c
+++ b/drivers/staging/fbtft/fb_bd663474.c
@@ -51,45 +51,45 @@ static int init_display(struct fbtft_par *par)
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


