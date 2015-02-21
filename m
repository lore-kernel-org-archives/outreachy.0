X-GM-THRID: 1726977409024
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3c6e687e9bd2e98
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.146.65 with SMTP id ta1mr409373lbb.19.1424546607345;
        Sat, 21 Feb 2015 11:23:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.10 with SMTP id s10ls410335lal.81.gmail; Sat, 21 Feb
 2015 11:23:26 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr416858lae.7.1424546606869;
        Sat, 21 Feb 2015 11:23:26 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id ev8si350001wib.3.2015.02.21.11.23.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:23:26 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id w62so11139267wes.9
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=L1AXCHZ3ZGNPoVr1GXvzTij1Ro6AaIEaj9lvMi/Rjxg=;
        b=YoFy/H7Xq4V7x8xdk/SJEt3W+q7NktL4KgZlqRaY21h7OYKmNUWp2i/5OCUa19uyAD
         9IyQaC2CnfZwNAA+hEwSgJPDWGREY70nlT9vaxzm/AqAKtzJJje6jcTQyj/9mLlLwbYz
         RBqTanFIURw04/1+Az3XnaZ/cxaRfGSttKWH9oKCeNsbWjfjI3zMa+BYuabfpSvjDoFM
         uTUST4e90CwGyxmtEeblpZVs0xyps+w3ijRkzjip0SNsKsry+c7zyA19ui9Epwum8GvH
         3g1kIFVB06cCR0/Ex1qu5PIpWJK3/c1ypLShnQef6ONzYpKc2cTKmvyA7WLEWsPlSyVL
         3r9g==
X-Received: by 10.194.95.200 with SMTP id dm8mr7374007wjb.122.1424546606770;
        Sat, 21 Feb 2015 11:23:26 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id m4sm47843964wjb.25.2015.02.21.11.23.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 11:23:26 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2 3/5] Staging: lustre: Corrected code indentation
Date: Sat, 21 Feb 2015 21:22:57 +0200
Message-Id: <1424546577-11537-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: suspect code indent for conditional statements(8,15)
spaces are converting to tabs suspect code indent is deleted.
That was found by running checkpatch.pl

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* changed the description
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 62f923c..163bec0 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -620,7 +620,7 @@ int ll_get_max_mdsize(struct ll_sb_info *sbi, int *lmmsize)
 	rc = obd_get_info(NULL, sbi->ll_md_exp, sizeof(KEY_MAX_EASIZE),
 			  KEY_MAX_EASIZE, &size, lmmsize, NULL);
 	if (rc)
-		CERROR("Get max mdsize error rc %d \n", rc);
+		CERROR("Get max mdsize error rc %d\n", rc);
 
 	return rc;
 }
-- 
1.9.1


