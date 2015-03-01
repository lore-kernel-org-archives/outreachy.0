X-GM-THRID: 5512019050496
X-Received: by 10.66.157.129 with SMTP id wm1mr22952024pab.15.1425233845477;
        Sun, 01 Mar 2015 10:17:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.230 with SMTP id 93ls1414986qgd.79.gmail; Sun, 01 Mar
 2015 10:17:25 -0800 (PST)
X-Received: by 10.236.47.136 with SMTP id t8mr22730084yhb.44.1425233845275;
        Sun, 01 Mar 2015 10:17:25 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id q9si369311pds.2.2015.03.01.10.17.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 10:17:25 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id y10so33759874pdj.6
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 10:17:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/curwZiKXKbGJAqoN6mVOkhVfZoX+a0D7woQ43KGA4E=;
        b=p9jctSwhVAmfqrbKr7A1h9BDHnFOAqirgE5+VAPSe1v8ibM6yO8njK9aUXCyH2akS0
         CfJh4DzQJBEK1fcw3d9w7c3OuEsMu7T/YIIlCssDlsl1L8NiiS5aWTLsX6PbOdq4ol/f
         Q9HJ1vYwaQBZQwl9A7wN5v0uHzIn84qy6fIG8Di50CyaovntfyHR6D1VqVZGhu+Dc39Q
         V2+Q1SWCqd6jy6c5ppfzZLybMeN/W2V3Y81WFwMzObF2fOdYgLOlDKU2ci2Ormhi3wpm
         hTBKiFxixUr1E/GO+Ob8BUtsTfz6WNmsPg+JfdMmyUK85avKUvEQLeSinmLD9pb2KEZK
         xGPg==
X-Received: by 10.68.132.103 with SMTP id ot7mr41393868pbb.0.1425233845165;
        Sun, 01 Mar 2015 10:17:25 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([111.92.71.90])
        by mx.google.com with ESMTPSA id w8sm9664694pds.64.2015.03.01.10.17.23
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 10:17:24 -0800 (PST)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 1/2] staging: lustre: lustre: libcfs: Replaced printk() with pr_err()
Date: Sun,  1 Mar 2015 23:45:06 +0530
Message-Id: <1425233707-9585-2-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425233707-9585-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425233707-9585-1-git-send-email-tinajohnson.1234@gmail.com>

The following checkpatch warning was fixed:

Prefer [subsystem eg: netdev]_err([subsystem]dev

with the help of Coccinelle. The following semantic patch was used:

@a@
expression e;
@@

printk(e,...);

@script:python b@
e << a.e;
y;
@@

import re
match = re.match('KERN_ERR ', e);
if (match == None):
    cocci.include_match(False)

else:
    m = re.sub('KERN_ERR ', '', e)
    coccinelle.y = m;

@c@
expression a.e;
identifier b.y;
@@

- printk(e,
+ pr_err(y,
 ...);

Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/module.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/module.c b/drivers/staging/lustre/lustre/libcfs/module.c
index 7dc77dd..e05d181 100644
--- a/drivers/staging/lustre/lustre/libcfs/module.c
+++ b/drivers/staging/lustre/lustre/libcfs/module.c
@@ -347,7 +347,7 @@ static int init_libcfs_module(void)
 
 	rc = libcfs_debug_init(5 * 1024 * 1024);
 	if (rc < 0) {
-		printk(KERN_ERR "LustreError: libcfs_debug_init: %d\n", rc);
+		pr_err("LustreError: libcfs_debug_init: %d\n", rc);
 		return rc;
 	}
 
@@ -433,7 +433,7 @@ static void exit_libcfs_module(void)
 
 	rc = libcfs_debug_cleanup();
 	if (rc)
-		printk(KERN_ERR "LustreError: libcfs_debug_cleanup: %d\n",
+		pr_err("LustreError: libcfs_debug_cleanup: %d\n",
 		       rc);
 
 	libcfs_arch_cleanup();
-- 
1.7.10.4


