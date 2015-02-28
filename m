X-GM-THRID: 4525053181952
X-Received: by 10.112.35.135 with SMTP id h7mr2417806lbj.23.1425081847179;
        Fri, 27 Feb 2015 16:04:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.163 with SMTP id gv3ls219468wib.2.canary; Fri, 27 Feb
 2015 16:04:05 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr831917wib.4.1425081845866;
        Fri, 27 Feb 2015 16:04:05 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id l8si250976wia.0.2015.02.27.16.04.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 16:04:05 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw55 with SMTP id w55so23284038wes.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 16:04:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=imJLrgHnBzAwRU3PexETk4My0k3uFPd8UqkeWbFZpp8=;
        b=IQ3X+smdp7mNd1uAm81BmTOFVgAeb1+8ZyHnrF5v0UZawS4PMEezKIuXthXhbPgdBr
         UPJazrGCxl+pz8Ezc/N/8hLLIm3OvORpNgTdZIg9OSIbzeLkFux3tEG8bFamnud2tS+J
         XaW7ZxGNv8Hl7LZnZk8EDvLXL1mHCYM6fadPEBD3nEAKw5i+2iwBzjse5ZcrU+qFU0Zk
         Mrlxk3IrrqqBCPPi9YFo1kyisx47ewva7NGe8gZyHSnnD0cEdXrdjN5gtvWAUr/zSZ3D
         +D8QvDpK3GQr3VjMDd4itnH59meM0uKt4T++Y06HF/6YSz+2ddTqY3cVOzpgS8qZUibB
         Ct6w==
X-Received: by 10.194.77.230 with SMTP id v6mr33662181wjw.25.1425081845768;
        Fri, 27 Feb 2015 16:04:05 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id h11sm4876975wic.14.2015.02.27.16.04.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 16:04:04 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 02:03:57 +0200
Message-Id: <1425081837-5026-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c WARNING: Missing a
blank line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c b/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
index 4621b71..445d1b2 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
@@ -511,6 +511,7 @@ static int ptlrpcd_bind(int index, int max)
 #if defined(CONFIG_NUMA)
 	{
 		int i;
+
 		mask = *cpumask_of_node(cpu_to_node(index));
 		for (i = max; i < num_online_cpus(); i++)
 			cpu_clear(i, mask);
@@ -625,6 +626,7 @@ int ptlrpcd_start(int index, int max, const char *name, struct ptlrpcd_ctl *pc)
 
 	{
 		struct task_struct *task;
+
 		if (index >= 0) {
 			rc = ptlrpcd_bind(index, max);
 			if (rc < 0)
-- 
1.9.1


