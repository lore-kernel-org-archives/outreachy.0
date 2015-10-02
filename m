X-GM-THRID: 6200732724667351040
X-Received: by 10.182.79.35 with SMTP id g3mr12748962obx.22.1443782994783;
        Fri, 02 Oct 2015 03:49:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.170 with SMTP id j39ls1478680qgd.92.gmail; Fri, 02 Oct
 2015 03:49:53 -0700 (PDT)
X-Received: by 10.31.165.84 with SMTP id o81mr12237627vke.11.1443782993832;
        Fri, 02 Oct 2015 03:49:53 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id w5si1528492pbt.1.2015.10.02.03.49.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:49:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id lk4so103444960pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=2BNvC00L+lbUeDIxFyL5nr2jW9b7B/pCC4yyJpZL/Eo=;
        b=oPb38ga8MPB6TiUBh+YIKhtATsWuuc1KqPlL0yeCkNsAITf98A7P47vVEbdbmr7k3+
         oC5FVbtpxmhCH/Y0GpPTHY6KsAC9Jb3286qKn5B3IhPDiaI0wO4wWkHvkh7UcPi8c1Qf
         yUYEl2DTpE/NPnd3l/9P2IdiE7uiCMHLfpp1OWisHRjeWwwY1TUXHpv/F5H2+bdEsQO9
         Ita1NSipRzLbduLiHVwTDEAVMSHHnxqBpwbgXegLZ52/JbeeRM+IK5QHNCZqZC51t1MR
         ntQfoF3E5DoPYj1hXkijnxVE5IL6wPtyVDyPBoNklHNzdyOCg58mlPRaTIsaLCtiCU3i
         kpWA==
X-Received: by 10.68.69.79 with SMTP id c15mr19068464pbu.90.1443782993685;
        Fri, 02 Oct 2015 03:49:53 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ce3sm11419722pbb.35.2015.10.02.03.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:49:52 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 1/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_merge as static
Date: Fri,  2 Oct 2015 16:19:26 +0530
Message-Id: <1443782971-6392-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
References: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.560E614F.013B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_rule_set_merge as static since it is accessed from this
particular file only. Also remove its declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3-
 No change.

 drivers/staging/lustre/lustre/include/lustre_sec.h | 2 --
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 6 ++----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index 1d2c572..96a717e2 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -331,8 +331,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
 
 void sptlrpc_rule_set_free(struct sptlrpc_rule_set *set);
 int  sptlrpc_rule_set_expand(struct sptlrpc_rule_set *set);
-int  sptlrpc_rule_set_merge(struct sptlrpc_rule_set *set,
-			    struct sptlrpc_rule *rule);
 int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
 			    enum lustre_sec_part from,
 			    enum lustre_sec_part to,
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index 0d29b87..6fb5b4c 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -285,8 +285,8 @@ static inline int rule_match_net(struct sptlrpc_rule *r1,
  * merge @rule into @rset.
  * the @rset slots might be expanded.
  */
-int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
-			   struct sptlrpc_rule *rule)
+static int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
+				  struct sptlrpc_rule *rule)
 {
 	struct sptlrpc_rule *p = rset->srs_rules;
 	int spec_dir, spec_net;
@@ -370,8 +370,6 @@ int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
 
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_rule_set_merge);
-
 /**
  * given from/to/nid, determine a matching flavor in ruleset.
  * return 1 if a match found, otherwise return 0.
-- 
2.1.4


