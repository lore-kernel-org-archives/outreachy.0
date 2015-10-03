X-GM-THRID: 6201414054527893504
X-Received: by 10.112.198.33 with SMTP id iz1mr3562115lbc.8.1443879225899;
        Sat, 03 Oct 2015 06:33:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.196 with SMTP id ek4ls537833wid.36.gmail; Sat, 03 Oct
 2015 06:33:45 -0700 (PDT)
X-Received: by 10.194.59.166 with SMTP id a6mr3613156wjr.6.1443879225467;
        Sat, 03 Oct 2015 06:33:45 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id o5si100061wib.0.2015.10.03.06.33.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 06:33:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id lk2so66051443wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 06:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0M6rJaXHD5X/SJGonM8nRfCU4Xeu6ZomiOXoVQ8IkDc=;
        b=CjHKzcqIHX2Zt+y54stPfVuEE7QQArb9br9Zd+BqMLyu2Q0hN/qv7jkDPuUNr0dqOW
         pViGQGFhtVXbK4y4OxJXUZZzHuyu7EcN5Nj6qinj12hE8TfweN0KBsEPh+E+qRZjGBGU
         NJwu1GwRIJMZAV1TPYax8nb0DrEqgPw1nZ7yAQc5AALUT2FyswnaRVBVDKanbDfv1kWb
         2/o/I9Fhnl9cI9WOa+gs2AIxjCMwwptGqfW6iP7wPArdS4HGRijmvb/f/uaYLn3MgwYL
         ulNWdDjSMM+uMYOBPRNlqXotHtLjYTUT8Thi4ZYvYpDoDSwypBaWaCow+QPfTf5wDGLU
         PR/w==
X-Received: by 10.194.20.68 with SMTP id l4mr3786483wje.24.1443879225358;
        Sat, 03 Oct 2015 06:33:45 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id lv4sm16497302wjb.43.2015.10.03.06.33.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 06:33:44 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Add kernel-doc params description
Date: Sat,  3 Oct 2015 16:33:34 +0300
Message-Id: <1443879214-51209-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix 'No description found for parameter' kernel-doc warnings

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet-rx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index d1a33a9..24485b6 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -49,6 +49,8 @@ static struct napi_struct cvm_oct_napi;
 
 /**
  * cvm_oct_do_interrupt - interrupt handler.
+ * @cpl: Interrupt number. Unused
+ * @dev_id: Cookie to identify the device. Unused
  *
  * The interrupt occurs whenever the POW has packets in our group.
  *
-- 
1.9.1


