X-GM-THRID: 3063531175936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8a7b7b306baa2356,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.7 with SMTP id n7mr1581986wix.0.1424724494827;
        Mon, 23 Feb 2015 12:48:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.101.169 with SMTP id fh9ls75606wib.48.canary; Mon, 23 Feb
 2015 12:48:14 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr1621178wjc.5.1424724494448;
        Mon, 23 Feb 2015 12:48:14 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id i7si779647wif.0.2015.02.23.12.48.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:48:14 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id x3so21238740wes.6
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nF0gpWxf5MkosYPvy32i0O9+SSwMZY+LKCky6bJPRuM=;
        b=WZyzFcNL4T0PLxM1d7BAFxqe1MhlpFWMdbtwhkJhmuh9na/Eji+0wg9ihhxYGAtlOI
         rukBH/QGfDx4Jcb0ViDjiyk+9L1WABm4ltKbsti0vkJN39QJc2GErSb7IpZrUKAxwIP0
         MxGs0fAXcu+RLcX96d9Uexam59cB6DAuGDMpK1KKIaLGwn767YwKLpb8LikPaG8JjlJ/
         U7oHkBdyRD+YPmQ3trM7oqDr8b8jgOD0LavDLi2is6a5dj6T0xPOGCgc87GkEl1Tj7b/
         OJUfYkdtEjRhglR6D2vPKdY5rOd/XjOhEFWE0JY1T8LMZ/Xkta0zf8hJtnVNp8wd9UaP
         ilWg==
X-Received: by 10.194.143.109 with SMTP id sd13mr26507163wjb.70.1424724494130;
        Mon, 23 Feb 2015 12:48:14 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id ka1sm57160931wjc.2.2015.02.23.12.48.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 12:48:13 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: media: Fix do not use C99 // comments
Date: Mon, 23 Feb 2015 22:48:05 +0200
Message-Id: <1424724485-5872-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with do not use C99 //
comments in saa7191.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/media/vino/saa7191.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
index f411e1f..2e54970 100644
--- a/drivers/staging/media/vino/saa7191.c
+++ b/drivers/staging/media/vino/saa7191.c
@@ -33,7 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi>");
 MODULE_LICENSE("GPL");
 
 
-// #define SAA7191_DEBUG
+/* #define SAA7191_DEBUG */
 
 #ifdef SAA7191_DEBUG
 #define dprintk(x...) printk("SAA7191: " x);
-- 
1.9.1


