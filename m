X-GM-THRID: 6200732724667351040
X-Received: by 10.66.146.73 with SMTP id ta9mr9370212pab.21.1443720596992;
        Thu, 01 Oct 2015 10:29:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.56.111 with SMTP id z15ls296815igp.35.gmail; Thu, 01 Oct
 2015 10:29:56 -0700 (PDT)
X-Received: by 10.107.40.133 with SMTP id o127mr9449163ioo.27.1443720596198;
        Thu, 01 Oct 2015 10:29:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si1097765pab.1.2015.10.01.10.29.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 10:29:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id lk4so79805147pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 10:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=2REe2ZI+QIBcBKzYiIAubFngxrPGeSQz8+ztMQmQek0=;
        b=T7ilgYj3xzcxnccDMiv7w9KgVZnps0OZpcaAKFCS+taz0/9JPUux0ePXfu2+M7ZaqW
         ZwBVhzzwwDT717MULjmAuFjOfE/92LINGJjosQyZy3OxbN1KaHDYWtIvlln+XpRn4D8f
         yUi2gnMRKhrTQhwnfeqKaLFiRBpuBoQ1E3mq12G+cUN9ajxMdJur7nW2zy4jxyBcWoYw
         te61okSOQt9MLkXODoPj/kZ0psFB910LHXmQnHRR3nfD8P7NdRUEf+6AxR0kNknD7/S6
         FnOr36wKhFbiRKJ1fUO2setwm0F0N9e2B7yAB5GpqYoO7exjHiImsaLYehCGQmnp1lqD
         9Gug==
X-Received: by 10.67.30.74 with SMTP id kc10mr13222039pad.147.1443720596089;
        Thu, 01 Oct 2015 10:29:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xm4sm7822424pab.27.2015.10.01.10.29.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 10:29:55 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_free as static
Date: Thu,  1 Oct 2015 22:59:37 +0530
Message-Id: <1443720581-11352-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>

Declare sptlrpc_rule_set_free as static since it is accessed from this
particular file only. Also remove it's declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_sec.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index dc7d4d0..00a67cf 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -330,7 +330,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
 	memset(set, 0, sizeof(*set));
 }
 
-void sptlrpc_rule_set_free(struct sptlrpc_rule_set *set);
 int  sptlrpc_rule_set_expand(struct sptlrpc_rule_set *set);
 int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
 			    enum lustre_sec_part from,
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index 6721541..394429f 100644
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


