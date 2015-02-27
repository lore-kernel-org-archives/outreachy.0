X-GM-THRID: 4775794966528
X-Received: by 10.194.142.174 with SMTP id rx14mr2297152wjb.4.1425064129122;
        Fri, 27 Feb 2015 11:08:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.169 with SMTP id x9ls215790lal.108.gmail; Fri, 27 Feb
 2015 11:08:48 -0800 (PST)
X-Received: by 10.112.9.65 with SMTP id x1mr2334347lba.16.1425064128609;
        Fri, 27 Feb 2015 11:08:48 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id r6si180947wix.0.2015.02.27.11.08.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:08:48 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x235.google.com with SMTP id a1so22209164wgh.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=AlE+J+zWR7eK+NxVDCyyEqgTky/4ApyuM9FQGhFE58Q=;
        b=rA7ck2nHBPgukAcmC+4n2ixYm+7z00RNkeZy2G6ipiInkPBk6Mvgo+tC1+d+3mrXOu
         Et1s13EOW0Wh3YwiUMp1/hKBqe4tQSNn/w4geVVvqL0r2DBFi0eJ9K/gqygNcGbWWXZR
         eTXZ/w9D7dDyI5Dhp/fXyxGE/hYO61MQSx5S00RfiB2hrdxV00M1sNzSq3T0dvstSMuI
         yVYrTqCDLaN3X3xqKc41z00IE2aWQSrGzjU3O0UA+LKpryLjI/RwheN+w7mxL+ne3cuq
         vhv+j+X8Rz2d6tL328V87ED9cq/hi1GGWmGFi1/Ho/4VLG+pQi9Q8edohBEEQQ74nELw
         P0mw==
X-Received: by 10.180.38.76 with SMTP id e12mr9277893wik.76.1425064128516;
        Fri, 27 Feb 2015 11:08:48 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id l6sm7168107wjx.33.2015.02.27.11.08.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 11:08:47 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Stagin: lustre: lustre: obdecho: Remove space after the name of that function
