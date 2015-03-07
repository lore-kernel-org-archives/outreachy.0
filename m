X-GM-THRID: 7098422263808
X-Received: by 10.112.98.38 with SMTP id ef6mr2363517lbb.3.1425763612541;
        Sat, 07 Mar 2015 13:26:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.218.163 with SMTP id ph3ls305662wic.32.canary; Sat, 07 Mar
 2015 13:26:52 -0800 (PST)
X-Received: by 10.180.208.12 with SMTP id ma12mr816233wic.6.1425763612128;
        Sat, 07 Mar 2015 13:26:52 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id gj20si468547wic.1.2015.03.07.13.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 13:26:52 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id z12so753696wgg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 13:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mSjrLaAFSLLFZFsEm9/bL/3/2Net72L9592Y3SwKrtQ=;
        b=wwouQQW6Izih63hI3nrLMzSTW1koTfwy2pXgk1BxYEAfIAMwcJTjKC42MryF74Xj1F
         H7pBHaCG3bEH1KC6fKWmcVgxy93mdm1aKmANMiWYo0GTOUSbCyEFFJ9PKTK+gEsTIz4Y
         oE5rAsUlONXe9LSqo2Hty9ZaIXufymfHOiqf3QoGO5Gd6qeBBZ/IV2Hoi51zoPFoMq8/
         YYQim0EsO87qsZM/uVpqsQQ7suTX/KWRdUj1pdDn4Lo8dySZ98SDsS/s1nAwaQj+ZtvM
         ljTar3wNnWWA/L63cMkNThOpfn/RrLyYEDLQ1yk+QCdfepFBJ+Kk2l5SX6z1u/s3mq3A
         iuNg==
X-Received: by 10.194.52.66 with SMTP id r2mr41729982wjo.61.1425763612060;
        Sat, 07 Mar 2015 13:26:52 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id nb18sm8240733wic.3.2015.03.07.13.26.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Mar 2015 13:26:51 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Added #include <linux/string.h> instead of <asm/string.h>
Date: Sat,  7 Mar 2015 23:26:36 +0200
Message-Id: <1425763596-3094-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
WARNING: Use #include <linux/string.h> instead of #include <asm/string.h>

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index 6201712..e815c81 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -17,7 +17,7 @@
 #include <linux/netdevice.h>
 #include <linux/if_ether.h>
 #include <linux/if_arp.h>
-#include <asm/string.h>
+#include <linux/string.h>
 
 #include "ieee80211.h"
 
-- 
1.9.1


