X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.75.232 with SMTP id f8mr837680wiw.0.1425081974456;
        Fri, 27 Feb 2015 16:06:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.71 with SMTP id fu7ls218521wib.29.canary; Fri, 27 Feb
 2015 16:06:14 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr908204wib.1.1425081974342;
        Fri, 27 Feb 2015 16:06:14 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id ta1si214771wic.1.2015.02.27.16.06.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 16:06:14 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggy19 with SMTP id y19so23283190wgg.13
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 16:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VFneHNS07JHYtP6fKAA/Ee7e2mBSlnwYLVpJ744VgaM=;
        b=rcf78qe3N/W5KGhf2kh6WrIns9DTbvmHGfokOjpRc6XwwetnoaJfOlkonpnHlMrlqY
         kBj5CrK1rCYWm8n1zx8EVHL+o1YgZ4WdmvizD7NR59v03qii2lGcWSlhPCDP1JQygTKK
         MFLUgNtz6n5cIEaevoM5KniiUNxXbcwFVRLlaLwPb+IMH7fSlGMStdM7L8SQIFSfedte
         N3LuDdDPotAcNlzeT8v7CW3yaq+kfOsYlP/unttmudRyjlJF3t0iNy0VG6TOMXNYWNu/
         ecPAH/gpecr2zCpwTPqzJjn9nBoFPkO9HSh23OVNm7w8mArKwXfBL+eVUOvdzmLUl9/9
         Pw0g==
X-Received: by 10.194.63.172 with SMTP id h12mr32601428wjs.48.1425081974273;
        Fri, 27 Feb 2015 16:06:14 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id a1sm8013628wjs.40.2015.02.27.16.06.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 16:06:13 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 02:06:06 +0200
Message-Id: <1425081966-5131-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/sec.c WARNING: Missing a
blank line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/sec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec.c b/drivers/staging/lustre/lustre/ptlrpc/sec.c
index 21e9dc9..5f8b45e 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec.c
@@ -2090,6 +2090,7 @@ int sptlrpc_svc_alloc_rs(struct ptlrpc_request *req, int msglen)
 	rc = policy->sp_sops->alloc_rs(req, msglen);
 	if (unlikely(rc == -ENOMEM)) {
 		struct ptlrpc_service_part *svcpt = req->rq_rqbd->rqbd_svcpt;
+
 		if (svcpt->scp_service->srv_max_reply_size <
 		   msglen + sizeof(struct ptlrpc_reply_state)) {
 			/* Just return failure if the size is too big */
-- 
1.9.1


