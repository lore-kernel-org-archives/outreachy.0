X-GM-THRID: 5152931053568
X-Received: by 10.152.28.137 with SMTP id b9mr2828106lah.8.1425151218657;
        Sat, 28 Feb 2015 11:20:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.139 with SMTP id l11ls29278wiv.33.gmail; Sat, 28 Feb
 2015 11:20:18 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr1306111wix.0.1425151218373;
        Sat, 28 Feb 2015 11:20:18 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id by11si377340wib.1.2015.02.28.11.20.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 11:20:18 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id h11so6800468wiw.1
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 11:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=p9xp1XgZJoCCbUcVUQdcaP4u4VaVKu59QRw8t52LtWQ=;
        b=viL3g02oXPqoZXRfFXFDOk8bN8/D82ulssiIdj6RadMgcXCJ35f7MSk/LSQrBO46VZ
         9LASLQE2keivrxnHOdS1VeQGmXypjoVfihyDGsA3yocYx7hIgNWstg5wxzLws/v+grwu
         nau+ZIzm5svBLYH9ur8Zo7Kwu8b/Bq2gA4En/tJcTui/lLs0grh+uGt2OCns6zZ54mke
         9nPUAR6fvsfZ+vo2uPvFCayyGqgThPxNEYmPbPe9PtYJz0I3CKwoxjQQkwYzwVzO/RVu
         5doEJmZvHd69qxtegm9Rr4XwakkNCf7YSub+Fv2uMKtkBkmovmf3ciMwGXIOoIlNmMHA
         ZDzg==
X-Received: by 10.180.19.9 with SMTP id a9mr19397921wie.85.1425151218292;
        Sat, 28 Feb 2015 11:20:18 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id l4sm8204523wiw.9.2015.02.28.11.20.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 11:20:17 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 7CE7B63456; Sat, 28 Feb 2015 22:20:15 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/5] Staging: lustre: lustre: idlm: Move trailing statement to next line
Date: Sat, 28 Feb 2015 22:20:14 +0300
Message-Id: <1425151214-30941-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>

This patch Fix both "trailing statement should be on next line"
and space before semicolon errors addressed by checkpatch.pl

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
index a89eeba..fd9b059 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
@@ -151,7 +151,8 @@ static inline int lock_mode_to_index(ldlm_mode_t mode)
 
 	LASSERT(mode != 0);
 	LASSERT(IS_PO2(mode));
-	for (index = -1; mode; index++, mode >>= 1) ;
+	for (index = -1; mode; index++)
+		mode >>= 1;
 	LASSERT(index < LCK_MODE_NUM);
 	return index;
 }
-- 
1.9.1


