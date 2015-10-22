X-GM-THRID: 6208520404997242880
X-Received: by 10.66.249.100 with SMTP id yt4mr13422341pac.42.1445533802334;
        Thu, 22 Oct 2015 10:10:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.247.7 with SMTP id ya7ls801903obc.82.gmail; Thu, 22 Oct
 2015 10:10:02 -0700 (PDT)
X-Received: by 10.182.58.105 with SMTP id p9mr12929885obq.21.1445533801998;
        Thu, 22 Oct 2015 10:10:01 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id fa8si1817231pab.1.2015.10.22.10.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 10:10:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id rc13so91481715pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 10:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dUffD/UmqDeeVQ3+LjkObHoMrLmWRNnZLxdB008WLIY=;
        b=Ei/2cfEbqnEy5BXvEXQrIo8BV0496v8DJo70xufM2z13BQ9I7aySArzKayLUC1sLJ8
         ueweN+4YkDUOZaACyqKiiJP7PJ0t63S7TGR/dxy49tlg8PYldoJGppe0d/ao/jJ8QSH7
         ZDr32g+g3hsGzWRB1Ex7CtV5CwB8bTSrdYipPUKtU+kTKaL5qxHpwIgUYKCsswg5FHaL
         Pr4ml3gbUiGSNCA1etork/REnYT+JbU6LqE4DrinQor0gq4Lyc95w0YcT7w4F94qd8W6
         SScRyePXIik/CgDdVINpni7pZMatbvkFQwmDqPkSHPEt9dvJ1zKc6Fq72NkVw4wJGgc/
         /GPA==
X-Received: by 10.68.253.42 with SMTP id zx10mr18118315pbc.99.1445533801891;
        Thu, 22 Oct 2015 10:10:01 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.9])
        by smtp.gmail.com with ESMTPSA id qy7sm14797487pab.37.2015.10.22.10.10.01
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 10:10:01 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] Staging: mt29f_spinand: Remove redundant cast on 'retval'
Date: Fri, 23 Oct 2015 01:09:56 +0800
Message-Id: <1445533796-29880-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove the unneeded cast to 'int' since 'retval' is originally declared as
'int'.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index 7691417..4165fb4 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -595,7 +595,7 @@ static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
 		if (retval < 0) {
 			dev_err(&spi_nand->dev,
 					"error %d reading status register\n",
-					(int)retval);
+					retval);
 			return retval;
 		}
 
-- 
1.9.1


