X-GM-THRID: 6208306877755817984
X-Received: by 10.66.147.33 with SMTP id th1mr10466967pab.27.1445484086776;
        Wed, 21 Oct 2015 20:21:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.225.129 with SMTP id rk1ls581216obc.35.gmail; Wed, 21 Oct
 2015 20:21:26 -0700 (PDT)
X-Received: by 10.182.89.129 with SMTP id bo1mr10728349obb.4.1445484086349;
        Wed, 21 Oct 2015 20:21:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id sm2si106101pab.0.2015.10.21.20.21.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 20:21:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so76816486pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 20:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=amZqcUOwjaZqmUGyg6AgWdAbUjS+7xrWiX/EXO5lKPo=;
        b=xW1Gwd1fqXTuq6WLOuLZEAoWhcBkL7+myXQz7F4GtLR5ahW7+nm4ERfZhbWsCCN5iZ
         M5nRf31PqJYaYuUf8enPEVPQXO8Xo15sBbGwZOE8bt1oRH3wvWNBnpkm00+PBv8JtCHl
         rLg4I9RFnldoW8QMS+EhVLjLmtOpMDlJIodeA2oHQISrYPGc6Gom5T0sXOMLbOAyh3sq
         pKTcSax4G5OzVu+yCoxl/bTOxNQ4VFeLy1PND/d5hPzIOCLUnE+DCGicpI3c6cNPWwbk
         vJxeezxUwFrswyHYOpU76kRRxq3zW5+MatVaIN4w+Q1N3g2mRKBau9Ls9pYBt2jmzgAx
         Vxaw==
X-Received: by 10.66.235.4 with SMTP id ui4mr14293855pac.129.1445484086198;
        Wed, 21 Oct 2015 20:21:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yh3sm11611348pbb.82.2015.10.21.20.21.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 20:21:25 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>,
	devel@driverdev.osuosl.org
Subject: [PATCH] Staging: lustre: lustre_log: Remove unused functions
Date: Thu, 22 Oct 2015 08:51:18 +0530
Message-Id: <1445484078-23008-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Remove the functions which are defined but not used anywhere

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_log.h | 90 ----------------------
 1 file changed, 90 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_log.h b/drivers/staging/lustre/lustre/include/lustre_log.h
index 5d3b2df..1de0c4d 100644
--- a/drivers/staging/lustre/lustre/include/lustre_log.h
+++ b/drivers/staging/lustre/lustre/include/lustre_log.h
@@ -80,37 +80,6 @@ struct cat_handle_data {
 	struct llog_handle	*chd_next_log; /* llog to be used next */
 };
 
-static inline void logid_to_fid(struct llog_logid *id, struct lu_fid *fid)
-{
-	/* For compatibility purposes we identify pre-OSD (~< 2.3.51 MDS)
-	 * logid's by non-zero ogen (inode generation) and convert them
-	 * into IGIF */
-	if (id->lgl_ogen == 0) {
-		fid->f_seq = id->lgl_oi.oi.oi_seq;
-		fid->f_oid = id->lgl_oi.oi.oi_id;
-		fid->f_ver = 0;
-	} else {
-		lu_igif_build(fid, id->lgl_oi.oi.oi_id, id->lgl_ogen);
-	}
-}
-
-static inline void fid_to_logid(struct lu_fid *fid, struct llog_logid *id)
-{
-	id->lgl_oi.oi.oi_seq = fid->f_seq;
-	id->lgl_oi.oi.oi_id = fid->f_oid;
-	id->lgl_ogen = 0;
-}
-
-static inline void logid_set_id(struct llog_logid *log_id, __u64 id)
-{
-	log_id->lgl_oi.oi.oi_id = id;
-}
-
-static inline __u64 logid_id(struct llog_logid *log_id)
-{
-	return log_id->lgl_oi.oi.oi_id;
-}
-
 struct llog_handle;
 
 /* llog.c  -  general API */
@@ -286,19 +255,6 @@ struct llog_ctxt {
 #define LLOG_PROC_BREAK 0x0001
 #define LLOG_DEL_RECORD 0x0002
 
-static inline int llog_obd2ops(struct llog_ctxt *ctxt,
-			       struct llog_operations **lop)
-{
-	if (ctxt == NULL)
-		return -ENOTCONN;
-
-	*lop = ctxt->loc_logops;
-	if (*lop == NULL)
-		return -EOPNOTSUPP;
-
-	return 0;
-}
-
 static inline int llog_handle2ops(struct llog_handle *loghandle,
 				  struct llog_operations **lop)
 {
@@ -309,18 +265,6 @@ static inline int llog_handle2ops(struct llog_handle *loghandle,
 	return 0;
 }
 
-static inline int llog_data_len(int len)
-{
-	return cfs_size_round(len);
-}
-
-static inline int llog_get_size(struct llog_handle *loghandle)
-{
-	if (loghandle && loghandle->lgh_hdr)
-		return loghandle->lgh_hdr->llh_count;
-	return 0;
-}
-
 static inline struct llog_ctxt *llog_ctxt_get(struct llog_ctxt *ctxt)
 {
 	atomic_inc(&ctxt->loc_refcount);
@@ -421,40 +365,6 @@ static inline int llog_next_block(const struct lu_env *env,
 	return rc;
 }
 
-static inline int llog_prev_block(const struct lu_env *env,
-				  struct llog_handle *loghandle,
-				  int prev_idx, void *buf, int len)
-{
-	struct llog_operations *lop;
-	int rc;
-
-	rc = llog_handle2ops(loghandle, &lop);
-	if (rc)
-		return rc;
-	if (lop->lop_prev_block == NULL)
-		return -EOPNOTSUPP;
-
-	rc = lop->lop_prev_block(env, loghandle, prev_idx, buf, len);
-	return rc;
-}
-
-static inline int llog_connect(struct llog_ctxt *ctxt,
-			       struct llog_logid *logid, struct llog_gen *gen,
-			       struct obd_uuid *uuid)
-{
-	struct llog_operations	*lop;
-	int			 rc;
-
-	rc = llog_obd2ops(ctxt, &lop);
-	if (rc)
-		return rc;
-	if (lop->lop_connect == NULL)
-		return -EOPNOTSUPP;
-
-	rc = lop->lop_connect(ctxt, logid, gen, uuid);
-	return rc;
-}
-
 /* llog.c */
 int llog_declare_write_rec(const struct lu_env *env,
 			   struct llog_handle *handle,
-- 
2.1.4


