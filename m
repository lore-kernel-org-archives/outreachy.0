X-GM-THRID: 6206972446110646272
X-Received: by 10.180.10.170 with SMTP id j10mr4768195wib.6.1445898644300;
        Mon, 26 Oct 2015 15:30:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.149.198 with SMTP id x189ls9040lfd.51.gmail; Mon, 26 Oct
 2015 15:30:43 -0700 (PDT)
X-Received: by 10.112.150.229 with SMTP id ul5mr8861137lbb.2.1445898643537;
        Mon, 26 Oct 2015 15:30:43 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id bn7si521983wib.0.2015.10.26.15.30.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:30:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id q8so185710673wik.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=q7s5s6wd/zuPzJZdWo3JeFVdd3FuwiYH3TpcrY234dE=;
        b=Lc6EhAOmm9WOhcPlWwkAxM61kMEKal9IJUqxXwazEF2wlo6eFQlW1Pn+7esL/4P//P
         +SptGzREpsAjRYyCpK0ani0a18G888+Gy2y38RWJAvOSI3u7e0xaajWRES/6QoEXZn6U
         lHCRXpfrreCgzCTSWzVaG0d1XkaP2moOy+5XapQJnLsLrqpnhoFvii7Ccsq4t+tCrDCg
         CKNtSYy2hxZCO1e+h1pe/ALeRkoLQx0PgciZILAKjFhDaxq+3s7p5CEhY4OOhYxI1Af5
         1Ho4k9CZu1HkvbOWBeNDw1WIlbMp1rvNd1DTueDbbYqoHJn9VKHsn4cz2pbDTUbeUx2j
         sxmw==
X-Received: by 10.180.91.15 with SMTP id ca15mr11651244wib.40.1445898643369;
        Mon, 26 Oct 2015 15:30:43 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.165])
        by smtp.gmail.com with ESMTPSA id bo7sm16055213wjb.46.2015.10.26.15.30.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 15:30:42 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v3] staging: lustre: Replace sscanf with kstrtoint
Date: Tue, 27 Oct 2015 00:30:08 +0200
Message-Id: <1445898608-12624-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com>
References: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com>

Replace single variable sscanf with specialized function
kstrtoint at the suggestion of checkpatch.pl, to fix
'WARNING: Prefer kstrto<type> to single variable sscanf'

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
Changes in v2:
  - Change error code handling.
Changes in v3:
  - Remove unnecessary braces

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


