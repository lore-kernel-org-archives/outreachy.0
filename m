X-GM-THRID: 6210088605629546496
X-Received: by 10.68.195.197 with SMTP id ig5mr19759702pbc.4.1445936591345;
        Tue, 27 Oct 2015 02:03:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.32 with SMTP id z32ls2236773ioi.54.gmail; Tue, 27 Oct
 2015 02:03:11 -0700 (PDT)
X-Received: by 10.107.136.19 with SMTP id k19mr10853387iod.5.1445936591101;
        Tue, 27 Oct 2015 02:03:11 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si4023023pbb.0.2015.10.27.02.03.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:03:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id fv9so226345032pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=DhnuDA9FFv5+8h/9k/Ci962AHhXmpnl4w2Xlxv+Fblo=;
        b=b5lpgWdFUpOEGaMYm6Kq3O4i81wxZqLY1Pn96zc3HMy0fx6gWAHR8chy61y6cPzz9B
         46iurkpW8H3Xko6KZDe3WuFCntq0SSFzZyITrHOQbf9uCbq8e434oGNYYsrOWMJ+WQIc
         CdvhxobW4fvZPhHarQvRGZCoH9zxXuOCSawHio9u0MDppxaB/yOQ81HiBPDHjubTafad
         gR8eNJJWuOAxevk8k5sOt/dc/tcqbmfO5TGVUtOHHEqDdJmVidVopKFied7/eEayfE77
         rWZRSbBWG839EPvU8fb/VF4ZpUEH4BiO45lskQJJUsUIB4n8zpGXVgccBqrRGtDmgGjK
         q9BA==
X-Received: by 10.66.55.66 with SMTP id q2mr26673955pap.109.1445936590966;
        Tue, 27 Oct 2015 02:03:10 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id dd4sm38336921pbb.52.2015.10.27.02.03.10
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:03:10 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:33:14 +0530
From: SirnamSwetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 8/8] Staging: rdma ipath: braces should be used on all arms
Message-ID: <a678fb2d681bb755289dead9c6d46daed2095d29.1445936145.git.theonly.ultimate@gmail.com>
References: <cover.1445936143.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445936143.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix all instances of the following checkpatch.pl check:

CHECK: braces {} should be used on all arms of this statement

Signed-off-by: SirnamSwetha <theonly.ultimate@gmail.com>
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


