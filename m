X-GM-THRID: 3919989178368
X-Received: by 10.112.147.35 with SMTP id th3mr1327718lbb.15.1424980053272;
        Thu, 26 Feb 2015 11:47:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.103 with SMTP id k7ls185904wiv.5.gmail; Thu, 26 Feb
 2015 11:47:32 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr1585000wiv.0.1424980052910;
        Thu, 26 Feb 2015 11:47:32 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id cl5si188226wib.3.2015.02.26.11.47.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 11:47:32 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id y19so14146905wgg.13
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 11:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3Br5bcYKRcq4CVmRYAz+MrYAwC3n81tboG5FnUDFMMY=;
        b=sca1cRd/7wJT3esiflqH+PEmYlGcn77GUXyIIYyuc2EMhRLlpeDU9VSZRCE9me65Ae
         oJZ419/0+5Eme2b+3W75zDRQYvzQ+kIwL093mMnmdTFeB7h2iZi3AQG4/6SAw/jqrbY0
         yJ9UBvxg/eSUe4Gzvpsv77YujuoVS/bUJO8f9nTMkXfD8Y0p5HIA+5vp6sSsKkOKHlun
         R2yWZfWGk/6RqylnafcWnol/po3U6Q+pQZjaHz3Dr2aCePdhT/c6TkYb2AXBVYDCB9kX
         hd+o11V0WWRZJYpEs97tloWPNB+PzhBD/D+NG6+CpybRUHD44tGcqzxO2jgb8aZNmAi4
         +kwA==
X-Received: by 10.180.105.40 with SMTP id gj8mr54558751wib.67.1424980052782;
        Thu, 26 Feb 2015 11:47:32 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from yeliz-N56DP.comu.edu.tr ([193.255.97.48])
        by mx.google.com with ESMTPSA id l6sm2783091wjx.33.2015.02.26.11.47.31
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 11:47:31 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: ft1000: ft1000-pcmcia: Fix line over 80 characters
Date: Thu, 26 Feb 2015 21:47:40 +0200
Message-Id: <1424980060-13121-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Fix checkpatch.pl issues with line over 80 characters in ft1000_cs.c

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c
index 922478e..f71305b 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c
@@ -24,7 +24,7 @@
   License along with this program; if not, write to the
   Free Software Foundation, Inc., 59 Temple Place -
   Suite 330, Boston, MA 02111-1307, USA.
-  -----------------------------------------------------------------------------*/
+  ----------------------------------------------------------------------------*/
 
 #include <linux/kernel.h>
 #include <linux/module.h>
-- 
1.8.3.2


