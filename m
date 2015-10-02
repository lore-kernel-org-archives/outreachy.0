X-GM-THRID: 6201028440983863296
X-Received: by 10.13.230.214 with SMTP id p205mr13540149ywe.57.1443789443581;
        Fri, 02 Oct 2015 05:37:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.5 with SMTP id xs5ls792964obc.9.gmail; Fri, 02 Oct
 2015 05:37:22 -0700 (PDT)
X-Received: by 10.182.171.70 with SMTP id as6mr1235288obc.41.1443789442763;
        Fri, 02 Oct 2015 05:37:22 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id w5si1580710pbt.1.2015.10.02.05.37.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 05:37:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id lk4so105355483pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 05:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=lSGnwa38Gay3rcvFZW17KGbxie/6ZoU6TRBYpXuk7Pw=;
        b=cCnGgVULvNZs6IvNy+4MXsoXOtR4croWP/2kmmUi7CDm55lPcdRv2le1gLkh/zKg2J
         rlJqk984SN73oLEFmn2G9QCWFMoTPL2UiVkL9MsJ3OkeVfaNZuMaddG3yHoI7xFn0qgr
         BrkFEmgH0yStzhsGE6MUyG2uHdPZ2W/Bb+Y/s8VxRRlqjKS8vJ1K8Fc5W1rKXMk/4OHi
         C66ZwFlBGlzyTbnf6YbW5VQjv8lObfxVPveb4S95MZ9Ehth/cq1aWNhk+ZnKzQfqSfPi
         qmv/+DkLfnevA0X0HcA32Rnbzsl5ZijDmuysaIBEjzpti3tCPuu3Gb1sOI0zp5a1LoUQ
         Zzbw==
X-Received: by 10.68.65.43 with SMTP id u11mr19978603pbs.167.1443789442624;
        Fri, 02 Oct 2015 05:37:22 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id v6sm11881958pbs.40.2015.10.02.05.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 05:37:22 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: lustre: obdclass: Remove unused functions
Date: Fri,  2 Oct 2015 18:07:04 +0530
Message-Id: <1443789424-17072-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.560E7A81.00C3,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove dump_exports and print_export_data as they are defined
but not used anywhere.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h |  1 -
 drivers/staging/lustre/lustre/obdclass/genops.c   | 51 -----------------------
 2 files changed, 52 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 6fb67a6..e375a19 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -117,7 +117,6 @@ struct obd_device *class_incref(struct obd_device *obd,
 				const char *scope, const void *source);
 void class_decref(struct obd_device *obd,
 		  const char *scope, const void *source);
-void dump_exports(struct obd_device *obd, int locks);
 int class_config_llog_handler(const struct lu_env *env,
 			      struct llog_handle *handle,
 			      struct llog_rec_hdr *rec, void *data);
diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index c1bffcd..409e065 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -56,8 +56,6 @@ static spinlock_t  obd_zombie_impexp_lock;
 static void obd_zombie_impexp_notify(void);
 static void obd_zombie_export_add(struct obd_export *exp);
 static void obd_zombie_import_add(struct obd_import *imp);
-static void print_export_data(struct obd_export *exp,
-			      const char *status, int locks);
 
 int (*ptlrpc_put_connection_superhack)(struct ptlrpc_connection *c);
 EXPORT_SYMBOL(ptlrpc_put_connection_superhack);
@@ -1122,55 +1120,6 @@ void (*class_export_dump_hook)(struct obd_export *) = NULL;
 EXPORT_SYMBOL(class_export_dump_hook);
 #endif
 
-static void print_export_data(struct obd_export *exp, const char *status,
-			      int locks)
-{
-	struct ptlrpc_reply_state *rs;
-	struct ptlrpc_reply_state *first_reply = NULL;
-	int nreplies = 0;
-
-	spin_lock(&exp->exp_lock);
-	list_for_each_entry(rs, &exp->exp_outstanding_replies,
-				rs_exp_list) {
-		if (nreplies == 0)
-			first_reply = rs;
-		nreplies++;
-	}
-	spin_unlock(&exp->exp_lock);
-
-	CDEBUG(D_HA, "%s: %s %p %s %s %d (%d %d %d) %d %d %d: %p %s %llu\n",
-	       exp->exp_obd->obd_name, status, exp, exp->exp_client_uuid.uuid,
-	       obd_export_nid2str(exp), atomic_read(&exp->exp_refcount),
-	       atomic_read(&exp->exp_rpc_count),
-	       atomic_read(&exp->exp_cb_count),
-	       atomic_read(&exp->exp_locks_count),
-	       exp->exp_disconnected, exp->exp_failed,
-	       nreplies, first_reply, nreplies > 3 ? "..." : "",
-	       exp->exp_last_committed);
-#if LUSTRE_TRACKS_LOCK_EXP_REFS
-	if (locks && class_export_dump_hook != NULL)
-		class_export_dump_hook(exp);
-#endif
-}
-
-void dump_exports(struct obd_device *obd, int locks)
-{
-	struct obd_export *exp;
-
-	spin_lock(&obd->obd_dev_lock);
-	list_for_each_entry(exp, &obd->obd_exports, exp_obd_chain)
-		print_export_data(exp, "ACTIVE", locks);
-	list_for_each_entry(exp, &obd->obd_unlinked_exports, exp_obd_chain)
-		print_export_data(exp, "UNLINKED", locks);
-	list_for_each_entry(exp, &obd->obd_delayed_exports, exp_obd_chain)
-		print_export_data(exp, "DELAYED", locks);
-	spin_unlock(&obd->obd_dev_lock);
-	spin_lock(&obd_zombie_impexp_lock);
-	list_for_each_entry(exp, &obd_zombie_exports, exp_obd_chain)
-		print_export_data(exp, "ZOMBIE", locks);
-	spin_unlock(&obd_zombie_impexp_lock);
-}
-EXPORT_SYMBOL(dump_exports);
 
 /* Total amount of zombies to be destroyed */
 static int zombies_count;
-- 
2.1.4


