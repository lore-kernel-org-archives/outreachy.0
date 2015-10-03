X-GM-THRID: 6201447937149501440
X-Received: by 10.180.35.132 with SMTP id h4mr863450wij.5.1443887114075;
        Sat, 03 Oct 2015 08:45:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.132 with SMTP id ei4ls564149wid.48.canary; Sat, 03 Oct
 2015 08:45:13 -0700 (PDT)
X-Received: by 10.180.35.132 with SMTP id h4mr863446wij.5.1443887113741;
        Sat, 03 Oct 2015 08:45:13 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id c7si96272wiy.3.2015.10.03.08.45.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 08:45:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ge5so68332516wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 08:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VyDM96C91uhFmTDvA8KkUZo1AfQf4+atS9xNlYR4ts8=;
        b=xeA8G2f5V/Q70231D/7eahYV7wXSFcbG56ywD/mmxCUnIrDbDhpuVc8RURJA0wyc+7
         J+nMM+upfOgkwqXl3JQcr2yt6+MvZr1gtagiqIaupA6NK9Mx13J41l3WmGpujWZzPhrQ
         AtSav1fkrhFb6XSFk5BXkJ5m3AyLMcM/ORUh5FWZxAWHDoIfnxg+FKyJnfFF786IS/Ks
         XNvXM4eJLLm5xPcnU9EtxUcS2ZO5BZbUP84lQ20i/HRflr+HMYv68druaa/79XGUqNbK
         19NAc7IlVVMhTtZlerfCKbornG8iI66fek8he9OpteED0EaQVIkya81V12BBlehsvl6z
         2Ylw==
X-Received: by 10.194.120.131 with SMTP id lc3mr20481223wjb.99.1443887113656;
        Sat, 03 Oct 2015 08:45:13 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id l1sm17014345wjx.13.2015.10.03.08.45.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 08:45:13 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: android: Remove /** from regular comments
Date: Sat,  3 Oct 2015 18:45:01 +0300
Message-Id: <1443887101-52302-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix 'cannot understand function prototype' and 'No description found for
parameter' kernel-doc warnings by replacing /** with /* in regular
comments

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/android/ashmem.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 236bfae0..a53a0b8 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -82,14 +82,14 @@ struct ashmem_range {
 /* LRU list of unpinned pages, protected by ashmem_mutex */
 static LIST_HEAD(ashmem_lru_list);
 
-/**
+/*
  * long lru_count - The count of pages on our LRU list.
  *
  * This is protected by ashmem_mutex.
  */
 static unsigned long lru_count;
 
-/**
+/*
  * ashmem_mutex - protects the list of and each individual ashmem_area
  *
  * Lock Ordering: ashmex_mutex -> i_mutex -> i_alloc_sem
-- 
1.9.1


