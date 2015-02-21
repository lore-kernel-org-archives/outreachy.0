X-GM-THRID: 2017960394752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5c9ede0babb9c0ec,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.232 with SMTP id e8mr407151laa.2.1424544492918;
        Sat, 21 Feb 2015 10:48:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.71 with SMTP id r7ls317019lag.42.gmail; Sat, 21 Feb
 2015 10:48:12 -0800 (PST)
X-Received: by 10.112.9.65 with SMTP id x1mr176590lba.16.1424544492423;
        Sat, 21 Feb 2015 10:48:12 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id ev8si344182wib.3.2015.02.21.10.48.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 10:48:12 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id k14so18735607wgh.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 10:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xdIZ01wPUxaKPBtZc1pGdQ/RffHnLInHl3X13xh1U7o=;
        b=rEoTX5m6vNxU2arz6IuyzEnin0KQrCiaECv0bOORnyKkndD+jWtzohv3FPu4L+FqP/
         4Eh8ohhiera2n2u5SZaYzYfcNL2m7fMcFVAIc8Irpppnxthvb3fFtxrof0uecwO4FOq6
         L29MaI2aORlMfZzq8j0N68eaqSXZAqDV+Kiu5M+jPry3phkkc8KWhFAyQMDBf0x4PqQv
         OLcdsOPm+OW6iABlorgE/8heRcjg+LRVa76pNiosmFbrhoYqfN4I9Xlhv9r/Qwug46QX
         YCikP5rG4zCJskwMibAqX4A8lj5HBqVsYk5/ItzA+zjlvJGqWLeGVpwodZgKpY9w9LKi
         Ce0Q==
X-Received: by 10.194.190.10 with SMTP id gm10mr6853865wjc.91.1424544492344;
        Sat, 21 Feb 2015 10:48:12 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id qb8sm41628776wjc.4.2015.02.21.10.48.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 10:48:11 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH v2] Staging: drivers: dma: Add space before (
Date: Sat, 21 Feb 2015 20:48:02 +0200
Message-Id: <1424544482-4882-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl error in file ste_dma40.c
ERROR: space required before the open parenthesis '('

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---

v2:changed the subject

 drivers/dma/ste_dma40.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 15d4946..9c6d2a2 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -3551,7 +3551,7 @@ static int __init d40_probe(struct platform_device *pdev)
 
 	if (!plat_data) {
 		if (np) {
-			if(d40_of_probe(pdev, np)) {
+			if (d40_of_probe(pdev, np)) {
 				ret = -ENOMEM;
 				goto failure;
 			}
-- 
1.9.1


