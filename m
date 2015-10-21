X-GM-THRID: 6208213403443396608
X-Received: by 10.180.86.227 with SMTP id s3mr2831193wiz.0.1445462392735;
        Wed, 21 Oct 2015 14:19:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.82.3 with SMTP id g3ls281169lfb.10.gmail; Wed, 21 Oct 2015
 14:19:52 -0700 (PDT)
X-Received: by 10.112.148.202 with SMTP id tu10mr2318377lbb.12.1445462392097;
        Wed, 21 Oct 2015 14:19:52 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id w4si13804wiz.0.2015.10.21.14.19.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 14:19:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id q8so3497174wik.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 14:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oDAZS2EG9OLD0Q9Jh2xTQvHUSwg7qdYKSTgFCWb1Afw=;
        b=n2MjWL5D4uE0FZE1djJ5T9TAz3LAbCuHDgOuxY8ThRoANhDj7igbgEFjcXfAUkRf0E
         SpGwnp/UnJ+5xe9rVTQMsxic+xz17AlgzOGEze2V5oD16+8Ci58Dw7hwRHkY9tCa+N0d
         OTa9utsJc6g2engvA62sm9/rK3fek5jK0zMV57+eHHl+aNuIPxqPE36dMkme5X4gpXAP
         ry0LUkuHsd9DVeuiiQCbGXvAfrERbqWFmhuEYPDeZO9FWxqQC6T79l3JdbFXyziqbAaj
         5BMCUEKbqN5TLsaEJbxXFZUvNVBirGAWlkmuHp4MwzzFjdLRVhISG5qHW7Okj3sMaSFT
         +jxg==
X-Received: by 10.180.184.232 with SMTP id ex8mr12849159wic.15.1445462391979;
        Wed, 21 Oct 2015 14:19:51 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id jh4sm8263760wjb.33.2015.10.21.14.19.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 14:19:51 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/3] Staging: lustre: Replace LPROCFS_CLIMP_CHECK with lprocfs_climp_check
Date: Wed, 21 Oct 2015 23:19:41 +0200
Message-Id: <0b63f2da700fe4ef978ca1bd94b954080e98ca86.1445462106.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445462106.git.ksenija.stanojevic@gmail.com>
References: <cover.1445462106.git.ksenija.stanojevic@gmail.com>

Static inline functions are preferred over macros. The function is
placed in obd_class.h instead lprocfs_status.h because obd_class.h
includes header obd.h which contains definition of struct obd_device
and in that way avoids build error: Dereferencing pointer to incomplete
type.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h  | 11 +++++++
 drivers/staging/lustre/lustre/mgc/mgc_request.c    |  6 +++-
 .../lustre/lustre/obdclass/lprocfs_status.c        | 38 +++++++++++++++++-----
 .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    | 16 +++++++--
 4 files changed, 59 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index bf2bde5..56c2096 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -251,6 +251,17 @@ static inline enum obd_option exp_flags_from_obd(struct obd_device *obd)
 		0);
 }
 
+static inline int lprocfs_climp_check(struct obd_device *obd)
+{
+	typecheck(struct obd_device *, obd);
+	down_read(&(obd)->u.cli.cl_sem);
+	if (!(obd)->u.cli.cl_import) {
+		up_read(&(obd)->u.cli.cl_sem);
+		return -ENODEV;
+	}
+	return 0;
+}
+
 struct inode;
 struct lu_attr;
 struct obdo;
diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index 7315733..b81efcd 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -440,8 +440,12 @@ int lprocfs_mgc_rd_ir_state(struct seq_file *m, void *data)
 	struct obd_import       *imp;
 	struct obd_connect_data *ocd;
 	struct config_llog_data *cld;
+	int rc;
+
+	rc = lprocfs_climp_check(obd);
+	if (rc)
+		return rc;
 
-	LPROCFS_CLIMP_CHECK(obd);
 	imp = obd->u.cli.cl_import;
 	ocd = &imp->imp_connect_data;
 
diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 3228fee..4494096 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -489,9 +489,13 @@ int lprocfs_rd_server_uuid(struct seq_file *m, void *data)
 	struct obd_device *obd = data;
 	struct obd_import *imp;
 	char *imp_state_name = NULL;
+	int rc;
 
 	LASSERT(obd != NULL);
