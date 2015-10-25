X-GM-THRID: 6209373354460184576
X-Received: by 10.182.107.162 with SMTP id hd2mr24806423obb.29.1445732394385;
        Sat, 24 Oct 2015 17:19:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.227 with SMTP id u90ls19682qge.61.gmail; Sat, 24 Oct
 2015 17:19:52 -0700 (PDT)
X-Received: by 10.129.72.83 with SMTP id v80mr22839235ywa.11.1445732392000;
        Sat, 24 Oct 2015 17:19:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id el2si2939843pbb.0.2015.10.24.17.19.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 17:19:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhk11 with SMTP id hk11so151192950pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 17:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=ttfj2sGSDyfAGFxgcHUDlaZ+jwmyKjApwOGwu9DiGqw=;
        b=nrDisSQnoQJl+OsQZIvC1RIJzG8iToSfTV+VlnbsavhPULuZ9vKSxPmIif3np7bW+1
         NVyBiTSb5rZF7XdQs7+WnG6mztQOsaRBGuZvqjN4i9hpx1HRG8l2mi2zll+dAe5BF2ng
         UDJNwAZFKpKcCn9RL4oDPTIZTcD0r47Mr8wC63t8r8mLZldVcOYCn2c40QcaO2Mcq4fG
         0JF3yKDOY75MjqjHln7QfWTOve+YSs21W88MdfYl/vwn1JzSBz/1e2JJpDHPkcuDdQY0
         Hh0kOkETo640jjyaaa3kTBZD2s1I5mXc7/lzBfJ8o43oKe65NHeosH/0LIgw+YOEpgbz
         cTFw==
X-Received: by 10.66.154.165 with SMTP id vp5mr13555371pab.90.1445732391837;
        Sat, 24 Oct 2015 17:19:51 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id mk5sm26254738pab.44.2015.10.24.17.19.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Oct 2015 17:19:51 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: lustre: ptlrpc: Remove EXPORT_SYMBOL for sptlrpc_rule_set_expand
Date: Sun, 25 Oct 2015 05:49:42 +0530
Message-Id: <1445732382-4824-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Since sptlrpc_rule_set_expand is static, export symbol is not needed

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index fca9aa1..7ff948f 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -257,7 +257,6 @@ static int sptlrpc_rule_set_expand(struct sptlrpc_rule_set *rset)
 	rset->srs_nslot = nslot;
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_rule_set_expand);
 
 static inline int rule_spec_dir(struct sptlrpc_rule *rule)
 {
-- 
2.1.4


