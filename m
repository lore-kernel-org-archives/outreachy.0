X-GM-THRID: 4165050826752
X-Received: by 10.180.91.76 with SMTP id cc12mr24559wib.7.1424988671193;
        Thu, 26 Feb 2015 14:11:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.227 with SMTP id b3ls80662lak.58.gmail; Thu, 26 Feb
 2015 14:11:10 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr1640951lbc.22.1424988670712;
        Thu, 26 Feb 2015 14:11:10 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x243.google.com (mail-we0-x243.google.com. [2a00:1450:400c:c03::243])
        by gmr-mx.google.com with ESMTPS id by11si17825wib.1.2015.02.26.14.11.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 14:11:10 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::243 as permitted sender) client-ip=2a00:1450:400c:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x243.google.com with SMTP id q59so3864946wes.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 14:11:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SNqxgi+FWsWQG9JAgoenWXAvMm/nL7uklZ7eirAuIhE=;
        b=SQaK7S5KFdviXKNaJMRjubF6XA5OT/NNT9ezwwKMGa1FuoU1MoNz5YJJSEOmH6Su6G
         fpw7xr6bFSZagGfuDP4Opy+My8Jc0eFhfr0wg1J/iPnINljfbnm1hIgcvfmRKT+ayMT7
         rQKM1gF7fRIUdGtHjCwYKXSEZb0i/SANzBd/j2MDNNP0UqDzXz45OJPmWoyr322KNqfd
         ce4BB1bQsUzxOiU+QySDLvXPGUdsma8YBP0zfGG79eswm8YCrZ+L8d45TIUX03s4UwcI
         C6cuCDnfjWWT3pQVdDi7T03qtkdOuQhFqGBW8ndi+80iSCvsc41mYIiIdkOyy4jad6E5
         pPHg==
X-Received: by 10.180.85.39 with SMTP id e7mr319245wiz.90.1424988670607;
        Thu, 26 Feb 2015 14:11:10 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id n3sm3226494wja.36.2015.02.26.14.11.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 14:11:10 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: octeon: Add a blank line
Date: Fri, 27 Feb 2015 00:11:03 +0200
Message-Id: <1424988663-11632-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Missing a blank line after declarations. That's why add a blank line
after declaration.

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/octeon/ethernet-rx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index fcbe836..9836899 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -214,6 +214,7 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 		did_work_request = 0;
 		if (work == NULL) {
 			union cvmx_pow_wq_int wq_int;
+
 			wq_int.u64 = 0;
 			wq_int.s.iq_dis = 1 << pow_receive_group;
 			wq_int.s.wq_int = 1 << pow_receive_group;
-- 
1.9.1


