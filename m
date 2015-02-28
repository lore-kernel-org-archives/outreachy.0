X-GM-THRID: 5221884362752
X-Received: by 10.180.39.164 with SMTP id q4mr1273310wik.5.1425160134553;
        Sat, 28 Feb 2015 13:48:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.140 with SMTP id jo12ls305335lab.19.gmail; Sat, 28 Feb
 2015 13:48:53 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr2865559lam.9.1425160133018;
        Sat, 28 Feb 2015 13:48:53 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id el6si373058wib.2.2015.02.28.13.48.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 13:48:52 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22f.google.com with SMTP id l2so26628469wgh.9
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 13:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=G/OvhnycacYoe1GnRYaK0+5DvaDshHaJuGOaKYgDikQ=;
        b=rbEbaoLMhmOAHk0bY8Sy5KwQiipJiLKr6h3Ha0ULkHFm+VCICFPzTWCJ9zhwrUcVyD
         mC1qYxxKyIMVmOf3+pP8iJ4GroIEKPcfubsjxhAmT6hEz3EdzzU+9kuwqUqk3zTxs++d
         CWW0QaUC019cBDaf1VQCQDczt/oxDMvDedEVKmQiEjdO/uF3QQjBNZKGiyPEtEnLbMWg
         ISssXw1dUwbScPV43xj0LeN+jTNILT7rm4pN186gswpayreGndH1cPZc7WdNtm8H7/n/
         wXxtvxXTMYEVJkRivBRRstGKy0xfijoEH8LfrGIY+8rIOmXKxwWUihE1htfRMQkPwFYl
         QDmg==
X-Received: by 10.180.98.131 with SMTP id ei3mr20118082wib.62.1425160132918;
        Sat, 28 Feb 2015 13:48:52 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id dx11sm11830306wjb.23.2015.02.28.13.48.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 13:48:52 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 4624B63424; Sun,  1 Mar 2015 00:48:50 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v2 3/5] Staging: lustre: Fix externs should be avoided in .c
Date: Sun,  1 Mar 2015 00:48:48 +0300
Message-Id: <1425160128-4601-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425158851-8053-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425158851-8053-1-git-send-email-hamohammed.sa@gmail.com>

This patch moves extern declaration to ldlm_internal.h.
Remove prototype from ldlm_pool.c.
Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h | 2 ++
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
index 5bf9488..a694f01 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
@@ -208,6 +208,8 @@ struct ldlm_state {
 	struct ldlm_bl_pool *ldlm_bl_pool;
 };
 
+/* l_lock.c */
+extern struct proc_dir_entry *ldlm_ns_proc_dir;
 /* interval tree, for LDLM_EXTENT. */
 extern struct kmem_cache *ldlm_interval_slab; /* slab cache for ldlm_interval */
 extern void ldlm_interval_attach(struct ldlm_interval *n, struct ldlm_lock *l);
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index 3af2687..54e2478 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -141,8 +141,6 @@
  */
 #define LDLM_POOL_SLV_SHIFT (10)
 
-extern struct proc_dir_entry *ldlm_ns_proc_dir;
-
 static inline __u64 dru(__u64 val, __u32 shift, int round_up)
 {
 	return (val + (round_up ? (1 << shift) - 1 : 0)) >> shift;
-- 
1.9.1


