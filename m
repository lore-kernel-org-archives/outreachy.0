X-GM-THRID: 5152931053568
X-Received: by 10.194.63.208 with SMTP id i16mr213694wjs.2.1425152035578;
        Sat, 28 Feb 2015 11:33:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.40 with SMTP id en8ls321377wib.11.gmail; Sat, 28 Feb
 2015 11:33:55 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr2824832wjb.1.1425152035296;
        Sat, 28 Feb 2015 11:33:55 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id ta1si353458wic.1.2015.02.28.11.33.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 11:33:55 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22b.google.com with SMTP id w55so26196314wes.4
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 11:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pQizMmE7lFyir4PMTXACdcWdeMgvvt8Z/XM92BDhmvg=;
        b=ssGelI50RqIUy3tL9r/4chy0YmdpFHzaHX9T2WRM/uFUwuaZAQt0jkIPQIMlZxcXSA
         7kv4mMNVvHTczncmJD5eCfBY+78r3/FVRIZo5Uj7Dl5EY2r6HWY3HeZsuuRSd3TvISSQ
         RIvWaRULzavKkC/HwniLSpOMhsAa4SsB97DBwi4KuFtm/3g50D3KfBnPq2Me3pqzK6Nj
         A6uzXoeDxi78TEGVnr8Mf1BCHMxIY2rCquUc3d/XtQ0EyOLtdc+vsZ5TlbDHWfUDT1/R
         ED+oln5/sDeljeYngK/5F90RiyMHCRrO1Iq62FPjHPcembK2+BxCRJNlEr56rLRpLy/K
         Rqjg==
X-Received: by 10.180.76.45 with SMTP id h13mr18690739wiw.51.1425152035192;
        Sat, 28 Feb 2015 11:33:55 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id dm6sm8228236wib.22.2015.02.28.11.33.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 11:33:54 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id EF8C963456; Sat, 28 Feb 2015 22:33:47 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 5/5] Staging: lustre: lustre: ldlm: Concatenate strings into single string
Date: Sat, 28 Feb 2015 22:33:47 +0300
Message-Id: <1425152027-31192-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>

This patch concatenate two consecutive strings into one, addressing checkpatch.pl warning:
 "Consecutive strings are generally better as a single string"

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index bfdb2b3..0d65d80 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -688,8 +688,8 @@ static int lprocfs_pool_state_seq_show(struct seq_file *m, void *unused)
 			      "  GP:  %d\n",
 			      grant_step, grant_plan);
 	}
-	seq_printf(m, "  GR:  %d\n" "  CR:  %d\n" "  GS:  %d\n"
-		      "  G:   %d\n" "  L:   %d\n",
+	seq_printf(m, "  GR:  %d\n  CR:  %d\n  GS:  %d\n"
+		      "  G:   %d\n  L:   %d\n",
 		      grant_rate, cancel_rate, grant_speed,
 		      granted, limit);
 
-- 
1.9.1


