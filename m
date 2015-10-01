X-GM-THRID: 6200732724667351040
X-Received: by 10.50.43.233 with SMTP id z9mr3653821igl.9.1443720602489;
        Thu, 01 Oct 2015 10:30:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.209 with SMTP id t75ls1188512qgt.73.gmail; Thu, 01 Oct
 2015 10:30:01 -0700 (PDT)
X-Received: by 10.129.4.15 with SMTP id 15mr8895554ywe.54.1443720601718;
        Thu, 01 Oct 2015 10:30:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id w5si1061408pbt.1.2015.10.01.10.30.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 10:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ex6so80544973pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 10:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=p983lcWxFPv8cMWH5fSF3ky7RmWmYrp5HgAhPexG1k0=;
        b=hlYAwm159nZEaskeA7ozRN5JLkitPY3VcCWrxA678dM9+tmcqYogOP9Enk8GTpTtxq
         mTMwhrST5plOVxMCYO7eQuUXvtzHv/LVP/BRTk/LqNJxZgRvySs0lsUFCQYLEoLtYIGi
         1nOnC4eGE9/zvvBAXYmoHLaiP0vhiCT1ZQI4d/5afLchQzx+V4vBxOwNCRW/42zBmFLD
         qfmO8ULORM23068x48VJCYhimr5VuV3LRWeFsVPP7qPzv4o9GRajSKTpGGWzzqELV2TH
         pbULLAxqVRZR0vldG9lTmRcFyPmbmEX6blMb9gn9NXH48fkAZ6Qm35o7a3eqnAILYd9G
         Ij7w==
X-Received: by 10.66.147.104 with SMTP id tj8mr13482597pab.125.1443720601575;
        Thu, 01 Oct 2015 10:30:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xm4sm7822424pab.27.2015.10.01.10.30.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 10:30:01 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 5/6] Staging: lustre: ptlrpc: Declare sptlrpc_req_replace_dead_ctx as static
Date: Thu,  1 Oct 2015 22:59:40 +0530
Message-Id: <1443720581-11352-6-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>

Declare sptlrpc_req_replace_dead_ctx as static since it is accessed from
this particular file only. Also remove it's declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_sec.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/sec.c         | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index ed0eb4d..5433fce 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -1035,7 +1035,6 @@ void sptlrpc_import_flush_all_ctx(struct obd_import *imp);
 int  sptlrpc_req_get_ctx(struct ptlrpc_request *req);
 void sptlrpc_req_put_ctx(struct ptlrpc_request *req, int sync);
 int  sptlrpc_req_refresh_ctx(struct ptlrpc_request *req, long timeout);
-int  sptlrpc_req_replace_dead_ctx(struct ptlrpc_request *req);
 void sptlrpc_req_set_flavor(struct ptlrpc_request *req, int opcode);
 
 int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec.c b/drivers/staging/lustre/lustre/ptlrpc/sec.c
index 70aa271..e967389 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec.c
@@ -509,7 +509,7 @@ int sptlrpc_req_ctx_switch(struct ptlrpc_request *req,
  * \note a request must have a context, to keep other parts of code happy.
  * In any case of failure during the switching, we must restore the old one.
  */
-int sptlrpc_req_replace_dead_ctx(struct ptlrpc_request *req)
+static int sptlrpc_req_replace_dead_ctx(struct ptlrpc_request *req)
 {
 	struct ptlrpc_cli_ctx *oldctx = req->rq_cli_ctx;
 	struct ptlrpc_cli_ctx *newctx;
@@ -562,7 +562,6 @@ int sptlrpc_req_replace_dead_ctx(struct ptlrpc_request *req)
 	sptlrpc_cli_ctx_put(oldctx, 1);
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_req_replace_dead_ctx);
 
 static
 int ctx_check_refresh(struct ptlrpc_cli_ctx *ctx)
-- 
2.1.4


