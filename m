X-GM-THRID: 6202590873254887424
X-Received: by 10.112.142.195 with SMTP id ry3mr6820543lbb.22.1444153225360;
        Tue, 06 Oct 2015 10:40:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.73 with SMTP id g9ls1111907wiy.30.gmail; Tue, 06 Oct
 2015 10:40:24 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr3872402wia.7.1444153224631;
        Tue, 06 Oct 2015 10:40:24 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id c7si609066wiy.3.2015.10.06.10.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 10:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id ge5so177728923wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 10:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=j0lDQq8qQZt+YyDWiknXbiiTlPLwpdZ/DmsnA3+xb0k=;
        b=ahxI33buTOMk4YuboEjsGtkQfTI456A6XKejBEKaMwFKdMKEO+S+FuDZynNtlt79ee
         h97KvqVYJLzLfvpfN9w792YF4MFj+Lv2NpyfXnwqpaxP/31efA2u5nbar06nt0O0z7ei
         RIorv1D/QraHwEmOyfWhOT7CVJZraTZmKZqklBrDqd9sqikdOW/J6mJaoaPjo0HfAWn0
         mLI6A/Z/eSlONohvfC7s81uOeRKJynlLsCMOOTIKTwW4HfFN8qAp6WOKhp+zjoy3E5r4
         F3k17au2ZnVG1A/N1vKJj+ObiSy3r1TtJN3rJbcedq3uJbbzgX5vZ0+hEDx3MHqnI81z
         VdSQ==
X-Received: by 10.194.7.97 with SMTP id i1mr4118402wja.87.1444153224514;
        Tue, 06 Oct 2015 10:40:24 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.76])
        by smtp.gmail.com with ESMTPSA id ry1sm33837272wjb.24.2015.10.06.10.40.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 10:40:24 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Remove /** from regular comments
Date: Tue,  6 Oct 2015 20:39:43 +0300
Message-Id: <1444153183-88471-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix kernel-doc warnings 'cannot understand function prototype'
by removing /** from regular comments

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 87ab6c6..14eb4af 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -86,19 +86,19 @@ int rx_napi_weight = 32;
 module_param(rx_napi_weight, int, 0444);
 MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
 
-/**
+/*
  * cvm_oct_poll_queue - Workqueue for polling operations.
  */
 struct workqueue_struct *cvm_oct_poll_queue;
 
-/**
+/*
  * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
  *
  * Set to one right before cvm_oct_poll_queue is destroyed.
  */
 atomic_t cvm_oct_poll_queue_stopping = ATOMIC_INIT(0);
 
-/**
+/*
  * Array of every ethernet device owned by this driver indexed by
  * the ipd input port number.
  */
-- 
1.9.1


