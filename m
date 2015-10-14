X-GM-THRID: 6205587481887244288
X-Received: by 10.31.165.84 with SMTP id o81mr4060483vke.11.1444850954662;
        Wed, 14 Oct 2015 12:29:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.129 with SMTP id xw1ls179324obc.10.gmail; Wed, 14 Oct
 2015 12:29:14 -0700 (PDT)
X-Received: by 10.182.24.42 with SMTP id r10mr4034250obf.42.1444850954353;
        Wed, 14 Oct 2015 12:29:14 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ce6si476635pad.0.2015.10.14.12.29.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:29:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id p3so14520031pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=UwiS/k/k7Rk3hktp2hVLl2wxSj7s9Bsz1d+K4UFlTzw=;
        b=eEaGUlOEw7fWvkv92qJp/yeabR4tVRBMSkOSyvOy1scQ+IlaHrxUO4Dlfxl9Drt12H
         jIF0C02c+gcQ6VV7MrIc2IRso98fP4Wzeiw0UncPLBdNz2aW69z2sl9zybX+zCZjsH61
         /TNMlOrJItNVebaSBFV/HMQtVSWYdxF9RcqeNY8TqAfZcfLk4DLSPsaxRTrPviKCfOoA
         +XJD7LFt6w8GKH0IRST5JJ8iBTwr10shyHyoUdjkdmA4cgGLv/8ihauFC/LdxM2r52hk
         9m1TbgfV8uxaFNY+LK3t1roYRWvyopxYaHZX+OtTQVryFc02lMkpH3KkNq9Kw7Dxv3Oy
         zP1w==
X-Received: by 10.66.119.201 with SMTP id kw9mr5425014pab.64.1444850954234;
        Wed, 14 Oct 2015 12:29:14 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.29.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:29:13 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 09/12] Staging: rdma: amso1100: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:27 +0530
Message-Id: <1444850910-11408-10-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EAD09.0018,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

The semantic patch used to find this:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/rdma/amso1100/c2.c      | 2 +-
 drivers/staging/rdma/amso1100/c2_ae.c   | 6 +++---
 drivers/staging/rdma/amso1100/c2_intr.c | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rdma/amso1100/c2.c b/drivers/staging/rdma/amso1100/c2.c
index 7f1e794..35ac536 100644
--- a/drivers/staging/rdma/amso1100/c2.c
+++ b/drivers/staging/rdma/amso1100/c2.c
@@ -548,7 +548,7 @@ static irqreturn_t c2_interrupt(int irq, void *dev_id)
 {
 	unsigned int netisr0, dmaisr;
 	int handled = 0;
-	struct c2_dev *c2dev = (struct c2_dev *) dev_id;
+	struct c2_dev *c2dev = dev_id;
 
 	/* Process CCILNET interrupts */
 	netisr0 = readl(c2dev->regs + C2_NISR0);
diff --git a/drivers/staging/rdma/amso1100/c2_ae.c b/drivers/staging/rdma/amso1100/c2_ae.c
index cedda25..eb7a92b 100644
--- a/drivers/staging/rdma/amso1100/c2_ae.c
+++ b/drivers/staging/rdma/amso1100/c2_ae.c
@@ -183,7 +183,7 @@ void c2_ae_event(struct c2_dev *c2dev, u32 mq_index)
 	switch (resource_indicator) {
 	case C2_RES_IND_QP:{
 
-		struct c2_qp *qp = (struct c2_qp *)resource_user_context;
+		struct c2_qp *qp = resource_user_context;
 		struct iw_cm_id *cm_id = qp->cm_id;
 		struct c2wr_ae_active_connect_results *res;
 
@@ -273,7 +273,7 @@ void c2_ae_event(struct c2_dev *c2dev, u32 mq_index)
 		struct c2wr_ae_connection_request *req =
 			&wr->ae.ae_connection_request;
 		struct iw_cm_id *cm_id =
-			(struct iw_cm_id *)resource_user_context;
+			resource_user_context;
 
 		pr_debug("C2_RES_IND_EP event_id=%d\n", event_id);
 		if (event_id != CCAE_CONNECTION_REQUEST) {
@@ -303,7 +303,7 @@ void c2_ae_event(struct c2_dev *c2dev, u32 mq_index)
 
 	case C2_RES_IND_CQ:{
 		struct c2_cq *cq =
-		    (struct c2_cq *) resource_user_context;
+		    resource_user_context;
 
 		pr_debug("IB_EVENT_CQ_ERR\n");
 		ib_event.device = &c2dev->ibdev;
diff --git a/drivers/staging/rdma/amso1100/c2_intr.c b/drivers/staging/rdma/amso1100/c2_intr.c
index 3a17d9b..74b32a9 100644
--- a/drivers/staging/rdma/amso1100/c2_intr.c
+++ b/drivers/staging/rdma/amso1100/c2_intr.c
@@ -122,7 +122,7 @@ static void handle_vq(struct c2_dev *c2dev, u32 mq_index)
 	struct iw_cm_event cm_event;
 	int err;
 
-	reply_vq = (struct c2_mq *) c2dev->qptr_array[mq_index];
+	reply_vq = c2dev->qptr_array[mq_index];
 
 	/*
 	 * get next msg from mq_index into adapter_msg.
-- 
2.1.4


