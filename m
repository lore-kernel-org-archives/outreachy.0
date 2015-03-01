X-GM-THRID: 4799843008512
X-Received: by 10.112.181.198 with SMTP id dy6mr3054055lbc.22.1425185988202;
        Sat, 28 Feb 2015 20:59:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls326876lac.92.gmail; Sat, 28 Feb
 2015 20:59:47 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr2992348lai.4.1425185987507;
        Sat, 28 Feb 2015 20:59:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id l8si436818wia.0.2015.02.28.20.59.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 20:59:47 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id m14so27329885wev.8
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 20:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mYd0R/dsBzqOKI6FkOqjqW11LbwppLggDXBF3oYxybQ=;
        b=yEhlsWmz8t25WNW6WnTApDXhrylEV/rdpR1Zld97B5O/3CvbgzqJgdLXadt+A0HTLW
         X4+gqBUUmNkPh94c4JwPu0Dx/Fn4aYk73bBsgXL21A7/6DcFITjy+NjNJCcI8rROCFCA
         yDUlq4JkQKkyqIp+qO0U0b3c9N8xdALYdtVNqk6tZoMsLsshdrAxvCQyC3XmhhrKWA6h
         xS3IQR4saU4QRDs8r+kesbvHxB7gPG8rKTII5Jn4ll7WSw+KraiA0dOlcXRhwTw03w7w
         0bnQXEzQq0FqCnAlV5mWeRO1fZOFBjWueDzng4OXA2g/Hy6KmbGp/gIsIx+hwzN++cis
         +hsQ==
X-Received: by 10.195.12.167 with SMTP id er7mr45690404wjd.54.1425185987421;
        Sat, 28 Feb 2015 20:59:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([5.41.68.106])
        by mx.google.com with ESMTPSA id ch6sm13036824wjc.3.2015.02.28.20.59.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 20:59:46 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 5404A632A5; Sun,  1 Mar 2015 07:59:32 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: lustre: Remove unnecessary else after return
Date: Sun,  1 Mar 2015 07:59:31 +0300
Message-Id: <1425185971-22782-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fix else is not usefull after break or return.
Moves declaration to top addressing compiler warning:
"ISO C90 forbids mixed declarations and code"
Rename similar named variable in the function.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c | 28 ++++++++++++-------------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
index cd15445..ad68e66 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
@@ -444,28 +444,26 @@ static int ldlm_bl_to_thread(struct ldlm_namespace *ns,
 			     struct list_head *cancels, int count,
 			     ldlm_cancel_flags_t cancel_flags)
 {
+	struct ldlm_bl_work_item blwi, *pblwi;
+
 	if (cancels && count == 0)
 		return 0;
 
 	if (cancel_flags & LCF_ASYNC) {
-		struct ldlm_bl_work_item *blwi;
-
-		OBD_ALLOC(blwi, sizeof(*blwi));
-		if (blwi == NULL)
+		OBD_ALLOC(pblwi, sizeof(*pblwi));
+		if (pblwi == NULL)
 			return -ENOMEM;
-		init_blwi(blwi, ns, ld, cancels, count, lock, cancel_flags);
+		init_blwi(pblwi, ns, ld, cancels, count, lock, cancel_flags);
 
-		return __ldlm_bl_to_thread(blwi, cancel_flags);
-	} else {
-		/* if it is synchronous call do minimum mem alloc, as it could
-		 * be triggered from kernel shrinker
-		 */
-		struct ldlm_bl_work_item blwi;
-
-		memset(&blwi, 0, sizeof(blwi));
-		init_blwi(&blwi, ns, ld, cancels, count, lock, cancel_flags);
-		return __ldlm_bl_to_thread(&blwi, cancel_flags);
+		return __ldlm_bl_to_thread(pblwi, cancel_flags);
 	}
+	/* if it is synchronous call do minimum mem alloc, as it could
+	* be triggered from kernel shrinker
+	*/
+
+	memset(&blwi, 0, sizeof(blwi));
+	init_blwi(&blwi, ns, ld, cancels, count, lock, cancel_flags);
+	return __ldlm_bl_to_thread(&blwi, cancel_flags);
 }
 
 
-- 
1.9.1


