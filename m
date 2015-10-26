X-GM-THRID: 6210043703457742848
X-Received: by 10.129.137.133 with SMTP id z127mr11176776ywf.25.1445888472261;
        Mon, 26 Oct 2015 12:41:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.202 with SMTP id f193ls728876ioe.60.gmail; Mon, 26 Oct
 2015 12:41:11 -0700 (PDT)
X-Received: by 10.107.160.8 with SMTP id j8mr18701335ioe.4.1445888471798;
        Mon, 26 Oct 2015 12:41:11 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id vy6si3668081pbc.1.2015.10.26.12.41.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 12:41:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id la5so3831104pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 12:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LworiOZsD9BfxFxdCBl26AuwdpYJX0dDsfALGfVfarM=;
        b=ZUkSJiXUD9KM50AsSJO/xotMO98sq0MdvU/L/eByfyzP7YDB8FEyjIIvJo0nPDzbYm
         l6sMAWCArIU4igO40IroC9zcgpVp8eFkYlnsQnG9jHcEaPhx0nicJZdH0iFERcZ3+Ox0
         wO318H2AgqHR9TBFpQ4ZkYFUxV5oSaVCuaAhP+odRNGCV/dL78JYLI7z8/T80nBTTF/F
         HEPXLWUhw0g8Y8TjyGxk6GVi3/8j1pKFCWmzhs+wiIu9XptMsqWoWg4iJ8V7iFceOnwK
         InaNlwAE2OM/wC8dFmn+8OgRgdrmOrMtl0TelD1WS/Tuo/r4aRkbOv6T4NT5fHYLAwEm
         6mWg==
X-Received: by 10.68.68.134 with SMTP id w6mr43409302pbt.61.1445888471505;
        Mon, 26 Oct 2015 12:41:11 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.252.119])
        by smtp.gmail.com with ESMTPSA id j16sm35390705pbq.23.2015.10.26.12.41.10
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 12:41:11 -0700 (PDT)
Date: Tue, 27 Oct 2015 01:11:07 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] scsi: bfa: bfa_svc: Remove 'struct timeval'
Message-ID: <20151026194107.GA23869@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using 'struct timeval' will break in the year 2038, so
we modify the code appropriately.

This patch replaces the use of struct timeval and do_gettimeofday()
with 64 bit ktime_get_real_seconds().

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/scsi/bfa/bfa_svc.c | 24 +++++++-----------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/scsi/bfa/bfa_svc.c b/drivers/scsi/bfa/bfa_svc.c
index 625225f..a880a7e 100644
--- a/drivers/scsi/bfa/bfa_svc.c
+++ b/drivers/scsi/bfa/bfa_svc.c
@@ -15,6 +15,8 @@
  * General Public License for more details.
  */
 
+#include <linux/ktime.h>
+
 #include "bfad_drv.h"
 #include "bfad_im.h"
 #include "bfa_plog.h"
@@ -306,13 +308,8 @@ plkd_validate_logrec(struct bfa_plog_rec_s *pl_rec)
 static u64
 bfa_get_log_time(void)
 {
-	u64 system_time = 0;
-	struct timeval tv;
-	do_gettimeofday(&tv);
-
 	/* We are interested in seconds only. */
-	system_time = tv.tv_sec;
-	return system_time;
+	return ktime_get_real_seconds();
 }
 
 static void
@@ -3092,7 +3089,6 @@ bfa_fcport_attach(struct bfa_s *bfa, void *bfad, struct bfa_iocfc_cfg_s *cfg,
 	struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);
 	struct bfa_port_cfg_s *port_cfg = &fcport->cfg;
 	struct bfa_fcport_ln_s *ln = &fcport->ln;
-	struct timeval tv;
 
 	fcport->bfa = bfa;
 	ln->fcport = fcport;
@@ -3105,8 +3101,7 @@ bfa_fcport_attach(struct bfa_s *bfa, void *bfad, struct bfa_iocfc_cfg_s *cfg,
 	/*
 	 * initialize time stamp for stats reset
 	 */
-	do_gettimeofday(&tv);
-	fcport->stats_reset_time = tv.tv_sec;
+	fcport->stats_reset_time = ktime_get_real_seconds();
 	fcport->stats_dma_ready = BFA_FALSE;
 
 	/*
@@ -3358,10 +3353,6 @@ __bfa_cb_fcport_stats_get(void *cbarg, bfa_boolean_t complete)
 	union bfa_fcport_stats_u *ret;
 
 	if (complete) {
-		struct timeval tv;
-		if (fcport->stats_status == BFA_STATUS_OK)
-			do_gettimeofday(&tv);
-
 		list_for_each_safe(qe, qen, &fcport->stats_pending_q) {
 			bfa_q_deq(&fcport->stats_pending_q, &qe);
 			cb = (struct bfa_cb_pending_q_s *)qe;
@@ -3375,7 +3366,8 @@ __bfa_cb_fcport_stats_get(void *cbarg, bfa_boolean_t complete)
 					bfa_fcport_fcoe_stats_swap(&ret->fcoe,
 							&fcport->stats->fcoe);
 					ret->fcoe.secs_reset =
-					tv.tv_sec - fcport->stats_reset_time;
+					ktime_get_real_seconds() - 
+						fcport->stats_reset_time;
 				}
 			}
 			bfa_cb_queue_status(fcport->bfa, &cb->hcb_qe,
@@ -3436,13 +3428,11 @@ __bfa_cb_fcport_stats_clr(void *cbarg, bfa_boolean_t complete)
 	struct list_head *qe, *qen;
 
 	if (complete) {
-		struct timeval tv;
 
 		/*
 		 * re-initialize time stamp for stats reset
 		 */
-		do_gettimeofday(&tv);
-		fcport->stats_reset_time = tv.tv_sec;
+		fcport->stats_reset_time = ktime_get_real_seconds();
 		list_for_each_safe(qe, qen, &fcport->statsclr_pending_q) {
 			bfa_q_deq(&fcport->statsclr_pending_q, &qe);
 			cb = (struct bfa_cb_pending_q_s *)qe;
-- 
1.9.1


