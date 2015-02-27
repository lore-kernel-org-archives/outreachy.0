X-GM-THRID: 4683701682176
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3d6eb69409d39a30
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.161.9 with SMTP id xo9mr2306176lbb.7.1425061713552;
        Fri, 27 Feb 2015 10:28:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.98.226 with SMTP id el2ls174275wib.25.canary; Fri, 27 Feb
 2015 10:28:33 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr687020wiy.6.1425061713301;
        Fri, 27 Feb 2015 10:28:33 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id ta1si167318wic.1.2015.02.27.10.28.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 10:28:33 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id l15so2187646wiw.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 10:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+uIclZF7TYOVGEGFbei0WLZuCvRH5bzwxdJyQGhew14=;
        b=oRpOEvnu4vYC7ByeCxnd0VFhTcLmEULYFn+huJtBjGcZFEtWZCAnUUqnsRXzODM6Kw
         3oR3BasGoNhoHXx/HM8SwidjKGucmoN4klSDzLPceQ9BZtJRGBOecTXKqCRTi8C0YQKK
         VHr4+ZwqTo7CxKqSHKVQHpB1MBk7iI2G+8DVOTTiVbbr7wTXJcYE5xDhI776ag9b9wpc
         MHU0SMw21jPb952fXGpeIvBKNuZGvQKE9dHboWwi0Rp5fpZhbdc4GtBrJwGA6jcN7Cj6
         1svAs0Vg33Gna3RfqpE+choUldKASPEWmLSK3DHdwG3YIks/rGZ1NVpambqz7Tfn1Mq/
         nmBw==
X-Received: by 10.194.81.104 with SMTP id z8mr29966783wjx.45.1425061713230;
        Fri, 27 Feb 2015 10:28:33 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id dj5sm7040778wjb.28.2015.02.27.10.28.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 10:28:32 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH 2/2] Staging: lustre: lustre: lov: Add blank line after declarations
Date: Fri, 27 Feb 2015 20:28:26 +0200
Message-Id: <1425061706-14179-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/lov/lov_object.c WARNING: Missing a blank
line after declarations

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_object.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/lov/lov_object.c b/drivers/staging/lustre/lustre/lov/lov_object.c
index 4cab730..c52219e 100644
--- a/drivers/staging/lustre/lustre/lov/lov_object.c
+++ b/drivers/staging/lustre/lustre/lov/lov_object.c
@@ -973,6 +973,7 @@ int lov_read_and_clear_async_rc(struct cl_object *clob)
 			LASSERT(lsm != NULL);
 			for (i = 0; i < lsm->lsm_stripe_count; i++) {
 				struct lov_oinfo *loi = lsm->lsm_oinfo[i];
+
 				if (loi->loi_ar.ar_rc && !rc)
 					rc = loi->loi_ar.ar_rc;
 				loi->loi_ar.ar_rc = 0;
-- 
1.9.1


