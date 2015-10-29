X-GM-THRID: 6211053698454388736
X-Received: by 10.31.148.206 with SMTP id w197mr1197627vkd.9.1446123640496;
        Thu, 29 Oct 2015 06:00:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.149 with SMTP id 21ls264743iop.85.gmail; Thu, 29 Oct
 2015 06:00:40 -0700 (PDT)
X-Received: by 10.107.9.196 with SMTP id 65mr2377552ioj.11.1446123640161;
        Thu, 29 Oct 2015 06:00:40 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si134145pac.2.2015.10.29.06.00.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hk11so40603660pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 06:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=5EfGDg1d0LKOVFFAv7Y0x/NU7Iw0p/Grw1TmG8mQLjQ=;
        b=jDtFwwnXWrJjBY6RwArA9nM2NUpRqfSwioNxkY+erd8GWHO/oDnQC6s5VFVMOX7cs6
         39T8SjxvXtvsm6R3uUPVTO5qDN6or3tBGZe/PZysrWbWisTWgXnJYTL/hcr+4eRzcw+A
         ZaE6uNy+b1pfFcR6l2NUpdCDnTesMPpL5zEASS1H42X9A/x/zBjvJ8YAsQpH+ztpzQHO
         BaqKk7p+8/FfPRaZ1pjL+CmCFZ9/ySrN8k7ZDJyFeSzHVg9r5p+WkwEeAh5y5dHcfJ65
         z6h9u4lN7quhuTuEUBioa+dQ2SjyDN8AyCFrWLoZvTSoGFrNrZK1HVPXatCtNDdwsv9N
         WOXg==
X-Received: by 10.66.152.44 with SMTP id uv12mr1466220pab.110.1446123640057;
        Thu, 29 Oct 2015 06:00:40 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pj10sm2342164pbc.59.2015.10.29.06.00.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:39 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: media: bcm2048: fix mispelling
Date: Thu, 29 Oct 2015 06:00:17 -0700
Message-Id: <d5c68edaad718e9e48adad1000489dd8cec8f473.1446123178.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: 'Syncronize' may be misspelled - perhaps 'Synchronize'?

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index a6070f1..67b6a87 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1596,7 +1596,7 @@ static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
 			crc = bcm2048_rds_block_crc(bdev, i);
 			if (crc == BCM2048_RDS_CRC_UNRECOVARABLE)
 				continue;
-			/* Syncronize to a good RDS PI */
+			/* Synchronize to a good RDS PI */
 			if (((bdev->rds_info.radio_text[i + 1] << 8) +
 			    bdev->rds_info.radio_text[i + 2]) ==
 			    bdev->rds_info.rds_pi)
@@ -1732,7 +1732,7 @@ static void bcm2048_parse_rds_ps(struct bcm2048_device *bdev)
 			crc = bcm2048_rds_block_crc(bdev, i);
 			if (crc == BCM2048_RDS_CRC_UNRECOVARABLE)
 				continue;
-			/* Syncronize to a good RDS PI */
+			/* Synchronize to a good RDS PI */
 			if (((bdev->rds_info.radio_text[i + 1] << 8) +
 			    bdev->rds_info.radio_text[i + 2]) ==
 			    bdev->rds_info.rds_pi)
-- 
1.7.9.5


