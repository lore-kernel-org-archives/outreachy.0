X-GM-THRID: 6209555630081966080
X-Received: by 10.140.236.65 with SMTP id h62mr25250099qhc.13.1445774842145;
        Sun, 25 Oct 2015 05:07:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.136 with SMTP id e8ls3054937qga.40.gmail; Sun, 25 Oct
 2015 05:07:21 -0700 (PDT)
X-Received: by 10.129.156.198 with SMTP id t189mr24868901ywg.26.1445774841519;
        Sun, 25 Oct 2015 05:07:21 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si3119774pbb.2.2015.10.25.05.07.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 05:07:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fa8so4875699pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 05:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=DWXMlPXhfd+RF4WboUpo06ZwBD6a6Kc1Y6Gi7XIGVTo=;
        b=AWbq6vg5XzRdaoff6yAVTDZJ3luc3iFo5IRMlZ9FGKumFDJ+vnIFqsv8qOxh0t5JmM
         PfEjcA4QzmWSLqtc9AfoZe32AvHLfJqUly0WDzQOVXfrN9jwyDWvIMNhCA79M4/74zS+
         ygFw6ZCCKsMdQ31ErtJ8Qg4Aiu6TQqOVE2ww9n6vdPAjfltjF7sNe29+TdQafjOZSCIC
         kbbDbEWPBDfS0TmslU1ACMdfSyq47MhJJXkwDwoKtmr3zXa+IXUnv6IEmhRq9ra9/PmV
         CW37ezxkNuyw8lDpxxj+s9nw//Spd+krLJuhpfs6z4UqQkYdRrVUSAGP7ooDNzFfHJOh
         BwQQ==
X-Received: by 10.68.245.67 with SMTP id xm3mr16094346pbc.121.1445774841382;
        Sun, 25 Oct 2015 05:07:21 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sn9sm28505944pac.16.2015.10.25.05.07.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 25 Oct 2015 05:07:20 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/4] Staging: lustre: lustre_log: Remove unused functions
Date: Sun, 25 Oct 2015 17:36:58 +0530
Message-Id: <1445774820-9184-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
References: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.562CC5F8.0014,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove the functions which are defined but not used anywhere
---
 drivers/staging/lustre/lustre/include/lustre_log.h | 89 ----------------------
 1 file changed, 89 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_log.h b/drivers/staging/lustre/lustre/include/lustre_log.h
index 5d3b2df..901d6a6 100644
--- a/drivers/staging/lustre/lustre/include/lustre_log.h
+++ b/drivers/staging/lustre/lustre/include/lustre_log.h
@@ -80,36 +80,6 @@ struct cat_handle_data {
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
 
 struct llog_handle;
 
@@ -286,19 +256,6 @@ struct llog_ctxt {
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
@@ -309,18 +266,6 @@ static inline int llog_handle2ops(struct llog_handle *loghandle,
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
@@ -421,40 +366,6 @@ static inline int llog_next_block(const struct lu_env *env,
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


