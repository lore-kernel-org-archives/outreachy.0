X-GM-THRID: 4949753724928
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,abf82a3e99bfbfbe
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.83.168 with SMTP id r8mr818162wiy.6.1425078966703;
        Fri, 27 Feb 2015 15:16:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.36 with SMTP id n4ls196046laj.27.gmail; Fri, 27 Feb
 2015 15:16:06 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr2435495lbb.11.1425078966197;
        Fri, 27 Feb 2015 15:16:06 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id o3si204016wib.2.2015.02.27.15.16.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 15:16:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id l15so3581223wiw.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 15:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=k7b/B1OpvbRK1W2vRHL30ls+KJ18uL3OLJxmNEeW/us=;
        b=wQw14ef8ZYoLYj4u2W6o7Dr3v4W9S97rK6+1Ak4vCNNZedr8+jKzS7LGR1PHVUw8X5
         pOSEzuPubScgy8+VGSPV8dyjhdLg/ZaFj1FE52GQPpWl8CmJiT2KoVdLqGw7037xzBOR
         tD4rIoHjYXOu1LBo3BH0g4mxd1mGeG9ARg+rvzhNCShJFWQp1vdr+wKylGtCIHRjXU7a
         ESAlK9TF9eYI3UGTZNaszvDKhxvliOQna/4p+of1I1fDh/cIJJBG4LmWlSVI1xxV1Vyw
         +JuObqG6KuilFh1i45EqwZ1L1t0mp1UMMMS7erDVTnQswbRpF6Wpql7/8V9ZOs6ofHzO
         2mxA==
X-Received: by 10.194.83.66 with SMTP id o2mr33273573wjy.55.1425078966117;
        Fri, 27 Feb 2015 15:16:06 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id fu1sm4798993wic.2.2015.02.27.15.16.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 15:16:05 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 2/2] Staging: rtl8192u: Remove TRUE and FALSE macros
Date: Sat, 28 Feb 2015 00:15:56 +0100
Message-Id: <48c1c72e2be3c06d4b22e1ac91cb047fe09e2067.1425078886.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425078886.git.ksenija.stanojevic@gmail.com>
References: <cover.1425078886.git.ksenija.stanojevic@gmail.com>

Remove TRUE and FALSE boolean macros, since Linux kernel has already a
boolean type, bool, defined in linux/stddef.h

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: nothing changed.

 drivers/staging/rtl8192u/r8192U.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
index c9d8c10..6c2e438 100644
--- a/drivers/staging/rtl8192u/r8192U.h
+++ b/drivers/staging/rtl8192u/r8192U.h
@@ -40,8 +40,6 @@
 #define RTL8192U
 #define RTL819xU_MODULE_NAME "rtl819xU"
 /* HW security */
-#define FALSE 0
-#define TRUE 1
 #define MAX_KEY_LEN     61
 #define KEY_BUF_SIZE    5
 
-- 
1.9.1


