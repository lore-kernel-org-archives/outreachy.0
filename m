X-GM-THRID: 3635562938368
X-Received: by 10.112.161.9 with SMTP id xo9mr1156557lbb.7.1424943863460;
        Thu, 26 Feb 2015 01:44:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.182.166 with SMTP id ef6ls80214wic.7.gmail; Thu, 26 Feb
 2015 01:44:23 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr1142044wjz.0.1424943863174;
        Thu, 26 Feb 2015 01:44:23 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id ev8si1309028wib.3.2015.02.26.01.44.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:44:23 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id x3so8857119wes.6
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+MzL4pSBVkfF4P7MEbWvatYyAksb0zQSSug+0KzOOpA=;
        b=aXojVxAGP4+H7dqSXhofcuVKiFbVO9FhTZlPkk3y/mkS0Nx0szxF2ZY1zidwnALK6L
         pC5D+zZeQaQMUa+lFg6NJp82lfFoGcxgh8JgoBbenCVmsHHvBpHDzBSz3ouNsXHYFm8l
         izopwhSq08iZmnWIrcmgXiSkpPDqgXWPvmE/haScEx7fcT/BUwQva28KCQew+IEA5LM+
         uUE6QSvfG0Hc26qooaT7rmDO5mu0D/YEyeqkweboOq0WMj6i5WwKIUoGeuULiVEw4hSo
         lh21hITbt+D6QndcXo+kqSr6VTlBcML5iZ4mMXUkXDiRrXKhK/UqPaVHezpjTbcE8TXG
         W8ng==
X-Received: by 10.180.108.239 with SMTP id hn15mr14853608wib.38.1424943863114;
        Thu, 26 Feb 2015 01:44:23 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id gz3sm2006159wib.1.2015.02.26.01.44.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:44:22 -0800 (PST)
Date: Thu, 26 Feb 2015 11:44:18 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 19/24] staging: lustre: lov: rewrite the right hand side of
 an assignment
Message-ID: <24e64016c602450d8c359f2aaa8a906ef271241c.1424942340.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_obd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index ea503d2..2c6c558 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -553,7 +553,7 @@ static int lov_add_target(struct obd_device *obd, struct obd_uuid *uuidp,
 
 		newsize = max_t(__u32, lov->lov_tgt_size, 2);
 		while (newsize < index + 1)
-			newsize = newsize << 1;
+			newsize <<= 1;
 		OBD_ALLOC(newtgts, sizeof(*newtgts) * newsize);
 		if (newtgts == NULL) {
 			mutex_unlock(&lov->lov_lock);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

