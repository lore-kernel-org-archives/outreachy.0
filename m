X-GM-THRID: 6200732724667351040
X-Received: by 10.50.79.234 with SMTP id m10mr2673058igx.5.1443773764119;
        Fri, 02 Oct 2015 01:16:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.66 with SMTP id v2ls683456obz.69.gmail; Fri, 02 Oct
 2015 01:16:03 -0700 (PDT)
X-Received: by 10.182.70.4 with SMTP id i4mr11642145obu.15.1443773763709;
        Fri, 02 Oct 2015 01:16:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id wl2si1526831pab.1.2015.10.02.01.16.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:16:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv12so102665590pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 01:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=TktUimXNMi0DM+GmNiANKHwzZz+0cBWfmd+51KU0574=;
        b=eUfPtG/alrCYle5+PjJsKcgOikSyZg255C/sffZqoyIOjFH9eAhqcUhwZl4y0SIGnI
         z4NR4coDt0xTsLWXoy00nrNE/3yv9XzByNJPKSZ+GrSfWrhl7YC/6U8w2o/7gqPQjf19
         m7+MciA35RnPLzNqngzeDP+D5s1zfLYlKNzSSy/eUfendLU5BauyH8Bl17Wa490LvVi3
         EOsBY000UJ6D5bZ8kljG6ZzCier2Gg6+0rcG16v2Fp2Bn0ilwMk3n/lKXb+VCGdmgaLc
         ezI2yfYM0aX4g8Hk/6GHoAZc44irXwk8u3kJXuZPYB8G659hxHN4Oj5I3/dEg6ZE6AGD
         JzHA==
X-Received: by 10.68.130.71 with SMTP id oc7mr18291918pbb.29.1443773763541;
        Fri, 02 Oct 2015 01:16:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id cs5sm10749573pbc.15.2015.10.02.01.16.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 01:16:03 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_expand as static
Date: Fri,  2 Oct 2015 13:45:44 +0530
Message-Id: <1443773747-2985-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
References: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560E3D42.00EC,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_rule_set_expand as static since it is accessed from this
particular file only. Also remove its declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 No change.

 drivers/staging/lustre/lustre/include/lustre_sec.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index d284f91..4f1d983 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -329,7 +329,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
 	memset(set, 0, sizeof(*set));
 }
 
-int  sptlrpc_rule_set_expand(struct sptlrpc_rule_set *set);
 int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
 			    enum lustre_sec_part from,
 			    enum lustre_sec_part to,
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index 0309817..0664042 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -229,7 +229,7 @@ static void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
 /*
  * return 0 if the rule set could accommodate one more rule.
  */
-int sptlrpc_rule_set_expand(struct sptlrpc_rule_set *rset)
+static int sptlrpc_rule_set_expand(struct sptlrpc_rule_set *rset)
 {
 	struct sptlrpc_rule *rules;
 	int nslot;
-- 
2.1.4


