X-GM-THRID: 6208780182707240960
X-Received: by 10.31.178.196 with SMTP id b187mr16471723vkf.3.1445594286087;
        Fri, 23 Oct 2015 02:58:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.140 with SMTP id x134ls225497iod.65.gmail; Fri, 23 Oct
 2015 02:58:05 -0700 (PDT)
X-Received: by 10.66.102.38 with SMTP id fl6mr2341449pab.48.1445594285636;
        Fri, 23 Oct 2015 02:58:05 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id fa8si2205777pab.1.2015.10.23.02.58.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 02:58:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fv9so119746476pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 02:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oBHUakGgbgSGPomA9/nuhZR+BtuUm+mvMIa4Xe8RWos=;
        b=n/93SYy8CURrcvBOKs/Iml2sjrrEHcNtBDnN37Ikz+DMkYMOeyEz15dpmrx7pjdvVZ
         8c/m7Kfh4MzNjhbyFggFG+GK86nRO4xj0xHz+Hsp0wMoUDsAiyhPpKP0id+VLSUwM1R8
         isawjeDz0mL7GKTjcxt1R9OHmRbNk096D+WSvORbWh/JAQzZyq43XEbS0eJqiNFEiLWp
         5eJzEVEUZBozW/a5E7TJP7CZ0TlIVP8WeAH9QcBGVVMLJhOUWr9HBx/7hXGWTcZHC67n
         qjEGKU9F/qPK/pWOHzxF6YGmSUgRo2Mk01wdnPPy15xpCzJqdLc01Ro3PXL4jb8VwLHD
         P2eA==
X-Received: by 10.66.227.1 with SMTP id rw1mr3961005pac.138.1445594285529;
        Fri, 23 Oct 2015 02:58:05 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rc5sm18098723pbc.95.2015.10.23.02.58.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 02:58:04 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: lustre-devel@lists.lustre.org
Subject: [PATCH] Staging: lustre: obdclass: Remove unused header files
Date: Fri, 23 Oct 2015 15:27:57 +0530
Message-Id: <1445594277-14421-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Remove unused header files that are already included in 'lu_object.h'
and 'obd.h'

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/lu_object.c | 1 -
 drivers/staging/lustre/lustre/obdclass/lu_ref.c    | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
index 0d15bd5..549df95 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
@@ -55,7 +55,6 @@
 #include "../include/lustre_disk.h"
 #include "../include/lustre_fid.h"
 #include "../include/lu_object.h"
-#include "../include/lu_ref.h"
 #include <linux/list.h>
 
 static void lu_object_free(const struct lu_env *env, struct lu_object *o);
diff --git a/drivers/staging/lustre/lustre/obdclass/lu_ref.c b/drivers/staging/lustre/lustre/obdclass/lu_ref.c
index 993697b..df2d8b9 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_ref.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_ref.c
@@ -47,4 +47,3 @@
 #include "../include/obd.h"
 #include "../include/obd_class.h"
 #include "../include/obd_support.h"
-#include "../include/lu_ref.h"
-- 
2.1.4


