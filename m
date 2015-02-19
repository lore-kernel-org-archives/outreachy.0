X-GM-THRID: 658290769920
X-Received: by 10.43.9.135 with SMTP id ow7mr4216083icb.29.1424338712166;
        Thu, 19 Feb 2015 01:38:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.68 with SMTP id f62ls575810qge.56.gmail; Thu, 19 Feb
 2015 01:38:32 -0800 (PST)
X-Received: by 10.236.24.228 with SMTP id x64mr3556506yhx.26.1424338712035;
        Thu, 19 Feb 2015 01:38:32 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com. [209.85.192.180])
        by gmr-mx.google.com with ESMTPS id bo1si2841801pbc.0.2015.02.19.01.38.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 01:38:31 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.180 as permitted sender) client-ip=209.85.192.180;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.180 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfp1 with SMTP id fp1so7669762pdb.9
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 01:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=SJlokOZPcndRTjjjksg8Pqi66XMRcYN/j2ubQHR3/bI=;
        b=SwxmhtW8SE0LMvJg4ympu0Bk3bjWMfa4Splzpx4xKTPCqFo4vDi+w/NMY1qCvNWWTI
         Mkhj6SCoHiCVW4TDxuOtbImHoTJQUmp0KBr8rme1Wv2Uv96W1XPQ3uTos7myUybcoYT8
         N4H9HRGkTv+9xv/oh/6nyEHWfxfNY/5cStQ66nufCI/+zOKRdSAyI3KT21qB7uliT6rZ
         vetzZ8OmIaxKdkJC4AJ6xSG+dt7eXI8efyU4aoi+wQzRCch8GgiCV9w8m+rzbZXIHXcd
         BUYxqVlt3yaJgS9A33Pwl7OZBI5mRTqGNKepOtCm4bPJaIBrho39ZlHtQTH8KzOYQhfX
         PH1w==
X-Received: by 10.66.139.167 with SMTP id qz7mr6497651pab.50.1424338711901;
        Thu, 19 Feb 2015 01:38:31 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id r5sm12406601pdd.60.2015.02.19.01.38.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 01:38:31 -0800 (PST)
Date: Thu, 19 Feb 2015 15:08:17 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: Replaced library asm/uaccess.h with
 linux/uaccess.h
Message-ID: <20150219093817.GA28101@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to replace library asm/uaccess.h with linux/uaccess.h
as per checkpatch warning.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
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


