X-GM-THRID: 6200732724667351040
X-Received: by 10.13.247.132 with SMTP id h126mr1736748ywf.56.1443782996701;
        Fri, 02 Oct 2015 03:49:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.40.170 with SMTP id y10ls836123obk.28.gmail; Fri, 02 Oct
 2015 03:49:56 -0700 (PDT)
X-Received: by 10.182.241.10 with SMTP id we10mr12909971obc.24.1443782996287;
        Fri, 02 Oct 2015 03:49:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id w5si1528548pbt.1.2015.10.02.03.49.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:49:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacex6 with SMTP id ex6so104247837pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=7wet1cnMk2uYHYszYBUSoknopVGlcF+OgC3+aUT+bTw=;
        b=x3BPX0HNlm5C1QUJjvzSDDeqVeWgESQEO7gKa+R8yKbIFRWkBW3XAO+praMybc2JNG
         S9CeYga7FVm+f3ZQIU4I80oBwv7LuKxrE6jSPrSd9WQ0Zm+ctrGxpMb2qCR6rsGBaT1a
         SKya5id5BIrajv8AR2bk9l3rLMlxYLH7UORRYyul2CENfFnYubT79LZ7ginCsnE+v99e
         xGb26JC5vgP04/fE7YrX7gDozE1uyBKKX8SJIrA+9snZoKEc6k9xQUqMYx3Yo1C2anKn
         ZpbHow/BGE5KFZRo88u4ljvCJSKSAm3/o9KRXQ2BOTN499I0JQDBjbOp+sYfTX85o33d
         AseA==
X-Received: by 10.68.94.99 with SMTP id db3mr19320938pbb.165.1443782996141;
        Fri, 02 Oct 2015 03:49:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ce3sm11419722pbb.35.2015.10.02.03.49.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:49:55 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 2/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_free as static
Date: Fri,  2 Oct 2015 16:19:27 +0530
Message-Id: <1443782971-6392-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
References: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.560E6152.016E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_rule_set_free as static since it is accessed from this
particular file only. Also remove its declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3-
 No change.

 drivers/staging/lustre/lustre/include/lustre_sec.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index 96a717e2..d284f91 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -329,7 +329,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
 	memset(set, 0, sizeof(*set));
 }
 
-void sptlrpc_rule_set_free(struct sptlrpc_rule_set *set);
 int  sptlrpc_rule_set_expand(struct sptlrpc_rule_set *set);
 int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
 			    enum lustre_sec_part from,
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index 6fb5b4c..0309817 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -215,7 +215,7 @@ int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
 }
 EXPORT_SYMBOL(sptlrpc_parse_rule);
 
-void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
+static void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
 {
 	LASSERT(rset->srs_nslot ||
 		(rset->srs_nrule == 0 && rset->srs_rules == NULL));
@@ -225,7 +225,6 @@ void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
 		sptlrpc_rule_set_init(rset);
 	}
 }
-EXPORT_SYMBOL(sptlrpc_rule_set_free);
 
 /*
  * return 0 if the rule set could accommodate one more rule.
-- 
2.1.4


