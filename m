X-GM-THRID: 4525053181952
X-Received: by 10.112.9.65 with SMTP id x1mr2693267lba.16.1425122726660;
        Sat, 28 Feb 2015 03:25:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.39 with SMTP id cr7ls234762lad.56.gmail; Sat, 28 Feb
 2015 03:25:26 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr2648843lan.1.1425122726247;
        Sat, 28 Feb 2015 03:25:26 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id i7si288764wif.0.2015.02.28.03.25.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:25:26 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wivr20 with SMTP id r20so5393331wiv.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EiOK59Es55A/BqzdecjvEL4wTDWeGp4EkkuW70L0X68=;
        b=bexTKXxmYsqmDZ88d6HhofAFraHsm/UR7UdGWkD3xZNrGB5DmBic8ypgSYmHlldLnS
         kaeO6qm8Db94cRORuZ3T4LKXwUFC9a3vZpYtwziJZSYWGWjiaRyL75hCjxILWYVJqNpx
         GUMfHZkKPNLcHjLVLMBkZPfF6Lcfdw/hzpoZT1G2VXAl9fcca/3pCJ8nsjI5SwJMoLYk
         q9pLWL8w5JMgblJjWYRRcMrOeum2L6/VT9iw0Y3dIAAzheN8Eagp+bS7c/hmReAHp5OB
         EmTX0UqZRhKMeBbQCNfDAn8z36YdJ4TL3LrTRlUElgBVXl7u6FddYmwEv8XdTAcFwqw9
         pWJg==
X-Received: by 10.194.60.173 with SMTP id i13mr37000448wjr.124.1425122726154;
        Sat, 28 Feb 2015 03:25:26 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id uc18sm6701269wib.0.2015.02.28.03.25.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:25:25 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 02/10] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 13:25:07 +0200
Message-Id: <1425122715-2938-2-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>

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


