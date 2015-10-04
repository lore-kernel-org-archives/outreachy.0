X-GM-THRID: 6201691543779147776
X-Received: by 10.129.57.9 with SMTP id g9mr20536832ywa.19.1443943846487;
        Sun, 04 Oct 2015 00:30:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.19 with SMTP id 19ls2216045qgm.67.gmail; Sun, 04 Oct
 2015 00:30:45 -0700 (PDT)
X-Received: by 10.31.174.146 with SMTP id x140mr20483821vke.1.1443943845789;
        Sun, 04 Oct 2015 00:30:45 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si2871791pab.1.2015.10.04.00.30.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 00:30:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so148539303pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 00:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=siqHI7DTe5QQPRJPv9wYOlnUzzcf5ixsuHceagnvn1c=;
        b=ZwStO1U8m8RsqQeFV1TsdaT9K22nUCWT3iXp4P813ekKUAQcPY0uzFQ+Mq4nn7Zi+w
         lQWcW3HfBXEyAuc97x7eocAfgoOLnUdUPo/I7vUX0hSlq7XMQk47Hmg0INUcv9gzIR64
         TiqJ/6jrYjrhti/NPteVba2bt/6RtvOIUcd1TCaIw6Am4q8l9SNZUuDhNpZIdKxLPjO8
         jvHqDaM8LRUSb6sdlwixr9qngmFRKQG5suRuZUOJSla7vtf16B/48TgZbNLCD/F9f4B/
         2iB3JqcgpDhgYPGqNpmcbHpAueXY/WucM8s8nLBacbPEycMgVzLSj52FUBjtVqNOVLPA
         CQZg==
X-Received: by 10.68.134.73 with SMTP id pi9mr19477475pbb.55.1443943845643;
        Sun, 04 Oct 2015 00:30:45 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uq1sm4087085pbc.82.2015.10.04.00.30.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 00:30:45 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 5/8] Staging: lustre: ptlrpc: niobuf: Declare as static
Date: Sun,  4 Oct 2015 13:00:13 +0530
Message-Id: <1443943816-21546-6-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
References: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5610D5A4.00E1,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare ptlrpc_register_bulk as static since it is used only in this
particular file.Also remove the declaration from header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_net.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/niobuf.c      | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_net.h b/drivers/staging/lustre/lustre/include/lustre_net.h
index c8d6207..51a4e64 100644
--- a/drivers/staging/lustre/lustre/include/lustre_net.h
+++ b/drivers/staging/lustre/lustre/include/lustre_net.h
@@ -2296,7 +2296,6 @@ void ptlrpc_connection_fini(void);
  * @{
  */
 
-int ptlrpc_register_bulk(struct ptlrpc_request *req);
 int ptlrpc_unregister_bulk(struct ptlrpc_request *req, int async);
 
 static inline int ptlrpc_client_bulk_active(struct ptlrpc_request *req)
diff --git a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
index 13632cd..d93c6b2 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
@@ -111,7 +111,7 @@ static void mdunlink_iterate_helper(lnet_handle_md_t *bd_mds, int count)
  * Register bulk at the sender for later transfer.
  * Returns 0 on success or error code.
  */
-int ptlrpc_register_bulk(struct ptlrpc_request *req)
+static int ptlrpc_register_bulk(struct ptlrpc_request *req)
 {
 	struct ptlrpc_bulk_desc *desc = req->rq_bulk;
 	lnet_process_id_t peer;
@@ -232,7 +232,6 @@ int ptlrpc_register_bulk(struct ptlrpc_request *req)
 
 	return 0;
 }
-EXPORT_SYMBOL(ptlrpc_register_bulk);
 
 /**
  * Disconnect a bulk desc from the network. Idempotent. Not
-- 
2.1.4


