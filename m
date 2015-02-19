X-GM-THRID: 697096470528
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ae4d3b7517c21de2,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.126.168 with SMTP id mz8mr5163785obb.9.1424363409627;
        Thu, 19 Feb 2015 08:30:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.204 with SMTP id p195ls462407iop.1.gmail; Thu, 19 Feb
 2015 08:30:09 -0800 (PST)
X-Received: by 10.66.102.100 with SMTP id fn4mr1854433pab.19.1424363409315;
        Thu, 19 Feb 2015 08:30:09 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22d.google.com (mail-pd0-x22d.google.com. [2607:f8b0:400e:c02::22d])
        by gmr-mx.google.com with ESMTPS id bx1si1880142pdb.2.2015.02.19.08.30.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 08:30:09 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) client-ip=2607:f8b0:400e:c02::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfp1 with SMTP id fp1so751768pdb.9
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 08:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=LF7YN6U9ZKUInY5PvFBhULmMtFt9GTNsCQcc6im2JPg=;
        b=GEeqoM7dgP23yxQk4cxidc1slvZj0nVLWYLWD3hK3RM8z6evCHqf4+KVbVAytmHPnO
         VWVrMRmnn5tG+N9z1x239NZMgGrg6RkfG/tvejsSQ9buXuKYIrKJNyPAs6ZwfD/ACzYh
         uE7yCEU0Fm9aJwDho+lIMGJPaycy1okm1UIH3QPoBMy9J+0u+RcyXP4aetijMCSoGwer
         XMtKntOEJ2VBZefJauh5GRdjcArswAO2Drqx/UP7pppVqyg2gu82/dXkNTBD5VuZYJRK
         j5rAnO5Pv21FGRkmBbrSBAOdUKf7aiI7cpV/di6sUp2DFGfVaEtvHrm9w27vgJkgCWI2
         j62w==
X-Received: by 10.67.6.225 with SMTP id cx1mr9080949pad.1.1424363409113;
        Thu, 19 Feb 2015 08:30:09 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from localhost.localdomain ([61.16.142.166])
        by mx.google.com with ESMTPSA id n10sm24328588pdp.18.2015.02.19.08.30.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 08:30:08 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: [PATCH] staging: media: parport: Convert simple_strtoul to kstrtoul
Date: Thu, 19 Feb 2015 22:00:02 +0530
Message-Id: <1424363402-10346-1-git-send-email-navyasri.tech@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following checkpatch.pl warning:

WARNING: simple_strtoul is obsolete, use kstrtoul instead

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/media/parport/bw-qcam.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
index 67b9da1..1b81244 100644
--- a/drivers/staging/media/parport/bw-qcam.c
+++ b/drivers/staging/media/parport/bw-qcam.c
@@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port)
 	if (parport[0] && strncmp(parport[0], "auto", 4) != 0) {
 		/* user gave parport parameters */
 		for (n = 0; n < MAX_CAMS && parport[n]; n++) {
-			char *ep;
 			unsigned long r;
-			r = simple_strtoul(parport[n], &ep, 0);
-			if (ep == parport[n]) {
+			if (kstrtoul(parport[n],0,&r)) {
 				printk(KERN_ERR
 					"bw-qcam: bad port specifier \"%s\"\n",
 					parport[n]);
-- 
1.9.1


