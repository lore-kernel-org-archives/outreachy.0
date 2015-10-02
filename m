X-GM-THRID: 6200732724667351040
X-Received: by 10.129.116.133 with SMTP id p127mr5655682ywc.50.1443773767133;
        Fri, 02 Oct 2015 01:16:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.52 with SMTP id t49ls1576697qge.1.gmail; Fri, 02 Oct
 2015 01:16:06 -0700 (PDT)
X-Received: by 10.129.51.86 with SMTP id z83mr11279868ywz.45.1443773766121;
        Fri, 02 Oct 2015 01:16:06 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id wl2si1526831pab.1.2015.10.02.01.16.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:16:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv12so102665590pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 01:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=QAwSeI2eJlMrJ3IL0hTur7lB2uBKrTAjSB6+v1sfnB8=;
        b=SMOZd8RwKVGWO/a2GTdgqyKodrpejXDL9euOLyJmZi6yrdk6I2fOkGGQZuk/ljwy3E
         O9ijVjpJFT3DWWj/5DFfcUOKpHeuSlG3B6bjTO0bHCHAX9tuQHCEHp9h2Nra3VXImNjT
         Sy4THWpRxmBqNaX550cR8pXeS5oyRztgobvQi83TqevdfYFU9OHIqcX5YqRqqhaoJVsI
         5Ma7IvCLj1TP7ueGRDBpyhqDFecajT8BlIGs1Sqx8ml7MY4Ksguq1VQrzfs+Jwx44gnL
         W/XB3J4I95TZF/qGZtIVCM4Yh5ee53lqEQ650xEgPNlKsLKQ++TuuyySSqMtVGYyalCB
         4q7g==
X-Received: by 10.68.68.197 with SMTP id y5mr18155401pbt.88.1443773765972;
        Fri, 02 Oct 2015 01:16:05 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id cs5sm10749573pbc.15.2015.10.02.01.16.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 01:16:05 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 4/6] Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_choose as static
Date: Fri,  2 Oct 2015 13:45:45 +0530
Message-Id: <1443773747-2985-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
References: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560E3D44.0138,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_rule_set_choose as static since it is accessed from this
particular file only. Also remove its declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 No change.

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


