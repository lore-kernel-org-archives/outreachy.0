X-GM-THRID: 1786498777088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2774b652a5e84589
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.26.74 with SMTP id j10mr448810lag.10.1424553814590;
        Sat, 21 Feb 2015 13:23:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.104 with SMTP id ln8ls377774lac.94.gmail; Sat, 21 Feb
 2015 13:23:34 -0800 (PST)
X-Received: by 10.112.99.37 with SMTP id en5mr441230lbb.17.1424553814310;
        Sat, 21 Feb 2015 13:23:34 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id cl5si373354wib.3.2015.02.21.13.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 13:23:34 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id hi2so9577199wib.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 13:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=hLqfmaWPi4pGElaVbhY27E/P6go/Dd4XIy/AuITAeWg=;
        b=svQS15GG0CzKfvL5+WdQeE4Sn42XKn9uWZVI+iqwKqtMnHvOP43gqYsdEfNy6lUawS
         RP5tr3Y3dUFPAcUrNLktIrJ2bqMZCNnMTH6HNXTFgp9i5t2ysUK9heCnaOUQc14aowS/
         5IBcONvKUa5RE4d0NehrRBKvX+xOmxeyk+Cyh3Ad0NEob781yLQzQpWFUplhIOGtVL8Y
         Q+/quEha1hXKE81LX2KkXonDf0KQGrY9hB5jyoASfLO3lhXr5y2gddGfapYoPInzaHG1
         F3lPwhhGHPSBW+qTJIQ5K/FcYRQsBZreLYlg9vo7LrQ48Y7mIUVZbX/bg+IVG49HfoBJ
         5FaA==
X-Received: by 10.194.58.141 with SMTP id r13mr7756946wjq.144.1424553814232;
        Sat, 21 Feb 2015 13:23:34 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id kj8sm48196962wjc.29.2015.02.21.13.23.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 13:23:33 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2 3/3] Staging: lustre: Removed unnecessary spaces
Date: Sat, 21 Feb 2015 23:23:24 +0200
Message-Id: <1424553804-15081-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with "unnecessary whitespace before a quoted
newline" in llite_lib.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* no changes
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 10cbf94..3ed7bf7 100644
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


