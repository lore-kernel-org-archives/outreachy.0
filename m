X-GM-THRID: 6200732724667351040
X-Received: by 10.182.250.233 with SMTP id zf9mr12007823obc.7.1443773762355;
        Fri, 02 Oct 2015 01:16:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.34 with SMTP id d31ls1848925qga.59.gmail; Fri, 02 Oct
 2015 01:16:01 -0700 (PDT)
X-Received: by 10.129.108.133 with SMTP id h127mr11414013ywc.8.1443773761526;
        Fri, 02 Oct 2015 01:16:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id wl2si1526831pab.1.2015.10.02.01.16.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:16:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv12so102665590pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 01:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ulj35G2zZOc8XI2QF4/NDyuSJHXeOJkbZ6eDa3d4MbU=;
        b=BX/UgL1kCvCzCw8URMCr1qDqONJPchUwNK4yed8zHZ98i+gimXMhkCkm4CQbCekHtq
         PgLoSG4Nv4YeqDY6iMXJ3Gl+Tt66KtK9cvlPQVWb5sdNsTqNIq8JHUZr/bNvh+tuR4Dx
         DnalZNXg7x8s/H9DMKQZtFMGpi822cOJuFoCZLOR4XXAp153/CE2VvOVzL0d+uOSwlQs
         2tp9Gz2o6E+yIEk4B0qY253vRFFeo7oUxmsJwnVFhNYNKYJ/YsSADpc8p6iL/frsgc07
         fThGTkGBHtV2GcFkJrYAG9g5oR1D6u9j8uB9TCo9UGtQnVqC789QKxHW/Sqm1gxv3iOq
         m25Q==
X-Received: by 10.68.65.104 with SMTP id w8mr18458450pbs.48.1443773761381;
        Fri, 02 Oct 2015 01:16:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id cs5sm10749573pbc.15.2015.10.02.01.15.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 01:16:00 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_free as static
Date: Fri,  2 Oct 2015 13:45:43 +0530
Message-Id: <1443773747-2985-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
References: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560E3D40.00D3,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_rule_set_free as static since it is accessed from this
particular file only. Also remove its declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 No change

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


