X-GM-THRID: 6206972446110646272
X-Received: by 10.180.105.98 with SMTP id gl2mr3345306wib.0.1445173389541;
        Sun, 18 Oct 2015 06:03:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.68 with SMTP id n4ls440427wik.4.canary; Sun, 18 Oct
 2015 06:03:09 -0700 (PDT)
X-Received: by 10.180.160.194 with SMTP id xm2mr1014565wib.6.1445173389181;
        Sun, 18 Oct 2015 06:03:09 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id cm6si451138wib.1.2015.10.18.06.03.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:03:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id p11so65126055wij.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 06:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=uBOuT4kJKANE2bqWxOWB+B3gR40GKl6xMYWZufXj3P0=;
        b=M30vzl2oORaoUC+HRg1YDYmT8GzR1YfxCwWQxlUqYkyYB1QxSoG5x5x8hMwRRJeQkR
         GUPbKizluAtG1c+Fwj1N+puHv7mtEyvA6mQU2XYYGtZ1cdOQvZnPhpryktHOrH1IZ8HU
         MtedT3RSCgvLv6yDVV/Tj+bHHXtDjyIfnOMK0iRUFIQgAbd9Z7cbsPd2i/qkpuMNxPk4
         WqMTOgUYBUxSDA3hZjrcxHfIM8xgSqBBEHExO1GO1M93A2ALFTCvnKOpuDyEc6/EN+zV
         fdwNyXEh5N3l5JZqfO6oUfKbDsGcWBIvPoTKAm2VRgk0x7qRSBF0t5CXi937ztTNkj+Q
         /q2w==
X-Received: by 10.181.29.74 with SMTP id ju10mr15667227wid.5.1445173389097;
        Sun, 18 Oct 2015 06:03:09 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.168])
        by smtp.gmail.com with ESMTPSA id he3sm34011928wjc.48.2015.10.18.06.03.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Oct 2015 06:03:08 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: lustre: Replace sscanf with kstrtoint
Date: Sun, 18 Oct 2015 16:02:39 +0300
Message-Id: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace single variable sscanf with specialized function
kstrtoint at the suggestion of checkpatch.pl, to fix
'WARNING: Prefer kstrto<type> to single variable sscanf'

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_obd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index c3be0b5..725bcf6 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -914,11 +914,11 @@ int lov_process_config_base(struct obd_device *obd, struct lustre_cfg *lcfg,
 
 		obd_str2uuid(&obd_uuid,  lustre_cfg_buf(lcfg, 1));
 
-		if (sscanf(lustre_cfg_buf(lcfg, 2), "%d", indexp) != 1) {
+		if (kstrtoint(lustre_cfg_buf(lcfg, 2), 10, indexp)) {
 			rc = -EINVAL;
 			goto out;
 		}
-		if (sscanf(lustre_cfg_buf(lcfg, 3), "%d", genp) != 1) {
+		if (kstrtoint(lustre_cfg_buf(lcfg, 3), 10, genp)) {
 			rc = -EINVAL;
 			goto out;
 		}
-- 
1.9.1


