X-GM-THRID: 4924186296320
X-Received: by 10.180.8.67 with SMTP id p3mr1002717wia.7.1425113784604;
        Sat, 28 Feb 2015 00:56:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.36 with SMTP id n4ls218968laj.27.gmail; Sat, 28 Feb
 2015 00:56:24 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr2566315lbf.21.1425113784138;
        Sat, 28 Feb 2015 00:56:24 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id el6si265058wib.2.2015.02.28.00.56.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 00:56:24 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widex7 with SMTP id ex7so4667583wid.1
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 00:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3Hdx+pesyrFDP6JUogYaqCh3cZono0eF9ocw+3xDQsI=;
        b=lO8i1fkTq4EO8Eluqz3M1rUaBAQyqZvFU9vTH9pOWtB/dtUN8YbeWmjWpnnjAia1bi
         FO3HSdELxo5P1rMDaprL1qE11tb5b5rk+NAwleJ9Ps0EfTrilB8z0G6pAIdPWfA4DPR2
         nvJJiV8pIHK9m8zrvKwvl+E7J3QaFhj5JztwkqCOggWqFFwfSzMADcMH9I/6sv++NE/e
         SF0Mnj3dkpTUU+rIr0jab/HSVgY1UMw6mXOQH7TpBC3c1C9O5mqkJZu2OccCexzpzdz8
         jxF3zCIenbpXSP//TD0eaaQIaW9ufT6mxyuay4tFhhjlApQwxRNsZFHnc21Zt9aiySPR
         8JAA==
X-Received: by 10.194.97.139 with SMTP id ea11mr9608563wjb.108.1425113784038;
        Sat, 28 Feb 2015 00:56:24 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id t9sm6178140wia.15.2015.02.28.00.56.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 00:56:23 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 2A18760CA0; Sat, 28 Feb 2015 11:56:20 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v2] Staging: lustre: lustre: ldlm: Fix externs should be avoided in .c
Date: Sat, 28 Feb 2015 11:56:18 +0300
Message-Id: <1425113778-17230-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425075568-26188-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425075568-26188-1-git-send-email-hamohammed.sa@gmail.com>

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


