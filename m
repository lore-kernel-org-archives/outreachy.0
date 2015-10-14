X-GM-THRID: 6205612297408217088
X-Received: by 10.112.202.165 with SMTP id kj5mr1246574lbc.5.1444856799452;
        Wed, 14 Oct 2015 14:06:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.170 with SMTP id dt10ls237983wib.32.gmail; Wed, 14 Oct
 2015 14:06:39 -0700 (PDT)
X-Received: by 10.194.240.230 with SMTP id wd6mr1251716wjc.0.1444856799156;
        Wed, 14 Oct 2015 14:06:39 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id q6si969454wif.2.2015.10.14.14.06.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 14:06:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id q8so100385482wij.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 14:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fPgNh4dDOZTLYfiTQumwpiVYnTLBwmJKpJJa5hE48XQ=;
        b=mKUSBmUAS96XHtIdz1/etpTKdAN2GsaCZ+gs2z8HNYlqds4pCTVVrjNSQBArDoVmiE
         sfb1xFKQfUKANy0Iw4+inNsbhrLCR4hNOWY5GYJl2dI3A8Dq+UMHXoBMLeE8iihUWOZd
         cqDNfVg+k9HE/Xp2KlYNM6jaPuadLYLehy5hAW6TkGg3OPJUuW/s/803soBfPh5JBbWp
         bbWAeuaLd2HuUNomi1JfzN8DhHS0VsiLg8m1eo4GB0hcJT33k9zcqpObWpktKAObqc1x
         lhhqDjgF03Qeq1NllNoV5ee8ADI0oVCtbPKm/9sDO/BySZgCmLK7mLrhcYjY5S0UAnJG
         apZg==
X-Received: by 10.195.11.232 with SMTP id el8mr6445571wjd.138.1444856799052;
        Wed, 14 Oct 2015 14:06:39 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id vr10sm3698816wjc.38.2015.10.14.14.06.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 14:06:38 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/4] Staging: lustre: include: Move function prototypes
Date: Wed, 14 Oct 2015 23:06:28 +0200
Message-Id: <06092be207de8d5980babdcc7e8d9f1140ebd856.1444856328.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444856328.git.ksenija.stanojevic@gmail.com>
References: <cover.1444856328.git.ksenija.stanojevic@gmail.com>

Function prototypes need to be declared before functions are being
used.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
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


