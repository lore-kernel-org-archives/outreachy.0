X-GM-THRID: 6201947249365221376
X-Received: by 10.50.112.104 with SMTP id ip8mr9888434igb.6.1444003371362;
        Sun, 04 Oct 2015 17:02:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.148.4 with SMTP id to4ls1106025obb.62.gmail; Sun, 04 Oct
 2015 17:02:51 -0700 (PDT)
X-Received: by 10.182.89.129 with SMTP id bo1mr23387855obb.4.1444003371125;
        Sun, 04 Oct 2015 17:02:51 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id uv4si3540120pac.0.2015.10.04.17.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 17:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hy16so17782618pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 17:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=r6SgcZzfNofTiMHt0AHER6gID9eAlKkNNsTVCwLc6iE=;
        b=OcCMdkFPKTwLbVE81Phg8ywBXGNL6VvBqNPPXtZ75KB8FMWgY9PHMzuDIFDGdODpKS
         2Sf4YI6ZBiRQZXb3ChQsEc1HcadnUXYgA/UOUe6jmMcZTzm4hrBSEfXIHF2qgkeTdehm
         OhJxDIv6BJ21bHVTahIApeRYfD98bFqHsFAoObgdZLB4oc/o/utLo9l8MdREt1RBFMDG
         oagUfpjkFScGY/IULOdQaQjsyts4JJJ4dw5qsLe/EKGKakrBCZE64kaLiexNTefIZCX6
         D5ErkIL55m8SI0PdcLRoSBrHGLaibBQfYyCDYxkTWQprlZ1UOHXrkzLSkGdNoJJ7ZxtJ
         jehg==
X-Received: by 10.68.96.1 with SMTP id do1mr7147236pbb.37.1444003370993;
        Sun, 04 Oct 2015 17:02:50 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id py6sm23884348pbb.62.2015.10.04.17.02.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 17:02:50 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/4] Staging: lustre: obdclass: llog_swab: Declare local functions as static
Date: Mon,  5 Oct 2015 05:32:36 +0530
Message-Id: <1444003359-6619-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com>
References: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.5611BE29.00B5,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare functions lustre_swab_llog_id and lustre_swab_ll_fid as static
since they are used only in this particular file. Also remove them from
corresponding header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Made commit message and subject clearer.

 drivers/staging/lustre/lustre/include/lustre/lustre_idl.h | 2 --
 drivers/staging/lustre/lustre/obdclass/llog_swab.c        | 6 ++----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
index 9cc92bb..94d4028 100644
--- a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
+++ b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
@@ -2116,7 +2116,6 @@ void lustre_swab_generic_32s(__u32 *val);
 /* This FULL lock is useful to take on unlink sort of operations */
 #define MDS_INODELOCK_FULL ((1<<(MDS_INODELOCK_MAXSHIFT+1))-1)
 
-void lustre_swab_ll_fid(struct ll_fid *fid);
 
 /* NOTE: until Lustre 1.8.7/2.1.1 the fid_ver() was packed into name[2],
  * but was moved into name[1] along with the OID to avoid consuming the
@@ -3349,7 +3348,6 @@ void lustre_swab_llogd_body(struct llogd_body *d);
 void lustre_swab_llog_hdr(struct llog_log_hdr *h);
 void lustre_swab_llogd_conn_body(struct llogd_conn_body *d);
 void lustre_swab_llog_rec(struct llog_rec_hdr *rec);
-void lustre_swab_llog_id(struct llog_logid *lid);
 
 struct lustre_cfg;
 void lustre_swab_lustre_cfg(struct lustre_cfg *lcfg);
diff --git a/drivers/staging/lustre/lustre/obdclass/llog_swab.c b/drivers/staging/lustre/lustre/obdclass/llog_swab.c
index a2d5aa1..054fd31 100644
--- a/drivers/staging/lustre/lustre/obdclass/llog_swab.c
+++ b/drivers/staging/lustre/lustre/obdclass/llog_swab.c
@@ -78,13 +78,12 @@ void lustre_swab_ost_id(struct ost_id *oid)
 }
 EXPORT_SYMBOL(lustre_swab_ost_id);
 
-void lustre_swab_llog_id(struct llog_logid *log_id)
+static void lustre_swab_llog_id(struct llog_logid *log_id)
 {
 	__swab64s(&log_id->lgl_oi.oi.oi_id);
 	__swab64s(&log_id->lgl_oi.oi.oi_seq);
 	__swab32s(&log_id->lgl_ogen);
 }
-EXPORT_SYMBOL(lustre_swab_llog_id);
 
 void lustre_swab_llogd_body(struct llogd_body *d)
 {
@@ -109,13 +108,12 @@ void lustre_swab_llogd_conn_body(struct llogd_conn_body *d)
 }
 EXPORT_SYMBOL(lustre_swab_llogd_conn_body);
 
-void lustre_swab_ll_fid(struct ll_fid *fid)
+static void lustre_swab_ll_fid(struct ll_fid *fid)
 {
 	__swab64s(&fid->id);
 	__swab32s(&fid->generation);
 	__swab32s(&fid->f_type);
 }
-EXPORT_SYMBOL(lustre_swab_ll_fid);
 
 void lustre_swab_lu_seq_range(struct lu_seq_range *range)
 {
-- 
2.1.4


