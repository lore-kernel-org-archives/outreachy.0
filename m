X-GM-THRID: 8179991707648
X-Received: by 10.112.242.7 with SMTP id wm7mr4737482lbc.1.1426280609808;
        Fri, 13 Mar 2015 14:03:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.36 with SMTP id n4ls397750laj.27.gmail; Fri, 13 Mar
 2015 14:03:29 -0700 (PDT)
X-Received: by 10.112.147.35 with SMTP id th3mr7428107lbb.15.1426280609109;
        Fri, 13 Mar 2015 14:03:29 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id i8si211309wif.1.2015.03.13.14.03.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 14:03:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id l15so9352219wiw.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 14:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=sTSJUp0tSzF2MXWmc6vEEZbTaLEesqP+UtKMvYQUFqw=;
        b=JGA9yzjWb1Z9KRDC8Wyhis0Li3FPFlHgrkOT8Euf4uQBfNpdM2k5AUFo0MXZWZrvit
         cG9oPrb9eU3KU9mYDhc3/a+VvEeuxFKCqkfVEL8QaM0xMsBL/5ARVGj6i4wC7LKXTI3n
         PWhI7UVVWk9dORTdDVqFJAW29kV7MW2lsV8n723/5D/cV4m0+h0AmDaPEkPFXMU2L6q8
         f3C8MKSqxvYCUkHzs6pttdTbtKUS/S9C+1WedME6YuXJOlNFt/Xr4iE7/+ycpBUUBueI
         9pXQz9WK+TK4s31ZEpt0fbDvtu3O8wfEMuxhzqXCO6+7M1y8Ksy6dOCWkExN79TnWG7C
         ItJA==
X-Received: by 10.194.8.99 with SMTP id q3mr103106263wja.88.1426280609020;
        Fri, 13 Mar 2015 14:03:29 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id yr10sm4376745wjc.0.2015.03.13.14.03.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 14:03:28 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 0BA0FC1F52; Fri, 13 Mar 2015 20:51:18 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 8/8] Staging: ft1000: Remove parentheses around right side an assignment
Date: Fri, 13 Mar 2015 20:51:17 +0300
Message-Id: <1426269077-8050-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com>

Parentheses are not needed around the right hand side of an assignment.
This patch remove parenthese of such occurenses. Issue was detected and
solved using the following coccinelle script:

@rule1@
identifier x, y, z;
expression E1, E2;
@@

(
x = (y == z);
|
x = (E1 == E2);
|
 x =
-(
...
-)
 ;
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c  | 4 ++--
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c    | 4 ++--
 drivers/staging/ft1000/ft1000-usb/ft1000_debug.c    | 2 +-
 drivers/staging/ft1000/ft1000-usb/ft1000_download.c | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c
index 06b0e9c..b1e090a 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c
@@ -276,8 +276,8 @@ u16 hdr_checksum(struct pseudo_hdr *pHdr)
 	u16 *usPtr = (u16 *)pHdr;
 	u16 chksum;
 
-	chksum = ((((((usPtr[0] ^ usPtr[1]) ^ usPtr[2]) ^ usPtr[3]) ^
-		    usPtr[4]) ^ usPtr[5]) ^ usPtr[6]);
+	chksum = (((((usPtr[0] ^ usPtr[1]) ^ usPtr[2]) ^ usPtr[3]) ^
+		    usPtr[4]) ^ usPtr[5]) ^ usPtr[6];
 
 	return chksum;
 }
diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
index bc959ff..78c574b 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
@@ -1293,9 +1293,9 @@ static int ft1000_parse_dpram_msg(struct net_device *dev)
 					  2) >> 8) & 0xff;
 			} else {
 				portid =
-					(ft1000_read_dpram_mag_16
+					ft1000_read_dpram_mag_16
 					 (dev, FT1000_MAG_PORT_ID,
-					  FT1000_MAG_PORT_ID_INDX) & 0xff);
+					  FT1000_MAG_PORT_ID_INDX) & 0xff;
 			}
 			pr_debug("DSP_QID = 0x%x\n", portid);
 
diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
index 0f776d0..6d8b0d5 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_debug.c
@@ -301,7 +301,7 @@ static int ft1000_open(struct inode *inode, struct file *file)
 	struct ft1000_usb *dev = (struct ft1000_usb *)inode->i_private;
 	int i, num;
 
-	num = (MINOR(inode->i_rdev) & 0xf);
+	num = MINOR(inode->i_rdev) & 0xf;
 	pr_debug("minor number=%d\n", num);
 
 	info = file->private_data = netdev_priv(dev->net);
diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_download.c b/drivers/staging/ft1000/ft1000-usb/ft1000_download.c
index e8126325..5e16431 100644
--- a/drivers/staging/ft1000/ft1000-usb/ft1000_download.c
+++ b/drivers/staging/ft1000/ft1000-usb/ft1000_download.c
@@ -368,8 +368,8 @@ static u16 hdr_checksum(struct pseudo_hdr *pHdr)
 	u16   chksum;
 
 
-	chksum = ((((((usPtr[0] ^ usPtr[1]) ^ usPtr[2]) ^ usPtr[3]) ^
-		    usPtr[4]) ^ usPtr[5]) ^ usPtr[6]);
+	chksum = (((((usPtr[0] ^ usPtr[1]) ^ usPtr[2]) ^ usPtr[3]) ^
+		    usPtr[4]) ^ usPtr[5]) ^ usPtr[6];
 
 	return chksum;
 }
-- 
1.9.1


