X-GM-THRID: 5221884362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3fa01965e3a4916
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.41 with SMTP id x9mr2875878lax.10.1425161058982;
        Sat, 28 Feb 2015 14:04:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.67 with SMTP id l3ls293643lae.93.gmail; Sat, 28 Feb
 2015 14:04:18 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr2933510lbb.13.1425161058555;
        Sat, 28 Feb 2015 14:04:18 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id o3si368424wib.2.2015.02.28.14.04.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 14:04:18 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghn12 with SMTP id n12so26711591wgh.1
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 14:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pQizMmE7lFyir4PMTXACdcWdeMgvvt8Z/XM92BDhmvg=;
        b=HgV4FTFSL5KA2ov3FILdilwi9hTJZIekwzceAXPLBEVY8CNX5rAMKW+ks2BrNYpJnv
         BRLH2I/fwuAOtv+6UkAF96mN5/pRJC4cfOCHscAZerYriwVxDdfhPDs6eyK3NYe6NkGC
         ZzrM7X+QEJSlfFvdwHyPC94qy2GP3RTX0iMzu3Cspo3GkHmoKhH/ym31wgf3pSj/xdQW
         3kLs53ka4iB5DgzN7TRvF5UFUAt3ZN7LkBgO6PNhPwvzwiWqVt37F/EKUUrjUIgQ58CU
         wVQBQGCksl0L6k/xjrOo6+pn7rlf8Gm2Ji/3YfpQjmoOS4uZWylUsZ9GLlbQIFmUpD6g
         1iDQ==
X-Received: by 10.194.21.137 with SMTP id v9mr41615692wje.140.1425161058442;
        Sat, 28 Feb 2015 14:04:18 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id jy7sm8678237wid.22.2015.02.28.14.04.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 14:04:17 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 7807863424; Sun,  1 Mar 2015 01:04:15 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v2 5/5] Staging: lustre: Concatenate strings into single string
Date: Sun,  1 Mar 2015 01:04:14 +0300
Message-Id: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425158851-8053-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425158851-8053-1-git-send-email-hamohammed.sa@gmail.com>

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


