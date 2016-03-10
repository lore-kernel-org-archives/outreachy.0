X-GM-THRID: 6260471380300529664
X-Received: by 10.129.88.136 with SMTP id m130mr3565518ywb.9.1457629581470;
        Thu, 10 Mar 2016 09:06:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.210 with SMTP id d201ls932317ioe.100.gmail; Thu, 10
 Mar 2016 09:06:21 -0800 (PST)
X-Received: by 10.50.85.37 with SMTP id e5mr3341634igz.12.1457629581075;
        Thu, 10 Mar 2016 09:06:21 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id ui7si702891pab.0.2016.03.10.09.06.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 09:06:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id 124so73595449pfg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 09:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yfI/QNn1CCPm4A6px4379XAgQSJXm4sIYMkU2n5mbWE=;
        b=eRpUFX+HJn1iRHOZper7ISqN4sStzAMV3LOFyEt7x3f0GaeIEqjekFDSTxacukb8M5
         82BE4AEO2Lpy8ctYgBwPKDa/DFruSCqhob4BFXQ8Lv1N0DoJhSev/lCf+YdlAocBtse/
         +on36FwzvlHcS1knfMt6Olks4G9IXmyBISOUeKR7JBhEOAB3Y1pLGv+aJX50ZqYXBPx8
         mg9Dti20liNcmm++So6KZFndmxD9lMSaMiDNK9cFigLJCQeXdW8p2Zcod7Lg6WaD2L2P
         kIf6xfrEikFe+rcQmVXuDyX3ArLtryjGjEemQM1w/1k7qf1cEf8ZcWYMqTVUZs9mPgVi
         79Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yfI/QNn1CCPm4A6px4379XAgQSJXm4sIYMkU2n5mbWE=;
        b=fOA6RRgM6pAmXx/LRcCOR18t9DiKVZUFn2eK9LIhdZyVbwNZGuSAOdmOOoEbsfvJVD
         L88BF1Ki9SasERpdCsDEAr4lndJlHh2DJlZYNVwAPhhmRDPb6zdtB2cIU6ojX9eB8Jkd
         yC9l0PJhWZkQ4QIU72j3iAn1WuassWzwID+Rno3roLHbldE+SCrAEY+ANn6kLjwrOoS6
         9fN7RQkANBfGyyrjxouMVGp0qhrVBVoc1QoQlsG8f8V4LvYJ+uxGKzv9IyeyHnw6VmAO
         Cu7JzM/EfO04n9CIDgkBEueDe3xdqVHf3qoPjlXogOYxlx6PGHk0s3EWFywzh0KJn47a
         2VDQ==
X-Gm-Message-State: AD7BkJKeJPZObuCvr+RiisF0aZv0t6TUoXHB+wMYWKnqrMs0RNHyRdQKkwE1eFSlBi7i3w==
X-Received: by 10.98.75.212 with SMTP id d81mr6521248pfj.148.1457629580924;
        Thu, 10 Mar 2016 09:06:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k65sm6865866pfb.30.2016.03.10.09.06.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 09:06:20 -0800 (PST)
Date: Thu, 10 Mar 2016 22:24:07 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: os_dep: Remove unnecessary else after
 return
Message-ID: <20160310165407.GA18825@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/osdep_service.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/osdep_service.c b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
index d87b547..854524d 100644
--- a/drivers/staging/rtl8188eu/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
@@ -67,8 +67,7 @@ u32 _rtw_down_sema(struct semaphore *sema)
 {
 	if (down_interruptible(sema))
 		return _FAIL;
-	else
-		return _SUCCESS;
+	return _SUCCESS;
 }

 void	_rtw_init_queue(struct __queue *pqueue)
--
2.1.4


