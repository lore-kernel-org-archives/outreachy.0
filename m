X-GM-THRID: 6398529056591052800
X-Received: by 10.46.80.79 with SMTP id v15mr318272ljd.27.1489773638777;
        Fri, 17 Mar 2017 11:00:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.81.66 with SMTP id b2ls740018lje.40.gmail; Fri, 17 Mar 2017
 11:00:38 -0700 (PDT)
X-Received: by 10.25.202.9 with SMTP id a9mr1452190lfg.3.1489773638238;
        Fri, 17 Mar 2017 11:00:38 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id n128si194369wmf.2.2017.03.17.11.00.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 11:00:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z133so4487941wmb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 11:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=fgDOULvsfXsVBKSiuhn1QMFayQz8N4siHuqxP0QrXWM=;
        b=cqFwZvv3DeQmLOm/smu17n29HldjX5cCpH4nWrpLDq253o3CkVjOUvipP9rXNxAaeY
         W4QugEsCZxfHTwD3eM2TeX5IiSo8WAIqulQrHnEVoT/RHA+Cr24K5z0hSqQlZS5UGSId
         BWQDQpJSpzexVCFlx/2jvZbYuplOyInx78HkGa3Pph7fH4tQVnrOw0o3JmB1Mkcx2J7m
         ldPvDiv+dc3+E08XXXupjF3A9G9wBxwbCTEg1ZcUcx+rXKxd9zis5uYBk2QMP9yaw4Rg
         mJj3jeNMBr/mF+NvwHLkMEys5Ej+xtK4omRFe23RYo6Qkar+IOYCGZ54x+y9YNVSowTO
         CIxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fgDOULvsfXsVBKSiuhn1QMFayQz8N4siHuqxP0QrXWM=;
        b=dPRfcT1gcqJnX5Ndh6nQHqCgTfCcTZQiTgI8o30/VuoL8BTIe1qcWFDpZYiaKyg5RU
         X1iGJasoytFUYUKqwtt+GQ7iMLi1mXCm+Ha0mEpB2sstZjg29bcBSs/IiHLoHGkRTl+U
         WPzXD7SP567x6ID1VtszzAkuxHl8AWAAI5gzHvlG8oI/4v4lBRprllPdg68Byh7LtDj5
         HeHYoX64Trd6+feI7GXh0wkqMP3M4jTz4uP/bpQUyDn+mLlDoQCQQIKwfhUerljxsLca
         gW27lofdD4N30SZOr0ftIughzgVcU7354ZH8SpAqK4+CJ4epvZY2CLY2BohYDM/mkqkT
         YO+w==
X-Gm-Message-State: AFeK/H2o1YrWvotygMnE4331ethPBnAPFvcMlnCZ8kVLskxYc6Qpq7Oxzi+NleWJtW4lxg==
X-Received: by 10.28.194.7 with SMTP id s7mr3975962wmf.34.1489773638019;
        Fri, 17 Mar 2017 11:00:38 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d9ac:2cee:7395:ff69])
        by smtp.gmail.com with ESMTPSA id c17sm6957237wre.30.2017.03.17.11.00.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Mar 2017 11:00:36 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: corbet@lwn.net,
	linux-doc@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] Documentation: mmc: mmc-dev-attrs.txt: Fix typos
Date: Fri, 17 Mar 2017 20:00:34 +0200
Message-Id: <20170317180034.13894-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix typos in mmc-dev-attrs.txt to make documentation clear.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 Documentation/mmc/mmc-dev-attrs.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/mmc/mmc-dev-attrs.txt b/Documentation/mmc/mmc-dev-attrs.txt
index 404a0e9..2caff30 100644
--- a/Documentation/mmc/mmc-dev-attrs.txt
+++ b/Documentation/mmc/mmc-dev-attrs.txt
@@ -13,7 +13,7 @@ SD and MMC Device Attributes
 
 All attributes are read-only.
 
-	cid			Card Identifaction Register
+	cid			Card Identification Register
 	csd			Card Specific Data Register
 	scr			SD Card Configuration Register (SD only)
 	date			Manufacturing Date (from CID Register)
@@ -71,6 +71,6 @@ Note on Erase Size and Preferred Erase Size:
 	"preferred_erase_size" is in bytes.
 
 Note on raw_rpmb_size_mult:
-	"raw_rpmb_size_mult" is a mutliple of 128kB block.
+	"raw_rpmb_size_mult" is a multiple of 128kB block.
 	RPMB size in byte is calculated by using the following equation:
 	RPMB partition size = 128kB x raw_rpmb_size_mult
-- 
2.9.3


