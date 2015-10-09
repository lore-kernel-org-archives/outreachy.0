X-GM-THRID: 6203640071663386624
X-Received: by 10.195.12.234 with SMTP id et10mr2640111wjd.2.1444397510825;
        Fri, 09 Oct 2015 06:31:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.100 with SMTP id gt4ls321097wib.34.gmail; Fri, 09 Oct
 2015 06:31:49 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr2630031wjb.5.1444397509683;
        Fri, 09 Oct 2015 06:31:49 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id w4si333138wiz.0.2015.10.09.06.31.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 06:31:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id lk2so70671907wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 06:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=WvmB98+Hn1vIdBGJaWCkaseL+B03jaS/4+7sqlspJ/Q=;
        b=VhYsW8v5j6cBOQQKxcMB+lEIgTzDDIMvTsNRw6jTKg3Wop4jhnQBReIlHNBg5xxpBw
         jRRnVfVv1+42YePFVnIFFolALAV668T79wew2STVx75HHY7oaviL3bZ8ZFDc4qwTJRvB
         g5suOjB9P8GSGYFRauzMke++nVltdpTXjVYpXlBU6zE0YEf8JBMMoU0kQnNsreDoRCBz
         p3JntYEyCfoHRkEdSEB6xeMZZtq7cFmr4gaDIxyDlQSke/Juhusc7z4xiIqrrAzEBlrh
         G0/k/aQCML4KIkfWWCxxZzFar+NQ6mrt3bxSOK5lEG+GKm9fzy+A5fiFZ94o1E6wNCu+
         G+Kw==
X-Received: by 10.180.210.162 with SMTP id mv2mr10075558wic.47.1444397509579;
        Fri, 09 Oct 2015 06:31:49 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.45])
        by smtp.gmail.com with ESMTPSA id hk5sm2191467wjb.6.2015.10.09.06.31.48
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 06:31:48 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/2] Staging: skein: Remove multiple blank lines
Date: Fri,  9 Oct 2015 16:31:37 +0300
Message-Id: <1444397498-5082-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl
CHECK: Please don't use multiple blank lines.

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/skein/skein_generic.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/skein/skein_generic.c b/drivers/staging/skein/skein_generic.c
index 899078f..c112694 100644
--- a/drivers/staging/skein/skein_generic.c
+++ b/drivers/staging/skein/skein_generic.c
@@ -20,7 +20,6 @@
 #include <crypto/internal/hash.h>
 #include "skein_base.h"
 
-
 static int skein256_init(struct shash_desc *desc)
 {
 	return skein_256_init((struct skein_256_ctx *) shash_desc_ctx(desc),
-- 
1.9.1


