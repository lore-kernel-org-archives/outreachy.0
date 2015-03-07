X-GM-THRID: 7098422263808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fd45912bf9e432d2,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.189.227 with SMTP id gl3mr3154978lbc.2.1425762947058;
        Sat, 07 Mar 2015 13:15:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.14 with SMTP id t14ls192115laz.61.gmail; Sat, 07 Mar
 2015 13:15:46 -0800 (PST)
X-Received: by 10.152.27.134 with SMTP id t6mr3096662lag.5.1425762946570;
        Sat, 07 Mar 2015 13:15:46 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id i8si479139wif.1.2015.03.07.13.15.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 13:15:46 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesq59 with SMTP id q59so9483855wes.9
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 13:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=LAR4axVwVhYxy2OxTq0wWerWC/pJzcUQ/Ffl5K+GVlQ=;
        b=SlwbwOlBHonRZ7b7mVop4xrnG14YtMRik7X0vg0+xKKuIL26PpjYngr7EIoUhlLFC6
         9F/LZ20WVMDLsyTFVvSywgxb2ngsM3A++K2qn0RgPoXTaXk+AQsuT0ayCDEGBjCoqiAp
         yuhj8vnsOG9M1njct/SDNODQt6dWPMMIXS3fumcNlhUjTNt7yFcIyST0xEfZkj8mmN4Z
         VsBueA9WxKJbpUtoLuFC4gfcHJ5ByRnTtQpHL2MNnR2USFOlnueQNu8Q7V7cEqqbJ+x+
         ZX3Uk0KGJnDuCI4WkJqPxcmgMHadB3GxjmC53vwqM4hEK0RzBpPeYEnDAe2NAGevAo9K
         TuHw==
X-Received: by 10.194.104.99 with SMTP id gd3mr41552098wjb.114.1425762946447;
        Sat, 07 Mar 2015 13:15:46 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id bo1sm20898011wjb.15.2015.03.07.13.15.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Mar 2015 13:15:45 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Added #include <linux/string.h> instead of <asm/string.h>
Date: Sat,  7 Mar 2015 23:15:39 +0200
Message-Id: <1425762939-2881-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
WARNING: Use #include <linux/string.h> instead of #include <asm/string.h>

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index fb2c859..8077b39 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -17,7 +17,7 @@
 #include <linux/netdevice.h>
 #include <linux/if_ether.h>
 #include <linux/if_arp.h>
-#include <asm/string.h>
+#include <linux/string.h>
 #include <linux/wireless.h>
 
 #include "ieee80211.h"
-- 
1.9.1


