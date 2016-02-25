X-GM-THRID: 6255258611058999296
X-Received: by 10.129.79.21 with SMTP id d21mr43002807ywb.46.1456421641244;
        Thu, 25 Feb 2016 09:34:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.70 with SMTP id k64ls494549qgf.25.gmail; Thu, 25 Feb
 2016 09:34:00 -0800 (PST)
X-Received: by 10.140.134.134 with SMTP id 128mr14841764qhg.29.1456421640667;
        Thu, 25 Feb 2016 09:34:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ff2si1459636pad.2.2016.02.25.09.34.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 09:34:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e127so3185078pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 09:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+d/syaPNRJxMKD+Rln0Za4aOEfFAXums2IvLOTxYS8c=;
        b=i+FxMk4LovWSR1hjcvtxOElYo2Xgc9vuf24s7NSApnI7LbxMhlJ/AZ3/EOxGCQ3Gue
         lzPpbXkWUC6ud3b5HuFnENWc01Q6G0CNipYxqtXKfgpCmSd568qBAd2TrFicgrvF+CX5
         q6Oy9w7nlJJH5wRithpEEnzvDVjZwlazuRq/BdKZldJma8NdPE6RlHe+SlK9elI5aCLB
         Dcih+IZrhox9FsROcER7RDj8ofFgUsg90yykq3t5EofBUMBNlGMrbTKoZQu+wMjB4lsO
         ucmFonfMMHV+9XHjV0+HsHGVzWaW+aWpTtsIs7qHvAH21L5qOWeZoOj4YiLkBB5n+QAC
         iHXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=+d/syaPNRJxMKD+Rln0Za4aOEfFAXums2IvLOTxYS8c=;
        b=aQVg2Xu9qiQO6bWl7rFSIpEvir6Rv54MQUc+f+kwtkmGI1q8tL24vk8tlWLVQQNVl3
         dKEN79ss5tYDR1NURDOyLtV/3Kfr6tSntwos44TPguOFMVS4HOokymXiP3fl2ukwF6/e
         0OUeB7t7j632UZlshuNJGCplFzupvj4G5W5tOL7Ye23Q5JddDh0XzSAloPoA7bc+KKoC
         1ugJzhoOWx19C6F8jbFcc1RVcQIbVj8dhp2xT7RIbaXwXW5nlgYNs/TgThkCtLZtg2Tu
         mBOIGG3Lojq0AgAQQ//sH49TnXKrl5NOob/dYBXLIlabq1DmIVFywTpDgCqLC4moisdw
         D25A==
X-Gm-Message-State: AG10YOSCuPhkyu2T0MrfB6cVv0DAVhBgUvoiPo2d7GA4Xr7ps3qI1PNXYWr5RP1SySrzag==
X-Received: by 10.98.75.79 with SMTP id y76mr55849185pfa.147.1456421640477;
        Thu, 25 Feb 2016 09:34:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.131.237])
        by smtp.gmail.com with ESMTPSA id l62sm13643507pfj.7.2016.02.25.09.33.54
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 09:33:59 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Thu, 25 Feb 2016 23:03:48 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: lustre: lov: Use list_for_each_entry instead of list_for_each
Date: Thu, 25 Feb 2016 23:03:47 +0530
Message-Id: <1456421627-9339-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456415872-7808-1-git-send-email-bhumirks@gmail.com>
References: <1456415872-7808-1-git-send-email-bhumirks@gmail.com>

Use list_for_each_entry instead of list_for_each and list_entry as it
simplifies the code. Done using coccinelle:

@@
type T,T2;
identifier I1,I2;
expression e1,e2;
iterator name list_for_each_entry;
iterator name list_for_each;
@@

- T *I1;
...
- list_for_each(I1,e1)
+ list_for_each_entry(I2,e1,e2)
{
...when!=T *I1;
- I2=list_entry(I1,T2,e2);
...
}
...when!=I2;

@@
type T,T2,T3;
identifier I1,I2,I3;
expression e1,e2;
@@

