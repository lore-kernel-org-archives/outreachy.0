X-GM-THRID: 6209266424669536256
X-Received: by 10.182.28.100 with SMTP id a4mr22541766obh.20.1445707498722;
        Sat, 24 Oct 2015 10:24:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.230 with SMTP id i6ls504514igt.38.canary; Sat, 24 Oct
 2015 10:24:58 -0700 (PDT)
X-Received: by 10.66.246.234 with SMTP id xz10mr8184469pac.10.1445707498466;
        Sat, 24 Oct 2015 10:24:58 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si2784871pbc.1.2015.10.24.10.24.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 10:24:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so145910666pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 10:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=FeJoZpITOQ1+U22Pdnop8UaScSVUJ6lss20d1sPPyt0=;
        b=Tgt0hQVlsyVWQ9oIbRIydNjw5vWlojHbBItJL4a965tLgiVmV+0utovOOBkfhNs4cS
         jmMDudPVK/9H3oyzhJ8kklAwiEOQOpXw7jyWmQplqYdwuXfrKTHX43f0pl56EjlvMbNa
         QlYe4ocyedbiJ5Gp7UxYeicOpSrMnFm5Ku3bwlasr6HEiE+IhTWQbLOFsgvg0BR2yNy0
         NFOXJ8WVcauwcNdGUk1Wb6GV2bsfZtSfA/vNAdHwJ7NSJ25hW8YoCpyxCCpDlKU/3k1x
         BUz53Tj7o1xubss5KAubVrZ8ponR3EqKYqaq1shZt/UmDAyHa2X1+gfDEgyslyrM18Ts
         HBYQ==
X-Received: by 10.68.135.161 with SMTP id pt1mr12322705pbb.80.1445707498355;
        Sat, 24 Oct 2015 10:24:58 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.114])
        by smtp.gmail.com with ESMTPSA id tp6sm25120093pbc.81.2015.10.24.10.24.57
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 24 Oct 2015 10:24:57 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] Staging: mt29f_spinand: Replace udelay function with usleep_range
Date: Sun, 25 Oct 2015 01:24:51 +0800
Message-Id: <1445707491-28304-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Use 'usleep_range' instead of 'udelay' to elapse time. For
spinand_reset, define the upper limit by a factor of 2 to keep the wait
short while still allowing a "good enough" range for wakeup. Define the
range 250us - 1ms for spinand_cmdfunc to provide enough leeway before
issuing spinand_reset. Checkpatch found this issue.

CHECK: usleep_range is preferred over udelay; see
Documentation/timers/timers-howto.txt

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index a8292a1..b6a1ffc 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -736,7 +736,7 @@ static void spinand_reset(struct spi_device *spi_nand)
 		pr_info("spinand reset failed!\n");
 
 	/* elapse 1ms before issuing any other command */
-	udelay(1000);
+	usleep_range(1000, 2000);
 
 	if (wait_till_ready(spi_nand))
 		dev_err(&spi_nand->dev, "wait timedout!\n");
@@ -802,7 +802,7 @@ static void spinand_cmdfunc(struct mtd_info *mtd, unsigned int command,
 		if (wait_till_ready(info->spi))
 			dev_err(&info->spi->dev, "WAIT timedout!!!\n");
 		/* a minimum of 250us must elapse before issuing RESET cmd*/
-		udelay(250);
+		usleep_range(250, 1000);
 		spinand_reset(info->spi);
 		break;
 	default:
-- 
1.9.1


