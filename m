X-GM-THRID: 960100302848
X-Received: by 10.112.168.104 with SMTP id zv8mr831297lbb.10.1424378433676;
        Thu, 19 Feb 2015 12:40:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.72 with SMTP id le8ls88003lac.41.gmail; Thu, 19 Feb
 2015 12:40:33 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr860411lbc.22.1424378433303;
        Thu, 19 Feb 2015 12:40:33 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ew5si9113074wid.1.2015.02.19.12.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 12:40:33 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so11894041wiw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 12:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=l0FzFBPoQhwrtp5yuYHb0sKuUgCp9526T0+4FxCoCSU=;
        b=mmWdu8De1cm1PiG2pWZ8DQecLp7rQ1QAl9qucKPt9+LCCiXidl9Q1+EmDuaFOzx3hw
         b5gPOD0svJpQViuezqHffF8kfCjseKFEJX/29Uv9IHuhHMnNle72gRQwOOWtmBHEoUQf
         QPgH0mg3Y7VuVM7fkJfKxMJR3U2Clh7ZKfgwbZ32SLSPBpp2wUAMbDeHFJNTNwhssbdc
         2wRVOf+j8airy30VZthE447z/NrqeQ0+E35i+lRcFGGvZM/JI63wisBdlHC//ulY+89p
         0yKs+uQ7IX3+s07mb4h9qsByYbs4+/aHI7xIh7bhjES3PRKZABjnTB9YQb+qQACdPpLY
         DsHA==
X-Received: by 10.180.208.20 with SMTP id ma20mr9763830wic.22.1424378433189;
        Thu, 19 Feb 2015 12:40:33 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id vq9sm38957511wjc.6.2015.02.19.12.40.31
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 12:40:32 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: lustre: include: linux: libcfs: Remove unnecessary semicolon
Date: Thu, 19 Feb 2015 22:39:55 +0200
Message-Id: <1424378395-23667-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This fixes the checkpatch.pl warning:
WARNING: macros should not use a trailing semicolon.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h
index 2e5a9e5..4461024 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h
@@ -195,8 +195,8 @@ do {								\
 	       .msg_file   = __FILE__,				\
 	       .msg_fn     = __func__,				\
 	       .msg_line   = __LINE__,				\
-	       .msg_cdls   = (cdls)	 };			\
-	dataname.msg_mask   = (mask);
+	       .msg_cdls   = (cdls)	 }			\
+	dataname.msg_mask   = (mask)
 
 /**
  * Filters out logging messages based on mask and subsystem.
-- 
1.8.3.2


