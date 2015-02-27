X-GM-THRID: 4475579269120
X-Received: by 10.152.6.232 with SMTP id e8mr2049526laa.2.1425042143304;
        Fri, 27 Feb 2015 05:02:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.71 with SMTP id eo7ls116831wib.21.canary; Fri, 27 Feb
 2015 05:02:23 -0800 (PST)
X-Received: by 10.194.95.67 with SMTP id di3mr570865wjb.0.1425042142999;
        Fri, 27 Feb 2015 05:02:22 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id by11si130447wib.1.2015.02.27.05.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:02:22 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widex7 with SMTP id ex7so35474wid.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yUt5KHh00WPqdis9malYrxLzINjrwzXL/MsjCs1ZRNI=;
        b=w3chkEXRBL0y+KaZjTvIApJobs2ZCBh5AvMp5gDnMzP1KEwwXP6JI5QYF87zC6lIMA
         Nn6W4P1hHLhGUGySl0WrOmuzXXAuSFV7GiI+o3BDI1XNR/vYwocaqNZ6wTRkAqjdVQ+L
         NROhsA1pRbIiwc5RSN1GDoVXe4l8k5UUN0CykyQHU8WaOlHxh9lBDL0Zz/IDieVWutsi
         SuMWZ5lNtg4Xv5VnCNW3RNJM2oCfKj90KttjdR/sduAqCW9ervXCKzax3XBDqbaWCxS9
         2QlHtADjoc8PoObUL6EuFX+vK/T55aFlEDIN6aR3qQgT9xXKU7VgqKZXKbqoOsA1nvpF
         JEVA==
X-Received: by 10.194.57.206 with SMTP id k14mr3599997wjq.1.1425042142914;
        Fri, 27 Feb 2015 05:02:22 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id lj13sm2752187wic.9.2015.02.27.05.02.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:02:22 -0800 (PST)
Date: Fri, 27 Feb 2015 15:02:18 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 13/24] staging: lustre: mdc: remove unused variable
Message-ID: <6d810f755db18473df909a705c5258025103e33f.1425035010.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/lustre/lustre/mdc/mdc_locks.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_locks.c b/drivers/staging/lustre/lustre/mdc/mdc_locks.c
index d1c224e..b72319b 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_locks.c
+++ b/drivers/staging/lustre/lustre/mdc/mdc_locks.c
@@ -176,12 +176,10 @@ int mdc_cancel_unused(struct obd_export *exp,
 {
 	struct ldlm_res_id res_id;
 	struct obd_device *obd = class_exp2obd(exp);
-	int rc;
 
 	fid_build_reg_res_name(fid, &res_id);
-	rc = ldlm_cli_cancel_unused_resource(obd->obd_namespace, &res_id,
+	return ldlm_cli_cancel_unused_resource(obd->obd_namespace, &res_id,
 					     policy, mode, flags, opaque);
-	return rc;
 }
 
 int mdc_null_inode(struct obd_export *exp,
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

