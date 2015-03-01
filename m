X-GM-THRID: 5221884362752
X-Received: by 10.180.89.194 with SMTP id bq2mr1314426wib.4.1425169291069;
        Sat, 28 Feb 2015 16:21:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.4 with SMTP id f4ls224211lah.18.gmail; Sat, 28 Feb 2015
 16:21:30 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr2977201lbc.22.1425169290609;
        Sat, 28 Feb 2015 16:21:30 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id ev8si377852wib.3.2015.02.28.16.21.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:21:30 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x229.google.com with SMTP id w55so26833403wes.4
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 16:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=p9xp1XgZJoCCbUcVUQdcaP4u4VaVKu59QRw8t52LtWQ=;
        b=qWyw7mjKt/IxS5D6eJ8Ohfa1DkYdK7FJB1VfTqNAhV5tJwpq0GV73RwLmiLi3H8vro
         ULSPJSgLoTC3mQUptgL1/e2Peh1yplCCMjzl5U8wZplBGdbB+RbYUBU3adMWvBgx/uVP
         wbaUEithyZInJNy7ODwL/Swi+8qsAHV0lnhGzplKHLwNzw2VQFOQ2S5S1aEei+cQvXkY
         LHik6u5V/skw0Oz7aVaf4MBAF/XoZxSfkmUOAUbDQyIa4LSDQ18Ni6tc8xEFhE+O6/JQ
         0urM9v3DMvRZqv3Acf8tMo+XIx+eUcJRSbnuYRM3cB/as9ZCjVHDfm+axuIo/5XQuvIy
         wVsg==
X-Received: by 10.180.198.19 with SMTP id iy19mr21198785wic.8.1425169290508;
        Sat, 28 Feb 2015 16:21:30 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id vq9sm12286644wjc.6.2015.02.28.16.21.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:21:29 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 2DAB663424; Sun,  1 Mar 2015 03:21:28 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 2/5] Staging: lustre: Move trailing statement to next line
Date: Sun,  1 Mar 2015 03:21:26 +0300
Message-Id: <1425169286-20128-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>

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


