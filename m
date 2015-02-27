X-GM-THRID: 4475579269120
X-Received: by 10.180.101.101 with SMTP id ff5mr453051wib.5.1425041987191;
        Fri, 27 Feb 2015 04:59:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.39 with SMTP id ev7ls115763wib.18.gmail; Fri, 27 Feb
 2015 04:59:47 -0800 (PST)
X-Received: by 10.180.75.232 with SMTP id f8mr456668wiw.0.1425041987030;
        Fri, 27 Feb 2015 04:59:47 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id r6si117728wix.0.2015.02.27.04.59.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:59:47 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wibbs8 with SMTP id bs8so18531wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ZYDnkKIyQZmhRdK0gWY2WPHxMg/C79O3P3xtXDug2/c=;
        b=YDeYwWSvOBS3x9UvB7Sq9srLa61z0JZ0P2DMq0wjsCPa2ZOBxNZuOLRA+T1wtWomRT
         UiqfTJiAGEv8EwN46TfWSvApjtB1DJxvslsRV8jo+IigYxuz0j3i5RLOvxll2iMYJhQ2
         xHCXxfO7UxkFUvniuDv5VtdG78LJ/sAcTjGY1tXtO2m4ilk2fg8Jxn6j5HjxTnVaZ16D
         IReuPnLH+RuGJP11m50vJ2InGUEuAnYyTPzf9UDHEqIeXlV/vaxelfkyA17bUWLhvh50
         fwyYNVqAohwJiQ103RnBbxNkXD1H343NerEU9DNYmXZzs55ZkVFRWCfmZhgxFqWT/4Oa
         Rddg==
X-Received: by 10.180.73.205 with SMTP id n13mr6214174wiv.64.1425041986931;
        Fri, 27 Feb 2015 04:59:46 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id q6sm2732706wix.13.2015.02.27.04.59.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:59:46 -0800 (PST)
Date: Fri, 27 Feb 2015 14:59:42 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 11/24] staging: lustre: mgc: remove unused variable
Message-ID: <dd61281cc7f37699e82d86bcd9af03472d680f9f.1425035008.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
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
 drivers/staging/lustre/lustre/mgc/mgc_request.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index 60d2b0f..2e24bba 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -690,8 +690,6 @@ static int mgc_precleanup(struct obd_device *obd, enum obd_cleanup_stage stage)
 
 static int mgc_cleanup(struct obd_device *obd)
 {
-	int rc;
-
 	/* COMPAT_146 - old config logs may have added profiles we don't
 	   know about */
 	if (obd->obd_type->typ_refcnt <= 1)
@@ -701,8 +699,7 @@ static int mgc_cleanup(struct obd_device *obd)
 	lprocfs_obd_cleanup(obd);
 	ptlrpcd_decref();
 
-	rc = client_obd_cleanup(obd);
-	return rc;
+	return client_obd_cleanup(obd);
 }
 
 static int mgc_setup(struct obd_device *obd, struct lustre_cfg *lcfg)
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

