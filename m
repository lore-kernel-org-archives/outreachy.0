X-GM-THRID: 4176907075584
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d65efd3fddf4866d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.162.135 with SMTP id ya7mr2005170lbb.14.1425037818366;
        Fri, 27 Feb 2015 03:50:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.196 with SMTP id h4ls102618wie.39.gmail; Fri, 27 Feb
 2015 03:50:18 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr405053wia.7.1425037818103;
        Fri, 27 Feb 2015 03:50:18 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x244.google.com (mail-wg0-x244.google.com. [2a00:1450:400c:c00::244])
        by gmr-mx.google.com with ESMTPS id ta1si98010wic.1.2015.02.27.03.50.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 03:50:18 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) client-ip=2a00:1450:400c:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x244.google.com with SMTP id b13so4860484wgh.2
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 03:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=BlEFIyx8RAdS/++i8SFgdahoxb8If5TEgmc5zxk3T+Q=;
        b=Y73HZh0vbduIWIKuEC5g1YXku+D6cfttQfTjf6zdOFI+asbD34yi3C/+BMy0d0nZcv
         keF/HBi0+Vf1zRt5vpEAnS5ugVCEfbZVbvdk1LLq1zVSfzuVxZgzWyMjjX3GmtTpsPjC
         aSBeQ5MokvqoObtKAIban+vCCgN55h5ixuk+6OIb7w1ikNJ4YfTyYcVzK94ufzRV+ez4
         cjgG3C3XV5ockhYhLhK39v9NM8Akg1Zj5qcASVdAfPg4QkIlBgq9dzz242FTCvqF3zaZ
         WOeC7r0IF3pSsh8nQFXKS+936xHCoSwwmoLaF0QVw01fuf4zymiIWZSnY/ymJKZqMyLQ
         6nYg==
X-Received: by 10.194.122.98 with SMTP id lr2mr27323133wjb.115.1425037818033;
        Fri, 27 Feb 2015 03:50:18 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id j9sm5623969wjy.18.2015.02.27.03.50.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 03:50:17 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lustre: mgc: Delete the excess white space
Date: Fri, 27 Feb 2015 13:50:11 +0200
Message-Id: <1425037811-13823-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes these error messages found by checkpatch.pl:
ERROR: "foo* bar" should be "foo *bar"

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
v2:
 changed commit message
---
 drivers/staging/lustre/lustre/mgc/mgc_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index 60d2b0f..8d3dbdc 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -160,7 +160,7 @@ struct config_llog_data *config_log_find(char *logname,
 {
 	struct config_llog_data *cld;
 	struct config_llog_data *found = NULL;
-	void *		   instance;
+	void *instance;
 
 	LASSERT(logname != NULL);
 
-- 
1.9.1


