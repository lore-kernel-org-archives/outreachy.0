X-GM-THRID: 3911506198528
X-Received: by 10.112.130.70 with SMTP id oc6mr1570681lbb.13.1424978909821;
        Thu, 26 Feb 2015 11:28:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.132 with SMTP id q4ls73154laj.26.gmail; Thu, 26 Feb
 2015 11:28:29 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr1545940lae.7.1424978909365;
        Thu, 26 Feb 2015 11:28:29 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id r6si192797wix.0.2015.02.26.11.28.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 11:28:29 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw55 with SMTP id w55so14020604wes.5
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 11:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/k19ZUSJ7J8QkWnOUwzw1Bt0RTYEX7NSRzncLh96Exo=;
        b=U16cotOVAt0aCcvh/SlzoExPgKxMwDR9OlQyVjC5YgxfihVhIUam3z0SvWfHxF6hEe
         haOv5/d7T4SoynLfk/jWSOOvWHRePXd7bIxPd1LMWznNsFA3q2LwtmAYnygskZdT32HF
         Ib6zVqmG5U4TXoyt+HmT8R8RMPQUb/bFIK5xZP3bNzAHqHYFU6kNUMs/gojiR5/ZuS12
         tS38vEwzCLj4ZWfP2odyK3QXLVygnDTyNVp1pI6JXQdSbGz0kUR4ZAv+E8OiBIeJpb5x
         SbH/5isSfJMnZgScpjnZfX72GFbji33gCaXOehnAl2dfuBdJNd8WLrRnsDf2+/DMzpSq
         T1Dg==
X-Received: by 10.180.98.105 with SMTP id eh9mr18767672wib.51.1424978909106;
        Thu, 26 Feb 2015 11:28:29 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from yeliz-N56DP.comu.edu.tr ([193.255.97.48])
        by mx.google.com with ESMTPSA id u16sm2770347wjr.5.2015.02.26.11.28.28
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 11:28:28 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: android: uapi: Fix do not add new typedefs
Date: Thu, 26 Feb 2015 21:28:39 +0200
Message-Id: <1424978919-9620-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Fix checkpatch.pl issues with
do not add new typedefs in ion.h

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/android/uapi/ion.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/uapi/ion.h b/drivers/staging/android/uapi/ion.h
index 6aa4956..7e7f87e 100644
--- a/drivers/staging/android/uapi/ion.h
+++ b/drivers/staging/android/uapi/ion.h
@@ -20,7 +20,7 @@
 #include <linux/ioctl.h>
 #include <linux/types.h>
 
-typedef int ion_user_handle_t;
+int ion_user_handle_t;
 
 /**
  * enum ion_heap_types - list of all possible types of heaps
-- 
1.8.3.2


