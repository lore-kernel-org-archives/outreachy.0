X-GM-THRID: 6255258611058999296
X-Received: by 10.140.88.139 with SMTP id t11mr13967257qgd.21.1456415888910;
        Thu, 25 Feb 2016 07:58:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.32.34 with SMTP id f2ls235003igi.26.gmail; Thu, 25 Feb 2016
 07:58:08 -0800 (PST)
X-Received: by 10.66.63.68 with SMTP id e4mr40828290pas.40.1456415888498;
        Thu, 25 Feb 2016 07:58:08 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id u66si1377027pfa.2.2016.02.25.07.58.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:58:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id x65so34850818pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 07:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=h6xh7c4jsnDzFjqeAx3ev+o1H/08hv1GhsMcIh9p/sk=;
        b=NeKZjPRf45vjSP3YirGXfLF7jzdXD87pBMZLk+D3HWr7fbnD9Ay+kq10p95jX0iXcN
         Zr3PS/5kdrBjK51dZjZwpf7AJxjCxiEGv7qChHDWqgpL32cv/MusxNVOXVUllXm1wjZG
         2RkzeQ3vykSiIug0o8UKH0byqjcvCCECojH1ZosNYJHXLbb3UcqUrmQtsGSFV07j/2ve
         F+ZX9t2tEJl+Uoc4x1lCGyBXxMNpaCGXPjlgtzBdxpRcrUWRqJka70YQLYlDmZAqzbc0
         vEEi/J5jlZ5nICSHJtDFlyizrVb3UqeDKJjlxI2/NUYKhjx3N/csakcTnC/qyKGXwKQL
         tjtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=h6xh7c4jsnDzFjqeAx3ev+o1H/08hv1GhsMcIh9p/sk=;
        b=RBragzzW20Zg8S2cNSkF7HHEJI9CC4k8uzezBuT5uooDmV8HPRr74xIYNfQX26HWFx
         CPnqjSOO2B6agsAd0dyycSa1fXejNK8AzCC4zApzTd/UPJ9a0IOlt7g7etyxyp+R8vSj
         +4tOCTQ1xgZ6bjMbAHesBrnh1Qre5T/vISsDTtGDUn6FeBrlyb3RC395UBavPs7Eo6uj
         ZsF3KfVl54cLJdhtim/FISDsODejR8k0AOdEiPFj3VT5DgHaH5ZdoSFsOPCMH5KkGOO+
         QtHZAExl5Z+xnaVRKHfKXLtX26NI8oY+vbd6YXMh6KHJmirGN4ffxb+1I2+y4hrIL/HU
         HuGg==
X-Gm-Message-State: AG10YOTXt1muJi1XeMbcrGl1ICBWVB8GL5FRoocctcEYsc5Gl8rOlGpoc0wxerC0uYqyuA==
X-Received: by 10.98.65.91 with SMTP id o88mr63418454pfa.114.1456415888326;
        Thu, 25 Feb 2016 07:58:08 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.128.34])
        by smtp.gmail.com with ESMTPSA id 16sm13233921pfk.28.2016.02.25.07.57.58
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 07:58:07 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Thu, 25 Feb 2016 21:27:53 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: lov: Use list_for_each_entry instead of list_for_each
Date: Thu, 25 Feb 2016 21:27:52 +0530
Message-Id: <1456415872-7808-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Use list_for_each_entry instead of list_for_each and list_entry as it simplifies the code. Done using coccinelle:

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

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
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


