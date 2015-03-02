X-GM-THRID: 5958272024576
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2b16960f09c11e68
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.67.23.71 with SMTP id hy7mr27512664pad.45.1425319970969;
        Mon, 02 Mar 2015 10:12:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.239 with SMTP id x102ls1748729qgd.69.gmail; Mon, 02 Mar
 2015 10:12:50 -0800 (PST)
X-Received: by 10.52.236.196 with SMTP id uw4mr27456709vdc.2.1425319970685;
        Mon, 02 Mar 2015 10:12:50 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id pc4si1654388pac.0.2015.03.02.10.12.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:12:50 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id eu11so2327245pac.4
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 10:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+fN6nlrzV2dxpBJsx1+IF4jjIkbVYCeyT/ZYu1qj3kE=;
        b=Mp/fsTsN+oa4b8DbBaGTmKBYO9z5dUNh6GsqeWyrrZ2KIaBVl3zOcLu+jV3o86oUey
         5mFTSnqKWhlZWHttRTZz3yaV9GcjVwlwcej1uQvqhKj/2YmIGcLeq4Vak0YwOwAeS93d
         oHu+sUEPdTt9OMhL9H+GkBw6NIVHPJMgk216M1VIbEASNkZBtmDltO9yiWkXSHdJgw+Q
         AjlRT/1lW9VLcnZ73TyKzqD6oF51A9f5fuo6h9cIJkx51XEhNGYxch5dJnKLw2PZnBeD
         EE8SEJmU8gaiZk8mjmtCTPakwzKqmTD5t0Wfv0UtTxoKMwG6Pb3hwnC6k/1GZaQhM0Dk
         FqEQ==
X-Received: by 10.68.204.73 with SMTP id kw9mr49471627pbc.48.1425319970563;
        Mon, 02 Mar 2015 10:12:50 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.20.251])
        by mx.google.com with ESMTPSA id pa6sm12724475pac.45.2015.03.02.10.12.48
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 10:12:49 -0800 (PST)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH v3 1/2] staging: lustre: lustre: libcfs: Replaced printk() with pr_err()
Date: Mon,  2 Mar 2015 23:40:25 +0530
Message-Id: <1425319826-14232-2-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425319826-14232-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425319826-14232-1-git-send-email-tinajohnson.1234@gmail.com>

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
Changes in v3:
    -v2 failed to show the actual diff
    -Corrected erroneous v2 patch

 drivers/staging/lustre/lustre/libcfs/module.c |    5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/module.c b/drivers/staging/lustre/lustre/libcfs/module.c
index 7dc77dd..e35f598 100644
--- a/drivers/staging/lustre/lustre/libcfs/module.c
+++ b/drivers/staging/lustre/lustre/libcfs/module.c
@@ -347,7 +347,7 @@ static int init_libcfs_module(void)
 
 	rc = libcfs_debug_init(5 * 1024 * 1024);
 	if (rc < 0) {
-		printk(KERN_ERR "LustreError: libcfs_debug_init: %d\n", rc);
+		pr_err("LustreError: libcfs_debug_init: %d\n", rc);
 		return rc;
 	}
 
@@ -433,8 +433,7 @@ static void exit_libcfs_module(void)
 
 	rc = libcfs_debug_cleanup();
 	if (rc)
-		printk(KERN_ERR "LustreError: libcfs_debug_cleanup: %d\n",
-		       rc);
+		pr_err("LustreError: libcfs_debug_cleanup: %d\n", rc);
 
 	libcfs_arch_cleanup();
 }
-- 
1.7.10.4


