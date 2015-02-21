X-GM-THRID: 1786498777088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2774b652a5e84589
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.72.44 with SMTP id a12mr415523wiv.0.1424553749469;
        Sat, 21 Feb 2015 13:22:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.207 with SMTP id jq15ls414267lab.107.gmail; Sat, 21
 Feb 2015 13:22:28 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr451626lah.8.1424553748963;
        Sat, 21 Feb 2015 13:22:28 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id el6si378045wib.2.2015.02.21.13.22.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 13:22:28 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id hi2so12541363wib.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 13:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=MAATyt25iU5xOPU6mgsmYOntRDkVE8ZI4++tvKhKEHs=;
        b=fj8Ai6PJYBf5Ezz1O1xBjFNDjPNgLBkwlLjZ5KlCS295nyAqOcCMiNZOL7VIf9HQog
         hHWRB/JDTbcDRzlS4d7bPFiqgwtUkKRyRlw2mrc9+pdzF4AmjiO5EyBrbK7DiEMkbN7p
         4/Yg2t/PzTC5gpb5j2Riz+8htPWuemICfRdRb5/rdaE3Fac38iAO9uW3EDqozz9VTBfg
         0jlO3k2UDAygltGTTLYrlLToI0qYf8YPDU3ABcTdxpgxCdgB2252yCMsc+xvVThd9ULI
         7WNoB9zm9PDxfw6L0RSt+JgmMsjzS0I5dEU+xk7e/eOD3zSfRDykGRHPahP4jehG1gSk
         1pww==
X-Received: by 10.194.75.193 with SMTP id e1mr7681440wjw.126.1424553748857;
        Sat, 21 Feb 2015 13:22:28 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id er13sm48200132wjc.11.2015.02.21.13.22.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 13:22:28 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2 1/3] Staging: lustre: Removed unnecessary braces
Date: Sat, 21 Feb 2015 23:19:46 +0200
Message-Id: <1424553586-14944-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in llite_lib.c
WARNING: braces {} are not necessary for any arm of this statement

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* no changes
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index fb99cdb..10cbf94 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -87,11 +87,10 @@ static struct ll_sb_info *ll_init_sbi(void)
 
 	si_meminfo(&si);
 	pages = si.totalram - si.totalhigh;
-	if (pages >> (20 - PAGE_CACHE_SHIFT) < 512) {
+	if (pages >> (20 - PAGE_CACHE_SHIFT) < 512)
 		lru_page_max = pages / 2;
-	} else {
+	else
 		lru_page_max = (pages / 4) * 3;
-	}
 
 	/* initialize lru data */
 	atomic_set(&sbi->ll_cache.ccc_users, 0);
-- 
1.9.1


