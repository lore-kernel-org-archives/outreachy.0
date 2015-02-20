X-GM-THRID: 1068226314240
X-Received: by 10.152.4.229 with SMTP id n5mr932159lan.1.1424396678202;
        Thu, 19 Feb 2015 17:44:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.200 with SMTP id de8ls6093wib.26.gmail; Thu, 19 Feb
 2015 17:44:37 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr934519wjb.1.1424396677917;
        Thu, 19 Feb 2015 17:44:37 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id ew5si10071wid.1.2015.02.19.17.44.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 17:44:37 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f176.google.com with SMTP id h11so51997190wiw.3
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 17:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=waPwVjrwEvWY0JRi4xo8FGzQHUwW1Zp6arHH0boA07k=;
        b=wIAX6eYLlC0Exoe6/HImmmWqwOgQzlQggSiRTXIxy0ZAyzgSKcScnLG5Nn1wZG3Fri
         ybLyxpz0be0u2KDXvSXyPJQn/LCtr2zBYSCcf/pXM0y95HmZAPdM+IgOv3X9avmMBkWs
         RDDWFcrhzWcO6lYyCMIYH3m5wGnAZluKAl4d3dq8C0xIQNnhLKurwoFrs/wREcpWPzJf
         SUSngVPEty5NmK5aJ3SYcSVlfH6jMz3Cq1dqilzHKh2sjBgxHNxchGV4pZlMtTcuJGn2
         1KTozb+0LclI15iRdx7fc3aMQoB81Pi/ODF+OPL+k/rtUp4b5lny61lbBMz0NE+MnnzQ
         Ddsg==
X-Received: by 10.194.179.166 with SMTP id dh6mr14442152wjc.87.1424396677855;
        Thu, 19 Feb 2015 17:44:37 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.237])
        by mx.google.com with ESMTPSA id kr5sm34880809wjc.1.2015.02.19.17.44.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 17:44:37 -0800 (PST)
Date: Fri, 20 Feb 2015 03:44:31 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: i2o: Use #include <linux/uaccess.h> instead of
 <asm/uaccess.h>
Message-ID: <28f331166dc6528ad2f9b673c7948d505a3ad910.1424395309.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424395309.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424395309.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl warning:
Use #include <linux/uaccess.h> instead of <asm/uaccess.h>

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/i2o/i2o_proc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i2o/i2o_proc.c b/drivers/staging/i2o/i2o_proc.c
index ad84f33..cea536a 100644
--- a/drivers/staging/i2o/i2o_proc.c
+++ b/drivers/staging/i2o/i2o_proc.c
@@ -48,9 +48,9 @@
 #include <linux/errno.h>
 #include <linux/spinlock.h>
 #include <linux/workqueue.h>
+#include <linux/uaccess.h>
 
 #include <asm/io.h>
-#include <asm/uaccess.h>
 #include <asm/byteorder.h>
 
 /* Structure used to define /proc entries */
-- 
1.9.3


