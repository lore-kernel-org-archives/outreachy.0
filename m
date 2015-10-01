X-GM-THRID: 6200732724667351040
X-Received: by 10.31.162.16 with SMTP id l16mr9151134vke.5.1443720595188;
        Thu, 01 Oct 2015 10:29:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.102 with SMTP id g93ls1233357qgd.19.gmail; Thu, 01 Oct
 2015 10:29:54 -0700 (PDT)
X-Received: by 10.129.108.133 with SMTP id h127mr8852940ywc.8.1443720594543;
        Thu, 01 Oct 2015 10:29:54 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id w5si1061408pbt.1.2015.10.01.10.29.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 10:29:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ex6so80544973pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 10:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=aaSU3q9rpaD9gZ9rA+7TtN/fVJIoC/XkEBGfbY3yRuU=;
        b=S8XX6jTXoUEAhATisvfENSWjpLCRLIjhVWqBRlCmfDIJTaX/lHkJFP3mfF+Lexir5c
         pyl2SF7GCwzCPwvU44ZCKMWXHVR11YKhuu2S6Pn5xfHle3v9aGL0y03GNYSKl5Ijq+7K
         TA4u0GuFdiPTf7eRPEn2GunfoEr+7RNvsR+3gKCLjiysB7eyHrMYz/ENOWOhAtGD5b+S
         7M0p8OWcivrgQCnbV57D9oZFSEe/f3lIAPAvQNeMzz/aMm2BquS1wmpAuQbIO6hmTPoq
         HxZHRkt9b3xzlg/C5iOqP+qq52R4yXGh9I9yTbTiHYLsGeNcT/fHZr+GeHWP6O4Uvr0q
         F4Aw==
X-Received: by 10.68.90.34 with SMTP id bt2mr8051142pbb.145.1443720594327;
        Thu, 01 Oct 2015 10:29:54 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xm4sm7822424pab.27.2015.10.01.10.29.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 10:29:53 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_merge as static
Date: Thu,  1 Oct 2015 22:59:36 +0530
Message-Id: <1443720581-11352-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>

Declare sptlrpc_rule_set_merge as static since it is accessed from this
particular file only. Also remove it's declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_sec.h | 2 --
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 5 ++---
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index d36752e..dc7d4d0 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -332,8 +332,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
 
 void sptlrpc_rule_set_free(struct sptlrpc_rule_set *set);
 int  sptlrpc_rule_set_expand(struct sptlrpc_rule_set *set);
-int  sptlrpc_rule_set_merge(struct sptlrpc_rule_set *set,
-			    struct sptlrpc_rule *rule);
 int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
 			    enum lustre_sec_part from,
 			    enum lustre_sec_part to,
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index e7f2f33..6721541 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -306,8 +306,8 @@ static inline int rule_match_net(struct sptlrpc_rule *r1,
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
@@ -391,7 +391,6 @@ int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
 
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_rule_set_merge);
 
 /**
  * given from/to/nid, determine a matching flavor in ruleset.
-- 
2.1.4


