X-GM-THRID: 5221884362752
X-Received: by 10.112.214.234 with SMTP id od10mr2877624lbc.3.1425169596559;
        Sat, 28 Feb 2015 16:26:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.140 with SMTP id ay12ls344912lab.2.gmail; Sat, 28 Feb
 2015 16:26:36 -0800 (PST)
X-Received: by 10.112.224.12 with SMTP id qy12mr1854278lbc.10.1425169596079;
        Sat, 28 Feb 2015 16:26:36 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id ev8si378232wib.3.2015.02.28.16.26.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:26:36 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwl15 with SMTP id l15so7551143wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 16:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pQizMmE7lFyir4PMTXACdcWdeMgvvt8Z/XM92BDhmvg=;
        b=G2HefbHBnrayK5uvudZsvp0Rj5rTWRH6kCv3MLa8U1+iG+5Ok7PXXKmwYhAM6NSq3M
         1JFut3QAFLUX6INU42TFGf7kRWeu1El4alSO1iCzgbImpnZcQSHcdfVDgVHMytzGR6vY
         fFe3V6n1sYYIFr9QxBrr8wOqwedkv1SlvIiHv91VyxY/Ct7BsJTlekI7/17EDkmJOriu
         +iubM3J5CsVf9mT1yuXvQVjyRmFfO3pVnFP3iF+rtyapVQHuF1yFX3JgBoaKmB15NoOz
         sjWBq9WbtWfT6R0Vi3pPVQsILVEnU7jYExfKyrw0YXavVCNypCvO0hqNq3753Nb+0Zu6
         El/w==
X-Received: by 10.180.219.102 with SMTP id pn6mr20769042wic.50.1425169595959;
        Sat, 28 Feb 2015 16:26:35 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id p1sm9094641wib.23.2015.02.28.16.26.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:26:35 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 009D963424; Sun,  1 Mar 2015 03:26:33 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 5/5] Staging: lustre: Concatenate strings into single string
Date: Sun,  1 Mar 2015 03:26:33 +0300
Message-Id: <1425169593-20287-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>

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


