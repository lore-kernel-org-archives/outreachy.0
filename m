X-GM-THRID: 4799843008512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,37879575871abf20
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.130.70 with SMTP id oc6mr2402722lbb.13.1425072425067;
        Fri, 27 Feb 2015 13:27:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.98 with SMTP id q2ls202773wia.7.canary; Fri, 27 Feb 2015
 13:27:04 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr769493wik.5.1425072424829;
        Fri, 27 Feb 2015 13:27:04 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id cl5si194274wib.3.2015.02.27.13.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 13:27:04 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id m14so22795762wev.8
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 13:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jSK1hDoOCH1f7oHTenKIa+jc29gr4KMCqXxJFje2tE4=;
        b=YSChU/EVWsnDyjNLmwQMMGBjBY1DZLRbHBm564AU8f5w4UNG8kmgPC2LhsmkFTcuvI
         78tQdoYXoM8lGxt4ZYpJPo3RY0KSmmAlQYSVyBRwomPyxLP9PGj68tOiY4bOi//r3TFI
         bQyEZvn/U2L03Oxbf1Dtk/A6eZ2ACwfhzfwoLCKCnAPA3rVG2Q+wO7drYS7jMOBHmDMB
         gFVQvEDgF8BNiIDpUAx14PnS9jnyxRwlt7y0f3Ip9krPk3OfJD8jgwizuT2L7Be2tdiu
         9aQnj5F4t4pQJ8gAwkfQHwyMdcy2+nWz2LXa+JA1FjCd8mcuwG5HZSFzx/haBHOtRX/e
         rCrQ==
X-Received: by 10.194.91.199 with SMTP id cg7mr30965875wjb.114.1425072424774;
        Fri, 27 Feb 2015 13:27:04 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id k6sm4484266wia.6.2015.02.27.13.27.03
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 13:27:04 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 1/3] Staging: lustre: default used instead of break
Date: Fri, 27 Feb 2015 23:25:54 +0200
Message-Id: <1425072356-1314-2-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1425072356-1314-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1425072356-1314-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: switch default: should use break.
That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c
index 5268887..44f4e27 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c
@@ -143,7 +143,7 @@ cleanup:
 		ptlrpc_hr_fini();
 		req_layout_fini();
 		/* Fall through */
-	default: ;
+	break;
 	}
 
 	return rc;
-- 
1.8.3.2


