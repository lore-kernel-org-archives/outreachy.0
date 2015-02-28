X-GM-THRID: 4525053181952
X-Received: by 10.112.35.135 with SMTP id h7mr2644070lbj.23.1425122742254;
        Sat, 28 Feb 2015 03:25:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.196 with SMTP id h4ls275619wie.39.gmail; Sat, 28 Feb
 2015 03:25:42 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr1054594wic.3.1425122742007;
        Sat, 28 Feb 2015 03:25:42 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id i7si288819wif.0.2015.02.28.03.25.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:25:42 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so24882504wev.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KLgqfr3ZO+Usn43/nGXe8ggxgV8jpcdscPqFzHuCMBM=;
        b=AC84brBIkjuJ6aNBLpZe2COeA6NoCGshpKLjxeov0J8WdJjvwQSdBbgUVBwkh5A+mg
         M+8A5y+t3DjNr7CZrGUj48jnnXNSVP4urFHTA4n5CksUMp+GeYJRZET27Vimh/o0sO9U
         uwk/Be3llbXawcdTgA43i1YPS9g8d8T1/sauwDHqae5Ao5sCRo2X12jAvNLg1lggZQP5
         +znIy1sydU32ZHanaZRzA3Q77WcPrRbD97ocrQ7cX+IxVDAR+qieZ3eF3tzEl7jILf5R
         BZqwVcu1SwwhzlgIoOMyBMjHp4yPT+AHiYEhVTS8ZkY/gy5bqKs5kI7iJWdzyPUxNue7
         X/0w==
X-Received: by 10.180.79.227 with SMTP id m3mr15982342wix.3.1425122741949;
        Sat, 28 Feb 2015 03:25:41 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id uc18sm6701269wib.0.2015.02.28.03.25.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:25:41 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 10/10] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 13:25:15 +0200
Message-Id: <1425122715-2938-10-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/service.c WARNING: Missing a
blank line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/service.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/service.c b/drivers/staging/lustre/lustre/ptlrpc/service.c
index 635b12b..03aef96 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/service.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/service.c
@@ -1633,6 +1633,7 @@ static bool ptlrpc_server_allow_normal(struct ptlrpc_service_part *svcpt,
 				       bool force)
 {
 	int running = svcpt->scp_nthrs_running;
+
 	if (unlikely(svcpt->scp_service->srv_req_portal == MDS_REQUEST_PORTAL &&
 		     CFS_FAIL_PRECHECK(OBD_FAIL_PTLRPC_CANCEL_RESEND))) {
 		/* leave just 1 thread for normal RPCs */
@@ -1998,6 +1999,7 @@ put_conn:
 	if (likely(svc->srv_stats != NULL && request->rq_reqmsg != NULL)) {
 		__u32 op = lustre_msg_get_opc(request->rq_reqmsg);
 		int opc = opcode_offset(op);
+
 		if (opc > 0 && !(op == LDLM_ENQUEUE || op == MDS_REINT)) {
 			LASSERT(opc < LUSTRE_MAX_OPCODES);
 			lprocfs_counter_add(svc->srv_stats,
@@ -2533,6 +2535,7 @@ static int ptlrpc_start_hr_threads(void)
 
 		for (j = 0; j < hrp->hrp_nthrs; j++) {
 			struct	ptlrpc_hr_thread *hrt = &hrp->hrp_thrs[j];
+
 			rc = PTR_ERR(kthread_run(ptlrpc_hr_main,
 						 &hrp->hrp_thrs[j],
 						 "ptlrpc_hr%02d_%03d",
-- 
1.9.1


