X-GM-THRID: 797133766656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1e65c122f72614c8,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.94.134 with SMTP id dc6mr1238375wib.2.1424371273818;
        Thu, 19 Feb 2015 10:41:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.9 with SMTP id o9ls195020lao.83.gmail; Thu, 19 Feb 2015
 10:41:13 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr776358lbb.19.1424371273303;
        Thu, 19 Feb 2015 10:41:13 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id ev8si6460277wib.3.2015.02.19.10.41.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:41:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f45.google.com with SMTP id k14so9023905wgh.4
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 10:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=CFojyNe4wKGUa1zmjb9zx58fsUtBXdGSrVcTPEaTVVo=;
        b=CTk0yhqpKDMEw5gqAoe5Ur5VlKeAoM2ixE4iO0ykxWVsq+xcNL5rM6ZhmMl3W/36pp
         NUH5/2g+P1R91V9WZCj4meUSVrkCvIhOlkEp4VUpHDtzywnD6Y3w7O5A5IKq+yVm7Wpx
         XL4JtJ3nP5k99kRyQFBnOZUZ3Fdro2VZD4nfrqjXMyaqKPmOwXGENyeClFnr8K58Tj/8
         OBIhLK3hNfbvtvuv8Hr9OFND5oC+Qi/tLZN+p2raQuk/r+2Z9VRMDrTIMy45Ss+34z8F
         SvrUFfo1R8r3eHx2OZ9K8d7YADqloRzkB1EhgwIu6RPeBbDwC5okhx8dY5SL2Z4vNGtw
         ASaw==
X-Received: by 10.194.186.200 with SMTP id fm8mr11860488wjc.138.1424371273168;
        Thu, 19 Feb 2015 10:41:13 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id k1sm38568936wjn.9.2015.02.19.10.41.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 10:41:12 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: media: parport: Replace header file
Date: Thu, 19 Feb 2015 19:41:03 +0100
Message-Id: <1424371263-16991-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
WARNING: "Use #include <linux/uaccess.h> instead of <asm/uaccess.h>"

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/media/parport/bw-qcam.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
index 67b9da1..27f9e4a 100644
--- a/drivers/staging/media/parport/bw-qcam.c
+++ b/drivers/staging/media/parport/bw-qcam.c
@@ -73,7 +73,7 @@ OTHER DEALINGS IN THE SOFTWARE.
 #include <linux/sched.h>
 #include <linux/videodev2.h>
 #include <linux/mutex.h>
-#include <asm/uaccess.h>
+#include <linux/uaccess.h>
 #include <media/v4l2-common.h>
 #include <media/v4l2-ioctl.h>
 #include <media/v4l2-device.h>
-- 
1.9.1


