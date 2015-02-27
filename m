X-GM-THRID: 4525053181952
X-Received: by 10.152.4.229 with SMTP id n5mr2405828lan.1.1425079474298;
        Fri, 27 Feb 2015 15:24:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.193 with SMTP id t1ls203436wia.30.canary; Fri, 27 Feb
 2015 15:24:33 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr2410234wjb.4.1425079473956;
        Fri, 27 Feb 2015 15:24:33 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id by11si230208wib.1.2015.02.27.15.24.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 15:24:33 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x229.google.com with SMTP id q59so23235443wes.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 15:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Lx/u1zlP/dkRyyAsWPMfqvvZ8YYwqzjOYGTh55Z/Y/I=;
        b=MAPX6Bqg0rIo7k7cSIHIT589wu1PzodU7SUc9Q/P+IWsSkHSZcEs1gQAYGQROnVE3G
         gNMeSQy8pQroMYGrrDYKO39V1cpZWrNycISmN+ZetrWHjB8GwOpvYA9p2uFFLhH2koaB
         qVUk6fLnJWtWbt/S5jEPwN5r7LI0/3sFFngLkK6QFk1IKizpu+tBp10lkNhFw0f4X07A
         wtw9ZrvwKjZwfLxh/HyyIz8+VUm3qvgIHQqkkJEllLEV+HqPUouZlSSgGAjg49Pz94Vx
         B0HDR3mm+dWqxAQjA7Qie1nXbrqcdwSjrQfAGZWNR0NwiwwXmi2kMr1639cKq5H6O6Se
         At/w==
X-Received: by 10.180.99.194 with SMTP id es2mr11352846wib.23.1425079473878;
        Fri, 27 Feb 2015 15:24:33 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id u18sm7906067wjq.42.2015.02.27.15.24.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 15:24:33 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 01:24:27 +0200
Message-Id: <1425079467-3349-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/import.c WARNING: Missing a blank
line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/import.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/import.c b/drivers/staging/lustre/lustre/ptlrpc/import.c
index 4ceb90d..165aa82 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/import.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/import.c
@@ -448,6 +448,7 @@ int ptlrpc_reconnect_import(struct obd_import *imp)
 	if (atomic_read(&imp->imp_inval_count) > 0) {
 		int rc;
 		struct l_wait_info lwi = LWI_INTR(LWI_ON_SIGNAL_NOOP, NULL);
+
 		rc = l_wait_event(imp->imp_recovery_waitq,
 				  (atomic_read(&imp->imp_inval_count) == 0),
 				  &lwi);
@@ -529,6 +530,7 @@ static int import_select_connection(struct obd_import *imp)
 	   trying to reconnect on it.) */
 	if (tried_all && (imp->imp_conn_list.next == &imp_conn->oic_item)) {
 		struct adaptive_timeout *at = &imp->imp_at.iat_net_latency;
+
 		if (at_get(at) < CONNECTION_SWITCH_MAX) {
 			at_measured(at, at_get(at) + CONNECTION_SWITCH_INC);
 			if (at_get(at) > CONNECTION_SWITCH_MAX)
-- 
1.9.1


