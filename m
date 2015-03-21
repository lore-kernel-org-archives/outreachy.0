X-GM-THRID: 9420201263104
X-Received: by 10.42.76.145 with SMTP id e17mr10577646ick.34.1426956616764;
        Sat, 21 Mar 2015 09:50:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.75 with SMTP id d72ls1389019ioe.52.gmail; Sat, 21 Mar
 2015 09:50:16 -0700 (PDT)
X-Received: by 10.66.233.37 with SMTP id tt5mr79148667pac.3.1426956616536;
        Sat, 21 Mar 2015 09:50:16 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qc0-x235.google.com (mail-qc0-x235.google.com. [2607:f8b0:400d:c01::235])
        by gmr-mx.google.com with ESMTPS id e5si1082333qcg.1.2015.03.21.09.50.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 09:50:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c01::235 as permitted sender) client-ip=2607:f8b0:400d:c01::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c01::235 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x235.google.com with SMTP id jx9so77794116qcb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 09:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=J6G6HfG5dMRECOwmzQ6cD3L31a56ehC4TVcbth/Yc0A=;
        b=lMXPJyzisP8GVDS6n3cUVV8edBs1qCcGyLXBfxQLmjutuQpJgnSQPI0IoGEpH+6HBx
         BkFXEcBkde+CYALkLZLZKW6nMq9fSbP/iQUGCTuf+PM28IZwebQ79bbJ2GFlgktm4I7e
         UjzSqp10hB/2hj2r5osyKHOTDA62YcV3DLruywmpi6o9W8DWgtJ+1EBGNV5LkFo+LTkI
         8An1MsdpjNLV9uFZJ5JO/yznRtDDlH2ezw3GWY4/IMlhhHo8g2yv1W15DzF+2T9b3RQS
         4fVNuHOe0lNP4KzrybIM0ZdMtyCXb6zGEzDX/Vv01652weBnF018JakXHClEReouxmG2
         Da7A==
X-Received: by 10.55.42.137 with SMTP id q9mr160128019qkq.14.1426956616436;
        Sat, 21 Mar 2015 09:50:16 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id i51sm5457934qgf.19.2015.03.21.09.50.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Mar 2015 09:50:15 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] staging: fbtft: remove trailing white space
Date: Sat, 21 Mar 2015 13:50:05 -0300
Message-Id: <1426956605-23536-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

Clean useless trailing white spaces

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/fbtft/fb_st7735r.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/fbtft/fb_st7735r.c b/drivers/staging/fbtft/fb_st7735r.c
index eb3af1d..c1c6e58 100644
--- a/drivers/staging/fbtft/fb_st7735r.c
+++ b/drivers/staging/fbtft/fb_st7735r.c
@@ -31,20 +31,20 @@
 
 static int default_init_sequence[] = {
 	/* SWRESET - Software reset */
-	-1, 0x01,                                
+	-1, 0x01,
 	-2, 150,                               /* delay */
 
 	/* SLPOUT - Sleep out & booster on */
-	-1, 0x11,                          
+	-1, 0x11,
 	-2, 500,                               /* delay */
 
 	/* FRMCTR1 - frame rate control: normal mode
 	     frame rate = fosc / (1 x 2 + 40) * (LINE + 2C + 2D) */
-	-1, 0xB1, 0x01, 0x2C, 0x2D, 
+	-1, 0xB1, 0x01, 0x2C, 0x2D,
 
 	/* FRMCTR2 - frame rate control: idle mode
 	     frame rate = fosc / (1 x 2 + 40) * (LINE + 2C + 2D) */
-	-1, 0xB2, 0x01, 0x2C, 0x2D, 
+	-1, 0xB2, 0x01, 0x2C, 0x2D,
 
 	/* FRMCTR3 - frame rate control - partial mode
 	     dot inversion mode, line inversion mode */
@@ -91,7 +91,7 @@ static int default_init_sequence[] = {
 	-2, 10,                               /* delay */
 
 	/* end marker */
-	-3                                  
+	-3
 };
 
 static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
-- 
1.9.1


