X-GM-THRID: 6886714769408
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,47899399e7382928,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.221.65 with SMTP id qc1mr2345836wjc.7.1425650898464;
        Fri, 06 Mar 2015 06:08:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.68 with SMTP id k4ls83711lam.53.gmail; Fri, 06 Mar 2015
 06:08:18 -0800 (PST)
X-Received: by 10.152.27.134 with SMTP id t6mr2339445lag.5.1425650898041;
        Fri, 06 Mar 2015 06:08:18 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id cl5si146001wib.3.2015.03.06.06.08.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 06:08:18 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggz12 with SMTP id z12so60435652wgg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 06:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=CPMiTMTUbwFL2OJM9nnNpFCA9l4rHC2mITXGZECal/c=;
        b=q+l1FdaOVfk75jOdBTMn/2Vw+zBnfTO9GVlBHTKzYa0af4BT7uVBeC0T/MdkDFG8PD
         fsSlQSVlsAr1Fbei4EjyvDwyqoQyG0WbWHQ/3HoEV6eZbExmBGMX2I5xjdUiuX+3aNcy
         TPi6wVnAjv3lPnO39/Ym1F2Tiw8TA9F2Qv0x1KK1Xk2H+YcI6+O7eHGpZXD9Fx1TzLYs
         x8H8xz+GmCAzU48NR2ipb6jL0MLuEl3ChxeqS/cgS26TlpBFGC2fjkmyx1+QQ5VN8Fu9
         NICE0m/1AmhV+AGBUlnLq/ym8hqL4aS5xmpXdYfoVX9ohYTx+jUix/uT/mv+hQkkVb4e
         eNaQ==
X-Received: by 10.180.91.79 with SMTP id cc15mr66375275wib.37.1425650897882;
        Fri, 06 Mar 2015 06:08:17 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id w8sm15101426wja.4.2015.03.06.06.08.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 06:08:17 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Added #include <linux/uaccess.h> instead of <asm/uaccess.h>
Date: Fri,  6 Mar 2015 16:08:10 +0200
Message-Id: <1425650890-3517-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
WARNING: Use #include <linux/uaccess.h> instead of <asm/uaccess.h>

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 286b71d..44ae791 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -38,7 +38,7 @@
 #include <linux/types.h>
 #include <linux/wireless.h>
 #include <linux/etherdevice.h>
-#include <asm/uaccess.h>
+#include <linux/uaccess.h>
 #include <linux/ctype.h>
 
 #include "ieee80211.h"
-- 
1.9.1


