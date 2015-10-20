X-GM-THRID: 6207353027120070656
X-Received: by 10.112.202.165 with SMTP id kj5mr1038056lbc.5.1445368866762;
        Tue, 20 Oct 2015 12:21:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.195 with SMTP id c3ls237042wiy.29.gmail; Tue, 20 Oct
 2015 12:21:05 -0700 (PDT)
X-Received: by 10.180.79.68 with SMTP id h4mr1133886wix.6.1445368865782;
        Tue, 20 Oct 2015 12:21:05 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id q6si692996wif.2.2015.10.20.12.21.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 12:21:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id p11so62575529wij.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 12:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TduOkrSJgW6AKxKgo9qDFB79181VJmKQT3e9eYCm8EM=;
        b=BMleSJ+V1sM0R7lETCw2Y380QLMS3n/MG6HclCMgkgZVztlnKNvMCaABGZqSlsYJx7
         aS5CT9oAOgexizQzM3LvgFluKQXD5qIbv5obAEky3tuRe2J2ESos2KVwWnxdfuv0ofqO
         XoFu+3nFs39+10PrFk3YXJglKDrEM+BkSAORwdpIvSVEAZ2/ugUKZE92Rzs6SKOrgLlq
         bwWqJSxtybgbARCJQ5w8V26lXBho328vhW6RuW4lYas13EJnjZL/t9RRmwO7zHkW7jF2
         WtyonKxdBq3585qK8vea75IcjH/ereRQYc1oYjnM7IHgURLn8KTYYjtHwSaCseaZ09RP
         HWzg==
X-Received: by 10.194.239.230 with SMTP id vv6mr6137296wjc.21.1445368865653;
        Tue, 20 Oct 2015 12:21:05 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id ki7sm5621705wjc.28.2015.10.20.12.21.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 12:21:05 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: panel: Do not use multiple blank lines.
Date: Tue, 20 Oct 2015 22:20:54 +0300
Message-Id: <1445368854-15527-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines"

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/netlogic/platform_net.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index e914147..7806c2b 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -58,7 +58,6 @@
 #define MAX_NUM_XLS_GMAC	8
 #define MAX_NUM_XLR_GMAC	4
 
-
 static u32 xlr_gmac_offsets[] = {
 	NETLOGIC_IO_GMAC_0_OFFSET, NETLOGIC_IO_GMAC_1_OFFSET,
 	NETLOGIC_IO_GMAC_2_OFFSET, NETLOGIC_IO_GMAC_3_OFFSET,
-- 
1.9.1