- T *I1;
+ T3 *I3;
...
- list_for_each(I1,e1)
+ list_for_each_entry(I3,e1,e2)
{
...when!=T *I1;
- T3 *I3=list_entry(I1,T2,e2);
...
}
...when!=I3;

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Change semantic patch to check for any occurrence of req outside the list_for_each_entry loop.

 drivers/staging/lustre/lustre/lov/lov_obd.c     | 19 ++++---------------
 drivers/staging/lustre/lustre/lov/lov_request.c |  5 +----
 2 files changed, 5 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index dcaa5a1..1ce7341 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -1064,7 +1064,6 @@ static int lov_destroy(const struct lu_env *env, struct obd_export *exp,
 	struct lov_request_set *set;
 	struct obd_info oinfo;
 	struct lov_request *req;
-	struct list_head *pos;
 	struct lov_obd *lov;
 	int rc = 0, err = 0;
 
@@ -1084,9 +1083,7 @@ static int lov_destroy(const struct lu_env *env, struct obd_export *exp,
 	if (rc)
 		goto out;
 
-	list_for_each(pos, &set->set_list) {
-		req = list_entry(pos, struct lov_request, rq_link);
-
+	list_for_each_entry(req, &set->set_list, rq_link) {
 		if (oa->o_valid & OBD_MD_FLCOOKIE)
 			oti->oti_logcookies = set->set_cookies + req->rq_stripe;
 
@@ -1131,7 +1128,6 @@ static int lov_getattr_async(struct obd_export *exp, struct obd_info *oinfo,
 {
 	struct lov_request_set *lovset;
 	struct lov_obd *lov;
-	struct list_head *pos;
 	struct lov_request *req;
 	int rc = 0, err;
 
@@ -1151,9 +1147,7 @@ static int lov_getattr_async(struct obd_export *exp, struct obd_info *oinfo,
 	       POSTID(&oinfo->oi_md->lsm_oi), oinfo->oi_md->lsm_stripe_count,
 	       oinfo->oi_md->lsm_stripe_size);
 
-	list_for_each(pos, &lovset->set_list) {
-		req = list_entry(pos, struct lov_request, rq_link);
-
+	list_for_each_entry(req, &lovset->set_list, rq_link) {
 		CDEBUG(D_INFO, "objid " DOSTID "[%d] has subobj " DOSTID " at idx%u\n",
 		       POSTID(&oinfo->oi_oa->o_oi), req->rq_stripe,
 		       POSTID(&req->rq_oi.oi_oa->o_oi), req->rq_idx);
@@ -1204,7 +1198,6 @@ static int lov_setattr_async(struct obd_export *exp, struct obd_info *oinfo,
 {
 	struct lov_request_set *set;
 	struct lov_request *req;
-	struct list_head *pos;
 	struct lov_obd *lov;
 	int rc = 0;
 
@@ -1228,9 +1221,7 @@ static int lov_setattr_async(struct obd_export *exp, struct obd_info *oinfo,
 	       oinfo->oi_md->lsm_stripe_count,
 	       oinfo->oi_md->lsm_stripe_size);
 
-	list_for_each(pos, &set->set_list) {
-		req = list_entry(pos, struct lov_request, rq_link);
-
+	list_for_each_entry(req, &set->set_list, rq_link) {
 		if (oinfo->oi_oa->o_valid & OBD_MD_FLCOOKIE)
 			oti->oti_logcookies = set->set_cookies + req->rq_stripe;
 
@@ -1324,7 +1315,6 @@ static int lov_statfs_async(struct obd_export *exp, struct obd_info *oinfo,
 	struct obd_device      *obd = class_exp2obd(exp);
 	struct lov_request_set *set;
 	struct lov_request *req;
-	struct list_head *pos;
 	struct lov_obd *lov;
 	int rc = 0;
 
@@ -1335,8 +1325,7 @@ static int lov_statfs_async(struct obd_export *exp, struct obd_info *oinfo,
 	if (rc)
 		return rc;
 
-	list_for_each(pos, &set->set_list) {
-		req = list_entry(pos, struct lov_request, rq_link);
+	list_for_each_entry(req, &set->set_list, rq_link) {
 		rc = obd_statfs_async(lov->lov_tgts[req->rq_idx]->ltd_exp,
 				      &req->rq_oi, max_age, rqset);
 		if (rc)
diff --git a/drivers/staging/lustre/lustre/lov/lov_request.c b/drivers/staging/lustre/lustre/lov/lov_request.c
index 6c5ae05..34c26ec 100644
--- a/drivers/staging/lustre/lustre/lov/lov_request.c
+++ b/drivers/staging/lustre/lustre/lov/lov_request.c
@@ -190,7 +190,6 @@ out:
 
 static int common_attr_done(struct lov_request_set *set)
 {
-	struct list_head *pos;
 	struct lov_request *req;
 	struct obdo *tmp_oa;
 	int rc = 0, attrset = 0;
@@ -207,9 +206,7 @@ static int common_attr_done(struct lov_request_set *set)
 		goto out;
 	}
 
-	list_for_each(pos, &set->set_list) {
-		req = list_entry(pos, struct lov_request, rq_link);
-
+	list_for_each_entry(req, &set->set_list, rq_link) {
 		if (!req->rq_complete || req->rq_rc)
 			continue;
 		if (req->rq_oi.oi_oa->o_valid == 0)   /* inactive stripe */
-- 
1.9.1


