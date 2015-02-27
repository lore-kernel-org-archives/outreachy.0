X-GM-THRID: 4475579269120
X-Received: by 10.180.83.168 with SMTP id r8mr457874wiy.6.1425042216802;
        Fri, 27 Feb 2015 05:03:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.186.71 with SMTP id fi7ls116187wic.28.canary; Fri, 27 Feb
 2015 05:03:36 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr2045072wjb.4.1425042216547;
        Fri, 27 Feb 2015 05:03:36 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id ev8si102811wib.3.2015.02.27.05.03.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:03:36 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id bs8so42819wib.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=j0X+fq2l5mCm0E/fuWh1HXGQXONc/wsISkwEhRNSz9Q=;
        b=riSDbjC1NEWMbwe/g+bFA13hTzHV0ei29Ae9pzTnRI8AB0D8gM3jj8+7H/z2ZJoBVn
         uu2DE50ZhR3Q6fU9/7zAQYSF+RJ7nsATqAe4QTtOfbe+QLx557CDGTgdOJ6p2LNYGsRd
         wVP4+UUYSU6XtySqIFnZRn2K5o7RLM5iVMfqPKFwYeluPh4YkFsjud9AHDp6VmJDrZqK
         QXsGz+m+sJWZUPDpDnen+4O1VaDuTytanjolg6CIAdpJSmi5i9+yqhuGIEOea67HiOEg
         C9p0z8q0lYGbREND+hHxOdSdiRFuqn7grH4z0OSdqEGY9vlAfzXkvPR1IhDAWHtpJje1
         58Bg==
X-Received: by 10.194.78.144 with SMTP id b16mr27231707wjx.18.1425042216488;
        Fri, 27 Feb 2015 05:03:36 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id kr5sm5923774wjc.1.2015.02.27.05.03.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:03:35 -0800 (PST)
Date: Fri, 27 Feb 2015 15:03:30 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 15/24] staging: lustre: lmv: remove unused variables
Message-ID: <dc7ed4ce9baf69fbd456ef88162cb77b37074a04.1425035010.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes variables that were simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_obd.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
index 6e446ac..d0dcbf9 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
@@ -2555,10 +2555,8 @@ static int lmv_set_lock_data(struct obd_export *exp, __u64 *lockh, void *data,
 			     __u64 *bits)
 {
 	struct lmv_obd	  *lmv = &exp->exp_obd->u.lmv;
-	int		      rc;
 
-	rc =  md_set_lock_data(lmv->tgts[0]->ltd_exp, lockh, data, bits);
-	return rc;
+	return  md_set_lock_data(lmv->tgts[0]->ltd_exp, lockh, data, bits);
 }
 
 static ldlm_mode_t lmv_lock_match(struct obd_export *exp, __u64 flags,
@@ -2870,13 +2868,11 @@ static struct md_ops lmv_md_ops = {
 static int __init lmv_init(void)
 {
 	struct lprocfs_static_vars lvars;
-	int			rc;
 
 	lprocfs_lmv_init_vars(&lvars);
 
-	rc = class_register_type(&lmv_obd_ops, &lmv_md_ops,
+	return class_register_type(&lmv_obd_ops, &lmv_md_ops,
 				 lvars.module_vars, LUSTRE_LMV_NAME, NULL);
-	return rc;
 }
 
 static void lmv_exit(void)
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

