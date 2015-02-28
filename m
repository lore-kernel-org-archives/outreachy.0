X-GM-THRID: 5221884362752
X-Received: by 10.180.11.34 with SMTP id n2mr1276421wib.2.1425160799925;
        Sat, 28 Feb 2015 13:59:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.84 with SMTP id be20ls330700lab.89.gmail; Sat, 28 Feb
 2015 13:59:59 -0800 (PST)
X-Received: by 10.112.16.102 with SMTP id f6mr329673lbd.19.1425160799333;
        Sat, 28 Feb 2015 13:59:59 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id el6si374680wib.2.2015.02.28.13.59.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 13:59:59 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id y19so26554420wgg.13
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 13:59:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=p9xp1XgZJoCCbUcVUQdcaP4u4VaVKu59QRw8t52LtWQ=;
        b=LRK56c/RhWxb/lp0ooqR+QBemY3pdCtVaCp5sshtBGEy9u7ZBjUUu0TBUaHCgGkGik
         IUhGRl1eDnU7ueMQSlABFTSGDXnR2yfR+/jzLQdErsPmKqgoh9QEueq0JdVa12nBC9wl
         Y/dX6q80w85l33qtR+Kr/rcBMoiC6BENGthvEwbx62cCRX12BGJaq/7jwucI6Nd0g0ES
         /g7H6cXacZlgzOrIKfg9qPqQdygV554wQ98BGBHDszFKdnh/yqUIqx9WjvXFNGSFB5mg
         dVGvcpKAz4HEe66jcA2zSptnblKQp59Z7aLRa6/azYzkFWjhwJpautcHfQeXRsxt0x/O
         PG/w==
X-Received: by 10.180.104.34 with SMTP id gb2mr20216191wib.7.1425160799222;
        Sat, 28 Feb 2015 13:59:59 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id q10sm11830722wjr.41.2015.02.28.13.59.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 13:59:58 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 5186C63424; Sun,  1 Mar 2015 00:59:55 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v2 2/5] Staging: lustre: Move trailing statement to next line
Date: Sun,  1 Mar 2015 00:59:53 +0300
Message-Id: <1425160793-14167-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425158851-8053-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425158851-8053-1-git-send-email-hamohammed.sa@gmail.com>

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


