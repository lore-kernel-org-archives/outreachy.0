X-GM-THRID: 6200732724667351040
X-Received: by 10.182.215.226 with SMTP id ol2mr12474633obc.11.1443783009312;
        Fri, 02 Oct 2015 03:50:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.33.9 with SMTP id h9ls882701ioh.73.gmail; Fri, 02 Oct 2015
 03:50:07 -0700 (PDT)
X-Received: by 10.68.248.137 with SMTP id ym9mr12262075pbc.14.1443783007300;
        Fri, 02 Oct 2015 03:50:07 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id w5si1528492pbt.1.2015.10.02.03.50.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:50:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id lk4so103444960pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=iIrjJnTQR28qnBVNhHi6hHWvV5oyR8ySuf2q2IA2xj0=;
        b=X150pHQ64t1QLxST5KtR2GS/GhJGwsf2H4d/JFzLiTROhMWBWRXUNmfqqINvtCOiJD
         BjNiYYJRUT9kNeKVwnqIAV+yiCYa8c+KAudljwGgZXXmmrv/Kc2uli1CP/Vhe2ektvTT
         qUx3WK6K9hs83dDIqL+S7ZGcFnNCOrFNbG7qFCe15CwZMG2mOchbvtFR3YtJv2HV6rEB
         TQ2hl5FFHvy/HSM93qCsqr0PjiErwFTbjY0f0927kKsIiMUHr6J5oJLfzjxHTFoKVmBs
         YIVqyba6Uza1y9n6+0lJJt8KghFOvttEUi7vHYGFggcoju+aWVvmawiTCwAFyWhU0ye5
         bgfg==
X-Received: by 10.66.251.35 with SMTP id zh3mr19283884pac.121.1443783007194;
        Fri, 02 Oct 2015 03:50:07 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ce3sm11419722pbb.35.2015.10.02.03.50.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:50:06 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 6/6] Staging: lustre: ptlrpc: Declare sptlrpc_parse_rule as static
Date: Fri,  2 Oct 2015 16:19:31 +0530
Message-Id: <1443782971-6392-7-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
References: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.560E615D.0138,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare sptlrpc_parse_rule as static since it is accessed from this
particular file only. Also remove its declaration from
header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3- 
 No change

 drivers/staging/lustre/lustre/include/lustre_sec.h | 1 -
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
index ab963b9..fc1f573 100644
--- a/drivers/staging/lustre/lustre/include/lustre_sec.h
+++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
@@ -1028,7 +1028,6 @@ void sptlrpc_req_put_ctx(struct ptlrpc_request *req, int sync);
 int  sptlrpc_req_refresh_ctx(struct ptlrpc_request *req, long timeout);
 void sptlrpc_req_set_flavor(struct ptlrpc_request *req, int opcode);
 
-int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule);
 
 /* gc */
 void sptlrpc_gc_add_sec(struct ptlrpc_sec *sec);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index 7e698f3..c96a5c7 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -159,7 +159,7 @@ static void sptlrpc_rule_init(struct sptlrpc_rule *rule)
 /*
  * format: network[.direction]=flavor
  */
-int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
+static int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
 {
 	char *flavor, *dir;
 	int rc;
@@ -213,7 +213,6 @@ int sptlrpc_parse_rule(char *param, struct sptlrpc_rule *rule)
 
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_parse_rule);
 
 static void sptlrpc_rule_set_free(struct sptlrpc_rule_set *rset)
 {
-- 
2.1.4


