X-GM-THRID: 6201947249365221376
X-Received: by 10.112.63.165 with SMTP id h5mr627442lbs.18.1444248388066;
        Wed, 07 Oct 2015 13:06:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.72 with SMTP id t69ls99281lfe.56.gmail; Wed, 07 Oct
 2015 13:06:27 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr608460lbp.24.1444248387335;
        Wed, 07 Oct 2015 13:06:27 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id xl3si169190wib.1.2015.10.07.13.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 13:06:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id fx3so228500738wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 13:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=gXKyZ3Ih5bUutXEQ7GPEcL5ueS24g42xqaaMSivveZk=;
        b=vGI+7ZZ+aat028s0hpStaC2vUp5dlKYetxpLQL4I28ttyzm9vhk0OmnzXS/eD/QpbZ
         bU7XcI+KH6vafjRm6UfOtSMoe17dCl6F/gNA2TkY5Apl7g7IWWn5FUBFQybskEEbU9N1
         XIVhgjKcA5qYU89jlKSMNHBguRohu0TqNVaZuhY5WOnXR/a0vkKfz128+syeb5QwnIT7
         ABoM6VQtaWWdGX1GLm++JsFdKVlIrkU7VgAchknFsktEplojZoMmPiXI5nxEqXZ7xP9p
         lzZwtUG07pO3wv48gscHqm1MLDZ/3pGQm92ZTAuUmNpA+Yv2Hu6guyD799pdoZmuCYej
         jUww==
X-Received: by 10.194.249.100 with SMTP id yt4mr3880135wjc.74.1444248387228;
        Wed, 07 Oct 2015 13:06:27 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fv13sm4016186wic.7.2015.10.07.13.06.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 13:06:26 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/5] Staging: lustre: ptlrpc: pack_generic: Declare local functions as static
Date: Thu,  8 Oct 2015 01:36:05 +0530
Message-Id: <1444248368-29504-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
References: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.56157B41.0034,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare lustre_swab_ldlm_resource_desc, lustre_swab_obdo,
lustre_swab_ldlm_res_id, lustre_swab_ldlm_policy_data as static since
they are used only in this particular file. Also remove the corresponding
declarations from header file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre/lustre_idl.h |  8 --------
 drivers/staging/lustre/lustre/ptlrpc/pack_generic.c       | 12 ++++--------
 2 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
index 9cc92bb..7bbb170 100644
--- a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
+++ b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
@@ -2680,8 +2680,6 @@ struct ldlm_res_id {
 #define PLDLMRES(res)	(res)->lr_name.name[0], (res)->lr_name.name[1], \
 			(res)->lr_name.name[2], (res)->lr_name.name[3]
 
-void lustre_swab_ldlm_res_id(struct ldlm_res_id *id);
-
 static inline int ldlm_res_eq(const struct ldlm_res_id *res0,
 			      const struct ldlm_res_id *res1)
 {
@@ -2757,8 +2755,6 @@ typedef union {
 	struct ldlm_inodebits l_inodebits;
 } ldlm_wire_policy_data_t;
 
-void lustre_swab_ldlm_policy_data(ldlm_wire_policy_data_t *d);
-
 union ldlm_gl_desc {
 	struct ldlm_gl_lquota_desc	lquota_desc;
 };
@@ -2777,8 +2773,6 @@ struct ldlm_resource_desc {
 	struct ldlm_res_id lr_name;
 };
 
-void lustre_swab_ldlm_resource_desc(struct ldlm_resource_desc *r);
-
 struct ldlm_lock_desc {
 	struct ldlm_resource_desc l_resource;
 	ldlm_mode_t l_req_mode;
@@ -3320,8 +3314,6 @@ static inline void lustre_get_wire_obdo(struct obd_connect_data *ocd,
 	}
 }
 
-void lustre_swab_obdo(struct obdo *o);
-
 /* request structure for OST's */
 struct ost_body {
 	struct  obdo oa;
diff --git a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
index 3241b1f..d75f4c5 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
@@ -1501,7 +1501,7 @@ void lustre_swab_connect(struct obd_connect_data *ocd)
 	CLASSERT(offsetof(typeof(*ocd), paddingF) != 0);
 }
 
-void lustre_swab_obdo(struct obdo *o)
+static void lustre_swab_obdo(struct obdo *o)
 {
 	__swab64s(&o->o_valid);
 	lustre_swab_ost_id(&o->o_oi);
@@ -1533,7 +1533,6 @@ void lustre_swab_obdo(struct obdo *o)
 	CLASSERT(offsetof(typeof(*o), o_padding_6) != 0);
 
 }
-EXPORT_SYMBOL(lustre_swab_obdo);
 
 void lustre_swab_obd_statfs(struct obd_statfs *os)
 {
@@ -1941,16 +1940,15 @@ void lustre_swab_lov_user_md_objects(struct lov_user_ost_data *lod,
 }
 EXPORT_SYMBOL(lustre_swab_lov_user_md_objects);
 
-void lustre_swab_ldlm_res_id(struct ldlm_res_id *id)
+static void lustre_swab_ldlm_res_id(struct ldlm_res_id *id)
 {
 	int i;
 
 	for (i = 0; i < RES_NAME_SIZE; i++)
 		__swab64s(&id->name[i]);
 }
-EXPORT_SYMBOL(lustre_swab_ldlm_res_id);
 
-void lustre_swab_ldlm_policy_data(ldlm_wire_policy_data_t *d)
+static void lustre_swab_ldlm_policy_data(ldlm_wire_policy_data_t *d)
 {
 	/* the lock data is a union and the first two fields are always an
 	 * extent so it's ok to process an LDLM_EXTENT and LDLM_FLOCK lock
@@ -1961,7 +1959,6 @@ void lustre_swab_ldlm_policy_data(ldlm_wire_policy_data_t *d)
 	__swab64s(&d->l_flock.lfw_owner);
 	__swab32s(&d->l_flock.lfw_pid);
 }
-EXPORT_SYMBOL(lustre_swab_ldlm_policy_data);
 
 void lustre_swab_ldlm_intent(struct ldlm_intent *i)
 {
@@ -1969,13 +1966,12 @@ void lustre_swab_ldlm_intent(struct ldlm_intent *i)
 }
 EXPORT_SYMBOL(lustre_swab_ldlm_intent);
 
-void lustre_swab_ldlm_resource_desc(struct ldlm_resource_desc *r)
+static void lustre_swab_ldlm_resource_desc(struct ldlm_resource_desc *r)
 {
 	__swab32s(&r->lr_type);
 	CLASSERT(offsetof(typeof(*r), lr_padding) != 0);
 	lustre_swab_ldlm_res_id(&r->lr_name);
 }
-EXPORT_SYMBOL(lustre_swab_ldlm_resource_desc);
 
 void lustre_swab_ldlm_lock_desc(struct ldlm_lock_desc *l)
 {
-- 
2.1.4


