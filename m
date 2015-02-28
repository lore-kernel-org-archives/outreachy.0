X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.201 with SMTP id eg9mr1058621wic.3.1425122738925;
        Sat, 28 Feb 2015 03:25:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.99 with SMTP id lf3ls272535lac.4.gmail; Sat, 28 Feb
 2015 03:25:38 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr2644054lbj.23.1425122738381;
        Sat, 28 Feb 2015 03:25:38 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id ta1si284953wic.1.2015.02.28.03.25.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:25:38 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl18 with SMTP id l18so24902463wgh.7
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VFneHNS07JHYtP6fKAA/Ee7e2mBSlnwYLVpJ744VgaM=;
        b=FNQwZtflhJNHCUgS2ac34jepFezosJR3/MaAqQpHjLGrD7E7dZIOzuCp94ms2ZfIL7
         LYqiUcDBwNm/k7usqabKd8gNryGR7P+lObBcbR1VrPmXSyVxtGrDzELUYZDj4PQuXloW
         CQYHHH9OXfnfoEz4HBFwutNXHrrw78A1/e2S4HD6WIE6f8bkHcXRqG6xAFSXRECjG7WN
         53DmWfU++FMO0VChXOyL1UlYxtkmxBItwDOfVHJ16i1CHQZmUTuR6YgI+Hcz/KHQ5uff
         z3ZAUkoT6JpHijPZk1phAzFXdbj1T6qECVwZGgrtk0FQ6rAIjrc2CBM+PD/mLOfgLJAi
         vJ1w==
X-Received: by 10.194.201.164 with SMTP id kb4mr26070508wjc.32.1425122738238;
        Sat, 28 Feb 2015 03:25:38 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id uc18sm6701269wib.0.2015.02.28.03.25.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:25:37 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 08/10] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 13:25:13 +0200
Message-Id: <1425122715-2938-8-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>

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


