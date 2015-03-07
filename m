X-GM-THRID: 7105574600704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c9da3ae08b8bd6ab,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.142.1 with SMTP id rs1mr1175376lbb.19.1425764016413;
        Sat, 07 Mar 2015 13:33:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.195 with SMTP id o3ls190193laf.82.gmail; Sat, 07 Mar
 2015 13:33:34 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr3102132laa.2.1425764014860;
        Sat, 07 Mar 2015 13:33:34 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id o3si465655wib.2.2015.03.07.13.33.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 13:33:34 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id r20so11318415wiv.5
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 13:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=fcI1tInmJRSFf4bMDu5ZSO2plIfU4hZxZUFwOCCgIRY=;
        b=R5KDrdFJU1zAd3c7A49i289G31KHg6WqlTRxko8XgdDT//FtJ+FbvphI5+4cAjYNpZ
         e1mni0lv4SCUaQWB0nYnT8mp617W3e2+gDtDjPhQg1zYo9RqHwz0KfRAzcvH8LEsRJcN
         jyy4psO0vDxL3ESJIKXpdR8hO35jRbfNuoUitMZr64S2ZHmo6xOX0jV2dJZpyoo5d6vc
         RaxAcsIugBPLtw3z0mEXATkMz/bEhCU+cRKHI1IQjuyq9+Qml7DQMQmHCK6TRhx47/qG
         InnjkJUWIJT8Yb8mEIQBR186xoELMAEZGsNUL95putJUc9Dvxb4urcbKDYBwlTsWssB5
         cubw==
X-Received: by 10.194.170.193 with SMTP id ao1mr43090734wjc.52.1425764014774;
        Sat, 07 Mar 2015 13:33:34 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id j7sm8260680wix.4.2015.03.07.13.33.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Mar 2015 13:33:34 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Replace #include <asm/string.h>
Date: Sat,  7 Mar 2015 23:33:25 +0200
Message-Id: <1425764005-3204-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
WARNING: Use #include <linux/string.h> instead of #include <asm/string.h>

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
index f651a18..0a17f84 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
@@ -14,7 +14,7 @@
 #include <linux/slab.h>
 #include <linux/random.h>
 #include <linux/skbuff.h>
-#include <asm/string.h>
+#include <linux/string.h>
 
 #include "ieee80211.h"
 
-- 
1.9.1


