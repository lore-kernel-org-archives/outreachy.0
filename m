X-GM-THRID: 6208399403783290880
X-Received: by 10.13.219.195 with SMTP id d186mr24934636ywe.30.1445927723454;
        Mon, 26 Oct 2015 23:35:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.193 with SMTP id l1ls1132736igx.1.canary; Mon, 26 Oct
 2015 23:35:23 -0700 (PDT)
X-Received: by 10.107.136.215 with SMTP id s84mr14988296ioi.21.1445927723177;
        Mon, 26 Oct 2015 23:35:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id vy6si3900783pbc.1.2015.10.26.23.35.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 23:35:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id la5so19624908pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 23:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=amZqcUOwjaZqmUGyg6AgWdAbUjS+7xrWiX/EXO5lKPo=;
        b=RaEG2+lY2yw1MCzw5xCUeOH3evOt0Ow0SjnbK8SYlJcNWF+xm3FC5JK6bv5zwTWIKl
         gxAnQNhP4DyQnI9WDF25+a3IIUpuwFd5cJ93nqTIMJR4DFw1qtJpeBHBasMmdB/QgGm5
         CYp5ErWvhbFCOPHmVv1F2GN6XEesQFSJcmDPxTbO73gtDgBrkLmRSehFHDXDZv1MYhJt
         0bflBx2TEIrmqkcJU0AIsJ1st0gkyKPrv+L9Dj018L9ROvUB+FcmEJZO+/4ZtI9wJGBC
         P4wm0CQq64Ct3z1TW9JKvmcquiOZH0/b3ZcRGqZMtfRSrIp3h9nIISnVi4HZD1eGc2mO
         3Gpw==
X-Received: by 10.68.217.194 with SMTP id pa2mr26316438pbc.105.1445927723064;
        Mon, 26 Oct 2015 23:35:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rw8sm17083594pbc.70.2015.10.26.23.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 23:35:22 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] Staging: lustre: lustre_log: Remove unused functions
Date: Tue, 27 Oct 2015 12:05:09 +0530
Message-Id: <1445927710-3559-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1445927710-3559-1-git-send-email-shraddha.6596@gmail.com>
References: <1445927710-3559-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.562F1B29.02FF,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

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


