X-GM-THRID: 6200732724667351040
X-Received: by 10.13.216.77 with SMTP id a74mr9910303ywe.9.1443720600520;
        Thu, 01 Oct 2015 10:30:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.80 with SMTP id i77ls642456iod.17.gmail; Thu, 01 Oct
 2015 10:29:59 -0700 (PDT)
X-Received: by 10.68.248.137 with SMTP id ym9mr9153057pbc.14.1443720599884;
        Thu, 01 Oct 2015 10:29:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id wl2si1097044pab.1.2015.10.01.10.29.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 10:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hy16so80442310pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 10:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ncOlcv0rsVpam+EaWX1q/+SXatj8lyeaO8C8S+4Fhsg=;
        b=J6CqGBZAPA7S6BH1vVZZ+p+163eCPtik8OrunGKMRAYvMTReIGb3LLqzQo7UPMkauu
         Pi0wmhkYTTbXduPDnatQ1/iNtXUh1WCYFu3e8OMept0+lxmv/AwpKZ+hQTjL/NQhwz6X
         H97C6KOI2KYlQ8lHUTo75Qn2ycerE3DNwLSl/2quk+cpznjHKLPmJp0Ud4uZcRwtNZbZ
         G4mQnPbbZZBAD+f0hqhZ/YNyXbs/IgswUdvDwaRtY5617E1aHT6ir3nkQuGkhV5UGscU
         gLBtyNF8Bkz0EmbRsIDfmtiJUCMgonXJkv0FXTnDdwNSfgZGWKeSsbZ0RMvNUV6oppxT
         5g/Q==
X-Received: by 10.66.141.199 with SMTP id rq7mr13758919pab.140.1443720599786;
        Thu, 01 Oct 2015 10:29:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xm4sm7822424pab.27.2015.10.01.10.29.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 10:29:59 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_choose as static
Date: Thu,  1 Oct 2015 22:59:39 +0530
Message-Id: <1443720581-11352-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>

Declare sptlrpc_rule_set_choose as static since it is accessed from this
particular file only. Also remove it's declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_sec.h |  5 -----
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 11 +++++------
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index 47c4c64..ed0eb4d 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -330,11 +330,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
 	memset(set, 0, sizeof(*set));
 }
 
-int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
-			    enum lustre_sec_part from,
-			    enum lustre_sec_part to,
-			    lnet_nid_t nid,
-			    struct sptlrpc_flavor *sf);
 void sptlrpc_rule_set_dump(struct sptlrpc_rule_set *set);
 
 int  sptlrpc_process_config(struct lustre_cfg *lcfg);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index fac9532..6de9aa6 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -394,11 +394,11 @@ static int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
  * given from/to/nid, determine a matching flavor in ruleset.
  * return 1 if a match found, otherwise return 0.
  */
-int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
-			    enum lustre_sec_part from,
-			    enum lustre_sec_part to,
-			    lnet_nid_t nid,
-			    struct sptlrpc_flavor *sf)
+static int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
+				   enum lustre_sec_part from,
+				   enum lustre_sec_part to,
+				   lnet_nid_t nid,
+				   struct sptlrpc_flavor *sf)
 {
 	struct sptlrpc_rule *r;
 	int n;
@@ -425,7 +425,6 @@ int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
 
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_rule_set_choose);
 
 void sptlrpc_rule_set_dump(struct sptlrpc_rule_set *rset)
 {
-- 
2.1.4


