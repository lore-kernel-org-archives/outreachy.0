X-GM-THRID: 6210088605629546496
X-Received: by 10.66.227.1 with SMTP id rw1mr17649592pac.31.1445899124804;
        Mon, 26 Oct 2015 15:38:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.118 with SMTP id i109ls3973385qgf.50.gmail; Mon, 26
 Oct 2015 15:38:44 -0700 (PDT)
X-Received: by 10.140.236.65 with SMTP id h62mr31959132qhc.13.1445899124278;
        Mon, 26 Oct 2015 15:38:44 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id vy6si3749936pbc.1.2015.10.26.15.38.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:38:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id z6so200498539pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=AoaSiY5zkIUrIP0Q0A/cMh6mInlPW8L1fWjZpcoQWFU=;
        b=eLnkLMz8QVKsvOAQEEYNQeoWOOryEy8tt0FIrMTvGPx8qLEcVLYm+fppFJrkcg82X0
         xq5CFzqLBJJYw8SySwQc6dt69Ul5Oh2ZQd7i7QA9I4/JQn23iNaApIquGObiONliUJ18
         iAoquPRwcq4vWNQWJBWunRV3Q/lUU2NC3ErAPIrMiz3eCx5pc2YR1GJVmP2THBvmVEsP
         0HQ6d2Gh+2zq2IqYd8lFKewgPqqHV6Oq5RrW4pGGW8UX5ZLvZh8vCFxlDXFuZPSnR5df
         KSgrqNoUcWIlbCuEml31fTg9mhTvQuFskRcT11YQ4E1CcKmvtmE0uWOfcLxfIUOuJ9UE
         zk+A==
X-Received: by 10.68.203.2 with SMTP id km2mr24126843pbc.155.1445899124159;
        Mon, 26 Oct 2015 15:38:44 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id pw7sm35805191pbc.4.2015.10.26.15.38.43
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 15:38:43 -0700 (PDT)
Date: Tue, 27 Oct 2015 04:08:48 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 8/8] Staging: rdma ipath: braces should be used on all arms
Message-ID: <a678fb2d681bb755289dead9c6d46daed2095d29.1445898782.git.theonly.ultimate@gmail.com>
References: <cover.1445898781.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445898781.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix all instances of the following checkpatch.pl check:

CHECK: braces {} should be used on all arms of this statement

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_cq.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rdma/ipath/ipath_cq.c b/drivers/staging/rdma/ipath/ipath_cq.c
index 071de3c..a676232 100644
--- a/drivers/staging/rdma/ipath/ipath_cq.c
+++ b/drivers/staging/rdma/ipath/ipath_cq.c
@@ -63,8 +63,9 @@ void ipath_cq_enter(struct ipath_cq *cq, struct ib_wc *entry, int solicited)
 	if (head >= (unsigned)cq->ibcq.cqe) {
 		head = cq->ibcq.cqe;
 		next = 0;
-	} else
+	} else {
 		next = head + 1;
+	}
 	if (unlikely(next == wc->tail)) {
 		spin_unlock_irqrestore(&cq->lock, flags);
 		if (cq->ibcq.event_handler) {
@@ -94,8 +95,9 @@ void ipath_cq_enter(struct ipath_cq *cq, struct ib_wc *entry, int solicited)
 		wc->uqueue[head].port_num = entry->port_num;
 		/* Make sure entry is written before the head index. */
 		smp_wmb();
-	} else
+	} else {
 		wc->kqueue[head] = *entry;
+	}
 	wc->head = next;
 
 	if (cq->notify == IB_CQ_NEXT_COMP ||
@@ -261,9 +263,9 @@ struct ib_cq *ipath_create_cq(struct ib_device *ibdev,
 			ret = ERR_PTR(err);
 			goto bail_ip;
 		}
-	} else
+	} else {
 		cq->ip = NULL;
-
+	}
 	spin_lock(&dev->n_cqs_lock);
 	if (dev->n_cqs_allocated == ib_ipath_max_cqs) {
 		spin_unlock(&dev->n_cqs_lock);
-- 
1.9.1


