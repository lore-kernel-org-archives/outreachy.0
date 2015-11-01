X-GM-THRID: 6212138738119606272
X-Received: by 10.31.170.17 with SMTP id t17mr14077096vke.2.1446376265064;
        Sun, 01 Nov 2015 03:11:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.43.234 with SMTP id z10ls716170obl.91.gmail; Sun, 01 Nov
 2015 03:11:04 -0800 (PST)
X-Received: by 10.182.233.229 with SMTP id tz5mr13799293obc.26.1446376264715;
        Sun, 01 Nov 2015 03:11:04 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id fa8si1465767pab.1.2015.11.01.03.11.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:11:04 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ec8so9098405pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 03:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=BjGOSNAfmHCQflrsetKNX1K2P+7io3DQ9YUvgP0fbmM=;
        b=sT/410DaaFhKk9V+bt4oaFa7RUwxoWS8J4C6U8ma/pat8G5qAeWq5a8Sx8q6I6TONm
         vtvzxHBYcoTVKp4dYaLvjD6S1zxvS/3yq5PG+L9T/u3S8gk7if2+dtQvb3nvhccTB7hl
         jCedPuMAioZ7EhdYcMV5uGLA+jOvKftLA5Z6oH5b22F+/x5tZoxCwCc7rjncZCK9ZP/j
         F9Ec8jtC6ogPZ4ptn2OMj08bKSUKCh6NIPNyoeHYhXnfAxWKZEqYZSkIO9j2DNwo6Mz7
         wHfEMsx+LNIHMae2O6bGht514cSZ+xtFKX/DmBuCFeZFfWIzVq0PvLTM18zKFeEySdSE
         r2IQ==
X-Received: by 10.68.57.235 with SMTP id l11mr20242025pbq.26.1446376264568;
        Sun, 01 Nov 2015 03:11:04 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id jt1sm18047346pbc.83.2015.11.01.03.11.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 03:11:04 -0800 (PST)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/3] Staging: lustre: ptlrpc: Remove unused function declarations
Date: Sun,  1 Nov 2015 16:40:45 +0530
Message-Id: <1446376246-6959-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446376246-6959-1-git-send-email-shraddha.6596@gmail.com>
References: <1446376246-6959-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5635F347.0054,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Functions ptlrpc_handle_failed_import and ptlrpc_lprocfs_do_request_stat
have been declared but not used. Thus drop the declarations.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
index ab6c458..833ed94 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
+++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
@@ -73,7 +73,6 @@ void ptlrpc_request_handle_notconn(struct ptlrpc_request *);
 void lustre_assert_wire_constants(void);
 int ptlrpc_import_in_recovery(struct obd_import *imp);
 int ptlrpc_set_import_discon(struct obd_import *imp, __u32 conn_cnt);
-void ptlrpc_handle_failed_import(struct obd_import *imp);
 int ptlrpc_replay_next(struct obd_import *imp, int *inflight);
 void ptlrpc_initiate_recovery(struct obd_import *imp);
 
@@ -88,8 +87,6 @@ void ptlrpc_ldebugfs_register_service(struct dentry *debugfs_entry,
 				      struct ptlrpc_service *svc);
 void ptlrpc_lprocfs_unregister_service(struct ptlrpc_service *svc);
 void ptlrpc_lprocfs_rpc_sent(struct ptlrpc_request *req, long amount);
-void ptlrpc_lprocfs_do_request_stat(struct ptlrpc_request *req,
-				     long q_usec, long work_usec);
 
 /* NRS */
 
-- 
2.1.4


