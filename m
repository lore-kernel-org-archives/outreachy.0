X-GM-THRID: 4598862446592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7b48250ea3e3ea63
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.41 with SMTP id x9mr3352668lax.10.1425252228280;
        Sun, 01 Mar 2015 15:23:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.8 with SMTP id j8ls397521lae.7.gmail; Sun, 01 Mar 2015
 15:23:47 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr3350184lbb.14.1425252227756;
        Sun, 01 Mar 2015 15:23:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id el6si560350wib.2.2015.03.01.15.23.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 15:23:47 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id a1so30215139wgh.12
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 15:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mYd0R/dsBzqOKI6FkOqjqW11LbwppLggDXBF3oYxybQ=;
        b=og2q32TSN0sBRT80KY3J6Osi987ZWPRpmGE78K9PPCOvIi7fjNfgzy0kBV+rBW3nVO
         qV8m4s3qNs+gXG8k1l2YQRUY4MtSWmpMEFr+jvNSyohK2daGmRBLks6faVFNK3ORDCgr
         zvFOBUZP8ykL9QYcjACMDX0QAMP8JkZSzXHlcT+mJjcaABuzWxKFWqJsO1qbQQDkhlOH
         XudnjhxexS8hKlprVH/WyIYmyHOYyhFvX4J7JoCqEGPc96ydTnV6gj7E8aTRgeT1ebJu
         xQa6TsYfwBL1LzRqmsP/6xGjqZTmCov+2klRNrQc/NrDktjvHqKyBHa49YKAs5rEApGI
         r/SQ==
X-Received: by 10.180.39.203 with SMTP id r11mr30793051wik.67.1425252227665;
        Sun, 01 Mar 2015 15:23:47 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id n6sm16735152wjy.8.2015.03.01.15.23.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 15:23:46 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 2611163365; Mon,  2 Mar 2015 02:23:46 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [RESEND PATCH] Staging: lustre: Remove unnecessary else after return
Date: Mon,  2 Mar 2015 02:23:44 +0300
Message-Id: <1425252224-11686-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20150301230850.GB10671@kroah.com>
References: <20150301230850.GB10671@kroah.com>

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


