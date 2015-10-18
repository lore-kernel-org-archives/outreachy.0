X-GM-THRID: 6206972446110646272
X-Received: by 10.112.145.227 with SMTP id sx3mr1184321lbb.12.1445204524426;
        Sun, 18 Oct 2015 14:42:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.88.67 with SMTP id m64ls467858lfb.103.gmail; Sun, 18 Oct
 2015 14:42:03 -0700 (PDT)
X-Received: by 10.112.190.74 with SMTP id go10mr6185363lbc.9.1445204523655;
        Sun, 18 Oct 2015 14:42:03 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id cm6si499183wib.1.2015.10.18.14.42.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 14:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id ll6so73770101wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 14:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hg/bNTp2iyX3KRCYY7KfAodWSKAY5jgx5d0LA26kAWY=;
        b=aLsizTSID+AMiNrZY4Luj4Nok/0FS18WjqiqViEkK4F13e6nmUX9ZAi9+c4LyTKSuF
         bJfLtOLm/sJ9CSAdc7xflMomXLekf9X/ETAH4unWJAcUPExOUVIqs3W1MCLExqBrVV9O
         4kDQFBd0HFQLsZVwCHv2F38FdLhJWQVee0sNNofXjMNxTm5UbIurrxXImf8I+AHes6yn
         4QkUoL+IZw/p+lzAZcydqmjYpu9XjKwtfZoe32X88X64/wS1Zc4FD+5WAMXsZGZOTfpi
         6GPPCnD+/bl0062YEjLCUN+wL2htt1tAoOISAzwls5hS502jDwK6GBOyBo78xzYs41iE
         oMTw==
X-Received: by 10.180.93.133 with SMTP id cu5mr15856792wib.49.1445204523557;
        Sun, 18 Oct 2015 14:42:03 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.48])
        by smtp.gmail.com with ESMTPSA id bg9sm10013479wib.14.2015.10.18.14.42.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Oct 2015 14:42:02 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2] staging: lustre: Replace sscanf with kstrtoint
Date: Mon, 19 Oct 2015 00:41:33 +0300
Message-Id: <1445204493-9563-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com>
References: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com>

Replace single variable sscanf with specialized function
kstrtoint at the suggestion of checkpatch.pl, to fix
'WARNING: Prefer kstrto<type> to single variable sscanf'

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>

Changes in v2:
  - Change error code handling.
---
 drivers/staging/lustre/lustre/lov/lov_obd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index c3be0b5..55b8a91 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -914,12 +914,12 @@ int lov_process_config_base(struct obd_device *obd, struct lustre_cfg *lcfg,
 
 		obd_str2uuid(&obd_uuid,  lustre_cfg_buf(lcfg, 1));
 
-		if (sscanf(lustre_cfg_buf(lcfg, 2), "%d", indexp) != 1) {
-			rc = -EINVAL;
+		rc = kstrtoint(lustre_cfg_buf(lcfg, 2), 10, indexp);
+		if (rc < 0) {
 			goto out;
 		}
-		if (sscanf(lustre_cfg_buf(lcfg, 3), "%d", genp) != 1) {
-			rc = -EINVAL;
+		rc = kstrtoint(lustre_cfg_buf(lcfg, 3), 10, genp);
+		if (rc < 0) {
 			goto out;
 		}
 		index = *indexp;
-- 
1.9.1


