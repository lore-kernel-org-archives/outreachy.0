X-GM-THRID: 1600363954176
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f7f767888a359c0c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.88.40 with SMTP id bd8mr1573180lab.0.1424469109277;
        Fri, 20 Feb 2015 13:51:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.10.131 with SMTP id i3ls182453wib.35.gmail; Fri, 20 Feb
 2015 13:51:48 -0800 (PST)
X-Received: by 10.180.105.129 with SMTP id gm1mr20534wib.3.1424469108951;
        Fri, 20 Feb 2015 13:51:48 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id l8si396636wia.0.2015.02.20.13.51.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:51:48 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so5744960wiw.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=LqxhPZBWasN4rFYk8+cHKnHiYzS0k+SybLLs5z1HcoQ=;
        b=fXSLVDb/IbeC402m/RosK3+YF0FOFGdB8fWiKNlotFD6jGV+dHcyn2fBx8QGLe8rb8
         n8xQ35h9LO7Oy7PZAfpl49wQmZCx/Dc/omaE8JGv9PPEc8RmRg/GA1oI41JrwGO5nF5a
         3tqtFDVaXSZxccI+CJ06CQQA7KthpgQaiUTUh5fEw7BpDDsA6BKZKv8hcjkzFFyxQStr
         hLRHCM9dkLJkJ9foT+6mQIPolS8UqNDc5s1EmP+CLI26kBnKCBU8jE+XECCezT8LN5ZI
         qQZ875NoIAfSGmVXYkaWDutArucTZw454XCn62rQaqZsHvwvLt5/qs8GD48vglyX9thO
         Uj6w==
X-Received: by 10.181.12.5 with SMTP id em5mr203905wid.84.1424469108887;
        Fri, 20 Feb 2015 13:51:48 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id fs8sm4173556wib.8.2015.02.20.13.51.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 13:51:48 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/3] Staging: lustre: Used "linux" instead of "asm"
Date: Fri, 20 Feb 2015 23:51:36 +0200
Message-Id: <1424469098-11379-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "Use #include <linux/uaccess.h> instead of
<asm/uaccess.h"> checkpatch.pl warning in dir.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dir.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index a182019..cb632a1 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -41,7 +41,7 @@
 #include <linux/fs.h>
 #include <linux/pagemap.h>
 #include <linux/mm.h>
-#include <asm/uaccess.h>
+#include <linux/uaccess.h>
 #include <linux/buffer_head.h>   /* for wait_on_buffer */
 #include <linux/pagevec.h>
 #include <linux/prefetch.h>
-- 
1.9.1


