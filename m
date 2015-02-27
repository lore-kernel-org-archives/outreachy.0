X-GM-THRID: 4799843008512
X-Received: by 10.194.239.41 with SMTP id vp9mr2341736wjc.5.1425069805038;
        Fri, 27 Feb 2015 12:43:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.130 with SMTP id q2ls195477wiy.13.canary; Fri, 27 Feb
 2015 12:43:23 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr754261wiv.0.1425069803807;
        Fri, 27 Feb 2015 12:43:23 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id cl5si187837wib.3.2015.02.27.12.43.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:43:23 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id em10so2919119wid.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=l7yRYLK4QGWHtUYy/jsPR9j8gO0c3s5gO9j6BE0Ggq4=;
        b=PoWwMMLnJbnrmb2a/ESKMAdzF0Jh0quPAYlBO3pnOGpJx1kCiBLNwWkVn3JxqnAb1i
         tChTqVibli44OYiwMlKRPNnN9OVdY/cBcbAZmZISebRgF504WE0FdYPBx1HLNUAXrM+d
         NtIug5aC8CzXGbzLceR7QDt8Bzwqs65nv1qp4lLsbyx3E3+GOzjIrVz4r8cS78DjzlaF
         YY8w+SJum6zxBBf0aH5t0d2gyRqF3L0YFeYiLoKY8NMCt2Ufz9ugAj0MQot5fIyg6oFp
         mXXlzFHbTiZXnwt5OT0ZSG/2fKDjMuaDQ54jHXXEbDRauDC/Ss7kJS2842WW2UDHr5yk
         IfRg==
X-Received: by 10.194.57.206 with SMTP id k14mr7821531wjq.1.1425069803751;
        Fri, 27 Feb 2015 12:43:23 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id fo15sm4330473wic.19.2015.02.27.12.43.22
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:43:23 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 2/3] Staging: lustre: Removed space prohibited
Date: Fri, 27 Feb 2015 22:42:10 +0200
Message-Id: <1425069731-30165-3-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1425069731-30165-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1425069731-30165-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: space prohibited before that ','
Removed space prohibited. That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index bc0e8e4..34372cd 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -54,7 +54,7 @@ static struct ll_rpc_opcode {
 	{ OST_SETATTR,      "ost_setattr" },
 	{ OST_READ,	 "ost_read" },
 	{ OST_WRITE,	"ost_write" },
-	{ OST_CREATE ,      "ost_create" },
+	{ OST_CREATE,      "ost_create" },
 	{ OST_DESTROY,      "ost_destroy" },
 	{ OST_GET_INFO,     "ost_get_info" },
 	{ OST_CONNECT,      "ost_connect" },
-- 
1.8.3.2


