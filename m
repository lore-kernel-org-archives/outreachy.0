X-GM-THRID: 6200732724667351040
X-Received: by 10.31.182.10 with SMTP id g10mr10588595vkf.7.1443783005266;
        Fri, 02 Oct 2015 03:50:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.177 with SMTP id v46ls1256762qgv.45.gmail; Fri, 02 Oct
 2015 03:50:04 -0700 (PDT)
X-Received: by 10.13.247.132 with SMTP id h126mr1737153ywf.56.1443783004709;
        Fri, 02 Oct 2015 03:50:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id w5si1528548pbt.1.2015.10.02.03.50.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:50:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ex6so104247837pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=mO4JL6Jx+0C1slWM6XHN7/evGbpfVM6UL9Elo5wajs8=;
        b=Y5PwOOWCkau/+kb+Wx++A3KyzvIBU68W2ocemQwDxrv4U1jv+h1YvesZeuR6ipAga8
         IvKCsIIr/RmAQMqtwZpPcc9AWsuDTRQitq5swAtlphwwx59n6Uev8tiHkMeHEpHSCZWT
         /blshv5fwVtIHPPQOo24P9eATCrlBQAda8AYOHL8ZGhBXKEVgqCtRsFyjP+wL+Hjahx9
         8IdHvGLgdA6qHHj05XdT8N9g3lTl2i3Mdz+JFrMvUdFIOw7YDZmUDEgsQg2uvOKtcA9R
         wWAKOgHGsubn4rbgylTfFWbuCqZNPSHp8StrHxu3Q/CKLZ+CB1hyDigzHImWRvZPre4h
         R6vQ==
X-Received: by 10.68.135.136 with SMTP id ps8mr19150669pbb.123.1443783004578;
        Fri, 02 Oct 2015 03:50:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ce3sm11419722pbb.35.2015.10.02.03.50.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:50:03 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 5/6] Staging: lustre: ptlrpc: Declare sptlrpc_req_replace_dead_ctx as static
Date: Fri,  2 Oct 2015 16:19:30 +0530
Message-Id: <1443782971-6392-6-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
References: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.560E615B.006C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_req_replace_dead_ctx as static since it is accessed from
this particular file only. Also remove its declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3-
 No change

 drivers/staging/lustre/lustre/include/lustre_sec.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/sec.c         | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index 50560a8..ab963b9 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -1026,7 +1026,6 @@ void sptlrpc_import_flush_all_ctx(struct obd_import *imp);
 int  sptlrpc_req_get_ctx(struct ptlrpc_request *req);
 void sptlrpc_req_put_ctx(struct ptlrpc_request *req, int sync);
 int  sptlrpc_req_refresh_ctx(struct ptlrpc_request *req, long timeout);
-int  sptlrpc_req_replace_dead_ctx(struct ptlrpc_request *req);
 void sptlrpc_req_set_flavor(struct ptlrpc_request *req, int opcode);
 
 int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec.c b/drivers/staging/lustre/lustre/ptlrpc/sec.c
index 67604b5..84e9881 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec.c
@@ -470,7 +470,7 @@ int sptlrpc_req_ctx_switch(struct ptlrpc_request *req,
  * \note a request must have a context, to keep other parts of code happy.
  * In any case of failure during the switching, we must restore the old one.
  */
-int sptlrpc_req_replace_dead_ctx(struct ptlrpc_request *req)
+static int sptlrpc_req_replace_dead_ctx(struct ptlrpc_request *req)
 {
 	struct ptlrpc_cli_ctx *oldctx = req->rq_cli_ctx;
 	struct ptlrpc_cli_ctx *newctx;
@@ -523,7 +523,6 @@ int sptlrpc_req_replace_dead_ctx(struct ptlrpc_request *req)
 	sptlrpc_cli_ctx_put(oldctx, 1);
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_req_replace_dead_ctx);
 
 static
 int ctx_check_refresh(struct ptlrpc_cli_ctx *ctx)
-- 
2.1.4


