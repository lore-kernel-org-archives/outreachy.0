X-GM-THRID: 1485909786624
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c1b86a222015cee5,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.174.36 with SMTP id bp4mr1483248lbc.15.1424461080699;
        Fri, 20 Feb 2015 11:38:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.232 with SMTP id uh8ls317822lac.82.gmail; Fri, 20 Feb
 2015 11:38:00 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr1505194lbo.8.1424461080187;
        Fri, 20 Feb 2015 11:38:00 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id r6si179713wix.0.2015.02.20.11.38.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:38:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id em10so5140562wid.5
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=m5Hy0LQdRnYeSnK5y1BQCjhgqNb9aPLGS8ezwuwKQMw=;
        b=SLu8qsxLpeqlrXKub+6bogi/tOSh6zmGXNfhJHJgra1m14zxMkiZJCX7kSWts/Z4Yn
         z/IKyT9BKXHzfxqGp8S1PIUoX6fUwg8C5ZOqzXZGiYSWflJY9DrLq85UDS78P/xTmid+
         eIz2jb9Rurixjo47Ys/n6t3v815UB60ainmklGyYczuuGeTzWQQROOq781BgCaBT1+2v
         aD0m8KrFEUQv2qIWeX/lYyQ/a8w91RajNxw+U8xVz45kXHLBy1f2rAbE0MEV6pfIKn73
         hG6rJVAw8blJslX2VwA+LyvokAuo4uZ6AWt/qpt6WDHRpjPgGirQuLhcnR2Jt25OjKJm
         RWhg==
X-Received: by 10.180.82.40 with SMTP id f8mr136936wiy.60.1424461080098;
        Fri, 20 Feb 2015 11:38:00 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id kj8sm43411665wjc.29.2015.02.20.11.37.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 11:37:59 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Replace <asm/errno.h> with <linux/errno.h>
Date: Fri, 20 Feb 2015 20:37:52 +0100
Message-Id: <1424461072-6219-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following checkpatch.pl warning:
Use #include <linux/errno.h> instead of <asm/errno.h>

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 80dfa07..1fb6d85 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -16,7 +16,7 @@
 #include <linux/init.h>
 #include <linux/slab.h>
 #include <linux/string.h>
-#include <asm/errno.h>
+#include <linux/errno.h>
 
 #include "ieee80211.h"
 
-- 
1.9.1


