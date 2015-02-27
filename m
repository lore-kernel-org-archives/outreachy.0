X-GM-THRID: 4794195378176
X-Received: by 10.194.221.65 with SMTP id qc1mr2306509wjc.7.1425065683589;
        Fri, 27 Feb 2015 11:34:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.98 with SMTP id m2ls216630lae.5.gmail; Fri, 27 Feb 2015
 11:34:43 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr2285275lbo.8.1425065683285;
        Fri, 27 Feb 2015 11:34:43 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id ev8si170773wib.3.2015.02.27.11.34.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:34:43 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id em10so2420715wid.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QVAFlUiz0jYqgsWwmgZekmpcrLeCr2Giz4t/Gzfx/BQ=;
        b=VSXHsUKwihFMUAmHptp3YbUdXv16hG3zZXfXY0ZtX8YfIJJMLsZsg6/m7Ai+1mwnLp
         KwIhvdFarUhcHAi8ep+nPJHI/rlXU5nFsMEsKRLPR9TWFBE49udH+nQ0uh2cASYVnFvu
         pw6VZK6Nom4NRsfdakyYRy3nj29u4ak0qcPy0gBGEXZTpHQtKWuAJ30vf0wkG7Jr1FH4
         uysUX5fNXr8xDf6THAldfgxK4Z0Uej25Ae323i/1RRdr+5XxdoM3d3fO47agbzUfGprR
         Yz1SgZrsGob+XP2acvo/qChnM+OfRSwFBpWwJEUlVz7g9VBjQS/xwZD53bjh+Ja3nEgl
         LYvQ==
X-Received: by 10.194.89.163 with SMTP id bp3mr30345920wjb.145.1425065675149;
        Fri, 27 Feb 2015 11:34:35 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id q10sm7238282wjr.41.2015.02.27.11.34.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 11:34:34 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lustre: obdecho: Add blank line after declarations
Date: Fri, 27 Feb 2015 21:34:25 +0200
Message-Id: <1425065665-15261-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/obdecho/echo_client.c WARNING: Missing a blank line after declarations

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lustre/obdecho/echo_client.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index 5441de9..ff51180 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -146,6 +146,7 @@ static struct lu_context_key echo_thread_key;
 static inline struct echo_thread_info *echo_env_info(const struct lu_env *env)
 {
 	struct echo_thread_info *info;
+
 	info = lu_context_key_get(&env->le_ctx, &echo_thread_key);
 	LASSERT(info != NULL);
 	return info;
@@ -637,6 +638,7 @@ static void echo_thread_key_fini(const struct lu_context *ctx,
 			 struct lu_context_key *key, void *data)
 {
 	struct echo_thread_info *info = data;
+
 	OBD_SLAB_FREE_PTR(info, echo_thread_kmem);
 }
 
@@ -667,6 +669,7 @@ static void echo_session_key_fini(const struct lu_context *ctx,
 				 struct lu_context_key *key, void *data)
 {
 	struct echo_session_info *session = data;
+
 	OBD_SLAB_FREE_PTR(session, echo_session_kmem);
 }
 
@@ -783,6 +786,7 @@ out:
 	switch (cleanup) {
 	case 4: {
 		int rc2;
+
 		rc2 = echo_client_cleanup(obd);
 		if (rc2)
 			CERROR("Cleanup obd device %s error(%d)\n",
@@ -958,11 +962,13 @@ static struct echo_object *cl_echo_object_find(struct echo_device *d,
 	if (d->ed_next) {
 		if (!d->ed_next_islov) {
 			struct lov_oinfo *oinfo = lsm->lsm_oinfo[0];
+
 			LASSERT(oinfo != NULL);
 			oinfo->loi_oi = lsm->lsm_oi;
 			conf->eoc_cl.u.coc_oinfo = oinfo;
 		} else {
 			struct lustre_md *md;
+
 			md = &info->eti_md;
 			memset(md, 0, sizeof(*md));
 			md->lsm = lsm;
@@ -1011,6 +1017,7 @@ static int cl_echo_object_put(struct echo_object *eco)
 	/* an external function to kill an object? */
 	if (eco->eo_deleted) {
 		struct lu_object_header *loh = obj->co_lu.lo_header;
+
 		LASSERT(&eco->eo_hdr == luh2coh(loh));
 		set_bit(LU_OBJECT_HEARD_BANSHEE, &loh->loh_flags);
 	}
@@ -1152,6 +1159,7 @@ static int cl_echo_async_brw(const struct lu_env *env, struct cl_io *io,
 
 	cl_page_list_for_each_safe(clp, temp, &queue->c2_qin) {
 		int rc;
+
 		rc = cl_page_cache_add(env, io, clp, CRT_WRITE);
 		if (rc == 0)
 			continue;
@@ -1615,6 +1623,7 @@ static int echo_client_kbrw(struct echo_device *ed, int rw, struct obdo *oa,
 
 		if (verify) {
 			int vrc;
+
 			vrc = echo_client_page_debug_check(lsm, pgp->pg,
 							   ostid_id(&oa->o_oi),
 							   pgp->off, pgp->count);
@@ -1911,6 +1920,7 @@ echo_client_iocontrol(unsigned int cmd, struct obd_export *exp, int len,
 		rc = echo_get_object(&eco, ed, oa);
 		if (rc == 0) {
 			struct obd_info oinfo = { { { 0 } } };
+
 			oinfo.oi_md = eco->eo_lsm;
 			oinfo.oi_oa = oa;
 			rc = obd_getattr(env, ec->ec_exp, &oinfo);
@@ -1927,6 +1937,7 @@ echo_client_iocontrol(unsigned int cmd, struct obd_export *exp, int len,
 		rc = echo_get_object(&eco, ed, oa);
 		if (rc == 0) {
 			struct obd_info oinfo = { { { 0 } } };
+
 			oinfo.oi_oa = oa;
 			oinfo.oi_md = eco->eo_lsm;
 
-- 
1.9.1


