X-GM-THRID: 6203875551364513792
X-Received: by 10.182.44.228 with SMTP id h4mr14176596obm.5.1444452337297;
        Fri, 09 Oct 2015 21:45:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.208 with SMTP id c74ls1669074qgd.66.gmail; Fri, 09 Oct
 2015 21:45:35 -0700 (PDT)
X-Received: by 10.13.203.76 with SMTP id n73mr14002339ywd.15.1444452335829;
        Fri, 09 Oct 2015 21:45:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si540821pbb.0.2015.10.09.21.45.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 21:45:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy16so104121620pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 21:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nbWhNDgzT5PZqdudaiKIczEzwDyK9aw6/XlKvSGeeHw=;
        b=eS0zxxLLpZ3wcmYtyLb+Fcj83N22RcDarv+nlDtyTrXrfn6A1YcHnqZ4NNEQD7fJg0
         169zmO3KxPf5g8NKn0GMj+zlRL3UJnjWnIeXUrFwjMlLhBZk1+AxzyS4L2UQoCT5RhgH
         KICNqwTK2kChIEYXs3Y/9lPxLfkFV6Bu3/83Crjpj70T1cPeWAZTiDfwNnqEDCQFBGqv
         6cQ1ArRRungO7ZTd5UircU1DeIukWfZO0R7B4T8GKbjbJLrM3pMJ5PI4p9qLMf1wWAGu
         yzlc0fQZACt3Du+xBcxBxFUz9rx+QsQcQBtdxobaU2ufUcAKbHPCDRvw1iTpYu0khwdP
         2mUQ==
X-Received: by 10.68.219.4 with SMTP id pk4mr20091617pbc.138.1444452335698;
        Fri, 09 Oct 2015 21:45:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id of1sm5529735pbc.11.2015.10.09.21.45.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 21:45:35 -0700 (PDT)
Date: Fri, 9 Oct 2015 21:45:34 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: remove unnecessary 'out of memory'
 messages
Message-ID: <20151010044521.GA27086@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

'Out of memory' messages are unnecssary in the drivers as they are
reported by memory management.

Addresses checkpatch.pl: WARNING: Possible unnecessary 'out of memory' message

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
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
index 6620262..b20cbb9 100644
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


