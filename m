X-GM-THRID: 4831462817792
X-Received: by 10.180.160.176 with SMTP id xl16mr738135wib.6.1425068177584;
        Fri, 27 Feb 2015 12:16:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.38 with SMTP id x6ls219666lax.63.gmail; Fri, 27 Feb 2015
 12:16:17 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr2282825lbb.24.1425068177290;
        Fri, 27 Feb 2015 12:16:17 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id o3si181486wib.2.2015.02.27.12.16.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:16:17 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghb13 with SMTP id b13so22575592wgh.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=L0jnYYpCVhzkfryzETseroHIFrwF8wMFH8tQRmc0vo4=;
        b=cUPEp+bA3TveUHRJUSQfW2ffcQENzWgwHgWToqUhEQq2JOlU2q4EMr50Qta3rHl81z
         48P3CEr56ud6xXinv+ORtRV3F1YcrKcz3Ch5Ao3ML3nH4RWEY2ErSe5Liv79/htl4nze
         0ofi/jTtu2XbH7+PyJGzabK2476AOksc1ReF7nEZ2UX/NpXoGOUZDimYZcTCAGu3g3I+
         1redSjTML5vxKyo4tfOr6qBxRqymMLV2w2AJU3K+AOj/Kq5nF/cVw+AQvCNECNRHdyYR
         ywLs0pycTAdX7HmZZukwLBJQmPa3SotpzrBrpLU6jxdSZtBDcFy0h0KuYQFZwu4J7K9x
         sW8Q==
X-Received: by 10.180.188.41 with SMTP id fx9mr9732190wic.93.1425068177186;
        Fri, 27 Feb 2015 12:16:17 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id hi6sm7386845wjc.34.2015.02.27.12.16.15
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:16:16 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: lustre: Removed space prohibited
Date: Fri, 27 Feb 2015 22:15:12 +0200
Message-Id: <1425068112-27359-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING:  space prohibited before that '--'
Removed space prohibited. That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/layout.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/layout.c b/drivers/staging/lustre/lustre/ptlrpc/layout.c
index bbef666..78984ae 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/layout.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/layout.c
@@ -1839,7 +1839,7 @@ static int __req_capsule_offset(const struct req_capsule *pill,
 	LASSERTF(offset > 0, "%s:%s, off=%d, loc=%d\n",
 			    pill->rc_fmt->rf_name,
 			    field->rmf_name, offset, loc);
-	offset --;
+	offset--;
 
 	LASSERT(0 <= offset && offset < REQ_MAX_FIELD_NR);
 	return offset;
-- 
1.8.3.2


