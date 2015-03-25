X-GM-THRID: 9873638031360
X-Received: by 10.66.102.41 with SMTP id fl9mr13153464pab.7.1427327814848;
        Wed, 25 Mar 2015 16:56:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.93 with SMTP id g90ls488669iod.51.gmail; Wed, 25 Mar
 2015 16:56:54 -0700 (PDT)
X-Received: by 10.66.250.198 with SMTP id ze6mr12220585pac.2.1427327814412;
        Wed, 25 Mar 2015 16:56:54 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id e5si515854qcg.1.2015.03.25.16.56.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 16:56:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id 60so55538503qgf.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 16:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=77bHi4eRpM1kjTGHjD/rmmfKwcT2YUga4kWiJ1UfvAk=;
        b=GFOitXxceCxJl+bZ8quLx9v79iTBd0GndwTYErNTNfFeuGf42gp6vDGj2r6c261h5G
         wQ2FKExB70wQhnZX8HHkj/pRQGBSCqlgq/ozsBWNc4hpcfbZP5PGLyDUBAJnEQHbUTcN
         nLI2bBIbvdp5M6AFdLYebsitqcbvT/q5uknc12H71gFrxE/owMZ3d4Jg8D8ihwOqHXdC
         Bk0Gre/LEHIyRvuc2y/006BGk7CYWO01VWuMnKOPgx3w32fppsd3HfX1VIOzjB0mURYT
         FkLO76hVq/I/RcX5uvbTveGyhKtyRw9iHxN2w1tZb/O3z+3zBr7Hvjn+cI4ayU1co7jJ
         Wtaw==
X-Received: by 10.140.151.8 with SMTP id 8mr15257211qhx.65.1427327814313;
        Wed, 25 Mar 2015 16:56:54 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.linksys.com ([179.159.91.9])
        by mx.google.com with ESMTPSA id d32sm2501675qga.12.2015.03.25.16.56.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2015 16:56:53 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] staging: fbtft: Remove do {} while(0) in single statement macro
Date: Wed, 25 Mar 2015 20:56:43 -0300
Message-Id: <1427327803-5447-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:

WARNING: Single statement macros should not use a do {} while (0) loop
+#define write_reg(par, ...)                                              \
+do {                                                                     \
+       par->fbtftops.write_register(par, NUMARGS(__VA_ARGS__), __VA_ARGS__); \
+} while (0)

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/fbtft/fbtft.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 36ecf02..f55cc5b 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -259,9 +259,7 @@ struct fbtft_par {
 #define NUMARGS(...)  (sizeof((int[]){__VA_ARGS__})/sizeof(int))
 
 #define write_reg(par, ...)                                              \
-do {                                                                     \
-	par->fbtftops.write_register(par, NUMARGS(__VA_ARGS__), __VA_ARGS__); \
-} while (0)
+	par->fbtftops.write_register(par, NUMARGS(__VA_ARGS__), __VA_ARGS__)
 
 /* fbtft-core.c */
 extern void fbtft_dbg_hex(const struct device *dev,
-- 
1.9.1


