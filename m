X-GM-THRID: 7419446951936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,df3cf6baa54f3a11,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.96.131 with SMTP id ds3mr30375120obb.35.1425989292245;
        Tue, 10 Mar 2015 05:08:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.201 with SMTP id e67ls39243qgf.61.gmail; Tue, 10 Mar
 2015 05:08:12 -0700 (PDT)
X-Received: by 10.236.111.4 with SMTP id v4mr33922588yhg.55.1425989292100;
        Tue, 10 Mar 2015 05:08:12 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id m1si81074pdc.0.2015.03.10.05.08.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:08:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fa1so1333316pad.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:content-transfer-encoding:user-agent;
        bh=ZDG8B2nL89/zENJV6j059Z3DUUcvBqhGEFPqn5xPfN8=;
        b=phJJYPJqjIHGs0/M7dEkcxqd9DSoL9r4ijSr/Yx1EMbGI6g3j+gBV8eBQT2nMCSDov
         haokQK4fn1gFe1zEKoAB9m9XcFNt3kRBxHBBNmr31anv/xtcf1T+wshVcMDhn2P486iA
         Gpy1b19v3hW8f1s3ITRQLFz/y8E6sHH6M2FUIZi0ptUIdZn0zvax1jxXJi50eq6mcmV4
         k/5KFNC7RswXB8YeM3JgNB5blBmZX3fGcpsv0+ttynAQCSKIf/AfDfo02nS3mJXp8jfU
         XAp6cIEuCqWsfLa5jfrIgPOpLpbPBSuSKJkNZcrFz8RB1tGPbbyA/HWefFdu870njJ5b
         IE6w==
X-Received: by 10.70.46.230 with SMTP id y6mr64996745pdm.96.1425989291928;
        Tue, 10 Mar 2015 05:08:11 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id oq4sm670434pdb.73.2015.03.10.05.08.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:08:10 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:36:28 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtft: Remove unneeded spaces to improve code style.
Message-ID: <20150310120627.GA8543@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove spaces to improve code style and align the code.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 7aa9e8c..9d74b23 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -33,13 +33,13 @@
 #define WIDTH		64
 #define HEIGHT		64
 #define TOTALWIDTH	(WIDTH * 2)	 /* because 2 x ks0108 in one display */
-#define FPS			20
+#define FPS		20
 
 #define EPIN		gpio.wr
-#define RS			gpio.dc
-#define RW			gpio.aux[2]
-#define CS0			gpio.aux[0]
-#define CS1			gpio.aux[1]
+#define RS		gpio.dc
+#define RW		gpio.aux[2]
+#define CS0		gpio.aux[0]
+#define CS1		gpio.aux[1]
 
 
 /* diffusing error (�Floyd-Steinberg�) */
-- 
1.9.1


