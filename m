X-GM-THRID: 6211756809938534400
X-Received: by 10.68.253.136 with SMTP id aa8mr9986391pbd.14.1446287345401;
        Sat, 31 Oct 2015 03:29:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.163 with SMTP id f32ls55422qgf.48.gmail; Sat, 31 Oct
 2015 03:29:04 -0700 (PDT)
X-Received: by 10.129.106.212 with SMTP id f203mr10781046ywc.5.1446287344774;
        Sat, 31 Oct 2015 03:29:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si1129087pac.2.2015.10.31.03.29.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:29:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hk11so98324965pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=u9j/xgnuTMCbZ1IyNfK9r7fIbE3hnO4s/TNdYNM7m8E=;
        b=uZ5FkReqrxcUu4Zue5wYOdehyBpT2XYiOCqiQ0SqJ2wEhgVm0jRmHWklBome7Sey6W
         3EPc0n5rzJBHljetNO1Tjpt2xAkGi+WcqKf8eEYSykKV5M0GZvpveKdMamSj1fsiLALY
         7LU/a+fSTHaZPUS9P/9yEm1bSY/zbAGuumrc/d9O3jeT3hXbooofNvHtX+V0ViNDme0U
         PGd1qqARCqMhhBO+5iSk/T522Xq8jCdhJVr6gzdsvZ64WuJ4dROVDT9kmEyWPrRJqb0f
         tLkTSrsRj9EQkVnb4frv+BXXHMRTqpMgEEbpJ9YRirY2SVIuiGBuKXY/uJyNX+ROu53f
         gC6g==
X-Received: by 10.69.10.163 with SMTP id eb3mr14524821pbd.162.1446287344632;
        Sat, 31 Oct 2015 03:29:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id wh10sm13145706pab.2.2015.10.31.03.29.01
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:29:04 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: <devel@driverdev.osuosl.org>
Subject: [PATCH 3/6] Staging: lustre: lmv: Declare local functions as static
Date: Sat, 31 Oct 2015 15:58:43 +0530
Message-Id: <1446287326-9404-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
References: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.563497EF.0102,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare functions lmv_intent_open and lmv_intent_lookup as static
since they are used only in this particular file. Also remove
corresponding declarations from header file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_intent.c   | 21 +++++++++++----------
 drivers/staging/lustre/lustre/lmv/lmv_internal.h | 12 ------------
 2 files changed, 11 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_intent.c b/drivers/staging/lustre/lustre/lmv/lmv_intent.c
index eebe45b..3c585ae 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_intent.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_intent.c
@@ -156,11 +156,11 @@ out:
  * IT_OPEN is intended to open (and create, possible) an object. Parent (pid)
  * may be split dir.
  */
-int lmv_intent_open(struct obd_export *exp, struct md_op_data *op_data,
-		    void *lmm, int lmmsize, struct lookup_intent *it,
-		    int flags, struct ptlrpc_request **reqp,
-		    ldlm_blocking_callback cb_blocking,
-		    __u64 extra_lock_flags)
+static int lmv_intent_open(struct obd_export *exp, struct md_op_data *op_data,
+			   void *lmm, int lmmsize, struct lookup_intent *it,
+			   int flags, struct ptlrpc_request **reqp,
+			   ldlm_blocking_callback cb_blocking,
+			   __u64 extra_lock_flags)
 {
 	struct obd_device	*obd = exp->exp_obd;
 	struct lmv_obd		*lmv = &obd->u.lmv;
@@ -239,11 +239,12 @@ int lmv_intent_open(struct obd_export *exp, struct md_op_data *op_data,
 /*
  * Handler for: getattr, lookup and revalidate cases.
  */
-int lmv_intent_lookup(struct obd_export *exp, struct md_op_data *op_data,
-		      void *lmm, int lmmsize, struct lookup_intent *it,
-		      int flags, struct ptlrpc_request **reqp,
-		      ldlm_blocking_callback cb_blocking,
-		      __u64 extra_lock_flags)
+static int lmv_intent_lookup(struct obd_export *exp,
+			     struct md_op_data *op_data,
+			     void *lmm, int lmmsize, struct lookup_intent *it,
+			     int flags, struct ptlrpc_request **reqp,
+			     ldlm_blocking_callback cb_blocking,
+			     __u64 extra_lock_flags)
 {
 	struct obd_device      *obd = exp->exp_obd;
 	struct lmv_obd	 *lmv = &obd->u.lmv;
diff --git a/drivers/staging/lustre/lustre/lmv/lmv_internal.h b/drivers/staging/lustre/lustre/lmv/lmv_internal.h
index c8f40d9..467cfb3 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_internal.h
+++ b/drivers/staging/lustre/lustre/lmv/lmv_internal.h
@@ -56,18 +56,6 @@ int lmv_intent_lock(struct obd_export *exp, struct md_op_data *op_data,
 		    ldlm_blocking_callback cb_blocking,
 		    __u64 extra_lock_flags);
 
-int lmv_intent_lookup(struct obd_export *exp, struct md_op_data *op_data,
-		      void *lmm, int lmmsize, struct lookup_intent *it,
-		      int flags, struct ptlrpc_request **reqp,
-		      ldlm_blocking_callback cb_blocking,
-		      __u64 extra_lock_flags);
-
-int lmv_intent_open(struct obd_export *exp, struct md_op_data *op_data,
-		    void *lmm, int lmmsize, struct lookup_intent *it,
-		    int flags, struct ptlrpc_request **reqp,
-		    ldlm_blocking_callback cb_blocking,
-		    __u64 extra_lock_flags);
-
 int lmv_fld_lookup(struct lmv_obd *lmv, const struct lu_fid *fid, u32 *mds);
 int __lmv_fid_alloc(struct lmv_obd *lmv, struct lu_fid *fid, u32 mds);
 int lmv_fid_alloc(struct obd_export *exp, struct lu_fid *fid,
-- 
2.1.4


