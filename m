X-GM-THRID: 2050684354560
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5ceba8a0d878a238
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.94.134 with SMTP id dc6mr391663wib.2.1424548497622;
        Sat, 21 Feb 2015 11:54:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.172 with SMTP id dd12ls294112lad.20.gmail; Sat, 21 Feb
 2015 11:54:57 -0800 (PST)
X-Received: by 10.152.26.74 with SMTP id j10mr422928lag.10.1424548497220;
        Sat, 21 Feb 2015 11:54:57 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id cl5si361648wib.3.2015.02.21.11.54.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:54:57 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id l15so9363284wiw.5
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=UP6yAZbTpeJhUsoTDFwIXEa0qEVqCsbnNQ0I9Dc8Nw8=;
        b=onmUMs5TIslb85ZBfkeDAq3JV21ibVDb4SydFyx+ioZttKzUZXbmMKmWb6oIR2B7kG
         wgon9L4MMgl/HOpCcr3Qf0LIz2MEa3CI7RkvgXh79EFwNCA7eQj79eirsjzDcnbNAhRi
         18koXCbqcWHQUWYXcu5AXvj0eQsSkmXrfKJ9A8GsN4FV40BuAMluVAo0tbUbnp6sU2Ce
         PTIf+VCmWIbInv+so9QbqaA1v9ICLlMe8yHhZZzaCldbCusCLLx4n5Ee7bLLZjPl3/un
         R4lV9pyEn2fmxDZkXiuB7HEOv8cnuP4vtFZBC9f86aQ61Wj4Qb9hmOwvBpxHWcXsG3Yy
         APhQ==
X-Received: by 10.180.78.3 with SMTP id x3mr6605519wiw.86.1424548497094;
        Sat, 21 Feb 2015 11:54:57 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.61.145])
        by mx.google.com with ESMTPSA id u18sm47934659wjq.42.2015.02.21.11.54.56
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 11:54:56 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: bcm: Remove space before tab
Date: Sat, 21 Feb 2015 21:54:57 +0200
Message-Id: <1424548497-4413-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "please, no space before tabs"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/bcm/InterfaceMacros.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/bcm/InterfaceMacros.h b/drivers/staging/bcm/InterfaceMacros.h
index 7001caf..10599b7 100644
--- a/drivers/staging/bcm/InterfaceMacros.h
+++ b/drivers/staging/bcm/InterfaceMacros.h
@@ -4,8 +4,7 @@
 #define BCM_USB_MAX_READ_LENGTH 2048
 
 #define MAXIMUM_USB_TCB      128
-#define MAXIMUM_USB_RCB 	 128
-
+#define MAXIMUM_USB_RCB    128
 #define MAX_BUFFERS_PER_QUEUE   256
 
 #define MAX_DATA_BUFFER_SIZE    2048
-- 
1.8.3.2


