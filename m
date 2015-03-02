X-GM-THRID: 5958272024576
X-Received: by 10.182.126.47 with SMTP id mv15mr25533093obb.50.1425314881736;
        Mon, 02 Mar 2015 08:48:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.85.113 with SMTP id g17ls978182igz.13.canary; Mon, 02 Mar
 2015 08:48:01 -0800 (PST)
X-Received: by 10.50.29.6 with SMTP id f6mr17444206igh.2.1425314881468;
        Mon, 02 Mar 2015 08:48:01 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id bo1si1608705pbc.0.2015.03.02.08.48.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 08:48:01 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x231.google.com with SMTP id ft15so18533687pdb.11
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 08:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wvkawe5YMAcbulSfYfJCdl8K2H5ErMVz3gOYfRSj8Jc=;
        b=DocBOHvFac1cfcbvvmo00FQsUuLyJ+9XZmSNcGV1qx/amEh0NHUIa22zEVTzrjZafZ
         uLUjrgUyuM1IMf25N0utemm7ghFryOswpek478q8CefU5xuJCUFUY/uIHa38UhfGDvKw
         KVvFI+O/TbpOhTqqB3ozUS7gwQNI3oIj8KAD6BirC+pxghZezYFpXdrK2slfPzE0jQSZ
         hMqIvxx8S5XOXlwEK4lkNLxFYuHNu0OO7qOlja1KsB5aogIb/TLZCzxW8xJDuqz3eI+o
         1VOKvMvdtfuShIm0gtPemhJmsbjSI27cxAgdXk0QX1DEy89zMl/r5n8ay0roLjRI581d
         EzBA==
X-Received: by 10.68.168.101 with SMTP id zv5mr49001134pbb.104.1425314881323;
        Mon, 02 Mar 2015 08:48:01 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.23.150])
        by mx.google.com with ESMTPSA id gi6sm12356484pbd.93.2015.03.02.08.47.58
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 08:48:00 -0800 (PST)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH v2 1/2] staging: lustre: lustre: libcfs: Replaced printk() with pr_err()
Date: Mon,  2 Mar 2015 22:15:46 +0530
Message-Id: <1425314747-9532-2-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425314747-9532-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425314747-9532-1-git-send-email-tinajohnson.1234@gmail.com>

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
index e35f598..97597e0 100644
--- a/drivers/staging/lustre/lustre/libcfs/module.c
+++ b/drivers/staging/lustre/lustre/libcfs/module.c
@@ -347,7 +347,7 @@ static int init_libcfs_module(void)
 
 	rc = libcfs_debug_init(5 * 1024 * 1024);
 	if (rc < 0) {
-		pr_err("LustreError: libcfs_debug_init: %d\n", rc);
+		pr_err( "LustreError: libcfs_debug_init: %d\n", rc);
 		return rc;
 	}
 
@@ -433,7 +433,7 @@ static void exit_libcfs_module(void)
 
 	rc = libcfs_debug_cleanup();
 	if (rc)
-		pr_err("LustreError: libcfs_debug_cleanup: %d\n", rc);
+		pr_err( "LustreError: libcfs_debug_cleanup: %d\n", rc);
 
 	libcfs_arch_cleanup();
 }
-- 
1.7.10.4


