X-GM-THRID: 4799843008512
X-Received: by 10.152.1.5 with SMTP id 5mr2401545lai.4.1425077665829;
        Fri, 27 Feb 2015 14:54:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.234 with SMTP id i10ls79950lae.103.gmail; Fri, 27 Feb
 2015 14:54:25 -0800 (PST)
X-Received: by 10.152.29.97 with SMTP id j1mr2386536lah.3.1425077665330;
        Fri, 27 Feb 2015 14:54:25 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id ew5si212286wid.1.2015.02.27.14.54.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 14:54:25 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwh11 with SMTP id h11so3484744wiw.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 14:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=XMKHx7EFJmzzyAJdZYM07BkGkhrLCpTSCVh5SiJrCSU=;
        b=kk40J1zAdtlc5Itg/T05Ea6BppYmQPMaA++I2Dia1hFwLfmrhhrvqZCPDmAbkli1IZ
         H2FYloNxPszir2ZkEIAQXcAWWLfeJ0hS5A1RtQcELWUMCCHeFmVEgT1pXqakU1WS1vO5
         ufAx7+nx9noYGDyMF8z5cRVJYOd727wDzZxdp8XtjarjP/4XNOV497kZRninZwzD5vnr
         uA5jJ/8i/VhkTdB2XT20bl9MvoYFTIU/pvSuZMZcyf43cEyPKhT5kdpaM2fC4VySM80f
         5dKq0OWsict2dMw2NT4jgAm+j4FeXAk9AD0eYsH3/MCmrYYlfh95rOTkMdFHnMwajOyA
         Ff4g==
X-Received: by 10.180.20.52 with SMTP id k20mr11116140wie.15.1425077665218;
        Fri, 27 Feb 2015 14:54:25 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id ka1sm7894754wjc.2.2015.02.27.14.54.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 14:54:24 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Deleted space prohibited between function name and open parenthesis
Date: Sat, 28 Feb 2015 00:54:17 +0200
Message-Id: <1425077657-2671-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: space prohibited between function name and open parenthesis '('
Remove unnecessary space between function name and opening parenthesis.
That was found by running checkpatch.pl

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 .../staging/lustre/lustre/obdecho/echo_client.c    | 26 +++++++++++-----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index 5f6d944..3102956 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -195,22 +195,22 @@ static struct lu_kmem_descr echo_caches[] = {
 	{
 		.ckd_cache = &echo_lock_kmem,
 		.ckd_name  = "echo_lock_kmem",
-		.ckd_size  = sizeof (struct echo_lock)
+		.ckd_size  = sizeof(struct echo_lock)
 	},
 	{
 		.ckd_cache = &echo_object_kmem,
 		.ckd_name  = "echo_object_kmem",
-		.ckd_size  = sizeof (struct echo_object)
+		.ckd_size  = sizeof(struct echo_object)
 	},
 	{
 		.ckd_cache = &echo_thread_kmem,
 		.ckd_name  = "echo_thread_kmem",
-		.ckd_size  = sizeof (struct echo_thread_info)
+		.ckd_size  = sizeof(struct echo_thread_info)
 	},
 	{
 		.ckd_cache = &echo_session_kmem,
 		.ckd_name  = "echo_session_kmem",
-		.ckd_size  = sizeof (struct echo_session_info)
+		.ckd_size  = sizeof(struct echo_session_info)
 	},
 	{
 		.ckd_cache = NULL
@@ -1106,8 +1106,8 @@ static int cl_echo_cancel0(struct lu_env *env, struct echo_device *ed,
 
 	LASSERT(ec != NULL);
 	spin_lock(&ec->ec_lock);
-	list_for_each (el, &ec->ec_locks) {
-		ecl = list_entry (el, struct echo_lock, el_chain);
+	list_for_each(el, &ec->ec_locks) {
+		ecl = list_entry(el, struct echo_lock, el_chain);
 		CDEBUG(D_INFO, "ecl: %p, cookie: %#llx\n", ecl, ecl->el_cookie);
 		found = (ecl->el_cookie == cookie);
 		if (found) {
@@ -1257,20 +1257,20 @@ out:
 static u64 last_object_id;
 
 static int
-echo_copyout_lsm (struct lov_stripe_md *lsm, void *_ulsm, int ulsm_nob)
+echo_copyout_lsm(struct lov_stripe_md *lsm, void *_ulsm, int ulsm_nob)
 {
 	struct lov_stripe_md *ulsm = _ulsm;
 	int nob, i;
 
-	nob = offsetof (struct lov_stripe_md, lsm_oinfo[lsm->lsm_stripe_count]);
+	nob = offsetof(struct lov_stripe_md, lsm_oinfo[lsm->lsm_stripe_count]);
 	if (nob > ulsm_nob)
 		return -EINVAL;
 
-	if (copy_to_user (ulsm, lsm, sizeof(*ulsm)))
+	if(copy_to_user (ulsm, lsm, sizeof(*ulsm)))
 		return -EFAULT;
 
 	for (i = 0; i < lsm->lsm_stripe_count; i++) {
-		if (copy_to_user (ulsm->lsm_oinfo[i], lsm->lsm_oinfo[i],
+		if(copy_to_user (ulsm->lsm_oinfo[i], lsm->lsm_oinfo[i],
 				      sizeof(lsm->lsm_oinfo[0])))
 			return -EFAULT;
 	}
@@ -1278,16 +1278,16 @@ echo_copyout_lsm (struct lov_stripe_md *lsm, void *_ulsm, int ulsm_nob)
 }
 
 static int
-echo_copyin_lsm (struct echo_device *ed, struct lov_stripe_md *lsm,
+echo_copyin_lsm(struct echo_device *ed, struct lov_stripe_md *lsm,
 		 void *ulsm, int ulsm_nob)
 {
 	struct echo_client_obd *ec = ed->ed_ec;
 	int		     i;
 
-	if (ulsm_nob < sizeof (*lsm))
+	if(ulsm_nob < sizeof (*lsm))
 		return -EINVAL;
 
-	if (copy_from_user (lsm, ulsm, sizeof (*lsm)))
+	if(copy_from_user (lsm, ulsm, sizeof (*lsm)))
 		return -EFAULT;
 
 	if (lsm->lsm_stripe_count > ec->ec_nstripes ||
-- 
1.9.1


