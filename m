X-GM-THRID: 1779965100032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,728ab82d991058ec,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.161.9 with SMTP id xo9mr296181lbb.7.1424524255175;
        Sat, 21 Feb 2015 05:10:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.135 with SMTP id p7ls271189wic.45.canary; Sat, 21 Feb
 2015 05:10:54 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr288293wjc.7.1424524254988;
        Sat, 21 Feb 2015 05:10:54 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id ev8si293163wib.3.2015.02.21.05.10.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 05:10:54 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id h11so8153442wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 05:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eTWdZYK9b93u/O7cwxNhqWuXKNjdNEZiycGhLYzFJFk=;
        b=lzGOiQ7LBeKxuPbiJbUUjSbcVrIUPwdaeK74fgRd31k3k2uqEWScFSnODVE04qIKyq
         jVZFotnq5MAdHvrowcth2c3xwVskmw9DYOPReqS4K3PXFe1CUEo0BtEA3dzrA9MGZP3u
         G0rHp4QOqvRX8SKUre4X5srJbTQ1e2aTM87lgg9yqV5dJ5Keqw3qpEAw12HX1s2MPXEB
         gN3MsWiNpj+bjLlv/jWsTlcKxh5Os33WQu8/BGYwXraPIc2Jy+xW8YLuy7s9EsmedH5c
         VFhXqP/VHZmMzdEB1yV3tlCJ64bl2uuH+GxI3ZSageOx6TmLQNwti1SsH5co9u2CIwbT
         ZJTQ==
X-Received: by 10.181.13.4 with SMTP id eu4mr3898139wid.41.1424524254934;
        Sat, 21 Feb 2015 05:10:54 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id dt7sm6885573wib.19.2015.02.21.05.10.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 05:10:54 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Fix do not use // c99 comments.
Date: Sat, 21 Feb 2015 15:10:47 +0200
Message-Id: <1424524247-27869-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "do not use // C99 comments" errors in ieee80211_crypt.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 5533221..7435126 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -11,7 +11,7 @@
  *
  */
 
-//#include <linux/config.h>
+/*#include <linux/config.h> */
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-- 
1.9.1


