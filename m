X-GM-THRID: 2510415724544
X-Received: by 10.152.26.74 with SMTP id j10mr777691lag.10.1424622525748;
        Sun, 22 Feb 2015 08:28:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.98 with SMTP id bf2ls335852lab.70.gmail; Sun, 22 Feb
 2015 08:28:45 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr773708lbo.8.1424622525227;
        Sun, 22 Feb 2015 08:28:45 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id ta1si509839wic.1.2015.02.22.08.28.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 08:28:45 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x229.google.com with SMTP id w62so13839771wes.9
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 08:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=EnNVWjmPHdO4Jo30MLBnyQRxfSrokKgfne/qqggAit4=;
        b=dNHX0pLgugMgdAyerNhiAF1RWzfJ9DnGEjJlhzuC7rZHwPHVAoFA1ikvVtRcsL3rOU
         TBsOp50JjW1WG3ASa6bwHWsFgbbwOvgebpTRBlu52mkEOeSKyCpeSTA9K9l9W37sKvAT
         JNzDwzmvZW415zZGnd7A3RV+rZZgyE/OpX/DGY2YwQB984ODgIgg8hNfgGOL1SDpR5V7
         trg4/8i2rvWj8dYlTwhqStpRyf3TJiAvl5ODrVXqlt7r1lnvetFXdMrNYGZTInUTS9rG
         /ROROTuTN6rnNiiT06YIy7j1rCukq/xLmLHOjWGXD0nW4VrT8KfH277rktrvpXkDaKmA
         obcg==
X-Received: by 10.180.19.193 with SMTP id h1mr13015665wie.2.1424622525122;
        Sun, 22 Feb 2015 08:28:45 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id hi6sm51739637wjc.34.2015.02.22.08.28.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 08:28:44 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: media: Remove unnecessary else after return
Date: Sun, 22 Feb 2015 18:28:37 +0200
Message-Id: <1424622517-7849-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in files of media
WARNING: else is not generally useful after a break or return

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/media/vino/saa7191.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
index 8e96992..f411e1f 100644
--- a/drivers/staging/media/vino/saa7191.c
+++ b/drivers/staging/media/vino/saa7191.c
@@ -393,11 +393,10 @@ static int saa7191_autodetect_norm(struct v4l2_subdev *sd)
 		/* 60hz signal -> NTSC */
 		dprintk("NTSC\n");
 		return saa7191_s_std(sd, V4L2_STD_NTSC);
-	} else {
-		/* 50hz signal -> PAL */
-		dprintk("PAL\n");
-		return saa7191_s_std(sd, V4L2_STD_PAL);
 	}
+	/* 50hz signal -> PAL */
+	dprintk("PAL\n");
+	return saa7191_s_std(sd, V4L2_STD_PAL);
 }
 
 static int saa7191_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
-- 
1.9.1


