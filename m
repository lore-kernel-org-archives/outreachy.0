X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr2416541laj.6.1425080130180;
        Fri, 27 Feb 2015 15:35:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.74 with SMTP id ew10ls207535wid.20.gmail; Fri, 27 Feb
 2015 15:35:29 -0800 (PST)
X-Received: by 10.180.11.34 with SMTP id n2mr821933wib.2.1425080129884;
        Fri, 27 Feb 2015 15:35:29 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id by11si231486wib.1.2015.02.27.15.35.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 15:35:29 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id em10so3633719wid.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 15:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=b25tnru94cOFmc8b/r9qudJCStuZvzEPXJ52YGhdYUg=;
        b=lrqg+NpDPWD6KPQp4ZNki4SkFAh4UkJL9hRkuf2jExyx8K8z83VRfNmCtOeJOxTaKw
         7FGtvrlCXGGCvMBdFLuujJtZSutMPi0ZNxlky53xwU/DVhuxHwOC0dGjTB9oHSP+jdN2
         vaMGDFHREOe6dkHqh1vO2LhkUEqViinoYwzpYNyAa0qwnfZSm0E7hYaTI8/lsAR4ye8J
         AVbWZIOvouR7qKH5gb8eQX4J5vpO384uVsALFjK7WD1F4v3F8mmZqqTsYxcjKxzOdtlr
         QUZSNSos5w8w8/2EyZ4wSZME5a4C2o9eLGOsOhwgX01mNNx8+ZWIBYhT0Kq/+M/v9Ekj
         /wsA==
X-Received: by 10.180.20.177 with SMTP id o17mr11152820wie.66.1425080129811;
        Fri, 27 Feb 2015 15:35:29 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id m4sm4805003wik.20.2015.02.27.15.35.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 15:35:29 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 01:35:23 +0200
Message-Id: <1425080123-4108-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/llog_client.c WARNING: Missing a blank
line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/llog_client.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/llog_client.c b/drivers/staging/lustre/lustre/ptlrpc/llog_client.c
index e9baf5b..3b7618f 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/llog_client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/llog_client.c
@@ -118,6 +118,7 @@ static int llog_client_open(const struct lu_env *env,
 
 	if (name) {
 		char *tmp;
+
 		tmp = req_capsule_client_sized_get(&req->rq_pill, &RMF_NAME,
 						   strlen(name) + 1);
 		LASSERT(tmp);
-- 
1.9.1


