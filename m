X-GM-THRID: 6200671081613754368
X-Received: by 10.50.17.74 with SMTP id m10mr2664974igd.3.1443706239346;
        Thu, 01 Oct 2015 06:30:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.165 with SMTP id d37ls656160ioj.39.gmail; Thu, 01 Oct
 2015 06:30:37 -0700 (PDT)
X-Received: by 10.107.159.132 with SMTP id i126mr8906311ioe.23.1443706237225;
        Thu, 01 Oct 2015 06:30:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si932421pbb.0.2015.10.01.06.30.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 06:30:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv12so76471086pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 06:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=n3BCFYEj4/879Of0MVUyqvoEqQqBBnGAKixzr1Xgrk4=;
        b=hn3MCpdPFpS6nntziaqkCoVnRDZXwbsv2fCzekctS+8KKZwM4Kei/R5VECaTEtJupz
         FhNgm2nZ1UlyJGLZD3BExD43S5Lj9WZ1gfuphMJhUMZYPrOT8g9hJB/evrANqzGMlGmG
         ZIOUwS+8oV5Jyzam0c8Y6x8F4aPzjD6QuV39sbGoRcvXrmWFWTQFvRufxkjXofcqhTw7
         khwTr65ANoo9dxOR5U9/+JjYmJV7/6S/a8FeS9KhLoi35U0t4eFoLrdzXXPc6IuXT657
         9UMS0K0OBiO7aY/M4oUzRShLsbd0IY6CkLsf8dlOn0Tuw05w+R+zJWZg3kCe+nCOI+l1
         7WUw==
X-Received: by 10.69.1.5 with SMTP id bc5mr12219198pbd.151.1443706237102;
        Thu, 01 Oct 2015 06:30:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id dk2sm6776458pbd.57.2015.10.01.06.30.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 06:30:36 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: lustre: ptlrpc: Declare functions as static
Date: Thu,  1 Oct 2015 19:00:28 +0530
Message-Id: <1443706228-18751-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560D357B.014D,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare function as static since it is accessed from this
particular file only. Also remove it's declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_sec.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index 707ff69..3b38b5e 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -330,7 +330,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
 	memset(set, 0, sizeof(*set));
 }
 
-void sptlrpc_rule_set_free(struct sptlrpc_rule_set *set);
 int  sptlrpc_rule_set_expand(struct sptlrpc_rule_set *set);
 int  sptlrpc_rule_set_merge(struct sptlrpc_rule_set *set,
 			    struct sptlrpc_rule *rule);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index e7f2f33..d3bee4b 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -236,7 +236,7 @@ int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
 }
 EXPORT_SYMBOL(sptlrpc_parse_rule);
 
-void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
+static void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
 {
 	LASSERT(rset->srs_nslot ||
 		(rset->srs_nrule == 0 && rset->srs_rules == NULL));
@@ -246,7 +246,6 @@ void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
 		sptlrpc_rule_set_init(rset);
 	}
 }
-EXPORT_SYMBOL(sptlrpc_rule_set_free);
 
 /*
  * return 0 if the rule set could accommodate one more rule.
-- 
2.1.4


