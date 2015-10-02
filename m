X-GM-THRID: 6201108859850850304
X-Received: by 10.13.229.135 with SMTP id o129mr13688372ywe.30.1443808176463;
        Fri, 02 Oct 2015 10:49:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.205 with SMTP id s74ls981186ioi.27.gmail; Fri, 02 Oct
 2015 10:49:36 -0700 (PDT)
X-Received: by 10.66.191.37 with SMTP id gv5mr13597559pac.2.1443808176147;
        Fri, 02 Oct 2015 10:49:36 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id w5si1772240pbt.1.2015.10.02.10.49.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 10:49:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fv12so114493525pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 10:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ch4zYcRziW3sDAUPwmWFeCJrq3E61OYRdxdQykPzUV4=;
        b=Z9JFTScjF/eeAtFdwEHPDh86iS40nTKSXFbpo/S3ckeAOujJXog0iO5T82uNtRkeDq
         0HXV/wJEAZw6QL08yyK5Sn7LVoHbLk4O3qhiQARY4ehRs7XRA9LrQ+j327bgCMMHvvqY
         q4wjeCUUw8c56LlcrDcvz27HquW83hvQcpZxeG0RPQ1cdgDqZnKwc+fk1XS5QURS6uw5
         rYDusB5OWZC625bx9xPFg6Ln/30ziiCOhnOyCqID+8vVhoK6BSF//X7NX4DIxl2ucVkj
         bnZgDNCId2t5M6ofzgnhoqAlfJlyA6DIMDiISJeN67thuBMkdmfM2Q87vMHui/wB8ayf
         3P6g==
X-Received: by 10.69.3.228 with SMTP id bz4mr21718310pbd.79.1443808176030;
        Fri, 02 Oct 2015 10:49:36 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id pq1sm13027912pbb.91.2015.10.02.10.49.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 10:49:35 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/5] Staging: lustre: obdclass: obd_config: Declare as static
Date: Fri,  2 Oct 2015 23:19:12 +0530
Message-Id: <1443808154-13944-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.560EC3AE.00A6,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare class_add_conn, class_add_profile, class_cleanup,
class_config_parse_rec, class_del_conn, class_detach, class_match_param,
class_attach, class_setup as static since they are used only in this
particular file. Also remove the corresponding declarations from
header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 .../staging/lustre/lustre/include/lustre_param.h   |  1 -
 drivers/staging/lustre/lustre/include/obd_class.h  |  5 ----
 .../staging/lustre/lustre/obdclass/llog_internal.h |  1 -
 .../staging/lustre/lustre/obdclass/obd_config.c    | 27 +++++++++-------------
 4 files changed, 11 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_param.h b/drivers/staging/lustre/lustre/include/lustre_param.h
