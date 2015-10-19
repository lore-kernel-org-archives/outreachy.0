X-GM-THRID: 6206972446110646272
X-Received: by 10.112.198.33 with SMTP id iz1mr7052290lbc.8.1445287765065;
        Mon, 19 Oct 2015 13:49:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.156.78 with SMTP id f75ls656508lfe.69.gmail; Mon, 19 Oct
 2015 13:49:24 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr6985703lbc.5.1445287764448;
        Mon, 19 Oct 2015 13:49:24 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id w4si641883wiz.0.2015.10.19.13.49.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 13:49:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id q8so17048163wik.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 13:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Vf6nW/w8VgHaJl51hZn+K3ca1yb2lMe+PTjiDNrfUsw=;
        b=fmB9KHv9LVvGv3nBGXA/vG2qXy45uTVcHgNLY1B8To8L4KsD9A6ZqbncWbvLcEjG1s
         HqV2wUhkeQZUgsDup4e2b/cZpcedbgzTMHEpP2kF6ATMyhAIvQ6IRnXWHvGswQsfcLJL
         qxLcPb5yLb6b1/DcMikdexptITbOj9Hegc7DPlzAILo4ucgMKnRM3QpbQX9O/w1tg+iz
         SpRGnL1Fa5jn96WcawuHPDObQ61lCWicJr0U8i3pbEnIiDt6Dgh+E/mh7hMZrtTk7nqO
         YDEdJIVzVdAhmy+G+lGHAXRQqKKnCdShZ5A1rBFnt5JQcwUYvdiZ+075pBfGdY8h0kb0
         mXvg==
X-Received: by 10.194.113.101 with SMTP id ix5mr35803012wjb.107.1445287764345;
        Mon, 19 Oct 2015 13:49:24 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id qh12sm16446023wic.20.2015.10.19.13.49.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 13:49:23 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v3] staging: lustre: Replace sscanf with kstrtoint
Date: Mon, 19 Oct 2015 23:48:53 +0300
Message-Id: <1445287733-17493-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com>
References: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com>

Replace single variable sscanf with specialized function
kstrtoint at the suggestion of checkpatch.pl, to fix
'WARNING: Prefer kstrto<type> to single variable sscanf'

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>

Changes in v2:
  - Change error code handling.
Changes in v3:
  - Remove unnecessary braces
---
 drivers/staging/lustre/lustre/lov/lov_obd.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index c3be0b5..220a919 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -914,14 +914,12 @@ int lov_process_config_base(struct obd_device *obd, struct lustre_cfg *lcfg,
 
 		obd_str2uuid(&obd_uuid,  lustre_cfg_buf(lcfg, 1));
 
-		if (sscanf(lustre_cfg_buf(lcfg, 2), "%d", indexp) != 1) {
-			rc = -EINVAL;
+		rc = kstrtoint(lustre_cfg_buf(lcfg, 2), 10, indexp);
+		if (rc < 0)
 			goto out;
-		}
-		if (sscanf(lustre_cfg_buf(lcfg, 3), "%d", genp) != 1) {
-			rc = -EINVAL;
+		rc = kstrtoint(lustre_cfg_buf(lcfg, 3), 10, genp);
+		if (rc < 0)
 			goto out;
-		}
 		index = *indexp;
 		gen = *genp;
 		if (cmd == LCFG_LOV_ADD_OBD)
-- 
1.9.1


