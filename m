X-GM-THRID: 4924186296320
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7c2752f3e2f1468d,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.35.135 with SMTP id h7mr2379415lbj.23.1425075685995;
        Fri, 27 Feb 2015 14:21:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.34 with SMTP id cz2ls203920wib.46.canary; Fri, 27 Feb
 2015 14:21:25 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr2382576wjc.7.1425075685660;
        Fri, 27 Feb 2015 14:21:25 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id el6si205314wib.2.2015.02.27.14.21.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 14:21:25 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id r20so3382717wiv.2
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 14:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5q2Gnqau7mB/PZT5y+i5mJOGsjydl3CWhpVm43OhS7Y=;
        b=sWcXBQc7HYXxw0z2jZqw/o21Ks7cRG8+xe/khx+b91U0ESJ/kQf1PTO2L1bc/IgJU/
         tNkKNNCqjVm89Puj0HoqYqGsk75m6WdjoKwB12HPkSKTWn9rSPwsVdzO8RuKBHELzDPg
         PtOZWRRtV3Z7vPunK54y2LPobh6RGqqaXJvY3/hAYoteqdtTLF+CC1zBnvg5fMmD0bWI
         /OoDwFWoWbKgzj1uAwmlWwd5KWvMnNEMwCJd87sB4pmQbSiRDqG9RqdWGlxS8nIo5qzy
         QALenC224tq3eoMkqxJc+AQu35AUaGDcNUaz2lmr9wTM8mcEjDkxsxRnJIaUl/Z2UVhC
         0t6g==
X-Received: by 10.194.201.103 with SMTP id jz7mr33433841wjc.14.1425075685576;
        Fri, 27 Feb 2015 14:21:25 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id n6sm7795894wjy.8.2015.02.27.14.21.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 14:21:24 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 08A8160CA0; Sat, 28 Feb 2015 01:21:21 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: lustre: lustre: ldlm: Fix externs should be avoided in .c
Date: Sat, 28 Feb 2015 01:19:28 +0300
Message-Id: <1425075568-26188-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch moves extern declaration from ldlm_lockd.c to ldlm_internal.h. Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h | 3 +++
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
index 17271b0..1aeac77 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
@@ -177,6 +177,9 @@ int ldlm_bl_to_thread_list(struct ldlm_namespace *ns,
 void ldlm_handle_bl_callback(struct ldlm_namespace *ns,
 			     struct ldlm_lock_desc *ld, struct ldlm_lock *lock);
 
+extern struct kmem_cache *ldlm_resource_slab;
+
+extern struct kmem_cache *ldlm_lock_slab;
 
 /* ldlm_extent.c */
 void ldlm_extent_add_lock(struct ldlm_resource *res, struct ldlm_lock *lock);
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
index 98fbd3f..e0a8157 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
@@ -55,8 +55,6 @@ static char *ldlm_cpts;
 module_param(ldlm_cpts, charp, 0444);
 MODULE_PARM_DESC(ldlm_cpts, "CPU partitions ldlm threads should run on");
 
-extern struct kmem_cache *ldlm_resource_slab;
-extern struct kmem_cache *ldlm_lock_slab;
 static struct mutex	ldlm_ref_mutex;
 static int ldlm_refcount;
 
-- 
1.9.1


