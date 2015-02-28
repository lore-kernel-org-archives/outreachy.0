X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.29.97 with SMTP id j1mr2415659lah.3.1425082351737;
        Fri, 27 Feb 2015 16:12:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.100 with SMTP id w4ls221069wiz.0.gmail; Fri, 27 Feb
 2015 16:12:31 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr838519wib.7.1425082351415;
        Fri, 27 Feb 2015 16:12:31 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id by11si235455wib.1.2015.02.27.16.12.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 16:12:31 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widem10 with SMTP id em10so3495433wid.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 16:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KLgqfr3ZO+Usn43/nGXe8ggxgV8jpcdscPqFzHuCMBM=;
        b=zURkR1bB4icsNdsxWOZ5aybOB9czmKyoDBLBX7KS8RF6vLAkv5c8OjkU2qQxxwBX3Q
         2WCf8T0FsF4Q6ttVxaDU/lUuVhNDILhUJWw6hd9F9AUlZD1GtfhEHTS7+u28QuC8k9dc
         NjOtvJIK1acxbU75CrV54yHNHdILnG5BgHoh0P/FYib2osvwuAcxUtqivom75we3DyP2
         CQwXYdyzro7xQRGtf/TpRS1DyjHWKlITcje4GLGVenTOd+8NogbxU55H5gGslDeiK/iM
         Z9xH01oyz3jTkbQRdMYzb5AuY6ba7GTx4lUcXQ7LfbWIB63yRTOa7yfhW0Od1TLtim+l
         GBDA==
X-Received: by 10.180.208.74 with SMTP id mc10mr11721702wic.38.1425082351341;
        Fri, 27 Feb 2015 16:12:31 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id dn7sm4904583wid.12.2015.02.27.16.12.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 16:12:30 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 02:12:24 +0200
Message-Id: <1425082344-5255-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

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


