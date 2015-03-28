X-GM-THRID: 10181885820928
X-Received: by 10.68.143.234 with SMTP id sh10mr28324325pbb.7.1427564706355;
        Sat, 28 Mar 2015 10:45:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.134 with SMTP id b6ls1676159qgb.93.gmail; Sat, 28 Mar
 2015 10:45:06 -0700 (PDT)
X-Received: by 10.236.53.10 with SMTP id f10mr28437875yhc.17.1427564706146;
        Sat, 28 Mar 2015 10:45:06 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id ni4si552751pdb.2.2015.03.28.10.45.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 10:45:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22c.google.com with SMTP id ni2so129219603pdb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 10:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=XrmOCc8vKCozUmnLfyPRSHeLcWOIn4gHs3ViNFb73rU=;
        b=rkQoZ/WpD7/gcNljryEXQsGG6zn4cQWD0G0/RY2tL3qg2l30JgKKn5L8Aeoywp6n1F
         ebUbhiAx3VB/h7ubADMWOorMikiBCse3LGk5VMJRMlFWYvVT9Dir31OCpUPIR4CKRmBl
         5in3ex/7zu0/Igi/MOOrKFtJUq21tZ/7172bT9Squata4ZLJpjwtGgUan9kmfbqQZle3
         0q4sn8RQMVxh0JL6tO2T3C7PsWIY6FCTqkEymjpn/XnzcniMx3H6d1RF+We+pufSbcHO
         Q2WXqtElr6HqaVXlfocnJOgJEn+KHZC1vIJlwrEzgikEsIFlS9+22KuKdvSrBz2fMaEt
         yUNw==
X-Received: by 10.70.87.195 with SMTP id ba3mr45040211pdb.126.1427564706039;
        Sat, 28 Mar 2015 10:45:06 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.212.243])
        by mx.google.com with ESMTPSA id g10sm5630078pdm.29.2015.03.28.10.45.02
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 10:45:04 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 5/6] Staging: lustre: Mark internal functions as static
Date: Sat, 28 Mar 2015 23:13:56 +0530
Message-Id: <1427564637-10305-6-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
References: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch makes functions mgc_logname2resid, mgc_set_info_async
and mgc_init static as these are only used internally.

This also eliminates sparse warnings of the type:
warning: symbol * was not declared. Should it be static?

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/lustre/lustre/mgc/mgc_request.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index 0375bfe..8443b99 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -95,7 +95,7 @@ int mgc_fsname2resid(char *fsname, struct ldlm_res_id *res_id, int type)
 }
 EXPORT_SYMBOL(mgc_fsname2resid);
 
-int mgc_logname2resid(char *logname, struct ldlm_res_id *res_id, int type)
+static int mgc_logname2resid(char *logname, struct ldlm_res_id *res_id, int type)
 {
 	char *name_end;
 	int len;
@@ -948,7 +948,7 @@ static int mgc_target_register(struct obd_export *exp,
 	return rc;
 }
 
-int mgc_set_info_async(const struct lu_env *env, struct obd_export *exp,
+static int mgc_set_info_async(const struct lu_env *env, struct obd_export *exp,
 		       u32 keylen, void *key, u32 vallen,
 		       void *val, struct ptlrpc_request_set *set)
 {
@@ -1724,7 +1724,7 @@ struct obd_ops mgc_obd_ops = {
 	.o_process_config = mgc_process_config,
 };
 
-int __init mgc_init(void)
+static int __init mgc_init(void)
 {
 	return class_register_type(&mgc_obd_ops, NULL, NULL,
 				   LUSTRE_MGC_NAME, NULL);
-- 
1.9.1


