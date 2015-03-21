X-GM-THRID: 9403654733824
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35a1d33afce4effe
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.41.131 with SMTP id f3mr14336923lbl.20.1426954562966;
        Sat, 21 Mar 2015 09:16:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.131 with SMTP id eq3ls476186wib.24.gmail; Sat, 21 Mar
 2015 09:16:02 -0700 (PDT)
X-Received: by 10.181.12.74 with SMTP id eo10mr584106wid.2.1426954562449;
        Sat, 21 Mar 2015 09:16:02 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id gj20si136596wic.1.2015.03.21.09.16.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 09:16:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id gn9so16627756wib.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 09:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=bUM9Z+6kgazi1SVtWUlf2ZFYT/F3Du3gxfM3870IaAQ=;
        b=oQYZdIa2WsRh+yBntGi5SzpTiCste7+CkgesvhFupkTkK+BhUrDXgV7abz7TFM9WhJ
         QOUOLtTmTnuOyYE6rezcGca++cVckkyQu8fPI9GOwq3G0+3i1PEOzKnahdx1tWDVtPv6
         feIOexFIx/95zacM3rVCE5Lv67NKUCDp4H45PbVSlVSUvPcESoHvkZO1pheFfkPG3CaF
         XkYsZ1DtfuQirxSjogB/nR9MvOQI35cl1acnKez/Y4bWvzj0Dualh29miOZr7Fv8gkWq
         QiiHfEJwk8gW/qUzefHQAGCByBy7+J4KcJwb4tUER6gwTMvsiddcpFRQaEkAN23t2Olq
         FGjQ==
X-Received: by 10.180.202.228 with SMTP id kl4mr5268153wic.66.1426954562383;
        Sat, 21 Mar 2015 09:16:02 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.54.138])
        by mx.google.com with ESMTPSA id fo9sm2985902wib.16.2015.03.21.09.16.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 09:16:01 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id C2ACDC1FE4; Sat, 21 Mar 2015 10:49:25 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/3] Stagin: lustre: Fix externs should be avoided in .c
Date: Sat, 21 Mar 2015 10:48:30 +0300
Message-Id: <1426924110-24342-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426923942-24228-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426923942-24228-1-git-send-email-hamohammed.sa@gmail.com>

This patch moves extern declaration from genops.c to obd_class.h,
addressing checkpatch.pl warning: externs should be avoided in .c

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h | 1 +
 drivers/staging/lustre/lustre/obdclass/genops.c   | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 0b6178e..c15f391 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -72,6 +72,7 @@ extern int lustre_get_jobid(char *jobid);
 struct lu_device_type;
 
 /* genops.c */
+extern struct list_head obd_types;
 struct obd_export *class_conn2export(struct lustre_handle *);
 int class_register_type(struct obd_ops *, struct md_ops *,
 			struct lprocfs_vars *, const char *nm,
diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index 50077b9..d8626f9 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -43,7 +43,6 @@
 #include "../include/obd_class.h"
 #include "../include/lprocfs_status.h"
 
-extern struct list_head obd_types;
 spinlock_t obd_types_lock;
 
 struct kmem_cache *obd_device_cachep;
-- 
1.9.1


