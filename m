X-GM-THRID: 6200732724667351040
X-Received: by 10.66.168.12 with SMTP id zs12mr12337790pab.37.1443773759975;
        Fri, 02 Oct 2015 01:15:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.27.4 with SMTP id p4ls452325igg.11.canary; Fri, 02 Oct 2015
 01:15:59 -0700 (PDT)
X-Received: by 10.68.131.193 with SMTP id oo1mr11806374pbb.6.1443773759321;
        Fri, 02 Oct 2015 01:15:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si1399381pac.2.2015.10.02.01.15.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:15:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ex6so100859715pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 01:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=G1nfUQL8ULg8wQHMWOQUPVUGhfksfs2RsSZ8EPFKbeE=;
        b=tv5BYEA9yfce7Huu4J9fNekppIrfq0qSJ7a11x2XdShp9kIfh6zgCvFNAaeP9IHb5+
         DmV6GHjmYKxm4VKese1J2hfD0ftWHPUDV8DmEIeT7ChjChQ6z3GS3QhnNiGzoH5lTajh
         XwBGo/W946itTll9IMSmqYUWm8qsGzsFW20zETlVMjbLGv9xeEzumHX4Y5Av5dAeXsnl
         Bu9J//5DgN8poDpIaMjNmIygAZDMjOUbkzgCFMSw6hU41JK+rKXX8WaHizNFtbpqDBFg
         5qWg6U2LF73lRX+arIxSwkwAMxkbuCoshuQRslBaierbIpQlkbKEvN5uxWz5T7Tu4nOL
         9s8Q==
X-Received: by 10.68.232.162 with SMTP id tp2mr17745385pbc.162.1443773759219;
        Fri, 02 Oct 2015 01:15:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id cs5sm10749573pbc.15.2015.10.02.01.15.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 01:15:58 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_merge as static
Date: Fri,  2 Oct 2015 13:45:42 +0530
Message-Id: <1443773747-2985-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
References: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560E3D3D.005B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_rule_set_merge as static since it is accessed from this
particular file only. Also remove its declaration from
header file

Changes in v2-
 No change

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
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


