X-GM-THRID: 4816372760576
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2d92dbdd813f30a4,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr2315546lae.7.1425066871545;
        Fri, 27 Feb 2015 11:54:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.99 with SMTP id bf3ls187571wib.9.canary; Fri, 27 Feb
 2015 11:54:31 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr805536wib.1.1425066871278;
        Fri, 27 Feb 2015 11:54:31 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id el6si185097wib.2.2015.02.27.11.54.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:54:31 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id k14so22497857wgh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=HG/s9qjBwFWyC0AcgWHqAWrzxhOluXXKwop/H8kqzFs=;
        b=VqRRTrqDQuZ86MpTgwqJthJCOSFnXW9rxZPocf0y2ohqxiFa3fHhs5jdhXrD32xg8h
         JT2dfSt5xIgYpe6MmU1TWuE9wUVSf2QMbjUT1CsDVVtoattSDAQ20DxlUHGykcuEaTKM
         c/pbQWEJuD68EAYhBFrU/yCsiJ3TfudyZtCZscWqXgsCmKO7ZsbVdP9jzP78502Nt36X
         py1uBHOOv6nDMZLkmuQSgJtoG5zIMwh8RGxQWkQV+Xm3IZPTQCvPhVYaUQcLzfTaW0c+
         gGZZ+I9dgxuo1kFj/bTuB88jrLYmzXfKM7N2BvKphpSJqdjXi8Qf32SieJW/elY55G3B
         3IaQ==
X-Received: by 10.194.77.99 with SMTP id r3mr31484956wjw.149.1425066871213;
        Fri, 27 Feb 2015 11:54:31 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id dm6sm4171367wib.22.2015.02.27.11.54.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 11:54:30 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lustre: ptlrpc: Add space
Date: Fri, 27 Feb 2015 21:54:22 +0200
Message-Id: <1425066862-16305-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

ERROR: "(foo*)" should be "(foo *)".That's why add space together.
That Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/layout.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/layout.c b/drivers/staging/lustre/lustre/ptlrpc/layout.c
index bbef666..44ae2f1 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/layout.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/layout.c
@@ -811,8 +811,8 @@ struct req_capsule;
 	.rmf_name    = (name),				  \
 	.rmf_flags   = (flags),				 \
 	.rmf_size    = (size),				  \
-	.rmf_swabber = (void (*)(void*))(swabber),	      \
-	.rmf_dumper  = (void (*)(void*))(dumper)		\
+	.rmf_swabber = (void (*)(void *))(swabber),	      \
+	.rmf_dumper  = (void (*)(void *))(dumper)		\
 }
 
 struct req_msg_field RMF_GENERIC_DATA =
-- 
1.9.1


