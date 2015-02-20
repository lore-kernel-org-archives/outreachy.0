X-GM-THRID: 1427250348032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5782da9d37db3af6,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.87.166 with SMTP id az6mr549939wib.1.1424456855506;
        Fri, 20 Feb 2015 10:27:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.208 with SMTP id l16ls289974laa.66.gmail; Fri, 20 Feb
 2015 10:27:34 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr1525642lbw.4.1424456854809;
        Fri, 20 Feb 2015 10:27:34 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id by11si375812wib.1.2015.02.20.10.27.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 10:27:34 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so7101472wes.12
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 10:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=t8Rk4/7gY0frnG57J75W4FoFUY7gLmEKqyevZ+Xh0jw=;
        b=yGkNZ5R0CnIKHbdaT9Ac1XCfjc4f5Mc/Z/pVpUMUsKD/i+oWWrIKWqGx8ln5RivND/
         KEXPHFEJpz+yk1Zqb8j3hbJDwkII6huZg0DHx6W2cp/M0TrsMFOzM14dcTZ7fqtVuLUL
         ol+Th8hzeENIf9KHw8vyu6tuAqIOVwL0hkk/VLrp0f18MAVtLMlX35zMJv7T/DOWDxxX
         yIDK183tqDWYq6ocQHXmZm4Ki64dJZngYWAbEP2WuF3QDbEc6K0xCSCDM1mqmDILkkdm
         TmIsByWqpMsOpS/ovsP0DewbYp8Ylz1PqZQyTBLWYhFpif9PU03acon02Vxk3bSLFM7O
         xNOg==
X-Received: by 10.194.220.7 with SMTP id ps7mr22112173wjc.84.1424456854680;
        Fri, 20 Feb 2015 10:27:34 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id d10sm43158713wjn.45.2015.02.20.10.27.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 10:27:33 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] Staging: lustre: lustre: fid: Remove unnecessary else after return
Date: Fri, 20 Feb 2015 20:27:18 +0200
Message-Id: <1424456838-6096-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following checkpatch warning:
WARNING : else is not generally useful after a break or return
204: FILE: drivers/staging/lustre/lustre/fid/fid_request.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/fid/fid_request.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
index 063441a..54dcfa3 100644
--- a/drivers/staging/lustre/lustre/fid/fid_request.c
+++ b/drivers/staging/lustre/lustre/fid/fid_request.c
@@ -201,10 +201,9 @@ static int seq_client_alloc_seq(const struct lu_env *env,
 			CERROR("%s: Can't allocate new meta-sequence, rc %d\n",
 			       seq->lcs_name, rc);
 			return rc;
-		} else {
-			CDEBUG(D_INFO, "%s: New range - "DRANGE"\n",
-			       seq->lcs_name, PRANGE(&seq->lcs_space));
 		}
+		CDEBUG(D_INFO, "%s: New range - "DRANGE"\n",
+			seq->lcs_name, PRANGE(&seq->lcs_space));
 	} else {
 		rc = 0;
 	}
-- 
1.9.1


