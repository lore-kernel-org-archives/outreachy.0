X-GM-THRID: 6203875551364513792
X-Received: by 10.129.39.214 with SMTP id n205mr21444283ywn.4.1444685323791;
        Mon, 12 Oct 2015 14:28:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.198 with SMTP id q189ls436203ioe.98.gmail; Mon, 12 Oct
 2015 14:28:43 -0700 (PDT)
X-Received: by 10.68.138.132 with SMTP id qq4mr25939836pbb.11.1444685323069;
        Mon, 12 Oct 2015 14:28:43 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id wl2si1590567pab.1.2015.10.12.14.28.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 14:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy16so163465398pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 14:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=+s0PEJwEQN1NGKEzEKQawIDokrVHdvRIHWqbC5kEAHg=;
        b=JOiL/mQO7dZ0cKJcB3Bor8++om0E2TwfTP7/WsgxWgHvqY30KOUccTMZ01bN7d3VOG
         LyJXRDTsbWw2kFN/Rb/cwGW5ozu/QmCeJS1Q4WAYXLI/IkiZlb9RTLHgIdaORnO80/vS
         Un/x32/Q/heV2xzVxP2e0NcXxXiw2k+DPWCra5w/mA22bHcEiSamXKUzolDLGfqt03kN
         dLpgEKZ+k1cKVoNXebACl2Be0CTLsiG4h5Y7O43LkzGyC4IAVE4fAghLvlQDoCVqP5Do
         G3GkeNLN2N7KxRBdZaaD3DW6iRlYJNZB6Y/vbyOKFA+SmY+Hb7iYGsrJZmSMCEqQTy/O
         gEFg==
X-Received: by 10.68.216.135 with SMTP id oq7mr28685205pbc.9.1444685322953;
        Mon, 12 Oct 2015 14:28:42 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id gv1sm20077271pbc.38.2015.10.12.14.28.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 14:28:42 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rdma: hfi1: remove unnecessary out of memory messages
Date: Mon, 12 Oct 2015 14:28:36 -0700
Message-Id: <1444685316-11747-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20151010044521.GA27086@Ubuntu-D830>
References: <20151010044521.GA27086@Ubuntu-D830>

Out of memory messages are unnecssary in the drivers as they are
reported by memory management.

Addresses checkpatch.pl: WARNING: Possible unnecessary 'out of memory' message

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---

Change in v2: remove trailing whitespace

 drivers/staging/rdma/hfi1/chip.c      |  1 -
 drivers/staging/rdma/hfi1/init.c      | 11 ++---------
 drivers/staging/rdma/hfi1/pio.c       |  7 +------
 drivers/staging/rdma/hfi1/user_sdma.c | 27 +++++++--------------------
 4 files changed, 10 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
index aa58e59..1152359 100644
--- a/drivers/staging/rdma/hfi1/chip.c
+++ b/drivers/staging/rdma/hfi1/chip.c
@@ -8991,7 +8991,6 @@ static int set_up_interrupts(struct hfi1_devdata *dd)
 
 	entries = kcalloc(total, sizeof(*entries), GFP_KERNEL);
 	if (!entries) {
-		dd_dev_err(dd, "cannot allocate msix table\n");
 		ret = -ENOMEM;
 		goto fail;
 	}
diff --git a/drivers/staging/rdma/hfi1/init.c b/drivers/staging/rdma/hfi1/init.c
index a877eda..1fe20ff 100644
--- a/drivers/staging/rdma/hfi1/init.c
+++ b/drivers/staging/rdma/hfi1/init.c
@@ -134,11 +134,8 @@ int hfi1_create_ctxts(struct hfi1_devdata *dd)
 	dd->assigned_node_id = local_node_id;
 
 	dd->rcd = kcalloc(dd->num_rcv_contexts, sizeof(*dd->rcd), GFP_KERNEL);
-	if (!dd->rcd) {
-		dd_dev_err(dd,
-			"Unable to allocate receive context array, failing\n");
+	if (!dd->rcd)
 		goto nomem;
-	}
 
 	/* create one or more kernel contexts */
 	for (i = 0; i < dd->first_user_ctxt; ++i) {
@@ -318,12 +315,8 @@ struct hfi1_ctxtdata *hfi1_create_ctxtdata(struct hfi1_pportdata *ppd, u32 ctxt)
 		if (ctxt < dd->first_user_ctxt) { /* N/A for PSM contexts */
 			rcd->opstats = kzalloc(sizeof(*rcd->opstats),
 				GFP_KERNEL);
-			if (!rcd->opstats) {
-				dd_dev_err(dd,
-					   "ctxt%u: Unable to allocate per ctxt stats buffer\n",
-					   rcd->ctxt);
+			if (!rcd->opstats)
 				goto bail;
-			}
 		}
 	}
 	return rcd;
