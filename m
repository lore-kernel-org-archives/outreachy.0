X-GM-THRID: 6211463142533234688
X-Received: by 10.13.219.195 with SMTP id d186mr6489646ywe.30.1446218978351;
        Fri, 30 Oct 2015 08:29:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.8 with SMTP id qm8ls191173igb.36.gmail; Fri, 30 Oct
 2015 08:29:38 -0700 (PDT)
X-Received: by 10.107.41.207 with SMTP id p198mr2885763iop.6.1446218978033;
        Fri, 30 Oct 2015 08:29:38 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id el2si797813pbb.0.2015.10.30.08.29.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 08:29:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id z6so77388856pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 08:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=MwqHnIghgeXlS1x4oLSs/IXgFZDzb3KPwlslk8CdsSM=;
        b=letjvhFQozvCsBF3OZkPDMIQxqxfkRmzGowMrQECpLQVdw9nquP0CqqwZvVliz79L7
         oUrZyYLOVpTnH4/j8VrR1VmaaDLqKhZPdtZco0yJRt+F7qDTOUbhOyrgZbfFqsGUnD2I
         iGvCOJsRhHvaVIyJESYhbg2rhc80trAsPbMNGcxMt1GwYDFp1IWhTRSND5ZHt05gcrlj
         21IEHGnjor1O0ayiPzE+rNpcyk9epepiVNV8Ah8SmV5rHf0NKL8KYXQuJ4uTqNaNBK+r
         x0Th75JjLOwB2gn03BG7HIdKDcRo2cnHwR0OZpKHQTh+Bgn9piCIwAOhMKuseOxJQd2x
         cGZw==
X-Received: by 10.68.189.69 with SMTP id gg5mr9586172pbc.55.1446218977920;
        Fri, 30 Oct 2015 08:29:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id dn4sm8883843pbd.0.2015.10.30.08.29.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 08:29:37 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 7/7] Staging: lustre: osc: Declare local functions as static
Date: Fri, 30 Oct 2015 20:59:09 +0530
Message-Id: <1446218949-8599-8-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
References: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56338CE0.00E1,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare osc_real_create, osc_create and osc_cleanup as static
since they are used only in this particular file. Also remove the
corresponding declarations from header file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_internal.h |  6 ------
 drivers/staging/lustre/lustre/osc/osc_request.c  | 13 +++++++------
 2 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_internal.h b/drivers/staging/lustre/lustre/osc/osc_internal.h
index 5ed30ec..db2ee9c 100644
--- a/drivers/staging/lustre/lustre/osc/osc_internal.h
+++ b/drivers/staging/lustre/lustre/osc/osc_internal.h
@@ -89,11 +89,6 @@ struct osc_cache_waiter {
 	int		     ocw_rc;
 };
 
-int osc_create(const struct lu_env *env, struct obd_export *exp,
-	       struct obdo *oa, struct lov_stripe_md **ea,
-	       struct obd_trans_info *oti);
-int osc_real_create(struct obd_export *exp, struct obdo *oa,
-		    struct lov_stripe_md **ea, struct obd_trans_info *oti);
 void osc_wake_cache_waiters(struct client_obd *cli);
 int osc_shrink_grant_to_target(struct client_obd *cli, __u64 target_bytes);
 void osc_update_next_shrink(struct client_obd *cli);
@@ -137,7 +132,6 @@ int osc_lru_shrink(struct client_obd *cli, int target);
 
 extern spinlock_t osc_ast_guard;
 
-int osc_cleanup(struct obd_device *obd);
 int osc_setup(struct obd_device *obd, struct lustre_cfg *lcfg);
 
 int lproc_osc_attach_seqstat(struct obd_device *dev);
diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 367f83a..3e2d431 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -104,7 +104,7 @@ struct osc_enqueue_args {
 static void osc_release_ppga(struct brw_page **ppga, u32 count);
 static int brw_interpret(const struct lu_env *env,
 			 struct ptlrpc_request *req, void *data, int rc);
-int osc_cleanup(struct obd_device *obd);
+static int osc_cleanup(struct obd_device *obd);
 
 /* Pack OSC object metadata for disk storage (LE byte order). */
 static int osc_packmd(struct obd_export *exp, struct lov_mds_md **lmmp,
@@ -431,8 +431,9 @@ static int osc_setattr_async(struct obd_export *exp, struct obd_info *oinfo,
 				      oinfo->oi_cb_up, oinfo, rqset);
 }
 
-int osc_real_create(struct obd_export *exp, struct obdo *oa,
-		    struct lov_stripe_md **ea, struct obd_trans_info *oti)
+static int osc_real_create(struct obd_export *exp, struct obdo *oa,
+			   struct lov_stripe_md **ea,
+			   struct obd_trans_info *oti)
 {
 	struct ptlrpc_request *req;
 	struct ost_body *body;
@@ -689,9 +690,9 @@ static int osc_can_send_destroy(struct client_obd *cli)
 	return 0;
 }
 
-int osc_create(const struct lu_env *env, struct obd_export *exp,
-	       struct obdo *oa, struct lov_stripe_md **ea,
-	       struct obd_trans_info *oti)
+static int osc_create(const struct lu_env *env, struct obd_export *exp,
+		      struct obdo *oa, struct lov_stripe_md **ea,
+		      struct obd_trans_info *oti)
 {
 	int rc = 0;
 
-- 
2.1.4


