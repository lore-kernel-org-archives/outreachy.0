X-GM-THRID: 6205958961152131072
X-Received: by 10.182.104.137 with SMTP id ge9mr9381301obb.49.1444937419524;
        Thu, 15 Oct 2015 12:30:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.59.211 with SMTP id b19ls2162325igr.37.canary; Thu, 15 Oct
 2015 12:30:19 -0700 (PDT)
X-Received: by 10.68.176.132 with SMTP id ci4mr8994769pbc.13.1444937418996;
        Thu, 15 Oct 2015 12:30:18 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id wl2si1604175pab.1.2015.10.15.12.30.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 12:30:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ur7so13538737pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 12:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=RcztAI+YvZLxQnDPr8uOJkhanYcIofarQLFro41cdx4=;
        b=VBx2ylbX7HAt6XChff8EePVqjV9h3RjY5+Z/3uGgjTg0wQnY1QshaejcT4PvOw9Kvh
         cPLN8h+DnY2WB485AJDELXPw4Z/7bHTFZ2C2agmD9UdxZkozuVbrxZ9tKgg52YRkL3JH
         CWGfyeURbHmRCAWyhort9ld61TSJGnojF+ID2S8Fukh3/YMqUmt1jfo6XTCUqSZtRHCr
         dpvOUdYZJBS1O3UvHXb2RmYQMu3rZUIRntaeryCKOuaXWl4ELLFiFaRbZlLTfmaVE4it
         UgFEDT1UmVjNadgnTuNopf1+g4v3FLvEwgO+bX0zAz5K3HBvVi5eQfE9nDz1UT7PsV4j
         5kfg==
X-Received: by 10.68.107.133 with SMTP id hc5mr11713536pbb.5.1444937418892;
        Thu, 15 Oct 2015 12:30:18 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id k10sm16824791pbq.78.2015.10.15.12.30.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Oct 2015 12:30:18 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>,
	Oleg Drokin <oleg.drokin@intel.com>,
	<lustre-devel@lists.lustre.org>,
	driverdev-devel@linuxdriverproject.org
Subject: [PATCH] Staging: lustre: obd_support.h: Remove unused OBD_SLAB_FREE_RTN0
Date: Fri, 16 Oct 2015 01:00:10 +0530
Message-Id: <1444937410-4796-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Remove macro OBD_SLAB_FREE_RTN0 since it is defined but not used

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_support.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_support.h b/drivers/staging/lustre/lustre/include/obd_support.h
index ec14b72c..abc53f1 100644
--- a/drivers/staging/lustre/lustre/include/obd_support.h
+++ b/drivers/staging/lustre/lustre/include/obd_support.h
@@ -517,12 +517,6 @@ do {									      \
 /* we memset() the slab object to 0 when allocation succeeds, so DO NOT
  * HAVE A CTOR THAT DOES ANYTHING.  its work will be cleared here.  we'd
  * love to assert on that, but slab.c keeps kmem_cache_s all to itself. */
-#define OBD_SLAB_FREE_RTN0(ptr, slab)					 \
-({									    \
-	kmem_cache_free((slab), (ptr));				    \
-	(ptr) = NULL;							 \
-	0;								    \
-})
 
 #define __OBD_SLAB_ALLOC_VERBOSE(ptr, slab, cptab, cpt, size, type)	      \
 do {									      \
-- 
2.1.4