index de49b41..14cd2bc 100644
--- a/drivers/staging/lustre/lustre/include/lustre_param.h
+++ b/drivers/staging/lustre/lustre/include/lustre_param.h
@@ -56,7 +56,6 @@ struct cfg_interop_param {
 
 /* obd_config.c */
 int class_find_param(char *buf, char *key, char **valp);
-int class_match_param(char *buf, char *key, char **valp);
 int class_parse_nid(char *buf, lnet_nid_t *nid, char **endh);
 int class_parse_nid_quiet(char *buf, lnet_nid_t *nid, char **endh);
 /* obd_mount.c */
diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 6fb67a6..5ab7296 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -109,10 +109,6 @@ typedef int (*llog_cb_t)(const struct lu_env *, struct llog_handle *,
 int class_process_config(struct lustre_cfg *lcfg);
 int class_process_proc_param(char *prefix, struct lprocfs_vars *lvars,
 			     struct lustre_cfg *lcfg, void *data);
-int class_attach(struct lustre_cfg *lcfg);
-int class_setup(struct obd_device *obd, struct lustre_cfg *lcfg);
-int class_cleanup(struct obd_device *obd, struct lustre_cfg *lcfg);
-int class_detach(struct obd_device *obd, struct lustre_cfg *lcfg);
 struct obd_device *class_incref(struct obd_device *obd,
 				const char *scope, const void *source);
 void class_decref(struct obd_device *obd,
@@ -121,7 +117,6 @@ void dump_exports(struct obd_device *obd, int locks);
 int class_config_llog_handler(const struct lu_env *env,
 			      struct llog_handle *handle,
 			      struct llog_rec_hdr *rec, void *data);
-int class_add_conn(struct obd_device *obd, struct lustre_cfg *lcfg);
 int class_add_uuid(const char *uuid, __u64 nid);
 
 /*obdecho*/
diff --git a/drivers/staging/lustre/lustre/obdclass/llog_internal.h b/drivers/staging/lustre/lustre/obdclass/llog_internal.h
index 5339986..5dff617 100644
--- a/drivers/staging/lustre/lustre/obdclass/llog_internal.h
+++ b/drivers/staging/lustre/lustre/obdclass/llog_internal.h
@@ -71,7 +71,6 @@ int llog_cat_id2handle(const struct lu_env *env, struct llog_handle *cathandle,
 int class_config_dump_handler(const struct lu_env *env,
 			      struct llog_handle *handle,
 			      struct llog_rec_hdr *rec, void *data);
-int class_config_parse_rec(struct llog_rec_hdr *rec, char *buf, int size);
 int llog_process_or_fork(const struct lu_env *env,
 			 struct llog_handle *loghandle,
 			 llog_cb_t cb, void *data, void *catdata, bool fork);
diff --git a/drivers/staging/lustre/lustre/obdclass/obd_config.c b/drivers/staging/lustre/lustre/obdclass/obd_config.c
index 66fafd3..b8ca324 100644
--- a/drivers/staging/lustre/lustre/obdclass/obd_config.c
+++ b/drivers/staging/lustre/lustre/obdclass/obd_config.c
@@ -72,7 +72,7 @@ EXPORT_SYMBOL(class_find_param);
 
 /* returns 0 if this is the first key in the buffer, else 1.
    valp points to first char after key. */
-int class_match_param(char *buf, char *key, char **valp)
+static int class_match_param(char *buf, char *key, char **valp)
 {
 	if (!buf)
 		return 1;
@@ -85,7 +85,6 @@ int class_match_param(char *buf, char *key, char **valp)
 
 	return 0;
 }
-EXPORT_SYMBOL(class_match_param);
 
 static int parse_nid(char *buf, void *value, int quiet)
 {
@@ -175,7 +174,7 @@ EXPORT_SYMBOL(class_parse_nid_quiet);
  * Create a new obd device and set the type, name and uuid.  If successful,
  * the new device can be accessed by either name or uuid.
  */
-int class_attach(struct lustre_cfg *lcfg)
+static int class_attach(struct lustre_cfg *lcfg)
 {
 	struct obd_device *obd = NULL;
 	char *typename, *name, *uuid;
@@ -278,12 +277,11 @@ int class_attach(struct lustre_cfg *lcfg)
 	}
 	return rc;
 }
-EXPORT_SYMBOL(class_attach);
 
 /** Create hashes, self-export, and call type-specific setup.
  * Setup is effectively the "start this obd" call.
  */
-int class_setup(struct obd_device *obd, struct lustre_cfg *lcfg)
+static int class_setup(struct obd_device *obd, struct lustre_cfg *lcfg)
 {
 	int err = 0;
 	struct obd_export *exp;
@@ -373,12 +371,11 @@ err_hash:
 	CERROR("setup %s failed (%d)\n", obd->obd_name, err);
 	return err;
 }
-EXPORT_SYMBOL(class_setup);
 
 /** We have finished using this obd and are ready to destroy it.
  * There can be no more references to this obd.
  */
-int class_detach(struct obd_device *obd, struct lustre_cfg *lcfg)
+static int class_detach(struct obd_device *obd, struct lustre_cfg *lcfg)
 {
 	if (obd->obd_set_up) {
 		CERROR("OBD device %d still set up\n", obd->obd_minor);
@@ -400,13 +397,12 @@ int class_detach(struct obd_device *obd, struct lustre_cfg *lcfg)
 	class_decref(obd, "attach", obd);
 	return 0;
 }
-EXPORT_SYMBOL(class_detach);
 
 /** Start shutting down the obd.  There may be in-progress ops when
  * this is called.  We tell them to start shutting down with a call
  * to class_disconnect_exports().
  */
-int class_cleanup(struct obd_device *obd, struct lustre_cfg *lcfg)
+static int class_cleanup(struct obd_device *obd, struct lustre_cfg *lcfg)
 {
 	int err = 0;
 	char *flag;
@@ -479,7 +475,6 @@ int class_cleanup(struct obd_device *obd, struct lustre_cfg *lcfg)
 
 	return 0;
 }
-EXPORT_SYMBOL(class_cleanup);
 
 struct obd_device *class_incref(struct obd_device *obd,
 				const char *scope, const void *source)
@@ -543,7 +538,7 @@ EXPORT_SYMBOL(class_decref);
 /** Add a failover nid location.
  * Client obd types contact server obd types using this nid list.
  */
-int class_add_conn(struct obd_device *obd, struct lustre_cfg *lcfg)
+static int class_add_conn(struct obd_device *obd, struct lustre_cfg *lcfg)
 {
 	struct obd_import *imp;
 	struct obd_uuid uuid;
@@ -574,11 +569,10 @@ int class_add_conn(struct obd_device *obd, struct lustre_cfg *lcfg)
 
 	return rc;
 }
-EXPORT_SYMBOL(class_add_conn);
 
 /** Remove a failover nid location.
  */
-int class_del_conn(struct obd_device *obd, struct lustre_cfg *lcfg)
+static int class_del_conn(struct obd_device *obd, struct lustre_cfg *lcfg)
 {
 	struct obd_import *imp;
 	struct obd_uuid uuid;
@@ -626,8 +620,8 @@ EXPORT_SYMBOL(class_get_profile);
  * This defines the mdc and osc names to use for a client.
  * This also is used to define the lov to be used by a mdt.
  */
-int class_add_profile(int proflen, char *prof, int osclen, char *osc,
-		      int mdclen, char *mdc)
+static int class_add_profile(int proflen, char *prof, int osclen, char *osc,
+			     int mdclen, char *mdc)
 {
 	struct lustre_profile *lprof;
 	int err = 0;
@@ -1303,7 +1297,8 @@ EXPORT_SYMBOL(class_config_parse_llog);
  * This is separated from class_config_dump_handler() to use
  * for ioctl needs as well
  */
-int class_config_parse_rec(struct llog_rec_hdr *rec, char *buf, int size)
+static int class_config_parse_rec(struct llog_rec_hdr *rec, char *buf,
+				  int size)
 {
 	struct lustre_cfg	*lcfg = (struct lustre_cfg *)(rec + 1);
 	char			*ptr = buf;
-- 
2.1.4


