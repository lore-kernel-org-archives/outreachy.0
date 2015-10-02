X-GM-THRID: 6200732724667351040
X-Received: by 10.182.80.193 with SMTP id t1mr12531364obx.0.1443782999580;
        Fri, 02 Oct 2015 03:49:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.166 with SMTP id g6ls741381obe.75.gmail; Fri, 02 Oct
 2015 03:49:59 -0700 (PDT)
X-Received: by 10.182.230.197 with SMTP id ta5mr11906321obc.37.1443782999160;
        Fri, 02 Oct 2015 03:49:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id w5si1528492pbt.1.2015.10.02.03.49.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:49:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id lk4so103444960pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=jJY2mCSb1rN62rwS2yRVs64VWQjC3Bggv3RIlNrsF8o=;
        b=Y9VeUWMaO7C5TqBfj8OGA565ZN9aG3AvHpcWcRQJK+5zwVbwCEVF8CLhPF2fuSon4/
         0eSM3yxPwsc8IoFdVni2AUmQKfgC/BVNE0VOJQnX6ZSdbUHgDNW9kdOrC3usgMtM6r6Q
         zfHhvDXrFAC+sYF04gghEa7e9Tag+zchkR7nbF/ZtjOglUbrKyWOkHRfqPdrKOwuuAO4
         F732DBT+/tB038NiLurVf1MzsMwudqzuAUcbnRIONealAxJtz1jHPtm1R8Evpm9jGeq+
         4Dk71+KuDuQNmihsaqr5OEbsVQQhOQt/2gIc9lfYT2r6HHArhKy5ebwjLCF1gkuHkPDS
         R4jA==
X-Received: by 10.68.190.5 with SMTP id gm5mr19230642pbc.25.1443782999043;
        Fri, 02 Oct 2015 03:49:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ce3sm11419722pbb.35.2015.10.02.03.49.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:49:58 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 3/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_expand as static
Date: Fri,  2 Oct 2015 16:19:28 +0530
Message-Id: <1443782971-6392-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
References: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.560E6155.00AA,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_rule_set_expand as static since it is accessed from this
particular file only. Also remove its declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3-
 No change

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


