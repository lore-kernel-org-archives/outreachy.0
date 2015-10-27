X-GM-THRID: 6210088605629546496
X-Received: by 10.66.255.3 with SMTP id am3mr19773354pad.30.1445936565885;
        Tue, 27 Oct 2015 02:02:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.41 with SMTP id w38ls4219911qgw.0.gmail; Tue, 27 Oct
 2015 02:02:45 -0700 (PDT)
X-Received: by 10.129.83.10 with SMTP id h10mr33942575ywb.6.1445936565279;
        Tue, 27 Oct 2015 02:02:45 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id vy6si3977951pbc.1.2015.10.27.02.02.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:02:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hk11so216792454pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=VDzawlZv18NmvEpkI9LHUhhjeVsRTmbj265gwBINmo8=;
        b=bLSBDDGdyTqo0bTFnaK8bIALpQe0wDph4Yx88OxWisdd7uDe7UrEcVrrJj7BbKdOW/
         7ntVewaMkcn3X7I2PaN6qoPtwVTEBVEvXsixDyhmywkiiYsNJ8+QybqR8yPnDRLlgwFc
         LuMkgzWhqmUNq9UCr7UCgouc9p1jnw6l9USk60qwLj+Ss06Wxg8tywsrm1hsOIeI4/+k
         LqGF8n04FZ3AS0PRY+X/Mh78x/J6B9fLgzIvw6CrvRtjnyUFTm7ajedKNDZAUyIuPpwZ
         ntV3cojbTAvr3ZZaKNIIRXtP8rplQVeWx3mPhQul4j6eedrZzEH3+rmjgRg5kKonAR/M
         FSkQ==
X-Received: by 10.67.4.65 with SMTP id cc1mr26840716pad.141.1445936565163;
        Tue, 27 Oct 2015 02:02:45 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ug4sm38449721pac.11.2015.10.27.02.02.44
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:02:44 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:32:49 +0530
From: SirnamSwetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 7/8] Staging: rdma ipath: No space is necessary after a cast
Message-ID: <aa2b873ac5b74e66352444186e183496ade4fa28.1445936145.git.theonly.ultimate@gmail.com>
References: <cover.1445936143.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445936143.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the issue:

CHECK: No space is necessary after a cast

Signed-off-by: SirnamSwetha <theonly.ultimate@gmail.com>
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


