X-GM-THRID: 4475579269120
X-Received: by 10.112.35.135 with SMTP id h7mr2039383lbj.23.1425042070989;
        Fri, 27 Feb 2015 05:01:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.163 with SMTP id gv3ls116198wib.2.canary; Fri, 27 Feb
 2015 05:01:09 -0800 (PST)
X-Received: by 10.180.75.232 with SMTP id f8mr458192wiw.0.1425042069699;
        Fri, 27 Feb 2015 05:01:09 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id ev8si102177wib.3.2015.02.27.05.01.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:01:09 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22b.google.com with SMTP id x12so20269910wgg.11
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yE6GA1Onfunk4dfU3YwHW4+sS+D1VdgJ4pJWTYnsuAQ=;
        b=O2xQGpSurdMv+sPLmTHDfNA2zuisNAGGjFQMQPPIhoGJ6WhhQ+xBlTl08xaZu7zARJ
         0hEbohkKPji5mkB3E80ZejeO67qA5rJ8j+I/Z102P/uWICZHmmzCUVUHu1eTYzjCZ2qZ
         049yER/wvQJjUnWB3ck+WYgv/7AbAsYg5HB0HvUEbbG6idInNTioW1kidOnSPiL790KO
         j59Xhc2e2caU4gxs+AbbNCaVZgg45CrlmL6SBZtZFpUgevNDQ8EWR7szM99HKLQrGTh/
         8srBp0tXy5fbMKOll6a8DJN3di4OsaLQPYMCL/u89grfmwZzWxeadUkMr9jrGmg4BsOR
         Pstw==
X-Received: by 10.180.92.136 with SMTP id cm8mr6264373wib.41.1425042069609;
        Fri, 27 Feb 2015 05:01:09 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id p1sm2712057wib.23.2015.02.27.05.01.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:01:08 -0800 (PST)
Date: Fri, 27 Feb 2015 15:01:05 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 12/24] staging: lustre: mdc: remove unused variable
Message-ID: <f97186cd3234a3dcd3affe2dde4c6ccd37a494d1.1425035009.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/lustre/lustre/mdc/mdc_request.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_request.c b/drivers/staging/lustre/lustre/mdc/mdc_request.c
index ef27447..c04eec5 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_request.c
+++ b/drivers/staging/lustre/lustre/mdc/mdc_request.c
@@ -2707,14 +2707,12 @@ static struct md_ops mdc_md_ops = {
 
 static int __init mdc_init(void)
 {
-	int rc;
 	struct lprocfs_static_vars lvars = { NULL };
 
 	lprocfs_mdc_init_vars(&lvars);
 
-	rc = class_register_type(&mdc_obd_ops, &mdc_md_ops, lvars.module_vars,
+	return class_register_type(&mdc_obd_ops, &mdc_md_ops, lvars.module_vars,
 				 LUSTRE_MDC_NAME, NULL);
-	return rc;
 }
 
 static void /*__exit*/ mdc_exit(void)
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

