X-GM-THRID: 6211053698454388736
X-Received: by 10.68.225.193 with SMTP id rm1mr1238375pbc.2.1446123632700;
        Thu, 29 Oct 2015 06:00:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.169 with SMTP id l9ls113931obh.48.gmail; Thu, 29 Oct
 2015 06:00:31 -0700 (PDT)
X-Received: by 10.182.19.195 with SMTP id h3mr1219982obe.25.1446123631569;
        Thu, 29 Oct 2015 06:00:31 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id pe1si136468pac.2.2015.10.29.06.00.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hy1so34716296pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 06:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=rHePdqQ2v6T3o+mt97z7lTSaP7Y/kGOnAhte32e6ckY=;
        b=HsWi8SmPajLzi6d2UwmAEpNxHpQMtLIrsRu0e4XZuh2/9+T655UMz6EQ2M2zR37jFf
         74lYY5tzB7ZT+oQDc1jyCVaoG+cvR6+uYxbwoK8RYzp/UaEkCpuCaafevcClGDjfYjYa
         dv24EsLodVWTyr/OalEI486hQryOnWro4qnQV00+e98yPF7XWepEx8dEU8XcS/cPgMzr
         BzmCqoFIgrNJS3lj8NTn4V2BOWMP8V571nVBKOLcwgqxdQyJrjE0MsRL3aB/q/WNMjEb
         Dn/VRn0TPELFARF4AVitNolB9F5u3t35dYTzt0kgAevq4Z0b37YDbQYg4CeQ0sMmKs9w
         aa7g==
X-Received: by 10.68.57.137 with SMTP id i9mr1763150pbq.101.1446123630733;
        Thu, 29 Oct 2015 06:00:30 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pj10sm2342164pbc.59.2015.10.29.06.00.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:30 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: media: bcm2048: fix code indent for conditional statements
Date: Thu, 29 Oct 2015 06:00:12 -0700
Message-Id: <6172ee05ab61496792a3b614af31e86fed6fb28e.1446123178.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

WARNING: suspect code indent for conditional statements (8, 24)

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index fb55e59..4948122 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1001,7 +1001,7 @@ static int bcm2048_set_fm_search_tune_mode(struct bcm2048_device *bdev,
 
 	if (!wait_for_completion_timeout(&bdev->compl,
 			msecs_to_jiffies(timeout)))
-			dev_err(&bdev->client->dev, "IRQ timeout.\n");
+		dev_err(&bdev->client->dev, "IRQ timeout.\n");
 
 	if (value)
 		if (!bdev->scan_state)
@@ -1616,7 +1616,7 @@ static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
 			if (((bdev->rds_info.radio_text[i+1] << 8) +
 				bdev->rds_info.radio_text[i+2]) ==
 				bdev->rds_info.rds_pi)
-					match_b = 1;
+				match_b = 1;
 		}
 	}
 }
@@ -1752,7 +1752,7 @@ static void bcm2048_parse_rds_ps(struct bcm2048_device *bdev)
 			if (((bdev->rds_info.radio_text[i+1] << 8) +
 				bdev->rds_info.radio_text[i+2]) ==
 				bdev->rds_info.rds_pi)
-					match_b = 1;
+				match_b = 1;
 		}
 	}
 }
-- 
1.7.9.5


