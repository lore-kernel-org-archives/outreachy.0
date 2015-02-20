X-GM-THRID: 1600363954176
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f7f767888a359c0c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.50.106 with SMTP id b10mr1561455lbo.8.1424469111483;
        Fri, 20 Feb 2015 13:51:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.132 with SMTP id ey4ls183206wid.48.gmail; Fri, 20 Feb
 2015 13:51:51 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr113367wib.5.1424469111236;
        Fri, 20 Feb 2015 13:51:51 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id i7si197025wif.0.2015.02.20.13.51.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:51:51 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw55 with SMTP id w55so8008141wes.4
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hLrBq5ltZgeP6XMHzow1NFY+ieyJ2pF++jm1zIiZfGQ=;
        b=Be+e1ug8S9tl9uCxRfBODt+42H0qrFwophXTZ9fvRVKiWGDrnYj3imZLsGE4Lo4Yf9
         r0IzwWUbg1FL8ZOMGbXoHGZPcg1FmBcAqJXJyJDsd1yvcg+Q+Ja07YfqdjGsirAquFPk
         NsSbhsScEe+FGUUr9uA9obPJxBDTAaSIb9e2/Dh8AjAwj5/5CmjSFa4ei0DCbbYGHda1
         LDrX41oj9RikRLCOBCEGszE8QiyJgLCiFJXDLP5YcnJyps/DxvCYpwXPc8njQOGRZOFm
         pYK6T8N0s9S0Ylth4+wKLykGeSPoAsiPMKFz3at4s0nmfYJfIfMIOZGTRJEhnD0uoreo
         5gGQ==
X-Received: by 10.180.189.203 with SMTP id gk11mr274370wic.32.1424469111149;
        Fri, 20 Feb 2015 13:51:51 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id fs8sm4173556wib.8.2015.02.20.13.51.49
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 13:51:50 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/3] Staging: lustre: Add blank line after variable declarations
Date: Fri, 20 Feb 2015 23:51:37 +0200
Message-Id: <1424469098-11379-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424469098-11379-1-git-send-email-aybuke.147@gmail.com>
References: <1424469098-11379-1-git-send-email-aybuke.147@gmail.com>

This patch fixes "Missing a blank line after declarations" checkpatch.pl
warning in dir.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dir.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index cb632a1..2b74824 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -1518,6 +1518,7 @@ out_rmdir:
 			lump = (struct lov_user_md *)arg;
 		} else {
 			struct lov_user_mds_data *lmdp;
+
 			lmdp = (struct lov_user_mds_data *)arg;
 			lump = &lmdp->lmd_lmm;
 		}
-- 
1.9.1


