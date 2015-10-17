X-GM-THRID: 6205612297408217088
X-Received: by 10.180.189.49 with SMTP id gf17mr2210109wic.6.1445068706250;
        Sat, 17 Oct 2015 00:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.188.1 with SMTP id fw1ls283009wic.26.canary; Sat, 17 Oct
 2015 00:58:25 -0700 (PDT)
X-Received: by 10.180.208.7 with SMTP id ma7mr2196141wic.5.1445068705915;
        Sat, 17 Oct 2015 00:58:25 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id go9si137341wib.3.2015.10.17.00.58.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 00:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id gb1so35354326wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 00:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1tkdTF3QTFTLb29L/XD8qx6SZ6ExPa1SKvShu00FKm8=;
        b=V8T6spf+2KqEa3KCYykmQfss+4xoCqAv6G/eg7gntKRC0gMQ7uTveAc5P7qTCdtjjW
         nKzvIFGhU80a+L14T8f4frBuHjQvJJu81bbbIvr+TXOvHUCy4jDDFQ+JeYTltrJ31tdM
         FM8OTjwwXRhis+A+8Vfz2qmnSzRf50aCtrNc8cjAl/JB1dfs58Ox8b0oFCHU71TjN02l
         xDMQXyr/Trwr69BFCPBVnkIdQsDL7jEdP4cEke6Y1JWcsMjqVY5FqZFrEiMPloaNXkvu
         t7NZ0bIGB/SX+GJmrJ0HFwjuViwnjUD9+LOR0UmRiObuKmtgEEjddZqSzgG4s7hxnufl
         6rWw==
X-Received: by 10.195.17.163 with SMTP id gf3mr21662941wjd.105.1445068705807;
        Sat, 17 Oct 2015 00:58:25 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id p4sm6161785wia.15.2015.10.17.00.58.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 00:58:25 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 1/4] Staging: lustre: include: Move function prototypes
Date: Sat, 17 Oct 2015 09:58:16 +0200
Message-Id: <06092be207de8d5980babdcc7e8d9f1140ebd856.1445067394.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445067394.git.ksenija.stanojevic@gmail.com>
References: <cover.1445067394.git.ksenija.stanojevic@gmail.com>

Functions:
struct obd_export *class_export_get(struct obd_export *exp);
void class_export_put(struct obd_export *exp)
are being used in macros that are converted into static inline 
functions, therefore move function prototypes to avoid build
error.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
Changes in v2:
	 - be more specific in connit message

 drivers/staging/lustre/lustre/include/obd_class.h | 37 ++++++++++++-----------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 82f1a26..4c2076e 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -189,6 +189,25 @@ extern void (*class_export_dump_hook)(struct obd_export *);
 
 #endif
 
+/* genops.c */
+struct obd_export *class_export_get(struct obd_export *exp);
+void class_export_put(struct obd_export *exp);
+struct obd_export *class_new_export(struct obd_device *obddev,
+				struct obd_uuid *cluuid);
+void class_unlink_export(struct obd_export *exp);
+
+struct obd_import *class_import_get(struct obd_import *);
+void class_import_put(struct obd_import *);
+struct obd_import *class_new_import(struct obd_device *obd);
+void class_destroy_import(struct obd_import *exp);
+
+void class_put_type(struct obd_type *type);
+int class_connect(struct lustre_handle *conn, struct obd_device *obd,
+		struct obd_uuid *cluuid);
+int class_disconnect(struct obd_export *exp);
+void class_fail_export(struct obd_export *exp);
+int class_manual_cleanup(struct obd_device *obd);
+
 static inline void class_export_rpc_inc(struct obd_export *exp)
 {
 	atomic_inc(&(exp)->exp_rpc_count);
@@ -240,24 +259,6 @@ static inline void class_export_rpc_dec(struct obd_export *exp)
 	class_export_put(exp);					  \
 })
 
-/* genops.c */
-struct obd_export *class_export_get(struct obd_export *exp);
-void class_export_put(struct obd_export *exp);
-struct obd_export *class_new_export(struct obd_device *obddev,
-				    struct obd_uuid *cluuid);
-void class_unlink_export(struct obd_export *exp);
-
-struct obd_import *class_import_get(struct obd_import *);
-void class_import_put(struct obd_import *);
-struct obd_import *class_new_import(struct obd_device *obd);
-void class_destroy_import(struct obd_import *exp);
-
-void class_put_type(struct obd_type *type);
-int class_connect(struct lustre_handle *conn, struct obd_device *obd,
-		  struct obd_uuid *cluuid);
-int class_disconnect(struct obd_export *exp);
-void class_fail_export(struct obd_export *exp);
-int class_manual_cleanup(struct obd_device *obd);
 static inline enum obd_option exp_flags_from_obd(struct obd_device *obd)
 {
 	return ((obd->obd_fail ? OBD_OPT_FAILOVER : 0) |
-- 
1.9.1


