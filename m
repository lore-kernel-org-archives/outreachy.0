X-GM-THRID: 6208213403443396608
X-Received: by 10.182.29.41 with SMTP id g9mr30764590obh.27.1445871964670;
        Mon, 26 Oct 2015 08:06:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.214 with SMTP id l83ls1802605ioi.102.gmail; Mon, 26
 Oct 2015 08:06:04 -0700 (PDT)
X-Received: by 10.68.136.71 with SMTP id py7mr16187594pbb.11.1445871964298;
        Mon, 26 Oct 2015 08:06:04 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id zg1si3612719pbb.2.2015.10.26.08.06.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 08:06:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id z6so190853869pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 08:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wtZMODt4oqo1X9rgtMcdY4/OlyhbLgy+QLfmCvETrXo=;
        b=NNLvaFgtleJKPXqY3hT+AUS4/JmIzwBDXPhvo1o6+i7G09+4Sgqtg3LOD9+AfHe4bc
         37Ngi8flS30/rWdol3lh2VfCNjYmUcpSBMVxDbf1hN+aaGOsOauuWTqO17UZcgv1jlDa
         kbvUIK5C5Y+wCulcZ8NzdtJGKo5ITomioHyWLB7bUmKs7fecvrTkH9T493n8cDP7N95N
         T+EmCu9NstNE6B/vCwwdMODPIYJsuU4d7wx2/9cPjaN9PYcoaxe8ArbHWGWXOTzCUlG5
         o1uQ/45rGBVIGsqyk3ML+kjHCZ/QZeEJ5PNwl4p9LXn92DegNXjpjOGokwAOQu+qyJvp
         1Fyw==
X-Received: by 10.68.182.161 with SMTP id ef1mr22734512pbc.79.1445871964190;
        Mon, 26 Oct 2015 08:06:04 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id bs3sm34480286pbd.89.2015.10.26.08.06.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 08:06:03 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH  v2 1/2] Staging: lustre: Replace LPROCFS_CLIMP_CHECK with lprocfs_climp_check
Date: Mon, 26 Oct 2015 08:05:57 -0700
Message-Id: <280ec1453b3a6bfd07bc4ffe63e7924d2a38ec45.1445871650.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445871650.git.ksenija.stanojevic@gmail.com>
References: <cover.1445871650.git.ksenija.stanojevic@gmail.com>

Static inline functions are preferred over macros. The function is
placed in obd_class.h instead lprocfs_status.h because obd_class.h
includes header obd.h which contains definition of struct obd_device
and in that way avoids build error: Dereferencing pointer to incomplete
type. Also remove macro LPROCFS_CLIMP_CHECK since it's no longer used.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v2:
 - remove macro in this patch and not in separate one 

 .../staging/lustre/lustre/include/lprocfs_status.h | 10 ------
 drivers/staging/lustre/lustre/include/obd_class.h  | 10 ++++++
 drivers/staging/lustre/lustre/mgc/mgc_request.c    |  6 +++-
 .../lustre/lustre/obdclass/lprocfs_status.c        | 38 +++++++++++++++++-----
 .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    | 16 +++++++--
 5 files changed, 58 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
index 6e41129..089e5a3 100644
--- a/drivers/staging/lustre/lustre/include/lprocfs_status.h
+++ b/drivers/staging/lustre/lustre/include/lprocfs_status.h
@@ -626,16 +626,6 @@ void lprocfs_stats_collect(struct lprocfs_stats *stats, int idx,
 int lprocfs_single_release(struct inode *, struct file *);
 int lprocfs_seq_release(struct inode *, struct file *);
 
-/* You must use these macros when you want to refer to
- * the import in a client obd_device for a lprocfs entry */
-#define LPROCFS_CLIMP_CHECK(obd) do {	   \
-	typecheck(struct obd_device *, obd);    \
-	down_read(&(obd)->u.cli.cl_sem);    \
-	if ((obd)->u.cli.cl_import == NULL) {   \
-	     up_read(&(obd)->u.cli.cl_sem); \
-	     return -ENODEV;		    \
-	}				       \
-} while (0)
 #define LPROCFS_CLIMP_EXIT(obd)		 \
 	up_read(&(obd)->u.cli.cl_sem)
 
diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index bf2bde5..dcf886a 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -251,6 +251,16 @@ static inline enum obd_option exp_flags_from_obd(struct obd_device *obd)
 		0);
 }
 
+static inline int lprocfs_climp_check(struct obd_device *obd)
+{
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


