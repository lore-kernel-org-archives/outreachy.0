X-GM-THRID: 6211053698454388736
X-Received: by 10.107.128.158 with SMTP id k30mr10629634ioi.33.1446281823682;
        Sat, 31 Oct 2015 01:57:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.125.104 with SMTP id mp8ls538917obb.50.gmail; Sat, 31 Oct
 2015 01:57:03 -0700 (PDT)
X-Received: by 10.182.142.38 with SMTP id rt6mr10111458obb.33.1446281823420;
        Sat, 31 Oct 2015 01:57:03 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si1111896pbc.1.2015.10.31.01.57.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:57:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id z6so96661961pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 01:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=ZtbIgAPSGAcIpBz7Cnop1mR7GXE5fc8PPplZTD5JND4=;
        b=K8d3PpGWcU7jry49sVF8KMa3wcYdyjb6RV5ZZOrtHJNUq18boOChbkVcPJ7pl75aja
         S5ZXlYTyD4SSDiibjkGGB267EOkmxPo5GrZepb7KsvNT/CnMNPUiARBj2O0EJEszyjsP
         Yklm3IktyEi0MC3OBNqqjC5Y8QbNKjD87lYqULudpZ6MiIQNPWfHA5GEAJvaYe8V5kY9
         80cVKSFTKcIHMBSWs6WAY73p4u1ED1D5dpiOMAIGOviOC4QIgg1WQcSk73ohXMdjLAZA
         JiP2m8Dci53bRG5tRRagD/NcmAVm8RceBiRMlzDln8yr3n8/bg0ziyV1dY2d9mW83ZkN
         GL7w==
X-Received: by 10.66.185.228 with SMTP id ff4mr11177253pac.79.1446281823321;
        Sat, 31 Oct 2015 01:57:03 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id yp9sm12645749pab.1.2015.10.31.01.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:57:02 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 5/5] staging: media: bcm2048: fix mispelling
Date: Sat, 31 Oct 2015 01:56:41 -0700
Message-Id: <46d99097dba0cf0015d405b02911db7dd22ce865.1446281119.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
 <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: 'Syncronize' may be misspelled - perhaps 'Synchronize'?

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 199ad37..b9201e1 100644
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


