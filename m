X-GM-THRID: 6212138738119606272
X-Received: by 10.182.19.195 with SMTP id h3mr14021370obe.25.1446377809995;
        Sun, 01 Nov 2015 03:36:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.247.74 with SMTP id yc10ls819093obc.0.gmail; Sun, 01 Nov
 2015 03:36:49 -0800 (PST)
X-Received: by 10.182.225.230 with SMTP id rn6mr14190337obc.20.1446377809696;
        Sun, 01 Nov 2015 03:36:49 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id sm2si1394077pab.0.2015.11.01.03.36.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:36:49 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padec8 with SMTP id ec8so9445661pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 03:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=N7P8m2meREnYXu9IEye9Lu3gAkCbBAAbOPEFFgTvsfU=;
        b=rtIrBQm7OEn/ipBD2sQcfYu0MEbM4qqQd0IkaJzM40djf0KHI1rTvqA6S5VsVqA+Fg
         4tX5YTYM3AhHBSGsI5vZ95ab1k/DwgA88IhClFgmyU3bKGZ0JRboSRIXxyxulGQuL0xW
         G9vQT1QD0h4RpphBlkIE1+j8YDVZcba5NSAXY96NPNdfiOKyUmqIKjLcZjGc3+TEjbmR
         gR1PRzNHHlf6gz9yRZhQmzgOCOACBq8n+f2CGC56kaTp0qJV0oZHTsui3dEKHxqlxLut
         c7hX0M5ppUdc9rbO9OCnUwMpDOLiaJhi6Pdloso9b82hsBRz4f/MHItRbq/bN+ZTQ1tq
         k13g==
X-Received: by 10.68.130.1 with SMTP id oa1mr20136791pbb.134.1446377809529;
        Sun, 01 Nov 2015 03:36:49 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qn5sm18230904pac.41.2015.11.01.03.36.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 03:36:49 -0800 (PST)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/3] Staging: lustre: ptlrpc: Remove unused function declarations
Date: Sun,  1 Nov 2015 17:06:33 +0530
Message-Id: <1446377794-7761-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446377794-7761-1-git-send-email-shraddha.6596@gmail.com>
References: <1446377794-7761-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.5635F950.008F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Functions ptlrpc_handle_failed_import and ptlrpc_lprocfs_do_request_stat
have been declared but not used. Thus drop the declarations.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 No change.

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


