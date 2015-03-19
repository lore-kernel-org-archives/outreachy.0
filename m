X-GM-THRID: 9068395626496
X-Received: by 10.52.166.77 with SMTP id ze13mr78969264vdb.9.1426740683779;
        Wed, 18 Mar 2015 21:51:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.227 with SMTP id i3ls90488igt.38.canary; Wed, 18 Mar
 2015 21:51:23 -0700 (PDT)
X-Received: by 10.70.45.135 with SMTP id n7mr6647806pdm.9.1426740683399;
        Wed, 18 Mar 2015 21:51:23 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pc4si59435pac.0.2015.03.18.21.51.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 21:51:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id xg6so51030228pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 21:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6MsTPrEtdMB6Crxu3Ouf34XPzg5oYKfnC15iX7/zVHc=;
        b=IK45zs0x/fl0Yq7TwjSgJrKcjTTdKonmSmew9Zd5oyPU1aTaN5oewDHI5d03yYIQ1Z
         O9lXd59w1RgtGYxom1WNPwYYgciL6itkVIKCkqzkmkPi+OY9a9swWLeSco/zXrZMd+i9
         yCmngXN2s7rQQ5c8vJqe0UnAGYDw4mWkrKAdpvLD+eLK6/nTR+5CPiiZH7hZbhv7KQO+
         dnDxn1yjc1XQz7RrdWwtMkuaJixyXbQOGaK5vbwZw6UK+2fH2r/3pITtMMO17F/C6+GC
         waFgGG3fFsptpQil/pxFqvmkNrrYAB+ZT7h2L0gMR4JOJbVIhfNAPLoNXRCmREio6QKg
         NWdQ==
X-Received: by 10.70.92.107 with SMTP id cl11mr67820074pdb.31.1426740683286;
        Wed, 18 Mar 2015 21:51:23 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id qm6sm449396pac.14.2015.03.18.21.51.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 21:51:22 -0700 (PDT)
Date: Thu, 19 Mar 2015 10:18:56 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove unused extern declarations.
Message-ID: <20150319044856.GA32197@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

These externs are defined but not used anywhere in the code.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtw_security.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_security.h b/drivers/staging/rtl8188eu/include/rtw_security.h
index 66d60aa..a00d1e6 100644
--- a/drivers/staging/rtl8188eu/include/rtw_security.h
+++ b/drivers/staging/rtl8188eu/include/rtw_security.h
@@ -245,10 +245,6 @@ struct mic_data {
 };
 
 extern const u32 Te0[256];
-extern const u32 Te1[256];
-extern const u32 Te2[256];
-extern const u32 Te3[256];
-extern const u32 Te4[256];
 extern const u32 Td0[256];
 extern const u32 Td1[256];
 extern const u32 Td2[256];
-- 
1.9.1


