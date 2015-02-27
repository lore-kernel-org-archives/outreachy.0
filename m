X-GM-THRID: 4525053181952
X-Received: by 10.180.8.67 with SMTP id p3mr818072wia.7.1425079764129;
        Fri, 27 Feb 2015 15:29:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.181.137 with SMTP id dw9ls212734lac.85.gmail; Fri, 27 Feb
 2015 15:29:23 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr2448449lbb.20.1425079763503;
        Fri, 27 Feb 2015 15:29:23 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id l8si247358wia.0.2015.02.27.15.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 15:29:23 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id l15so3619695wiw.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 15:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=EiOK59Es55A/BqzdecjvEL4wTDWeGp4EkkuW70L0X68=;
        b=WVE3bsUbyMyp/ksfS8y4SBRxOXJwQAvj8BTVe2EywaTmS5L00vZX3BAv5Vq6USBbFf
         oajv3s2M7eUgbcw0FyyHKY6Kgivb9GG3OWqcoJDU4NKsQCSupg8fKV8T3WBQc7SchpJG
         exGqAHFwslakrK9IizqfPCUwkaoGohbLRvj0TsdV+LbReMivroI4d7BZNihBUMriU3Tx
         a2pvZz+pJYmKMrseKph7DU3tjlCU4Mv3lxtfv002jJf2EyrQDAV8dWQjXzo1dSPvbO8h
         3miYwkQqQciV0W1rAclLKPXzVWJLG9kQZ9xsl1pkGhKiRFwpouFseZMcbpPpD/iG86HS
         JOmw==
X-Received: by 10.180.206.98 with SMTP id ln2mr11218857wic.94.1425079763388;
        Fri, 27 Feb 2015 15:29:23 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id q10sm7919395wjr.41.2015.02.27.15.29.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 15:29:22 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 01:29:16 +0200
Message-Id: <1425079756-3809-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/client.c WARNING: Missing a blank
line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/client.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
index 4882dd0..4737258 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -652,6 +652,7 @@ int ptlrpc_request_pack(struct ptlrpc_request *request,
 			__u32 version, int opcode)
 {
 	int rc;
+
 	rc = ptlrpc_request_bufs_pack(request, version, opcode, NULL, NULL);
 	if (rc)
 		return rc;
@@ -1143,6 +1144,7 @@ static int ptlrpc_check_status(struct ptlrpc_request *req)
 	if (lustre_msg_get_type(req->rq_repmsg) == PTL_RPC_MSG_ERR) {
 		struct obd_import *imp = req->rq_import;
 		__u32 opc = lustre_msg_get_opc(req->rq_reqmsg);
+
 		if (ptlrpc_console_allow(req))
 			LCONSOLE_ERROR_MSG(0x011, "%s: Communicating with %s, operation %s failed with %d.\n",
 					   imp->imp_obd->obd_name,
-- 
1.9.1


