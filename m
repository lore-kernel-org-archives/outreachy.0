X-GM-THRID: 8179991707648
X-Received: by 10.180.77.165 with SMTP id t5mr4648332wiw.0.1426280560533;
        Fri, 13 Mar 2015 14:02:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.206 with SMTP id q14ls511158lal.49.gmail; Fri, 13 Mar
 2015 14:02:40 -0700 (PDT)
X-Received: by 10.112.147.35 with SMTP id th3mr7427594lbb.15.1426280560057;
        Fri, 13 Mar 2015 14:02:40 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id cl5si197323wib.3.2015.03.13.14.02.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 14:02:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id h11so9357692wiw.1
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 14:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JPvuj1VWnNKF78QsL2TmMfchAUxvV/NoznrB7Y/odK0=;
        b=JkyYBqSA8owW4B6HoqFTwbTLUsJKkh9pNwct+MbIHCUhs7kDSXj0N6hCjK762uLUX1
         bP92cCPpHh0iLjqFOFAmKp9D0KLOS/IUNMCni7ZbZutUDL8HCp9WImTaen2A6KXn5itz
         g5SxYVMWp+s5vpm5NWvigCRlkLVWZAUX9VAzzDNtjDSRRSBM6ZMnrd8cMKJvRzB1cCdY
         I9uUBGPnxljo+heiET3nA6VJcSVoofPZb7l1tahqOzN4Jxn2pnzFV7tOvaEHXmCK9uUe
         W2I7dHSQ+v1Pl9BduAe40LDse9TyQuc++K8ljOe9LFEhkiP+Yup8LN5V11OXeEOrbq3v
         ihWA==
X-Received: by 10.180.24.3 with SMTP id q3mr25713832wif.79.1426280559952;
        Fri, 13 Mar 2015 14:02:39 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id cf12sm4364825wjb.10.2015.03.13.14.02.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 14:02:39 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 9E6A5C1F52; Fri, 13 Mar 2015 20:50:27 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 6/8] Staging: lustre: Remove parentheses around right side an assignment
Date: Fri, 13 Mar 2015 20:48:53 +0300
Message-Id: <1426268933-7941-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com>

Parentheses are not needed around the right hand side of an assignment.
This patch remove parenthese of such occurenses. Issue was detected and
solved using the following coccinelle script:

@rule1@
identifier x, y, z;
expression E1, E2;
@@

