X-GM-THRID: 6200732724667351040
X-Received: by 10.50.78.170 with SMTP id c10mr24639igx.6.1443720598853;
        Thu, 01 Oct 2015 10:29:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.24 with SMTP id i24ls700989iod.23.gmail; Thu, 01 Oct
 2015 10:29:58 -0700 (PDT)
X-Received: by 10.107.26.84 with SMTP id a81mr9101022ioa.6.1443720598067;
        Thu, 01 Oct 2015 10:29:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id wl2si1097044pab.1.2015.10.01.10.29.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 10:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hy16so80442310pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 10:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=CUT5CjNK99m0uczlqwT89J9wd7p6RRSXsWot+PJ5QTQ=;
        b=b/66FV7LnDzC0Ld7f2f61DJO8WbjF/1VqgXhn0cR5hV5Q0o0E83Kp7LgF0u5AW3Chx
         wSeZyl8d5ugwReR7CwVhWFQASOpZ1fWBZxf9lEHDPKOxrOWXQdzcrDSHvey26hzVNyij
         beUGDoW3nAErMj4IpnKkOFvI1ggULeejmK/s5c2iqOHzenMad1XVhekKhY0I8WuQ/geN
         wjfr4hAY/esK7XplxHJkw26a0A3nWJAa+VG1+H24uPxYdr+hbcWwOyhcrkmuzfv7c2D8
         cVdGXdAR1kQf4UgZshLQ9oA6s2VjPqJI1XRtkLe9zvpFGG3LMnHOCVG6JIKHTCSjq941
         ZqiQ==
X-Received: by 10.66.121.195 with SMTP id lm3mr13742308pab.84.1443720597949;
        Thu, 01 Oct 2015 10:29:57 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xm4sm7822424pab.27.2015.10.01.10.29.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 10:29:57 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_expand as static
Date: Thu,  1 Oct 2015 22:59:38 +0530
Message-Id: <1443720581-11352-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>

Declare sptlrpc_rule_set_expand as static since it is accessed from this
particular file only. Also remove it's declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_sec.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index 00a67cf..47c4c64 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -330,7 +330,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
 	memset(set, 0, sizeof(*set));
 }
 
-int  sptlrpc_rule_set_expand(struct sptlrpc_rule_set *set);
 int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
 			    enum lustre_sec_part from,
 			    enum lustre_sec_part to,
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index 394429f..fac9532 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -250,7 +250,7 @@ static void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
 /*
  * return 0 if the rule set could accommodate one more rule.
  */
-int sptlrpc_rule_set_expand(struct sptlrpc_rule_set *rset)
+static int sptlrpc_rule_set_expand(struct sptlrpc_rule_set *rset)
 {
 	struct sptlrpc_rule *rules;
 	int nslot;
@@ -279,7 +279,6 @@ int sptlrpc_rule_set_expand(struct sptlrpc_rule_set *rset)
 	rset->srs_nslot = nslot;
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_rule_set_expand);
 
 static inline int rule_spec_dir(struct sptlrpc_rule *rule)
 {
-- 
2.1.4


