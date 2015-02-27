X-GM-THRID: 4460872990720
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,433d6d2c62e6f72c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.234 with SMTP id db10mr2007730wjc.2.1425038660516;
        Fri, 27 Feb 2015 04:04:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.6 with SMTP id v6ls162018laa.13.gmail; Fri, 27 Feb 2015
 04:04:20 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr2011448laj.6.1425038660071;
        Fri, 27 Feb 2015 04:04:20 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x242.google.com (mail-wg0-x242.google.com. [2a00:1450:400c:c00::242])
        by gmr-mx.google.com with ESMTPS id o3si95564wib.2.2015.02.27.04.04.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:04:20 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::242 as permitted sender) client-ip=2a00:1450:400c:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::242 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x242.google.com with SMTP id b13so4887274wgh.2
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=4q0HyB81cjPzY5ijl2crbfgI+bXwdx4Bs5WgGNSegBo=;
        b=L9J2UiyGIusZv3StyZZYg4JcC7CR/AQchiiJSVTX3JQbbv2WblrzBS0tLaTcR2O9fP
         gVEMq3e78YVR/vfwqZ84R5JI6oZdHWT+5xwY2lmY/ss0yjmf7Q3YPfQnxnSbO53QLVBA
         SdVJ2MmAlh2nn9T/an4w/Vtw9QUWTLgeIyIBk3QlL9EtqiFhp0TZWWoas9XJ9yzfX0/H
         8eXuQwd4WWoXOpwtAr96pitYdkJ7/QNhGPCVObA/YuXWz386Nzn6tR02nFdAI+CnQisl
         JN9SdiLBFF2g2awEYnnWDSXbKpCZPsEZiX/wi/t2bSyUpWu+WY/B5as2HU1L3pXhZNUk
         bgiw==
X-Received: by 10.180.83.129 with SMTP id q1mr5842417wiy.46.1425038659978;
        Fri, 27 Feb 2015 04:04:19 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id 18sm5627947wjr.46.2015.02.27.04.04.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 04:04:19 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lustre: osc: Delete space after that '!'
Date: Fri, 27 Feb 2015 14:04:12 +0200
Message-Id: <1425038652-14443-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Space prohibited after that '!'. That's why delete space after '!'

This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_lock.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_lock.c b/drivers/staging/lustre/lustre/osc/osc_lock.c
index a7f08bc..4456557 100644
--- a/drivers/staging/lustre/lustre/osc/osc_lock.c
+++ b/drivers/staging/lustre/lustre/osc/osc_lock.c
@@ -100,14 +100,14 @@ static int osc_lock_invariant(struct osc_lock *ols)
 	/*
 	 * If all the following "ergo"s are true, return 1, otherwise 0
 	 */
-	if (! ergo(olock != NULL, handle_used))
+	if (!ergo(olock != NULL, handle_used))
 		return 0;
 
-	if (! ergo(olock != NULL,
+	if (!ergo(olock != NULL,
 		   olock->l_handle.h_cookie == ols->ols_handle.cookie))
 		return 0;
 
-	if (! ergo(handle_used,
+	if (!ergo(handle_used,
 		   ergo(lock != NULL && olock != NULL, lock == olock) &&
 		   ergo(lock == NULL, olock == NULL)))
 		return 0;
@@ -115,18 +115,18 @@ static int osc_lock_invariant(struct osc_lock *ols)
 	 * Check that ->ols_handle and ->ols_lock are consistent, but
 	 * take into account that they are set at the different time.
 	 */
-	if (! ergo(ols->ols_state == OLS_CANCELLED,
+	if (!ergo(ols->ols_state == OLS_CANCELLED,
 		   olock == NULL && !handle_used))
 		return 0;
 	/*
 	 * DLM lock is destroyed only after we have seen cancellation
 	 * ast.
 	 */
-	if (! ergo(olock != NULL && ols->ols_state < OLS_CANCELLED,
+	if (!ergo(olock != NULL && ols->ols_state < OLS_CANCELLED,
 		   ((olock->l_flags & LDLM_FL_DESTROYED) == 0)))
 		return 0;
 
-	if (! ergo(ols->ols_state == OLS_GRANTED,
+	if (!ergo(ols->ols_state == OLS_GRANTED,
 		   olock != NULL &&
 		   olock->l_req_mode == olock->l_granted_mode &&
 		   ols->ols_hold))
-- 
1.9.1


