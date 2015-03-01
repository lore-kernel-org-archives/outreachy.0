X-GM-THRID: 5542512689152
X-Received: by 10.112.224.12 with SMTP id qy12mr2224415lbc.10.1425240962647;
        Sun, 01 Mar 2015 12:16:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.121.100 with SMTP id lj4ls155948lab.86.gmail; Sun, 01 Mar
 2015 12:16:02 -0800 (PST)
X-Received: by 10.112.222.131 with SMTP id qm3mr3242164lbc.1.1425240962271;
        Sun, 01 Mar 2015 12:16:02 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id by11si566807wib.1.2015.03.01.12.16.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 12:16:02 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghb13 with SMTP id b13so29742902wgh.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 12:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=63tTngziv896IDf4weE8xpYi1hmvgN/hxzZoEWKO69s=;
        b=TNFvin9GxjxqPW1p6kvft5lNUDBajPDZAJSEdddcIJzzZmqbboh9KQVJMK8BCnAXTt
         T3P9O8rI+K5Metth0WMEQcEQySronCP15cJOiMJ79PtoQ8oOxqSH+2fBZ/CRerBygEms
         rEXqXTS9mhFm8Ys+BuE2CopigE1X7cBdHAS4CsVAit9lIKfn4Vmg4OdgTMc3gg56LC8j
         EPxqFkQidPGcY2EwKnITpNZBjgVqNviupGLkieUPr4Cm5zMae/mbva5ddvKUuU6kciRy
         kB1Dr4SeogJOLANHqUOMEmyB3so2bi+MJO3lsV4wUSdpu8OIIAqmh7iyYMC+2IrIDkSF
         Cegw==
X-Received: by 10.194.157.68 with SMTP id wk4mr52067183wjb.123.1425240962161;
        Sun, 01 Mar 2015 12:16:02 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id bo1sm16141110wjb.15.2015.03.01.12.16.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 12:16:01 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Fix line over 80 characters.
Date: Sun,  1 Mar 2015 22:15:54 +0200
Message-Id: <1425240954-9148-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with line over 80 characters in libcfs_kernelcomm.h

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
index a989d26..e680399 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
@@ -44,7 +44,8 @@
 #define __LIBCFS_KERNELCOMM_H__
 
 #ifndef __LIBCFS_LIBCFS_H__
-#error Do not #include this file directly. #include <linux/libcfs/libcfs.h> instead
+#error Do not #include this file directly.
+#include <linux/libcfs/libcfs.h> instead
 #endif
 
 /* KUC message header.
-- 
1.9.1


