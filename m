X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.4.229 with SMTP id n5mr2648914lan.1.1425122738000;
        Sat, 28 Feb 2015 03:25:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.169 with SMTP id s9ls276957laa.8.gmail; Sat, 28 Feb 2015
 03:25:36 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr2693418lbc.2.1425122736489;
        Sat, 28 Feb 2015 03:25:36 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id l8si317654wia.0.2015.02.28.03.25.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:25:36 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id y19so24887312wgg.10
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:25:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=imJLrgHnBzAwRU3PexETk4My0k3uFPd8UqkeWbFZpp8=;
        b=G0RUUYaDCsnlHew95P+5zqElh96buvKfLc/6LO9L+1vHf66mhIn1Q0dObPJE0UQ30s
         TeFZTwL4oJ7OYtmpDTfd++BKFU3Ir9yh1zmhAV2s4JpIOuaRH/7Wc5BtVsLNolsv3ZJG
         FNUI9svmkSmRbppZfsvcVvpQzakO46HHni/ec1+KCqkfnrI6f6Q/knGoyxSCAZi6lFpB
         ZTfC+u1mMpT/KP20NZpxA/ANsDj7Gj48xBItyg2tPcSaxWR08tNu0+O+BNsGbSvGley5
         0sE3kGYX+epyxf83e8WkpkbwFUh6CJ/CdT6v6RMkQfSaiMLo5w49gzQ7ovG64y+Qs3w5
         ReNw==
X-Received: by 10.194.19.10 with SMTP id a10mr31594459wje.153.1425122736407;
        Sat, 28 Feb 2015 03:25:36 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id uc18sm6701269wib.0.2015.02.28.03.25.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:25:35 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 07/10] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 13:25:12 +0200
Message-Id: <1425122715-2938-7-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>

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


