X-GM-THRID: 4475579269120
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9816ab370498a2c8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.11.34 with SMTP id n2mr455615wib.2.1425042180879;
        Fri, 27 Feb 2015 05:03:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.229 with SMTP id et5ls111695wib.40.canary; Fri, 27 Feb
 2015 05:03:00 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr2044092wjc.3.1425042180692;
        Fri, 27 Feb 2015 05:03:00 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id cl5si109187wib.3.2015.02.27.05.03.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:03:00 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x235.google.com with SMTP id a1so20336420wgh.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=3oTDHjimjf7bNWrmoMr+SdQXgALvO0xvXNOJ0+ihhGI=;
        b=o/Sn4Q9TtiuxePJfT/db06TIo8Tua4p/2IPN+LS/gQrxyguxENDwGqyiosluERixke
         p6Bu2tEmovmQg7ZBIT0Iu6CTzumXKutHrWOaEZwE9J4ZlLNJc1RzkYx7ES6sg+TwZd8R
         DUZAMVJ0En0RyhFvGmXiZo+1QpVSt9v7TyGnfKzSRLGHEI61ZKq/rcSi3kMsiziQymbe
         EAEuQD35AHqnM68URCpx1LzDsycMJp7auegi2jFmvpmQtyIdeEPIzXBBYwEZPPaMx79X
         MwZE1hc+O2jucZCRtl7TXK/CJxxErxgwyk4C5UC9vVG837DPulXqRDo434mB0AhJ04Zv
         s12A==
X-Received: by 10.194.158.39 with SMTP id wr7mr28002330wjb.118.1425042180626;
        Fri, 27 Feb 2015 05:03:00 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id cb9sm2741855wib.10.2015.02.27.05.02.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:02:59 -0800 (PST)
Date: Fri, 27 Feb 2015 15:02:54 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 14/24] staging: lustre: lov: remove unused variable
Message-ID: <8f04ef8c0696cbc93f0ec76b4860354d50fd0b88.1425035010.git.mahfouz.saif.elyazal@gmail.com>
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
-return len;																																		Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_obd.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index 2c6c558..9960b45 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -314,7 +314,7 @@ static int lov_disconnect(struct obd_export *exp)
 {
 	struct obd_device *obd = class_exp2obd(exp);
 	struct lov_obd *lov = &obd->u.lov;
-	int i, rc;
+	int i;
 
 	if (!lov->lov_tgts)
 		goto out;
@@ -340,8 +340,7 @@ static int lov_disconnect(struct obd_export *exp)
 	obd_putref(obd);
 
 out:
-	rc = class_disconnect(exp); /* bz 9811 */
-	return rc;
+	return class_disconnect(exp);
 }
 
 /* Error codes:
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

