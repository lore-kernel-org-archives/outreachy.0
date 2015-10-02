X-GM-THRID: 6200732724667351040
X-Received: by 10.129.92.197 with SMTP id q188mr11635113ywb.25.1443773771529;
        Fri, 02 Oct 2015 01:16:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.201 with SMTP id h67ls10592qgh.60.gmail; Fri, 02 Oct
 2015 01:16:10 -0700 (PDT)
X-Received: by 10.13.240.132 with SMTP id z126mr11843923ywe.34.1443773770608;
        Fri, 02 Oct 2015 01:16:10 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id w5si1468985pbt.1.2015.10.02.01.16.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:16:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hy16so100717674pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 01:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=egV8942ZTkiElvB4+WZBu+tiZdX230jkPgE6lC0z+nc=;
        b=q/JwJuLyYwkgP4tn5pEZcbYfVmk+G3/yE3nxj9TiJZPwMEicUCUDaev9DlvBZdVCtA
         EtaIfMZegr7zzGT3KusHFoMtHwTn0bwdvUE/AuK86OOv0KUGkAmBR/R0WOTksZKLb4yb
         0iPcql3gpazszJLdmIe1PluHgPC1UO2BUGUb0Qn/ux7qm5JQds/cLvCJnS6aC2HbqchI
         OUd3GSwJMq88SD/m2zIalNcXC/sWkRPtkOTHcevkkd+3fxLB+KtZ+JmopjB2hPzHiugj
         UGlc0/+O9Gp5A5bmXVKVWqxacc0FXv/cmnbPeqdneuLF86lKESut0BeNRAgx8BFjKp9k
         A+Rg==
X-Received: by 10.68.96.67 with SMTP id dq3mr18318266pbb.161.1443773770461;
        Fri, 02 Oct 2015 01:16:10 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id cs5sm10749573pbc.15.2015.10.02.01.16.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 01:16:09 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 6/6] Staging: lustre: ptlrpc: Declare sptlrpc_parse_rule as static
Date: Fri,  2 Oct 2015 13:45:47 +0530
Message-Id: <1443773747-2985-7-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
References: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560E3D49.000D,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_parse_rule as static since it is accessed from this
particular file only. Also remove it's declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 No change.

 drivers/staging/lustre/lustre/include/lustre_sec.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index ab963b9..fc1f573 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -1028,7 +1028,6 @@ void sptlrpc_req_put_ctx(struct ptlrpc_request *req, int sync);
 int  sptlrpc_req_refresh_ctx(struct ptlrpc_request *req, long timeout);
 void sptlrpc_req_set_flavor(struct ptlrpc_request *req, int opcode);
 
-int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule);
 
 /* gc */
 void sptlrpc_gc_add_sec(struct ptlrpc_sec *sec);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index 7e698f3..c96a5c7 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -159,7 +159,7 @@ static void sptlrpc_rule_init(struct sptlrpc_rule *rule)
 /*
  * format: network[.direction]=flavor
  */
-int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
+static int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
 {
 	char *flavor, *dir;
 	int rc;
@@ -213,7 +213,6 @@ int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
 
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_parse_rule);
 
 static void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
 {
-- 
2.1.4


