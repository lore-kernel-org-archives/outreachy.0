X-GM-THRID: 10241422917632
X-Received: by 10.181.12.74 with SMTP id eo10mr1236591wid.2.1427578737990;
        Sat, 28 Mar 2015 14:38:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.36 with SMTP id b4ls463223lae.46.gmail; Sat, 28 Mar
 2015 14:38:57 -0700 (PDT)
X-Received: by 10.112.122.97 with SMTP id lr1mr5009847lbb.5.1427578737526;
        Sat, 28 Mar 2015 14:38:57 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id p4si362394wiz.0.2015.03.28.14.38.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 14:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id m2so57808783wix.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 14:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1aevS9ojpd1EetRfvgBnCDq7yEc2FZRC8NjZUD5DjfQ=;
        b=EiqqP/G/SNXcxys5q1vVqosasUGQibypSAVKRUPQgqFlxal00+m0Nrl0V2EMaot1QE
         Z6xIkhOyGFXgmPTNQo0V1SOFsuD8Fh45cnLfvKbKSwiwUgiOwoKL5fCl23T2z9tF6KXz
         gki8sV/jnGPqnn/P9wsh7kCwLHD1kVeLiu1U/tQuCSg4KueR9l/WVVIpD+UI8trhldML
         5i4B1j2//gsgTPe9eXDQllBa9Orhi4cRm76NK1+Ioa85dppbER+95LE3c4sAqWPmx7tj
         0Z3vnjbBzrAVxMcjtwkSEJQYT4V0cECYBe7syGZiofSpZ2Xplx2ATkBDwAEsXu+5YCpI
         4mjA==
X-Received: by 10.180.75.167 with SMTP id d7mr8663969wiw.63.1427578737426;
        Sat, 28 Mar 2015 14:38:57 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id hq4sm3473472wib.0.2015.03.28.14.38.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Mar 2015 14:38:56 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: r8192U_core: Use linux headers
Date: Sat, 28 Mar 2015 23:38:47 +0200
Message-Id: <1427578727-30489-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl warning:
   Use #include <linux/uaccess.h> instead of <asm/uaccess.h>

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index af14a4f..0b8c88f 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -58,7 +58,7 @@ double __extendsfdf2(float a)
 
 #define CONFIG_RTL8192_IO_MAP
 
-#include <asm/uaccess.h>
+#include <linux/uaccess.h>
 #include "r8192U_hw.h"
 #include "r8192U.h"
 #include "r8190_rtl8256.h" /* RTL8225 Radio frontend */
-- 
1.9.1


