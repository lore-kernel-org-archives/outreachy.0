X-GM-THRID: 6211053698454388736
X-Received: by 10.13.235.207 with SMTP id u198mr7478505ywe.3.1446236487006;
        Fri, 30 Oct 2015 13:21:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.28.106 with SMTP id a10ls181793igh.13.canary; Fri, 30 Oct
 2015 13:21:26 -0700 (PDT)
X-Received: by 10.50.176.225 with SMTP id cl1mr119260igc.7.1446236486660;
        Fri, 30 Oct 2015 13:21:26 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id iz5si794823pbc.2.2015.10.30.13.21.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:21:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so83531558pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 13:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=ZtbIgAPSGAcIpBz7Cnop1mR7GXE5fc8PPplZTD5JND4=;
        b=saHwJI6k62FczVHOBz/66npUK6OIUHP2sPrxWLgJNWNAD2A3++akSIlCDYrkHEwFy6
         1pybXuR/FmP695QV8hrwhbbKE5SrIuoP8+HQTeTqaRRCA1p+PFY3RCMUMfPmQNNH4hV3
         2GnDTfOSI2FR8vI0BUq7EOFOVu/wVIVGmHr9AAPJkXpfybEpCJ7Up++FVbrLOKVYhu5t
         3TD6yLWQ7rXSqbVtbZmy/bo+czeejN8WDOunT+M+ECeRwjwPA/E97RiubBizaLA6Bu/X
         C/H39vO5kdn9hpelGVDDfzE9rXpo4O3Fi4Pg6RJo0FbImSrTqEbNvqfGsET0Ed2rBfCH
         9O9w==
X-Received: by 10.68.211.165 with SMTP id nd5mr10874660pbc.100.1446236486538;
        Fri, 30 Oct 2015 13:21:26 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pn8sm9812012pbb.16.2015.10.30.13.21.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:21:26 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/5] staging: media: bcm2048: fix mispelling
Date: Fri, 30 Oct 2015 13:21:07 -0700
Message-Id: <d6eec3ec45c979dc2b78489f3e71d2ef310482d1.1446235583.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
 <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>

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


