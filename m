X-GM-THRID: 5221884362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3fa01965e3a4916
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.98 with SMTP id zn2mr3295605lbb.6.1425253985439;
        Sun, 01 Mar 2015 15:53:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.75.241 with SMTP id f17ls320301wiw.26.canary; Sun, 01 Mar
 2015 15:53:05 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr1765015wib.5.1425253985145;
        Sun, 01 Mar 2015 15:53:05 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id v5si67824wif.3.2015.03.01.15.53.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 15:53:05 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesq59 with SMTP id q59so30248582wes.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 15:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3Hdx+pesyrFDP6JUogYaqCh3cZono0eF9ocw+3xDQsI=;
        b=NMK7/6bz32OzsR/OJrYPtQw3wJBCt7pCNe10/NQLCjcDr91hTCS+mfB4UywDoYiBgQ
         G+4LCvuZ+6A/ofw1v5VimQT6//At7CkCDnnwBx6I/w9cICVFwbLZYJlwitO6rYvmHCjA
         5cSLXSgXefIStKS1lgjCbNa/kOoqRNGGG+YLWhcfb+flE6Y//3VZ55wLMPuq9UcH5cnz
         EqH0Ginv3jpI35ZgPvArGvkc1oXn+8ES92kdjaQV5LeYbjrH2cQU1WnZsz5k/eCjr752
         JYjyecoYiCA83GaBWz5sqNb2BWnGG07W3/U5ExF/Ii7oRVIaD4XHRTmyuiEhY+0O1oSS
         y1RQ==
X-Received: by 10.180.108.177 with SMTP id hl17mr30150755wib.35.1425253985060;
        Sun, 01 Mar 2015 15:53:05 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id gm2sm13639590wib.5.2015.03.01.15.53.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 15:53:04 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id D648B63365; Mon,  2 Mar 2015 02:53:01 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [RESEND PATCH] Staging: lustre: Fix externs should be avoided in .c
Date: Mon,  2 Mar 2015 02:53:01 +0300
Message-Id: <1425253981-14265-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch moves extern declaration to ldlm_internal.h.
Remove prototype from ldlm_lockd.c and ldlm_lock.c.
Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h | 4 ++++
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 2 --
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    | 2 --
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
index 17271b0..5bf9488 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
@@ -177,6 +177,10 @@ int ldlm_bl_to_thread_list(struct ldlm_namespace *ns,
 void ldlm_handle_bl_callback(struct ldlm_namespace *ns,
 			     struct ldlm_lock_desc *ld, struct ldlm_lock *lock);
 
+extern struct kmem_cache *ldlm_resource_slab;
+
+/* ldlm_lockd.c & ldlm_lock.c */
+extern struct kmem_cache *ldlm_lock_slab;
 
 /* ldlm_extent.c */
 void ldlm_extent_add_lock(struct ldlm_resource *res, struct ldlm_lock *lock);
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index d7fa934..84b111e 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -151,8 +151,6 @@ char *ldlm_it2str(int it)
 }
 EXPORT_SYMBOL(ldlm_it2str);
 
-extern struct kmem_cache *ldlm_lock_slab;
-
 
 void ldlm_register_intent(struct ldlm_namespace *ns, ldlm_res_policy arg)
 {
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


