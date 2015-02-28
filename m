X-GM-THRID: 4525053181952
X-Received: by 10.112.147.35 with SMTP id th3mr2180332lbb.15.1425082164249;
        Fri, 27 Feb 2015 16:09:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.71 with SMTP id fu7ls218817wib.29.canary; Fri, 27 Feb
 2015 16:09:24 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr2424633wjc.2.1425082164002;
        Fri, 27 Feb 2015 16:09:24 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id ev8si206244wib.3.2015.02.27.16.09.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 16:09:23 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so23273561wev.13
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 16:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QH/VZKnDA1qO9zCx7i/WMiTiw/lihoNIAfQV74M9bpI=;
        b=gvt6nnWwYBVWablh4mRQEdzXkAqamTHCcxnK6pEkWoWthRWmTvRSbs1k07fquemdOT
         uruqpTUlmW4w5i2FAsqTDVRVh1I3rIn57g5hGoZlRifdpGXrBWP23DJlZKuwsQLRHZoU
         qtMiaL3AOv4eAYXfEl2cwhqdvC3BpkzDJSn+NGI8eyZWolXv/vZbGVCCE5J4dafruXTC
         2ZynWn4BnsernlqPsie9AC/ZLPRupoGFfOYRDiGTIQbXHyxd9Z5GPosxVEzjAsS5lS7E
         Y5jF02krezGt3K5ueQPwOJUqI/ib2/FyypzX9WvfF0GsDTFkdjdIR8FCgd8BVXykpnTO
         +Evw==
X-Received: by 10.194.62.167 with SMTP id z7mr33510391wjr.106.1425082163920;
        Fri, 27 Feb 2015 16:09:23 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id lg18sm4863119wic.23.2015.02.27.16.09.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 16:09:23 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 02:09:17 +0200
Message-Id: <1425082157-5199-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/sec_null.c WARNING: Missing a
blank line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/sec_null.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_null.c b/drivers/staging/lustre/lustre/ptlrpc/sec_null.c
index 4e13243..66cb4f8 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_null.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_null.c
@@ -82,6 +82,7 @@ int null_ctx_sign(struct ptlrpc_cli_ctx *ctx, struct ptlrpc_request *req)
 
 	if (!req->rq_import->imp_dlm_fake) {
 		struct obd_device *obd = req->rq_import->imp_obd;
+
 		null_encode_sec_part(req->rq_reqbuf,
 				     obd->u.cli.cl_sp_me);
 	}
-- 
1.9.1


