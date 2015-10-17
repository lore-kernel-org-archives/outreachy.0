X-GM-THRID: 6205612297408217088
X-Received: by 10.194.240.230 with SMTP id wd6mr5076364wjc.0.1445098634625;
        Sat, 17 Oct 2015 09:17:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.170 with SMTP id dt10ls372969wib.32.gmail; Sat, 17 Oct
 2015 09:17:14 -0700 (PDT)
X-Received: by 10.194.240.230 with SMTP id wd6mr5076362wjc.0.1445098634376;
        Sat, 17 Oct 2015 09:17:14 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id cm6si352104wib.1.2015.10.17.09.17.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 09:17:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id ll6so44990341wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 09:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3V16wktj3J59PnWSU6gh5mCNRmdOX8ZvcPLfckNEoWI=;
        b=CPXxSDId9nSqeVSP3tDgApwhJdtxrIfNc+rYn633/ewWXhgCft5CL34WubeoHqPR7s
         lK+So5qvevHUSItUN5k2YbCI2axe5LRQdFWQkRn7Z1D9xPJfJ4fimVRLNBD6uzhvDE/a
         t7eWb/oHhwnaxIrT8mloELs8z38uyAEQxxpFgc7eYrWpu3es+9MTRqjAVNG0NrXfcGFP
         9mfnnnViyucGQ3N9twCDNhbcbRpf7JupiV36KrpIhJUWgOfgGEc8HSJGtwzzhkYMBIsA
         +Z0LnGWgHiKNAg/XVrgvXHtAV+2KCFPHE6kljf0zw2NG1U2cdmhOFhe+WwdaEIhptPHu
         toJw==
X-Received: by 10.194.123.2 with SMTP id lw2mr26219232wjb.48.1445098634282;
        Sat, 17 Oct 2015 09:17:14 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id x7sm7618890wia.10.2015.10.17.09.17.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 09:17:13 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3 1/4] Staging: lustre: include: Move function prototypes
Date: Sat, 17 Oct 2015 18:17:05 +0200
Message-Id: <06092be207de8d5980babdcc7e8d9f1140ebd856.1445097871.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445097871.git.ksenija.stanojevic@gmail.com>
References: <cover.1445097871.git.ksenija.stanojevic@gmail.com>

Functions:
struct obd_export *class_export_get(struct obd_export *exp);
void class_export_put(struct obd_export *exp)
are being used in macros that are converted into static inline
functions, therefore move function prototypes to avoid build
error in later patches.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v3:
        - change commit message
	- add space in signed-off-by line
Changes in v2:
        - be more specific in commit message

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


