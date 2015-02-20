X-GM-THRID: 1469972480000
X-Received: by 10.181.13.236 with SMTP id fb12mr10795wid.1.1424460730486;
        Fri, 20 Feb 2015 11:32:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.74 with SMTP id f10ls166299wij.2.gmail; Fri, 20 Feb
 2015 11:32:09 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr53507wia.7.1424460729809;
        Fri, 20 Feb 2015 11:32:09 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id i7si175615wif.0.2015.02.20.11.32.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:32:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f181.google.com with SMTP id r20so5118654wiv.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=g0y7iFNSMIGwfOu27gxuU6oMZYWPdSDTLdgKhpBDFJY=;
        b=Lum9x+F4e69/4ncPMzN3Bsf2cRp0/z3UW6uRE5r7Pxb4fzLNpFQJgUs8j8uw7JSdll
         H8cnOC09Ncl9ON/qly3t+8/bL2cQNLaUMl+WVXuSJ5VRyxrLJmr8mq6TOHPcqLAikoZB
         lTRtIrGi9Pv/WrUU9tYmvXi06ENTU1vmGFKgGFQg/JMUh8iC803IW5HM1LJZA6WWnsnt
         hUpAvYjYmJAit7NpuevTpNNFvOetJ1xcpiw018ukjTxT0KWrlKuK3TdnScrycGAuBxHF
         5WoFU26MclndGRVkdxH8pJAOt0a2c3xM+6faWtGxY/p7EHTJK21f3iLFmCqK2mIRHp3R
         NvpA==
X-Received: by 10.180.20.177 with SMTP id o17mr703039wie.66.1424460729687;
        Fri, 20 Feb 2015 11:32:09 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id l6sm43394224wjx.33.2015.02.20.11.32.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 11:32:09 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Replace <asm/string.h>  with <linux/string.h>
Date: Fri, 20 Feb 2015 20:32:00 +0100
Message-Id: <1424460720-6136-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following checkpatch.pl warning:
Use #include <linux/string.h> instead of <asm/string.h>

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 5533221..80dfa07 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -15,7 +15,7 @@
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-#include <asm/string.h>
+#include <linux/string.h>
 #include <asm/errno.h>
 
 #include "ieee80211.h"
-- 
1.9.1


