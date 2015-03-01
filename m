X-GM-THRID: 5221884362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3fa01965e3a4916
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr2910909wjb.1.1425170054936;
        Sat, 28 Feb 2015 16:34:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.170 with SMTP id fp10ls282328wib.13.gmail; Sat, 28 Feb
 2015 16:34:14 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr1326301wic.4.1425170054680;
        Sat, 28 Feb 2015 16:34:14 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id o3si382423wib.2.2015.02.28.16.34.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:34:14 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wivr20 with SMTP id r20so7586802wiv.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 16:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5W2gxm8sE6r+DfTPUKC5XDT/SejeqNJEvl/4Dz553EQ=;
        b=NFbQ7RMLg/AHGJt2w7wI84Ww5bTfm28U2rmbnlUKHTOc11j631GFY5xHirxo8sjr7m
         pH5hf1wnFqj96dTuPMG5RJnvYUsbsEtJpqwDku13/U+vHywvyvE/DV24VVyt2/Q+Da1I
         0aOOxgRybL16EMQRbq1eY0LQyVbazC7EifcygzSdzpGk2MNIm5bjakqtVuow9ATo7cj2
         BkDbaRbGdQZBd/QZRfJsADk3flOnZO2+lyfvF4/v02dZIJsBtUSQMJe0CeMyX24S4UaA
         uMXu/KHs7nLJSabWdzjkUxetsIs9p9YiKyrsIsOobfz/VjMIDzApYztuOmXPHsNczX7D
         h3bw==
X-Received: by 10.194.48.74 with SMTP id j10mr44289843wjn.38.1425170054590;
        Sat, 28 Feb 2015 16:34:14 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id j5sm9154984wie.3.2015.02.28.16.34.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:34:13 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 46CDB63424; Sun,  1 Mar 2015 03:34:12 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3] Staging: lustre: Fix externs should be avoided in .c
Date: Sun,  1 Mar 2015 03:34:11 +0300
Message-Id: <1425170051-22180-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch moves extern declaration to ldlm_internal.h.
Remove prototype from ldlm_lockd.c and ldlm_lock.c.
Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v3: Edit subject line.
v2: Remove same extern frm ldlm_lock.c

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


