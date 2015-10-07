X-GM-THRID: 6201947249365221376
X-Received: by 10.112.173.136 with SMTP id bk8mr619838lbc.20.1444248390656;
        Wed, 07 Oct 2015 13:06:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.194 with SMTP id o2ls242748wif.12.gmail; Wed, 07 Oct
 2015 13:06:30 -0700 (PDT)
X-Received: by 10.194.6.170 with SMTP id c10mr606224wja.7.1444248390323;
        Wed, 07 Oct 2015 13:06:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id w4si192733wiz.0.2015.10.07.13.06.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 13:06:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id fx3so228500748wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 13:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Lyn66hexwUjsHEW+4LHhv6KWOee1IK9Fug+uCgMqZOY=;
        b=KteYxNnvV0D0O81xp2y0F8/7N3xQZYMRYaPYlSvYpLoaqmjX6PNP+luQMutc6qU/Kx
         WrqJRK0vTqTT11gYWZHozBs9wlbZtS8h0iaSWS788/B0+59SDn6Zq3u7JW8hb7BRwHC6
         SAfFLoaBLv/Gu83GQaIppJqbzK4t/GiCFRRYdJ7vRzJp5Hn7bNZ81axA0fcMPubyIsg6
         hWVE1BO28icxxrZG8wJ3Nq2e3fUKtXw4mQ05xXCrGdKiU44Vn1onxWYFgMfyd2PJ+bsF
         56noPAQWz+1Z9o/N0++1ezJFdTDae5SgRnXViwKnwZ+BW+pd9uET8TP0zwWXsZu0gxo8
         tBPQ==
X-Received: by 10.180.188.134 with SMTP id ga6mr3997779wic.34.1444248390228;
        Wed, 07 Oct 2015 13:06:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fv13sm4016186wic.7.2015.10.07.13.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 13:06:29 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/5] Staging: lustre: ptlrpc: import: Declare deuuidify as static
Date: Thu,  8 Oct 2015 01:36:06 +0530
Message-Id: <1444248368-29504-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
References: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.56157B44.0095,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare function deuuidify as static since it is used only in this
particular file.Also remove the corresponding declaration from header
files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_net.h | 2 --
 drivers/staging/lustre/lustre/ptlrpc/import.c      | 3 ++-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_net.h b/drivers/staging/lustre/lustre/include/lustre_net.h
index 51a4e64..b88c971 100644
--- a/drivers/staging/lustre/lustre/include/lustre_net.h
+++ b/drivers/staging/lustre/lustre/include/lustre_net.h
@@ -2523,8 +2523,6 @@ int ptlrpc_connect_import(struct obd_import *imp);
 int ptlrpc_init_import(struct obd_import *imp);
 int ptlrpc_disconnect_import(struct obd_import *imp, int noclose);
 int ptlrpc_import_recovery_state_machine(struct obd_import *imp);
-void deuuidify(char *uuid, const char *prefix, char **uuid_start,
-	       int *uuid_len);
 
 /* ptlrpc/pack_generic.c */
 int ptlrpc_reconnect_import(struct obd_import *imp);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/import.c b/drivers/staging/lustre/lustre/ptlrpc/import.c
index 1ac265d..5aaf42f 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/import.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/import.c
@@ -128,7 +128,8 @@ int ptlrpc_init_import(struct obd_import *imp)
 EXPORT_SYMBOL(ptlrpc_init_import);
 
 #define UUID_STR "_UUID"
-void deuuidify(char *uuid, const char *prefix, char **uuid_start, int *uuid_len)
+static void deuuidify(char *uuid, const char *prefix, char **uuid_start,
+		      int *uuid_len)
 {
 	*uuid_start = !prefix || strncmp(uuid, prefix, strlen(prefix))
 		? uuid : uuid + strlen(prefix);
-- 
2.1.4


