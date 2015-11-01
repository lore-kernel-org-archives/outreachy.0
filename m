X-GM-THRID: 6212179021831077888
X-Received: by 10.66.253.37 with SMTP id zx5mr15108491pac.37.1446385640727;
        Sun, 01 Nov 2015 05:47:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.110.200 with SMTP id ic8ls753926obb.88.gmail; Sun, 01 Nov
 2015 05:47:19 -0800 (PST)
X-Received: by 10.182.50.135 with SMTP id c7mr14877690obo.47.1446385639286;
        Sun, 01 Nov 2015 05:47:19 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pe1si1544402pac.2.2015.11.01.05.47.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:47:19 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy1so114216128pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 05:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nJUPrn8Qpy5BZ1B23OytOQ5p4TRfE7a3ZNO+XQYmj+A=;
        b=uiNjjkSbP2pt4x6wqhbao7r0or8oNMODkd4zC4FKcDY+tkZ+41MlMuLIpqUHrZCtLu
         F+zPr6LFgH8XNmI4falS1LUWtu04IcHVbWE1HbIwaXMMAC83aTDvDrTGqevkoGrVYBHR
         XL2jacl3zdOKok5sdQbCnrHqAHO4xejNm0YjCtinetOgGHbZuivOn8Xw9rXtUBBJOX9A
         Klj7T5qxdJERDSnv5UbgpTBkdPmQS7buFUYHecz+fv7Glq+ZD6ufARTv4BA7TQ2uo45c
         b/f9UY9PyFUUp7fMCTOvMhDG00CdUQuo+VLadMaA6++yoM55psbF3ZmX6R4ivCtk7hx4
         I85A==
X-Received: by 10.68.213.1 with SMTP id no1mr20787753pbc.77.1446385639097;
        Sun, 01 Nov 2015 05:47:19 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id xu5sm18728915pab.12.2015.11.01.05.47.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:47:18 -0800 (PST)
Date: Sun, 1 Nov 2015 19:17:11 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: ldlm_pool: Remove unneeded wrapper functions
Message-ID: <20151101134710.GA60053@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the wrapper functions ldlm_pl2ns(), ldlm_pool_get_limit(),
ldlm_pool_set_limit() and replace their calls with the functions that
they wrapped.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c | 46 +++++++++-----------------
 1 file changed, 15 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index 1a4eef6..2875fe4 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -176,11 +176,6 @@ enum {
 	LDLM_POOL_LAST_STAT
 };
 
-static inline struct ldlm_namespace *ldlm_pl2ns(struct ldlm_pool *pl)
-{
-	return container_of(pl, struct ldlm_namespace, ns_pool);
-}
-
 /**
  * Calculates suggested grant_step in % of available locks for passed
  * \a period. This is later used in grant_plan calculations.
@@ -213,22 +208,6 @@ static inline int ldlm_pool_t2gsp(unsigned int t)
 }
 
 /**
- * Returns current \a pl limit.
- */
-static __u32 ldlm_pool_get_limit(struct ldlm_pool *pl)
-{
-	return atomic_read(&pl->pl_limit);
-}
-
-/**
- * Sets passed \a limit to \a pl.
- */
-static void ldlm_pool_set_limit(struct ldlm_pool *pl, __u32 limit)
-{
-	atomic_set(&pl->pl_limit, limit);
-}
-
-/**
  * Recalculates next stats on passed \a pl.
  *
  * \pre ->pl_lock is locked.
@@ -254,7 +233,8 @@ static void ldlm_pool_recalc_stats(struct ldlm_pool *pl)
 }
 
 /**
- * Sets SLV and Limit from ldlm_pl2ns(pl)->ns_obd tp passed \a pl.
+ * Sets SLV and Limit from container_of(pl, struct ldlm_namespace,
+ * ns_pool)->ns_obd tp passed \a pl.
  */
 static void ldlm_cli_pool_pop_slv(struct ldlm_pool *pl)
 {
@@ -264,11 +244,11 @@ static void ldlm_cli_pool_pop_slv(struct ldlm_pool *pl)
 	 * Get new SLV and Limit from obd which is updated with coming
 	 * RPCs.
 	 */
-	obd = ldlm_pl2ns(pl)->ns_obd;
+	obd = container_of(pl, struct ldlm_namespace, ns_pool)->ns_obd;
 	LASSERT(obd != NULL);
 	read_lock(&obd->obd_pool_lock);
 	pl->pl_server_lock_volume = obd->obd_pool_slv;
-	ldlm_pool_set_limit(pl, obd->obd_pool_limit);
+	atomic_set(&pl->pl_limit, obd->obd_pool_limit);
 	read_unlock(&obd->obd_pool_lock);
 }
 