(
x = (y == z);
|
x = (E1 == E2);
|
 x =
-(
...
-)
 ;
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c         | 2 +-
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c         | 4 ++--
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c      | 4 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c             | 2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c           | 2 +-
 drivers/staging/lustre/lustre/libcfs/debug.c                | 2 +-
 drivers/staging/lustre/lustre/llite/file.c                  | 2 +-
 drivers/staging/lustre/lustre/llite/lloop.c                 | 2 +-
 drivers/staging/lustre/lustre/llite/rw.c                    | 2 +-
 drivers/staging/lustre/lustre/lov/lov_obd.c                 | 4 ++--
 drivers/staging/lustre/lustre/obdclass/genops.c             | 2 +-
 drivers/staging/lustre/lustre/obdclass/linux/linux-sysctl.c | 2 +-
 drivers/staging/lustre/lustre/osc/osc_io.c                  | 2 +-
 13 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 109f44c..2f2f71c 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -2972,7 +2972,7 @@ kiblnd_start_schedulers(struct kib_sched_info *sched)
 	} else {
 		LASSERT(sched->ibs_nthreads <= sched->ibs_nthreads_max);
 		/* increase one thread if there is new interface */
-		nthrs = (sched->ibs_nthreads < sched->ibs_nthreads_max);
+		nthrs = sched->ibs_nthreads < sched->ibs_nthreads_max;
 	}
 
 	for (i = 0; i < nthrs; i++) {
diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index f815bb8..7586b7e 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -722,7 +722,7 @@ ksocknal_match_peerip(ksock_interface_t *iface, __u32 *ips, int nips)
 		if (ips[i] == 0)
 			continue;
 
-		this_xor = (ips[i] ^ iface->ksni_ipaddr);
+		this_xor = ips[i] ^ iface->ksni_ipaddr;
 		this_netmatch = ((this_xor & iface->ksni_netmask) == 0) ? 1 : 0;
 
 		if (!(best < 0 ||
@@ -809,7 +809,7 @@ ksocknal_select_ips(ksock_peer_t *peer, __u32 *peerips, int n_peerips)
 					continue;
 
 				k = ksocknal_match_peerip(iface, peerips, n_peerips);
-				xor = (ip ^ peerips[k]);
+				xor = ip ^ peerips[k];
 				this_netmatch = ((xor & iface->ksni_netmask) == 0) ? 1 : 0;
 
 				if (!(best_iface == NULL ||
diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
index 92760fe..fa7ad88 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
@@ -1374,9 +1374,9 @@ ksocknal_sched_cansleep(ksock_sched_t *sched)
 
 	spin_lock_bh(&sched->kss_lock);
 
-	rc = (!ksocknal_data.ksnd_shuttingdown &&
+	rc = !ksocknal_data.ksnd_shuttingdown &&
 	      list_empty(&sched->kss_rx_conns) &&
-	      list_empty(&sched->kss_tx_conns));
+	      list_empty(&sched->kss_tx_conns);
 
 	spin_unlock_bh(&sched->kss_lock);
 	return rc;
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
index e0a8157..08a91f5 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
@@ -152,7 +152,7 @@ void ldlm_handle_bl_callback(struct ldlm_namespace *ns,
 	if (lock->l_flags & LDLM_FL_CANCEL_ON_BLOCK)
 		lock->l_flags |= LDLM_FL_CANCEL;
 
-	do_ast = (!lock->l_readers && !lock->l_writers);
+	do_ast = !lock->l_readers && !lock->l_writers;
 	unlock_res_and_lock(lock);
 
 	if (do_ast) {
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
index 53226b8..4f71318 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
@@ -307,7 +307,7 @@ int ldlm_blocking_ast_nocheck(struct ldlm_lock *lock)
 	int do_ast;
 
 	lock->l_flags |= LDLM_FL_CBPENDING;
-	do_ast = (!lock->l_readers && !lock->l_writers);
+	do_ast = !lock->l_readers && !lock->l_writers;
 	unlock_res_and_lock(lock);
 
 	if (do_ast) {
diff --git a/drivers/staging/lustre/lustre/libcfs/debug.c b/drivers/staging/lustre/lustre/libcfs/debug.c
index 5435236..021c92f 100644
--- a/drivers/staging/lustre/lustre/libcfs/debug.c
+++ b/drivers/staging/lustre/lustre/libcfs/debug.c
@@ -409,7 +409,7 @@ int libcfs_debug_init(unsigned long bufsize)
 	if (max > cfs_trace_max_debug_mb() || max < num_possible_cpus()) {
 		max = TCD_MAX_PAGES;
 	} else {
-		max = (max / num_possible_cpus());
+		max = max / num_possible_cpus();
 		max <<= (20 - PAGE_CACHE_SHIFT);
 	}
 	rc = cfs_tracefile_init(max);
diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 0fd113d..6dab3ba 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -161,7 +161,7 @@ static int ll_close_inode_openhandle(struct obd_export *md_exp,
 		op_data->op_lease_handle = och->och_lease_handle;
 		op_data->op_attr.ia_valid |= ATTR_SIZE | ATTR_BLOCKS;
 	}
-	epoch_close = (op_data->op_flags & MF_EPOCH_CLOSE);
+	epoch_close = op_data->op_flags & MF_EPOCH_CLOSE;
 	rc = md_close(md_exp, op_data, och->och_mod, &req);
 	if (rc == -EAGAIN) {
 		/* This close must have the epoch closed. */
diff --git a/drivers/staging/lustre/lustre/llite/lloop.c b/drivers/staging/lustre/lustre/llite/lloop.c
index cec9254..413a840 100644
--- a/drivers/staging/lustre/lustre/llite/lloop.c
+++ b/drivers/staging/lustre/lustre/llite/lloop.c
@@ -348,7 +348,7 @@ static void loop_make_request(struct request_queue *q, struct bio *old_bio)
 	       old_bio->bi_iter.bi_size);
 
 	spin_lock_irq(&lo->lo_lock);
-	inactive = (lo->lo_state != LLOOP_BOUND);
+	inactive = lo->lo_state != LLOOP_BOUND;
 	spin_unlock_irq(&lo->lo_lock);
 	if (inactive)
 		goto err;
diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
index 8884a43..991d20c 100644
--- a/drivers/staging/lustre/lustre/llite/rw.c
+++ b/drivers/staging/lustre/lustre/llite/rw.c
@@ -750,7 +750,7 @@ int ll_readahead(const struct lu_env *env, struct cl_io *io,
 		/* Note: we only trim the RPC, instead of extending the RPC
 		 * to the boundary, so to avoid reading too much pages during
 		 * random reading. */
-		rpc_boundary = ((end + 1) & (~(PTLRPC_MAX_BRW_PAGES - 1)));
+		rpc_boundary = (end + 1) & (~(PTLRPC_MAX_BRW_PAGES - 1));
 		if (rpc_boundary > 0)
 			rpc_boundary--;
 
diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index 219852a..b2ed52f 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -1667,8 +1667,8 @@ static int fiemap_calc_last_stripe(struct lov_stripe_md *lsm, u64 fm_start,
 	int i, j;
 
 	if (fm_end - fm_start > lsm->lsm_stripe_size * lsm->lsm_stripe_count) {
-		last_stripe = (start_stripe < 1 ? lsm->lsm_stripe_count - 1 :
-							      start_stripe - 1);
+		last_stripe = start_stripe < 1 ? lsm->lsm_stripe_count - 1 :
+							      start_stripe - 1;
 		*stripe_count = lsm->lsm_stripe_count;
 	} else {
 		for (j = 0, i = start_stripe; j < lsm->lsm_stripe_count;
diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index 6d440b4..01858b0 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -1221,7 +1221,7 @@ int class_connected_export(struct obd_export *exp)
 	if (exp) {
 		int connected;
 		spin_lock(&exp->exp_lock);
-		connected = (exp->exp_conn_cnt > 0);
+		connected = exp->exp_conn_cnt > 0;
 		spin_unlock(&exp->exp_lock);
 		return connected;
 	}
diff --git a/drivers/staging/lustre/lustre/obdclass/linux/linux-sysctl.c b/drivers/staging/lustre/lustre/obdclass/linux/linux-sysctl.c
index c86598d..4b62d25 100644
--- a/drivers/staging/lustre/lustre/obdclass/linux/linux-sysctl.c
+++ b/drivers/staging/lustre/lustre/obdclass/linux/linux-sysctl.c
@@ -206,7 +206,7 @@ static int proc_max_dirty_pages_in_mb(struct ctl_table *table, int write,
 			CERROR("Refusing to set max dirty pages to %u, which is more than 90%% of available RAM; setting to %lu\n",
 			       obd_max_dirty_pages,
 			       ((totalram_pages / 10) * 9));
-			obd_max_dirty_pages = ((totalram_pages / 10) * 9);
+			obd_max_dirty_pages = (totalram_pages / 10) * 9;
 		} else if (obd_max_dirty_pages < 4 << (20 - PAGE_CACHE_SHIFT)) {
 			obd_max_dirty_pages = 4 << (20 - PAGE_CACHE_SHIFT);
 		}
diff --git a/drivers/staging/lustre/lustre/osc/osc_io.c b/drivers/staging/lustre/lustre/osc/osc_io.c
index fad4c13..3c7300b 100644
--- a/drivers/staging/lustre/lustre/osc/osc_io.c
+++ b/drivers/staging/lustre/lustre/osc/osc_io.c
@@ -417,7 +417,7 @@ static int osc_io_setattr_start(const struct lu_env *env,
 
 			if (ia_valid & ATTR_SIZE) {
 				attr->cat_size = attr->cat_kms = size;
-				cl_valid = (CAT_SIZE | CAT_KMS);
+				cl_valid = CAT_SIZE | CAT_KMS;
 			}
 			if (ia_valid & ATTR_MTIME_SET) {
 				attr->cat_mtime = lvb->lvb_mtime;
-- 
1.9.1


