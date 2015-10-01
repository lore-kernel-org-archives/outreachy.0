X-GM-THRID: 6200732724667351040
X-Received: by 10.50.122.2 with SMTP id lo2mr34415igb.2.1443720604030;
        Thu, 01 Oct 2015 10:30:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.51.17.38 with SMTP id gb6ls289609igd.24.canary; Thu, 01 Oct
 2015 10:30:03 -0700 (PDT)
X-Received: by 10.66.240.138 with SMTP id wa10mr8724958pac.43.1443720603437;
        Thu, 01 Oct 2015 10:30:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si1097765pab.1.2015.10.01.10.30.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 10:30:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id lk4so79805147pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 10:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=RfGbbH1ZpPXIGecxB/OBcMnsPSEL7gZ7IK5uIG6aUQ8=;
        b=ZQj+fHRw2CbxHZVRZv2e+V/tWYXWDtTk5rPrdG7N76zB2MA1YgbTAybvNxO66i4hYQ
         wBx5vi2tEJb0GPGa7/L8pNQqEJpx/eIn8LnjggCG3INSF7MpL/xDRWWC0c+jYxXBpKWS
         9SlF4lrU+2H6zXT+WbSkp7mfuzx5x+3m/o4KVgumZIhi1JtyLyrxd8YKmWqCwZ1MUHKU
         Kn+0MwuulzYSy12K7FGEpN4qIXDQqM3+m2lBqSCqRdftv5FY/TGrJqDSkj4OnjFhW+uj
         Esa0kWNP5VON6ELiZUhb8m1y7QF04Gf+imHAlqZ2Y5B7OYG6C1Blh8KHAmQZ+1Yxlphu
         HiRw==
X-Received: by 10.66.163.136 with SMTP id yi8mr13604110pab.124.1443720603295;
        Thu, 01 Oct 2015 10:30:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xm4sm7822424pab.27.2015.10.01.10.30.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 10:30:02 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 6/6] Staging: lustre: ptlrpc: Declare sptlrpc_parse_rule as static
Date: Thu,  1 Oct 2015 22:59:41 +0530
Message-Id: <1443720581-11352-7-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>

Declare sptlrpc_parse_rule as static since it is accessed from this
particular file only. Also remove it's declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_sec.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index 5433fce..0dd5687 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -1037,7 +1037,6 @@ void sptlrpc_req_put_ctx(struct ptlrpc_request *req, int sync);
 int  sptlrpc_req_refresh_ctx(struct ptlrpc_request *req, long timeout);
 void sptlrpc_req_set_flavor(struct ptlrpc_request *req, int opcode);
 
-int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule);
 
 /* gc */
 void sptlrpc_gc_add_sec(struct ptlrpc_sec *sec);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index 6de9aa6..0b96f62 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -180,7 +180,7 @@ static void sptlrpc_rule_init(struct sptlrpc_rule *rule)
 /*
  * format: network[.direction]=flavor
  */
-int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
+static int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
 {
 	char *flavor, *dir;
 	int rc;
@@ -234,7 +234,6 @@ int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
 
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_parse_rule);
 
 static void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
 {
-- 
2.1.4


