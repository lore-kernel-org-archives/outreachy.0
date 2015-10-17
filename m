X-GM-THRID: 6206628710107316224
X-Received: by 10.182.58.105 with SMTP id p9mr17151118obq.21.1445093357966;
        Sat, 17 Oct 2015 07:49:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.236.68 with SMTP id us4ls1058720obc.98.gmail; Sat, 17 Oct
 2015 07:49:17 -0700 (PDT)
X-Received: by 10.182.215.226 with SMTP id ol2mr17991893obc.11.1445093357581;
        Sat, 17 Oct 2015 07:49:17 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id pe1si2477010pac.2.2015.10.17.07.49.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 07:49:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fb7so4446411pad.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 07:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=b3AWqiSOefJe5E/z9ZWLP+fISI1/c2u3Sv9DAH9UO/E=;
        b=pyeAF5vFoGB4b3jrEmDh5EnmJ4zuBIXLgUS40trn7KU4ROICn0YQKb++xzfk26ju6V
         gOWuR/A0TRI9SGp7CqJeK26ZtN8XGDRmybAAiSdkdhsBe3gTtvKLEDMR4BNMZE82AqcR
         JcMbWJzhwSMlucVbCRXewXf2ERpCMKIBcXGLSgZrnIlK+sRj7tQ1DFYi2dHCdIZIhKSA
         l9A1uvNdfWAcdcn1k2MSHI33gwN/gBAIn83vyXvHjaWAPasq4ryZ1idawn4WpMMszHoE
         +HBU7132qYNYhhE1nNYacRrMPiT+JPfWQD6NCHusvCOg3SthAffUFk4aZO10rm9kV8+7
         LaJQ==
X-Received: by 10.67.1.73 with SMTP id be9mr23519129pad.35.1445093357440;
        Sat, 17 Oct 2015 07:49:17 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fa14sm27289835pac.8.2015.10.17.07.49.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 07:49:16 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: fbtft: Remove unused macros
Date: Sat, 17 Oct 2015 20:19:00 +0530
Message-Id: <1445093340-2881-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.56225FEC.003B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove the macros since they are defined but not used

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/fbtft/fb_watterott.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index f8cb610..40c1223 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -31,12 +31,9 @@
 
 #define CMD_VERSION		0x01
 #define CMD_LCD_LED		0x10
-#define CMD_LCD_RESET		0x11
 #define CMD_LCD_ORIENTATION	0x20
 #define CMD_LCD_DRAWIMAGE	0x27
-#define COLOR_RGB323		8
 #define COLOR_RGB332		9
-#define COLOR_RGB233		10
 #define COLOR_RGB565		16
 
 static short mode = 565;
-- 
2.1.4


