X-GM-THRID: 6211756809938534400
X-Received: by 10.66.227.1 with SMTP id rw1mr9950463pac.31.1446287352702;
        Sat, 31 Oct 2015 03:29:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.230 with SMTP id c93ls1515164qga.41.gmail; Sat, 31 Oct
 2015 03:29:10 -0700 (PDT)
X-Received: by 10.13.216.14 with SMTP id a14mr9760474ywe.8.1446287350759;
        Sat, 31 Oct 2015 03:29:10 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si1129087pac.2.2015.10.31.03.29.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:29:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hk11so98324965pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HLsAC3nFoEHmQDWnkDKwvNlGPvmO+YHSCZ/r0UaCEcM=;
        b=ZOBJO1PVtimuAZFQFyeVVWelYkHwUsiElD21mpx7ds8433lF87cWCBqLYT4BWZK4KA
         R/kCGE3U3ScxjEKemMIhU/6Sr/5euhxOoC/31zmwkTdCqu562iFF6ekFcjT+dARLKmEX
         3tDMiQzLQ2EWUhv3R9yPn0Q4nm6W+MV0x+SHT79RyezAfOFpjJ3QkDW7T64hCT47TCBn
         3ZP7/7FYCr+FRamOlxUZnB/aWmPapWdqQaTOz73xRLiOwrXefaaLzZoSov7Er+pzbKjH
         IvS6SquPSqHPrlAkZ4/Cc7TidZne2EaqJqkrv7J70MZ1GZYy3+O7FG/RL+3/1+yeilAy
         oaQQ==
X-Received: by 10.67.8.34 with SMTP id dh2mr14342947pad.70.1446287350636;
        Sat, 31 Oct 2015 03:29:10 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id wh10sm13145706pab.2.2015.10.31.03.29.08
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:29:10 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: <devel@driverdev.osuosl.org>
Subject: [PATCH 5/6] Staging: lustre: lov: Declare local functions as static
Date: Sat, 31 Oct 2015 15:58:45 +0530
Message-Id: <1446287326-9404-6-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
References: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.563497F5.0105,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare functions lov_set_add_req, lov_set_finished, lov_update_set,
lov_check_and_wait_active and lov_update_statfs as static since
they are used only in this particular file. Also remove corresponding
declarations from header file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_internal.h |  7 -------
 drivers/staging/lustre/lustre/lov/lov_request.c  | 16 +++++++++-------
 2 files changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_internal.h b/drivers/staging/lustre/lustre/lov/lov_internal.h
index 87bc1dc..b802873 100644
--- a/drivers/staging/lustre/lustre/lov/lov_internal.h
+++ b/drivers/staging/lustre/lustre/lov/lov_internal.h
@@ -153,13 +153,8 @@ int lov_stripe_number(struct lov_stripe_md *lsm, u64 lov_off);
 #define LOV_USES_DEFAULT_STRIPE	 1
 
 /* lov_request.c */
-void lov_set_add_req(struct lov_request *req, struct lov_request_set *set);
-int lov_set_finished(struct lov_request_set *set, int idempotent);
-void lov_update_set(struct lov_request_set *set,
-		    struct lov_request *req, int rc);
 int lov_update_common_set(struct lov_request_set *set,
 			  struct lov_request *req, int rc);
-int lov_check_and_wait_active(struct lov_obd *lov, int ost_idx);
 int lov_prep_getattr_set(struct obd_export *exp, struct obd_info *oinfo,
 			 struct lov_request_set **reqset);
 int lov_fini_getattr_set(struct lov_request_set *set);
@@ -176,8 +171,6 @@ int lov_update_setattr_set(struct lov_request_set *set,
 int lov_fini_setattr_set(struct lov_request_set *set);
 int lov_prep_statfs_set(struct obd_device *obd, struct obd_info *oinfo,
 			struct lov_request_set **reqset);
-void lov_update_statfs(struct obd_statfs *osfs, struct obd_statfs *lov_sfs,
-		       int success);
 int lov_fini_statfs(struct obd_device *obd, struct obd_statfs *osfs,
 		    int success);
 int lov_fini_statfs_set(struct lov_request_set *set);
diff --git a/drivers/staging/lustre/lustre/lov/lov_request.c b/drivers/staging/lustre/lustre/lov/lov_request.c
index 1a150c2..bb1a03f 100644
--- a/drivers/staging/lustre/lustre/lov/lov_request.c
+++ b/drivers/staging/lustre/lustre/lov/lov_request.c
@@ -74,7 +74,7 @@ void lov_finish_set(struct lov_request_set *set)
 	kfree(set);
 }
 
-int lov_set_finished(struct lov_request_set *set, int idempotent)
+static int lov_set_finished(struct lov_request_set *set, int idempotent)
 {
 	int completes = atomic_read(&set->set_completes);
 
@@ -89,8 +89,8 @@ int lov_set_finished(struct lov_request_set *set, int idempotent)
 	return 0;
 }
 
-void lov_update_set(struct lov_request_set *set,
-		    struct lov_request *req, int rc)
+static void lov_update_set(struct lov_request_set *set,
+			   struct lov_request *req, int rc)
 {
 	req->rq_complete = 1;
 	req->rq_rc = rc;
@@ -118,7 +118,8 @@ int lov_update_common_set(struct lov_request_set *set,
 	return rc;
 }
 
-void lov_set_add_req(struct lov_request *req, struct lov_request_set *set)
+static void lov_set_add_req(struct lov_request *req,
+			    struct lov_request_set *set)
 {
 	list_add_tail(&req->rq_link, &set->set_list);
 	set->set_count++;
@@ -144,7 +145,7 @@ static int lov_check_set(struct lov_obd *lov, int idx)
  * If the OSC has not yet had a chance to connect to the OST the first time,
  * wait once for it to connect instead of returning an error.
  */
-int lov_check_and_wait_active(struct lov_obd *lov, int ost_idx)
+static int lov_check_and_wait_active(struct lov_obd *lov, int ost_idx)
 {
 	wait_queue_head_t waitq;
 	struct l_wait_info lwi;
@@ -591,8 +592,9 @@ int lov_fini_statfs_set(struct lov_request_set *set)
 	return rc;
 }
 
-void lov_update_statfs(struct obd_statfs *osfs, struct obd_statfs *lov_sfs,
-		       int success)
+static void lov_update_statfs(struct obd_statfs *osfs,
+			      struct obd_statfs *lov_sfs,
+			      int success)
 {
 	int shift = 0, quit = 0;
 	__u64 tmp;
-- 
2.1.4


