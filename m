X-GM-THRID: 6211231191819878400
X-Received: by 10.112.162.169 with SMTP id yb9mr1024815lbb.15.1446164956870;
        Thu, 29 Oct 2015 17:29:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.170.10 with SMTP id t10ls9131wme.8.canary; Thu, 29 Oct 2015
 17:29:16 -0700 (PDT)
X-Received: by 10.194.203.33 with SMTP id kn1mr1050538wjc.3.1446164956492;
        Thu, 29 Oct 2015 17:29:16 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id t72si7422wme.0.2015.10.29.17.29.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 17:29:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x236.google.com with SMTP id f134so715895wmf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 17:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=8HOtKFPAFtrcv4ubOCO17lWe0zloOMbNWNw58LcdLWM=;
        b=di0DJiWF6Do/VvSKhKYxMPvmQ5hr0mQXxeFQxkhhogQk9Zca/6YSG0RA0k26zSzbI4
         c1bFVpBykAKrFetlcpGDzqsyEJVc9gmeFDgd7xQp/S0DWt8P8E5PXFpMcC+9Dwefe3R/
         iW27u8clxl5tDjuAsy6GVREDiKv2AJqrir2XE5YjomAUcicM10xkt2bpWaKMZ4W11euW
         D64Ff60GQi3rrgv2bYiy/nbiOOigKRb6MuFZEuUrR0j/iiY6Zyyeh64SYyUGFGrnnTyY
         MKgSsue4VzGVLknfetJHJq7cxVvvUZESO8H7Cj4doyTRd1LbDDe0c1itJByEcE619owQ
         z5jA==
X-Received: by 10.28.174.144 with SMTP id x138mr135333wme.28.1446164956379;
        Thu, 29 Oct 2015 17:29:16 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.182.227.7])
        by smtp.gmail.com with ESMTPSA id 197sm137962wmx.23.2015.10.29.17.29.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 17:29:15 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: nvec:Misspelled the word
Date: Fri, 30 Oct 2015 03:29:08 +0300
Message-Id: <1446164948-1449-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Word error correction.Problem found using checkpatch.pl
CHECK: 'Implemenation' may be misspelled - perhaps 'Implementation'?

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/nvec/README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/README b/drivers/staging/nvec/README
index 9a320b7..0e2d5c4 100644
--- a/drivers/staging/nvec/README
+++ b/drivers/staging/nvec/README
@@ -1,4 +1,4 @@
-NVEC: An NVidia compliant Embedded Controller Protocol Implemenation
+NVEC: An NVidia compliant Embedded Controller Protocol Implementation
 
 This is an implementation of the NVEC protocol used to communicate with an
 embedded controller (EC) via I2C bus. The EC is an I2C master while the host
-- 
1.9.1