@@ -304,7 +284,8 @@ static int ldlm_cli_pool_recalc(struct ldlm_pool *pl)
 	/*
 	 * Do not cancel locks in case lru resize is disabled for this ns.
 	 */
-	if (!ns_connect_lru_resize(ldlm_pl2ns(pl))) {
+	if (!ns_connect_lru_resize(container_of(pl, struct ldlm_namespace,
+						ns_pool))) {
 		ret = 0;
 		goto out;
 	}
@@ -315,7 +296,8 @@ static int ldlm_cli_pool_recalc(struct ldlm_pool *pl)
 	 * It may be called when SLV has changed much, this is why we do not
 	 * take into account pl->pl_recalc_time here.
 	 */
-	ret = ldlm_cancel_lru(ldlm_pl2ns(pl), 0, LCF_ASYNC, LDLM_CANCEL_LRUR);
+	ret = ldlm_cancel_lru(container_of(pl, struct ldlm_namespace, ns_pool),
+			      0, LCF_ASYNC, LDLM_CANCEL_LRUR);
 
 out:
 	spin_lock(&pl->pl_lock);
@@ -341,7 +323,7 @@ static int ldlm_cli_pool_shrink(struct ldlm_pool *pl,
 	struct ldlm_namespace *ns;
 	int unused;
 
-	ns = ldlm_pl2ns(pl);
+	ns = container_of(pl, struct ldlm_namespace, ns_pool);
 
 	/*
 	 * Do not cancel locks in case lru resize is disabled for this ns.
@@ -453,7 +435,7 @@ static int lprocfs_pool_state_seq_show(struct seq_file *m, void *unused)
 	spin_lock(&pl->pl_lock);
 	slv = pl->pl_server_lock_volume;
 	clv = pl->pl_client_lock_volume;
-	limit = ldlm_pool_get_limit(pl);
+	limit = atomic_read(&pl->pl_limit);
 	granted = atomic_read(&pl->pl_granted);
 	grant_rate = atomic_read(&pl->pl_grant_rate);
 	cancel_rate = atomic_read(&pl->pl_cancel_rate);
@@ -558,7 +540,8 @@ static struct kobj_type ldlm_pl_ktype = {
 
 static int ldlm_pool_sysfs_init(struct ldlm_pool *pl)
 {
-	struct ldlm_namespace *ns = ldlm_pl2ns(pl);
+	struct ldlm_namespace *ns = container_of(pl, struct ldlm_namespace,
+						 ns_pool);
 	int err;
 
 	init_completion(&pl->pl_kobj_unregister);
@@ -570,7 +553,8 @@ static int ldlm_pool_sysfs_init(struct ldlm_pool *pl)
 
 static int ldlm_pool_debugfs_init(struct ldlm_pool *pl)
 {
-	struct ldlm_namespace *ns = ldlm_pl2ns(pl);
+	struct ldlm_namespace *ns = container_of(pl, struct ldlm_namespace,
+						 ns_pool);
 	struct dentry *debugfs_ns_parent;
 	struct lprocfs_vars pool_vars[2];
 	char *var_name = NULL;
@@ -685,7 +669,7 @@ int ldlm_pool_init(struct ldlm_pool *pl, struct ldlm_namespace *ns,
 	snprintf(pl->pl_name, sizeof(pl->pl_name), "ldlm-pool-%s-%d",
 		 ldlm_ns_name(ns), idx);
 
-	ldlm_pool_set_limit(pl, 1);
+	atomic_set(&pl->pl_limit, 1);
 	pl->pl_server_lock_volume = 0;
 	pl->pl_ops = &ldlm_cli_pool_ops;
 	pl->pl_recalc_period = LDLM_POOL_CLI_DEF_RECALC_PERIOD;
-- 
2.1.0