diff --git a/drivers/staging/rdma/hfi1/pio.c b/drivers/staging/rdma/hfi1/pio.c
index 9991814..67dd93a 100644
--- a/drivers/staging/rdma/hfi1/pio.c
+++ b/drivers/staging/rdma/hfi1/pio.c
@@ -435,7 +435,6 @@ int init_send_contexts(struct hfi1_devdata *dd)
 					sizeof(struct send_context_info),
 					GFP_KERNEL);
 	if (!dd->send_contexts || !dd->hw_to_sw) {
-		dd_dev_err(dd, "Unable to allocate send context arrays\n");
 		kfree(dd->hw_to_sw);
 		kfree(dd->send_contexts);
 		free_credit_return(dd);
@@ -684,10 +683,8 @@ struct send_context *sc_alloc(struct hfi1_devdata *dd, int type,
 		return NULL;
 
 	sc = kzalloc_node(sizeof(struct send_context), GFP_KERNEL, numa);
-	if (!sc) {
-		dd_dev_err(dd, "Cannot allocate send context structure\n");
+	if (!sc)
 		return NULL;
-	}
 
 	spin_lock_irqsave(&dd->sc_lock, flags);
 	ret = sc_hw_alloc(dd, type, &sw_index, &hw_context);
@@ -813,8 +810,6 @@ struct send_context *sc_alloc(struct hfi1_devdata *dd, int type,
 		sc->sr = kzalloc_node(sizeof(union pio_shadow_ring) *
 				sc->sr_size, GFP_KERNEL, numa);
 		if (!sc->sr) {
-			dd_dev_err(dd,
-				"Cannot allocate send context shadow ring structure\n");
 			sc_free(sc);
 			return NULL;
 		}
diff --git a/drivers/staging/rdma/hfi1/user_sdma.c b/drivers/staging/rdma/hfi1/user_sdma.c
index 6620262..e59a52e 100644
--- a/drivers/staging/rdma/hfi1/user_sdma.c
+++ b/drivers/staging/rdma/hfi1/user_sdma.c
@@ -378,20 +378,14 @@ int hfi1_user_sdma_alloc_queues(struct hfi1_ctxtdata *uctxt, struct file *fp)
 	dd = uctxt->dd;
 
 	pq = kzalloc(sizeof(*pq), GFP_KERNEL);
-	if (!pq) {
-		dd_dev_err(dd,
-			   "[%u:%u] Failed to allocate SDMA request struct\n",
-			   uctxt->ctxt, subctxt_fp(fp));
+	if (!pq)
 		goto pq_nomem;
-	}
+
 	memsize = sizeof(*pq->reqs) * hfi1_sdma_comp_ring_size;
 	pq->reqs = kmalloc(memsize, GFP_KERNEL);
-	if (!pq->reqs) {
-		dd_dev_err(dd,
-			   "[%u:%u] Failed to allocate SDMA request queue (%u)\n",
-			   uctxt->ctxt, subctxt_fp(fp), memsize);
+	if (!pq->reqs)
 		goto pq_reqs_nomem;
-	}
+
 	INIT_LIST_HEAD(&pq->list);
 	pq->dd = dd;
 	pq->ctxt = uctxt->ctxt;
@@ -417,22 +411,15 @@ int hfi1_user_sdma_alloc_queues(struct hfi1_ctxtdata *uctxt, struct file *fp)
 	}
 	user_sdma_pkt_fp(fp) = pq;
 	cq = kzalloc(sizeof(*cq), GFP_KERNEL);
-	if (!cq) {
-		dd_dev_err(dd,
-			   "[%u:%u] Failed to allocate SDMA completion queue\n",
-			   uctxt->ctxt, subctxt_fp(fp));
+	if (!cq)
 		goto cq_nomem;
-	}
 
 	memsize = ALIGN(sizeof(*cq->comps) * hfi1_sdma_comp_ring_size,
 			PAGE_SIZE);
 	cq->comps = vmalloc_user(memsize);
-	if (!cq->comps) {
-		dd_dev_err(dd,
-		      "[%u:%u] Failed to allocate SDMA completion queue entries\n",
-		      uctxt->ctxt, subctxt_fp(fp));
+	if (!cq->comps)
 		goto cq_comps_nomem;
-	}
+
 	cq->nentries = hfi1_sdma_comp_ring_size;
 	user_sdma_comp_fp(fp) = cq;
 
-- 
2.1.4