Date: Fri, 27 Feb 2015 21:08:40 +0200
Message-Id: <1425064120-14808-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with "space prohibited between function name
and open parenthesis" in echo_client.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 .../staging/lustre/lustre/obdecho/echo_client.c    | 46 +++++++++++-----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index 5f6d944..5441de9 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -195,22 +195,22 @@ static struct lu_kmem_descr echo_caches[] = {
 	{
 		.ckd_cache = &echo_lock_kmem,
 		.ckd_name  = "echo_lock_kmem",
-		.ckd_size  = sizeof (struct echo_lock)
+		.ckd_size  = sizeof(struct echo_lock)
 	},
 	{
 		.ckd_cache = &echo_object_kmem,
 		.ckd_name  = "echo_object_kmem",
-		.ckd_size  = sizeof (struct echo_object)
+		.ckd_size  = sizeof(struct echo_object)
 	},
 	{
 		.ckd_cache = &echo_thread_kmem,
 		.ckd_name  = "echo_thread_kmem",
-		.ckd_size  = sizeof (struct echo_thread_info)
+		.ckd_size  = sizeof(struct echo_thread_info)
 	},
 	{
 		.ckd_cache = &echo_session_kmem,
 		.ckd_name  = "echo_session_kmem",
-		.ckd_size  = sizeof (struct echo_session_info)
+		.ckd_size  = sizeof(struct echo_session_info)
 	},
 	{
 		.ckd_cache = NULL
@@ -1106,8 +1106,8 @@ static int cl_echo_cancel0(struct lu_env *env, struct echo_device *ed,
 
 	LASSERT(ec != NULL);
 	spin_lock(&ec->ec_lock);
-	list_for_each (el, &ec->ec_locks) {
-		ecl = list_entry (el, struct echo_lock, el_chain);
+	list_for_each(el, &ec->ec_locks) {
+		ecl = list_entry(el, struct echo_lock, el_chain);
 		CDEBUG(D_INFO, "ecl: %p, cookie: %#llx\n", ecl, ecl->el_cookie);
 		found = (ecl->el_cookie == cookie);
 		if (found) {
@@ -1257,20 +1257,20 @@ out:
 static u64 last_object_id;
 
 static int
-echo_copyout_lsm (struct lov_stripe_md *lsm, void *_ulsm, int ulsm_nob)
+echo_copyout_lsm(struct lov_stripe_md *lsm, void *_ulsm, int ulsm_nob)
 {
 	struct lov_stripe_md *ulsm = _ulsm;
 	int nob, i;
 
-	nob = offsetof (struct lov_stripe_md, lsm_oinfo[lsm->lsm_stripe_count]);
+	nob = offsetof(struct lov_stripe_md, lsm_oinfo[lsm->lsm_stripe_count]);
 	if (nob > ulsm_nob)
 		return -EINVAL;
 
-	if (copy_to_user (ulsm, lsm, sizeof(*ulsm)))
+	if (copy_to_user(ulsm, lsm, sizeof(*ulsm)))
 		return -EFAULT;
 
 	for (i = 0; i < lsm->lsm_stripe_count; i++) {
-		if (copy_to_user (ulsm->lsm_oinfo[i], lsm->lsm_oinfo[i],
+		if (copy_to_user(ulsm->lsm_oinfo[i], lsm->lsm_oinfo[i],
 				      sizeof(lsm->lsm_oinfo[0])))
 			return -EFAULT;
 	}
@@ -1278,16 +1278,16 @@ echo_copyout_lsm (struct lov_stripe_md *lsm, void *_ulsm, int ulsm_nob)
 }
 
 static int
-echo_copyin_lsm (struct echo_device *ed, struct lov_stripe_md *lsm,
+echo_copyin_lsm(struct echo_device *ed, struct lov_stripe_md *lsm,
 		 void *ulsm, int ulsm_nob)
 {
 	struct echo_client_obd *ec = ed->ed_ec;
 	int		     i;
 
-	if (ulsm_nob < sizeof (*lsm))
+	if (ulsm_nob < sizeof(*lsm))
 		return -EINVAL;
 
-	if (copy_from_user (lsm, ulsm, sizeof (*lsm)))
+	if (copy_from_user(lsm, ulsm, sizeof(*lsm)))
 		return -EFAULT;
 
 	if (lsm->lsm_stripe_count > ec->ec_nstripes ||
@@ -1320,7 +1320,7 @@ static int echo_create_object(const struct lu_env *env, struct echo_device *ed,
 	if ((oa->o_valid & OBD_MD_FLID) == 0 && /* no obj id */
 	    (on_target ||		       /* set_stripe */
 	     ec->ec_nstripes != 0)) {	   /* LOV */
-		CERROR ("No valid oid\n");
+		CERROR("No valid oid\n");
 		return -EINVAL;
 	}
 
@@ -1333,7 +1333,7 @@ static int echo_create_object(const struct lu_env *env, struct echo_device *ed,
 	if (ulsm != NULL) {
 		int i, idx;
 
-		rc = echo_copyin_lsm (ed, lsm, ulsm, ulsm_nob);
+		rc = echo_copyin_lsm(ed, lsm, ulsm, ulsm_nob);
 		if (rc != 0)
 			goto failed;
 
@@ -1409,7 +1409,7 @@ static int echo_get_object(struct echo_object **ecop, struct echo_device *ed,
 
 	if ((oa->o_valid & OBD_MD_FLID) == 0 || ostid_id(&oa->o_oi) == 0) {
 		/* disallow use of object id 0 */
-		CERROR ("No valid oid\n");
+		CERROR("No valid oid\n");
 		return -EINVAL;
 	}
 
@@ -1459,7 +1459,7 @@ echo_get_stripe_off_id(struct lov_stripe_md *lsm, u64 *offp, u64 *idp)
 	width = stripe_size * stripe_count;
 
 	/* woffset = offset within a width; offset = whole number of widths */
-	woffset = do_div (offset, width);
+	woffset = do_div(offset, width);
 
 	stripe_index = woffset / stripe_size;
 
@@ -1517,13 +1517,13 @@ static int echo_client_page_debug_check(struct lov_stripe_md *lsm,
 	for (rc = delta = 0; delta < PAGE_CACHE_SIZE; delta += OBD_ECHO_BLOCK_SIZE) {
 		stripe_off = offset + delta;
 		stripe_id = id;
-		echo_get_stripe_off_id (lsm, &stripe_off, &stripe_id);
+		echo_get_stripe_off_id(lsm, &stripe_off, &stripe_id);
 
 		rc2 = block_debug_check("test_brw",
 					addr + delta, OBD_ECHO_BLOCK_SIZE,
 					stripe_off, stripe_id);
 		if (rc2 != 0) {
-			CERROR ("Error in echo object %#llx\n", id);
+			CERROR("Error in echo object %#llx\n", id);
 			rc = rc2;
 		}
 	}
@@ -1583,7 +1583,7 @@ static int echo_client_kbrw(struct echo_device *ed, int rw, struct obdo *oa,
 	     i < npages;
 	     i++, pgp++, off += PAGE_CACHE_SIZE) {
 
-		LASSERT (pgp->pg == NULL);      /* for cleanup */
+		LASSERT(pgp->pg == NULL);      /* for cleanup */
 
 		rc = -ENOMEM;
 		OBD_PAGE_ALLOC(pgp->pg, gfp_mask);
@@ -1992,7 +1992,7 @@ echo_client_iocontrol(unsigned int cmd, struct obd_export *exp, int len,
 		goto out;
 
 	default:
-		CERROR ("echo_ioctl(): unrecognised ioctl %#x\n", cmd);
+		CERROR("echo_ioctl(): unrecognised ioctl %#x\n", cmd);
 		rc = -ENOTTY;
 		goto out;
 	}
@@ -2034,8 +2034,8 @@ static int echo_client_setup(const struct lu_env *env,
 	}
 
 	spin_lock_init(&ec->ec_lock);
-	INIT_LIST_HEAD (&ec->ec_objects);
-	INIT_LIST_HEAD (&ec->ec_locks);
+	INIT_LIST_HEAD(&ec->ec_objects);
+	INIT_LIST_HEAD(&ec->ec_locks);
 	ec->ec_unique = 0;
 	ec->ec_nstripes = 0;
 
-- 
1.9.1