-	LPROCFS_CLIMP_CHECK(obd);
+	rc = lprocfs_climp_check(obd);
+	if (rc)
+		return rc;
+
 	imp = obd->u.cli.cl_import;
 	imp_state_name = ptlrpc_import_state_name(imp->imp_state);
 	seq_printf(m, "%s\t%s%s\n",
@@ -508,10 +512,14 @@ int lprocfs_rd_conn_uuid(struct seq_file *m, void *data)
 {
 	struct obd_device *obd = data;
 	struct ptlrpc_connection *conn;
+	int rc;
 
 	LASSERT(obd != NULL);
 
-	LPROCFS_CLIMP_CHECK(obd);
+	rc = lprocfs_climp_check(obd);
+	if (rc)
+		return rc;
+
 	conn = obd->u.cli.cl_import->imp_connection;
 	if (conn && obd->u.cli.cl_import)
 		seq_printf(m, "%s\n", conn->c_remote_uuid.uuid);
@@ -618,9 +626,13 @@ int lprocfs_rd_import(struct seq_file *m, void *data)
 	int				j;
 	int				k;
 	int				rw	= 0;
+	int				rc;
 
 	LASSERT(obd != NULL);
-	LPROCFS_CLIMP_CHECK(obd);
+	rc = lprocfs_climp_check(obd);
+	if (rc)
+		return rc;
+
 	imp = obd->u.cli.cl_import;
 
 	seq_printf(m,
@@ -759,10 +771,13 @@ int lprocfs_rd_state(struct seq_file *m, void *data)
 {
 	struct obd_device *obd = data;
 	struct obd_import *imp;
-	int j, k;
+	int j, k, rc;
 
 	LASSERT(obd != NULL);
-	LPROCFS_CLIMP_CHECK(obd);
+	rc = lprocfs_climp_check(obd);
+	if (rc)
+		return rc;
+
 	imp = obd->u.cli.cl_import;
 
 	seq_printf(m, "current_state: %s\n",
@@ -802,10 +817,13 @@ int lprocfs_rd_timeouts(struct seq_file *m, void *data)
 	unsigned int cur, worst;
 	time64_t now, worstt;
 	struct dhms ts;
-	int i;
+	int i, rc;
 
 	LASSERT(obd != NULL);
-	LPROCFS_CLIMP_CHECK(obd);
+	rc = lprocfs_climp_check(obd);
+	if (rc)
+		return rc;
+
 	imp = obd->u.cli.cl_import;
 
 	now = ktime_get_real_seconds();
@@ -845,8 +863,12 @@ int lprocfs_rd_connect_flags(struct seq_file *m, void *data)
 {
 	struct obd_device *obd = data;
 	__u64 flags;
+	int rc;
+
+	rc = lprocfs_climp_check(obd);
+	if (rc)
+		return rc;
 
-	LPROCFS_CLIMP_CHECK(obd);
 	flags = obd->u.cli.cl_import->imp_connect_data.ocd_connect_flags;
 	seq_printf(m, "flags=%#llx\n", flags);
 	obd_connect_seq_flags2str(m, flags, "\n");
diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index 415817c..33184c7 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -1189,7 +1189,10 @@ int lprocfs_wr_ping(struct file *file, const char __user *buffer,
 	struct ptlrpc_request *req;
 	int rc;
 
-	LPROCFS_CLIMP_CHECK(obd);
+	rc = lprocfs_climp_check(obd);
+	if (rc)
+		return rc;
+
 	req = ptlrpc_prep_ping(obd->u.cli.cl_import);
 	LPROCFS_CLIMP_EXIT(obd);
 	if (req == NULL)
@@ -1278,8 +1281,12 @@ int lprocfs_rd_pinger_recov(struct seq_file *m, void *n)
 {
 	struct obd_device *obd = m->private;
 	struct obd_import *imp = obd->u.cli.cl_import;
+	int rc;
+
+	rc = lprocfs_climp_check(obd);
+	if (rc)
+		return rc;
 
-	LPROCFS_CLIMP_CHECK(obd);
 	seq_printf(m, "%d\n", !imp->imp_no_pinger_recover);
 	LPROCFS_CLIMP_EXIT(obd);
 
@@ -1302,7 +1309,10 @@ int lprocfs_wr_pinger_recov(struct file *file, const char __user *buffer,
 	if (val != 0 && val != 1)
 		return -ERANGE;
 
-	LPROCFS_CLIMP_CHECK(obd);
+	rc = lprocfs_climp_check(obd);
+	if (rc)
+		return rc;
+
 	spin_lock(&imp->imp_lock);
 	imp->imp_no_pinger_recover = !val;
 	spin_unlock(&imp->imp_lock);
-- 
1.9.1


