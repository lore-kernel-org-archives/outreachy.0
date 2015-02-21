X-GM-THRID: 1786498777088
X-Received: by 10.112.162.135 with SMTP id ya7mr291123lbb.14.1424524572201;
        Sat, 21 Feb 2015 05:16:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls385243laf.99.gmail; Sat, 21 Feb
 2015 05:16:10 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr295890lai.4.1424524570667;
        Sat, 21 Feb 2015 05:16:10 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id ev8si294143wib.3.2015.02.21.05.16.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 05:16:10 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so10121014wes.12
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 05:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lsgf0DAaF0vmTflfffCo14tA/CzzF9tXawVvFDGY9kk=;
        b=P8COLE/AX7JBFXv5ZXxYcAvTSD55XTZEneFQ0H5bGat5s1EE75Q2mNsfNQSIxZgf5E
         ysnse5JxK9z/cBrrWFSfNR2HzTEZ0dtvWe+tZ7zcPxJQsqjwtsplaIbLyI21C+2SBnJ5
         +uCQkSHTkieibq06zxCN6DodgPpWSwQugyzMKv6/f3udm/h3Hbv+heq2uhwYB6r6itIr
         LSGFsHK5f0x2iIleRc1FktO9ewRwcZ/HVeydMs//WwGod+Pq2GeSzbeBfG+5pzt8hnwV
         HjkkHe7K4QTJ/2HhJlYDr47+TsIUCft2NQEeUc4zrod6qT1ZwoV4f2QafaOm1NmPB1GL
         EUaw==
X-Received: by 10.194.93.134 with SMTP id cu6mr4432538wjb.79.1424524570567;
        Sat, 21 Feb 2015 05:16:10 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id lu13sm6935922wic.10.2015.02.21.05.16.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 05:16:09 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 3/3] Staging: lustre: Removed unnecessary spaces
Date: Sat, 21 Feb 2015 15:15:53 +0200
Message-Id: <1424524553-9035-3-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424524553-9035-1-git-send-email-aybuke.147@gmail.com>
References: <1424524553-9035-1-git-send-email-aybuke.147@gmail.com>

Fix checkpatch.pl issues with "unnecessary whitespace before a quoted
newline" in llite_lib.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
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


