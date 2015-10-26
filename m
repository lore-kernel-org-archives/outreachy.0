X-GM-THRID: 6210088605629546496
X-Received: by 10.140.221.70 with SMTP id r67mr4812948qhb.14.1445899105782;
        Mon, 26 Oct 2015 15:38:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.163.1 with SMTP id ye1ls1364519obb.63.gmail; Mon, 26 Oct
 2015 15:38:25 -0700 (PDT)
X-Received: by 10.182.126.47 with SMTP id mv15mr34406495obb.44.1445899105401;
        Mon, 26 Oct 2015 15:38:25 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si3772839pbb.0.2015.10.26.15.38.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:38:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hk11so200851788pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=qdG/bpIE9wSUH6KVYALQ7v92FyNM1ElFsYezCNCc0GM=;
        b=PZRyf3ISRIaA5Bomz/7BY6TlKzAuUprWovQcbIa+Bju8al3VCF9m6Fo74FiRc7EOp7
         NiXCWo1UegaHBpT6m098bEKocSlyZ01RZp75PYsA4i0savRPy8V3/UzPPLyJd/yEsPJI
         K5BtCWQ49x1nK03dniIJCI3KP/HNNVH7sQo5vk71rqGihxFa09TS6zFdHB3AisXuHX0Y
         GQ9kdVONsQVcx7RtrR7PcXt2dfDDdfgX5r6vP9Pulfx4UN+5pBiXHlR0dYfAXzu19EO8
         /tZ0xB5l1o2QkgD4Mt+ameboJybn1YBl86WGmyxntqwXnFiXcfworjm+NkkQ8bH9PEv8
         XQUg==
X-Received: by 10.66.246.162 with SMTP id xx2mr43052251pac.144.1445899105308;
        Mon, 26 Oct 2015 15:38:25 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id pk2sm35778995pbb.21.2015.10.26.15.38.24
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 15:38:24 -0700 (PDT)
Date: Tue, 27 Oct 2015 04:08:29 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 7/8] Staging: rdma ipath: No space is necessary after a cast
Message-ID: <aa2b873ac5b74e66352444186e183496ade4fa28.1445898782.git.theonly.ultimate@gmail.com>
References: <cover.1445898781.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445898781.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the issue:

CHECK: No space is necessary after a cast

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_cq.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rdma/ipath/ipath_cq.c b/drivers/staging/rdma/ipath/ipath_cq.c
index e9dd911..071de3c 100644
--- a/drivers/staging/rdma/ipath/ipath_cq.c
+++ b/drivers/staging/rdma/ipath/ipath_cq.c
@@ -60,7 +60,7 @@ void ipath_cq_enter(struct ipath_cq *cq, struct ib_wc *entry, int solicited)
 	 */
 	wc = cq->queue;
 	head = wc->head;
-	if (head >= (unsigned) cq->ibcq.cqe) {
+	if (head >= (unsigned)cq->ibcq.cqe) {
 		head = cq->ibcq.cqe;
 		next = 0;
 	} else
@@ -83,7 +83,7 @@ void ipath_cq_enter(struct ipath_cq *cq, struct ib_wc *entry, int solicited)
 		wc->uqueue[head].opcode = entry->opcode;
 		wc->uqueue[head].vendor_err = entry->vendor_err;
 		wc->uqueue[head].byte_len = entry->byte_len;
-		wc->uqueue[head].ex.imm_data = (__u32 __force) entry->ex.imm_data;
+		wc->uqueue[head].ex.imm_data = (__u32 __force)entry->ex.imm_data;
 		wc->uqueue[head].qp_num = entry->qp->qp_num;
 		wc->uqueue[head].src_qp = entry->src_qp;
 		wc->uqueue[head].wc_flags = entry->wc_flags;
@@ -144,8 +144,8 @@ int ipath_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *entry)
 
 	wc = cq->queue;
 	tail = wc->tail;
-	if (tail > (u32) cq->ibcq.cqe)
-		tail = (u32) cq->ibcq.cqe;
+	if (tail > (u32)cq->ibcq.cqe)
+		tail = (u32)cq->ibcq.cqe;
 	for (npolled = 0; npolled < num_entries; ++npolled, ++entry) {
 		if (tail == wc->head)
 			break;
@@ -417,11 +417,11 @@ int ipath_resize_cq(struct ib_cq *ibcq, int cqe, struct ib_udata *udata)
 	 */
 	old_wc = cq->queue;
 	head = old_wc->head;
-	if (head > (u32) cq->ibcq.cqe)
-		head = (u32) cq->ibcq.cqe;
+	if (head > (u32)cq->ibcq.cqe)
+		head = (u32)cq->ibcq.cqe;
 	tail = old_wc->tail;
-	if (tail > (u32) cq->ibcq.cqe)
-		tail = (u32) cq->ibcq.cqe;
+	if (tail > (u32)cq->ibcq.cqe)
+		tail = (u32)cq->ibcq.cqe;
 	if (head < tail)
 		n = cq->ibcq.cqe + 1 + head - tail;
 	else
@@ -435,7 +435,7 @@ int ipath_resize_cq(struct ib_cq *ibcq, int cqe, struct ib_udata *udata)
 			wc->uqueue[n] = old_wc->uqueue[tail];
 		else
 			wc->kqueue[n] = old_wc->kqueue[tail];
-		if (tail == (u32) cq->ibcq.cqe)
+		if (tail == (u32)cq->ibcq.cqe)
 			tail = 0;
 		else
 			tail++;
-- 
1.9.1


