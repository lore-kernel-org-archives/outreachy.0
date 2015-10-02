X-GM-THRID: 6200732724667351040
X-Received: by 10.50.136.201 with SMTP id qc9mr3134455igb.10.1443783002625;
        Fri, 02 Oct 2015 03:50:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.1.113 with SMTP id 17ls484858igl.15.canary; Fri, 02 Oct
 2015 03:50:02 -0700 (PDT)
X-Received: by 10.66.102.101 with SMTP id fn5mr12251973pab.38.1443783002154;
        Fri, 02 Oct 2015 03:50:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id uv4si1714255pac.0.2015.10.02.03.50.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:50:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so106191723pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=B+tlbV05DtyvTNNld6R6S1Drmn/MlnFkhdJTT7qdd7c=;
        b=hw3YbTzG4oqeJ1YN+u59TA5npr085rlKVxmay07in4oJ0wXl+9luy5PkDuf2lInmrL
         QVN0ANhLD7wG7WDhgHtNuqaoxi799f44ArA20iGITNurS3mR9lxleYLNBitU9cDyKTA3
         QK7apoXIa92MaB9PDvd/9O8SzlNuiB+36qWMpfEVX/TEuA/o/cDaISajT/p37gfKSztB
         UBShxiVzgYRfT4x7dFRd/uT17/gBEOv84jaqDACuMGATnBl6gZvc0+5xw2t3WCwxvpuq
         6vNYWNWDpwDG1Ldw8FQyDnwOS5vZnpoZdp0ck7bmli4miu1qKMaQ058wkQuemXkWINH9
         sQfQ==
X-Received: by 10.68.69.35 with SMTP id b3mr19767256pbu.22.1443783002051;
        Fri, 02 Oct 2015 03:50:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ce3sm11419722pbb.35.2015.10.02.03.49.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:50:01 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 4/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_choose as static
Date: Fri,  2 Oct 2015 16:19:29 +0530
Message-Id: <1443782971-6392-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
References: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.560E6158.0152,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_rule_set_choose as static since it is accessed from this
particular file only. Also remove its declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3-
 No change

 drivers/staging/lustre/lustre/include/lustre_sec.h |  6 ------
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 11 +++++------
 2 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index 4f1d983..50560a8 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -329,12 +329,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
 	memset(set, 0, sizeof(*set));
 }
 
-int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
-			    enum lustre_sec_part from,
-			    enum lustre_sec_part to,
-			    lnet_nid_t nid,
-			    struct sptlrpc_flavor *sf);
-
 int  sptlrpc_process_config(struct lustre_cfg *lcfg);
 void sptlrpc_conf_log_start(const char *logname);
 void sptlrpc_conf_log_stop(const char *logname);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index 0664042..7e698f3 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -373,11 +373,11 @@ static int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
  * given from/to/nid, determine a matching flavor in ruleset.
  * return 1 if a match found, otherwise return 0.
  */
-int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
-			    enum lustre_sec_part from,
-			    enum lustre_sec_part to,
-			    lnet_nid_t nid,
-			    struct sptlrpc_flavor *sf)
+static int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
+				   enum lustre_sec_part from,
+				   enum lustre_sec_part to,
+				   lnet_nid_t nid,
+				   struct sptlrpc_flavor *sf)
 {
 	struct sptlrpc_rule *r;
 	int n;
@@ -404,7 +404,6 @@ int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
 
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_rule_set_choose);
 
 /**********************************
  * sptlrpc configuration support  *
-- 
2.1.4


