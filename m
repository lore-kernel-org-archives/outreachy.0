X-GM-THRID: 9403654733824
X-Received: by 10.180.90.175 with SMTP id bx15mr584891wib.3.1426954702317;
        Sat, 21 Mar 2015 09:18:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.101 with SMTP id z5ls55080laz.12.gmail; Sat, 21 Mar 2015
 09:18:21 -0700 (PDT)
X-Received: by 10.112.9.65 with SMTP id x1mr14319327lba.16.1426954701670;
        Sat, 21 Mar 2015 09:18:21 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id na10si121876wic.0.2015.03.21.09.18.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 09:18:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id cq43so104420860web.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 09:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2qmhIJawclJ+qAMYvsA4myUxutx4G53dyWjHDfUpmhY=;
        b=ndMx/utIVYNxWpaJuGD0pmKN+gZZsNZvcrWZ+MSVkXva3JkDO38IOcsvvoaKDVEZrF
         8no0wbkES0Zw3nNAltRBKVN6J199aNF6LyHbdRZHeFTv5i0vWtaC4evk0SbBgTqibVHH
         2ik6nXPljQVNrvXlTfv2O2UnAZJLWPfwu1+3Wm3Y7WPLC/tyqH0OPn8pyBxdjnOFq6Oy
         Mke2vCMPNW1XxgnG+YtkTAElqex4nAEARjzg4mNllQkh1H2GC3P5d0TuTcEiI0FoVVon
         uJggmeU08tCh1AcXa42WQrH/myAAUM6MF7kyQ962Vsyqb0aGWsHSP3qQyifzM/7UA4Ka
         2Xgg==
X-Received: by 10.194.90.210 with SMTP id by18mr164641976wjb.80.1426954701565;
        Sat, 21 Mar 2015 09:18:21 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.54.138])
        by mx.google.com with ESMTPSA id w8sm11214673wja.4.2015.03.21.09.18.20
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 09:18:20 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 63C86C1FE4; Sat, 21 Mar 2015 10:51:43 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 3/3] Staging: lustre: Fix Sparse warnings for static declarations
Date: Sat, 21 Mar 2015 10:51:42 +0300
Message-Id: <1426924302-24399-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426923942-24228-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426923942-24228-1-git-send-email-hamohammed.sa@gmail.com>

The following patch fixes Sparse warnings in genops.c regrding:
"Symbol * was not declared. Should it be static?"

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/genops.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index d8626f9..138e4f6 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -48,11 +48,11 @@ spinlock_t obd_types_lock;
 struct kmem_cache *obd_device_cachep;
 struct kmem_cache *obdo_cachep;
 EXPORT_SYMBOL(obdo_cachep);
-struct kmem_cache *import_cachep;
+static struct kmem_cache *import_cachep;
 
-struct list_head      obd_zombie_imports;
-struct list_head      obd_zombie_exports;
-spinlock_t  obd_zombie_impexp_lock;
+static struct list_head      obd_zombie_imports;
+static struct list_head      obd_zombie_exports;
+static spinlock_t  obd_zombie_impexp_lock;
 static void obd_zombie_impexp_notify(void);
 static void obd_zombie_export_add(struct obd_export *exp);
 static void obd_zombie_import_add(struct obd_import *imp);
@@ -929,7 +929,7 @@ void class_unlink_export(struct obd_export *exp)
 EXPORT_SYMBOL(class_unlink_export);
 
 /* Import management functions */
-void class_import_destroy(struct obd_import *imp)
+static void class_import_destroy(struct obd_import *imp)
 {
 	CDEBUG(D_IOCTL, "destroying import %p for %s\n", imp,
 		imp->imp_obd->obd_name);
@@ -1128,7 +1128,7 @@ int class_connect(struct lustre_handle *conn, struct obd_device *obd,
 EXPORT_SYMBOL(class_connect);
 
 /* if export is involved in recovery then clean up related things */
-void class_export_recovery_cleanup(struct obd_export *exp)
+static void class_export_recovery_cleanup(struct obd_export *exp)
 {
 	struct obd_device *obd = exp->exp_obd;
 
-- 
1.9.1


