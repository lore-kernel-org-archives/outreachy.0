X-GM-THRID: 818117869568
X-Received: by 10.180.80.35 with SMTP id o3mr548203wix.0.1424372260808;
        Thu, 19 Feb 2015 10:57:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.198 with SMTP id ek6ls341509wid.27.gmail; Thu, 19 Feb
 2015 10:57:39 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr799264wjb.6.1424372259370;
        Thu, 19 Feb 2015 10:57:39 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id i7si6471390wif.0.2015.02.19.10.57.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:57:39 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id w62so1490389wes.12
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 10:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VwLFBE2EoiRg0AEPfBMPCp3r/F0IlBz71u+62wv5fEQ=;
        b=YuwVqcxjs2fZgv9T2VNIQ8oBqL0r4PQ8U4xq94LCWLGGaNmFYvM021sHmcLSM8tWO/
         EG829KbSj4LraSej+GapfzvoTB4fAmbvDWRwGgQ8mwyvNrNArSd6plCZGBOXY5yQu/3X
         KwkO+T6w346JLx4UQDtpK8/0dPgkwyOSpuxkZM9HJSdn4jS7LV9KsBS+wIrN9DcyEQBB
         q2oxQ254+e73CEkgNW2QEWR/ingsDa1cfXMp6PPuKSFHPRK2SkyJFS9pPIG460cuPsz4
         lFAOGeob/55OCz/TPMO+RmbLZx7EcsZ6YlduSwQdt1Hfzvu6ADDcCUuwsAGNu5OA+TrD
         Z2/g==
X-Received: by 10.180.73.205 with SMTP id n13mr9039010wiv.64.1424372259281;
        Thu, 19 Feb 2015 10:57:39 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id 18sm38603598wjr.46.2015.02.19.10.57.37
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 10:57:38 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: fbtft: remove trailing whitespace
Date: Thu, 19 Feb 2015 20:56:48 +0200
Message-Id: <1424372208-16199-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes checkpatch.pl error trailing whitespace.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/fbtft/README | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fbtft/README b/drivers/staging/fbtft/README
index bc89b58..ba4c74c 100644
--- a/drivers/staging/fbtft/README
+++ b/drivers/staging/fbtft/README
@@ -9,20 +9,20 @@ Development is done on a Raspberry Pi running the Raspbian "wheezy" distribution
 INSTALLATION
   Download kernel sources
 
-  From Linux 3.15  
+  From Linux 3.15
     cd drivers/video/fbdev/fbtft
     git clone https://github.com/notro/fbtft.git
-    
+
     Add to drivers/video/fbdev/Kconfig:   source "drivers/video/fbdev/fbtft/Kconfig"
     Add to drivers/video/fbdev/Makefile:  obj-y += fbtft/
-  
-  Before Linux 3.15  
+
+  Before Linux 3.15
     cd drivers/video
     git clone https://github.com/notro/fbtft.git
-    
+
     Add to drivers/video/Kconfig:   source "drivers/video/fbtft/Kconfig"
     Add to drivers/video/Makefile:  obj-y += fbtft/
-  
+
   Enable driver(s) in menuconfig and build the kernel
 
 
-- 
1.8.3.2


