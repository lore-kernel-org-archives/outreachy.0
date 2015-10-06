X-GM-THRID: 6202450492708093952
X-Received: by 10.180.91.233 with SMTP id ch9mr905381wib.4.1444120540580;
        Tue, 06 Oct 2015 01:35:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.73 with SMTP id v9ls1010798wiz.9.gmail; Tue, 06 Oct
 2015 01:35:40 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr3054185wic.4.1444120540193;
        Tue, 06 Oct 2015 01:35:40 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id c1si501026wiv.3.2015.10.06.01.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 01:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id fx3so154009032wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 01:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eI3uYgwlbKxT9u/TM7P5BC2juocRpDs6cHz+jhE/d9I=;
        b=0kBQu+teKE2YBatlqIU6zmvaPiOIHfZUsVYlVF3jFMOM/b87IkaD0OV9g3swMhcDeO
         HwXhvQQZzZtDL2kesZdL1pqVtT3fdapKqCU676rjXEb+BhHpfYzTsDl3PQn/WI9MEZ6B
         JK1eNK2SrFpTUNxw41WCN7pZG5N05ehTWunc77LRLY0w+Kwub2BZDh4AjArM9Bunvbh0
         dF8SJ2SmJhdH74b5FzgXMkW3aDfYE2nm1juGroBUaeT6aXK1i376oFaccHqgLrFBCw+v
         di3tAzs6JZOTpU3xp0zoR/xcutqZefVDrEgCRJQS7CHFAqlS9DJ8AZ3o3E6xkriiYVeN
         cCkQ==
X-Received: by 10.194.123.2 with SMTP id lw2mr40533826wjb.48.1444120540006;
        Tue, 06 Oct 2015 01:35:40 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([109.166.128.3])
        by smtp.gmail.com with ESMTPSA id r6sm3673004wia.0.2015.10.06.01.35.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 01:35:39 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: rdma: amso1100: remove label indentation
Date: Tue,  6 Oct 2015 11:35:19 +0300
Message-Id: <1444120519-30849-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

Remove label indentation to follow kernel coding style

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/rdma/amso1100/c2.c      |  4 ++--
 drivers/staging/rdma/amso1100/c2_cq.c   | 12 ++++++------
 drivers/staging/rdma/amso1100/c2_mm.c   | 10 +++++-----
 drivers/staging/rdma/amso1100/c2_qp.c   | 20 ++++++++++----------
 drivers/staging/rdma/amso1100/c2_rnic.c | 28 ++++++++++++++--------------
 5 files changed, 37 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/rdma/amso1100/c2.c b/drivers/staging/rdma/amso1100/c2.c
index 766a71c..7f1e794 100644
--- a/drivers/staging/rdma/amso1100/c2.c
+++ b/drivers/staging/rdma/amso1100/c2.c
@@ -675,11 +675,11 @@ static int c2_up(struct net_device *netdev)
 
 	return 0;
 
-      bail1:
+bail1:
 	c2_rx_clean(c2_port);
 	kfree(c2_port->rx_ring.start);
 
-      bail0:
+bail0:
 	pci_free_consistent(c2dev->pcidev, c2_port->mem_size, c2_port->mem,
 			    c2_port->dma);
 
diff --git a/drivers/staging/rdma/amso1100/c2_cq.c b/drivers/staging/rdma/amso1100/c2_cq.c
index 1b63185..3ef881f 100644
--- a/drivers/staging/rdma/amso1100/c2_cq.c
+++ b/drivers/staging/rdma/amso1100/c2_cq.c
@@ -374,13 +374,13 @@ int c2_init_cq(struct c2_dev *c2dev, int entries,
 
 	return 0;
 
-      bail3:
+bail3:
 	vq_repbuf_free(c2dev, reply);
-      bail2:
+bail2:
 	vq_req_free(c2dev, vq_req);
-      bail1:
+bail1:
 	c2_free_cq_buf(c2dev, &cq->mq);
-      bail0:
+bail0:
 	c2_free_mqsp(cq->mq.shared);
 
 	return err;
@@ -429,9 +429,9 @@ void c2_free_cq(struct c2_dev *c2dev, struct c2_cq *cq)
 	reply = (struct c2wr_cq_destroy_rep *) (unsigned long) (vq_req->reply_msg);
 	if (reply)
 		vq_repbuf_free(c2dev, reply);
-      bail1:
+bail1:
 	vq_req_free(c2dev, vq_req);
-      bail0:
+bail0:
 	if (cq->is_kernel) {
 		c2_free_cq_buf(c2dev, &cq->mq);
 	}
diff --git a/drivers/staging/rdma/amso1100/c2_mm.c b/drivers/staging/rdma/amso1100/c2_mm.c
index 119c4f3..25081e2 100644
--- a/drivers/staging/rdma/amso1100/c2_mm.c
+++ b/drivers/staging/rdma/amso1100/c2_mm.c
@@ -164,7 +164,7 @@ send_pbl_messages(struct c2_dev *c2dev, __be32 stag_index,
 	err = c2_errno(reply);
 
 	vq_repbuf_free(c2dev, reply);
-      bail0:
+bail0:
 	kfree(wr);
 	return err;
 }
@@ -304,11 +304,11 @@ c2_nsmr_register_phys_kern(struct c2_dev *c2dev, u64 *addr_list,
 
 	return err;
 
-      bail2:
+bail2:
 	vq_repbuf_free(c2dev, reply);
-      bail1:
+bail1:
 	kfree(wr);
-      bail0:
+bail0:
 	vq_req_free(c2dev, vq_req);
 	return err;
 }
@@ -371,7 +371,7 @@ int c2_stag_dealloc(struct c2_dev *c2dev, u32 stag_index)
 	err = c2_errno(reply);
 
 	vq_repbuf_free(c2dev, reply);
-      bail0:
+bail0:
 	vq_req_free(c2dev, vq_req);
 	return err;
 }
diff --git a/drivers/staging/rdma/amso1100/c2_qp.c b/drivers/staging/rdma/amso1100/c2_qp.c
index 86708de..e0a7aff 100644
--- a/drivers/staging/rdma/amso1100/c2_qp.c
+++ b/drivers/staging/rdma/amso1100/c2_qp.c
@@ -240,7 +240,7 @@ int c2_qp_modify(struct c2_dev *c2dev, struct c2_qp *qp,
 	spin_unlock_irqrestore(&qp->lock, flags);
 
 	vq_repbuf_free(c2dev, reply);
-      bail0:
+bail0:
 	vq_req_free(c2dev, vq_req);
 
 	pr_debug("%s:%d qp=%p, cur_state=%s\n",
@@ -294,7 +294,7 @@ int c2_qp_set_read_limits(struct c2_dev *c2dev, struct c2_qp *qp,
 
 	err = c2_errno(reply);
 	vq_repbuf_free(c2dev, reply);
-      bail0:
+bail0:
 	vq_req_free(c2dev, vq_req);
 	return err;
 }
@@ -373,7 +373,7 @@ static int destroy_qp(struct c2_dev *c2dev, struct c2_qp *qp)
 	spin_unlock_irqrestore(&qp->lock, flags);
 
 	vq_repbuf_free(c2dev, reply);
-      bail0:
+bail0:
 	vq_req_free(c2dev, vq_req);
 	return err;
 }
@@ -554,19 +554,19 @@ int c2_alloc_qp(struct c2_dev *c2dev,
 
 	return 0;
 
-      bail6:
+bail6:
 	iounmap(qp->sq_mq.peer);
-      bail5:
+bail5:
 	destroy_qp(c2dev, qp);
-      bail4:
+bail4:
 	vq_repbuf_free(c2dev, reply);
-      bail3:
+bail3:
 	vq_req_free(c2dev, vq_req);
-      bail2:
+bail2:
 	c2_free_mqsp(qp->rq_mq.shared);
-      bail1:
+bail1:
 	c2_free_mqsp(qp->sq_mq.shared);
-      bail0:
+bail0:
 	c2_free_qpn(c2dev, qp->qpn);
 	return err;
 }
diff --git a/drivers/staging/rdma/amso1100/c2_rnic.c b/drivers/staging/rdma/amso1100/c2_rnic.c
index d2a6d96..d3c0f77 100644
--- a/drivers/staging/rdma/amso1100/c2_rnic.c
+++ b/drivers/staging/rdma/amso1100/c2_rnic.c
@@ -261,9 +261,9 @@ int c2_add_addr(struct c2_dev *c2dev, __be32 inaddr, __be32 inmask)
 	err = c2_errno(reply);
 	vq_repbuf_free(c2dev, reply);
 
-      bail1:
+bail1:
 	kfree(wr);
-      bail0:
+bail0:
 	vq_req_free(c2dev, vq_req);
 	return err;
 }
@@ -323,9 +323,9 @@ int c2_del_addr(struct c2_dev *c2dev, __be32 inaddr, __be32 inmask)
 	err = c2_errno(reply);
 	vq_repbuf_free(c2dev, reply);
 
-      bail1:
+bail1:
 	kfree(wr);
-      bail0:
+bail0:
 	vq_req_free(c2dev, vq_req);
 	return err;
 }
@@ -378,9 +378,9 @@ static int c2_rnic_open(struct c2_dev *c2dev)
 
 	c2dev->adapter_handle = reply->rnic_handle;
 
-      bail1:
+bail1:
 	vq_repbuf_free(c2dev, reply);
-      bail0:
+bail0:
 	vq_req_free(c2dev, vq_req);
 	return err;
 }
@@ -430,9 +430,9 @@ static int c2_rnic_close(struct c2_dev *c2dev)
 
 	c2dev->adapter_handle = 0;
 
-      bail1:
+bail1:
 	vq_repbuf_free(c2dev, reply);
-      bail0:
+bail0:
 	vq_req_free(c2dev, vq_req);
 	return err;
 }
@@ -589,21 +589,21 @@ int c2_rnic_init(struct c2_dev *c2dev)
 	c2_init_qp_table(c2dev);
 	return 0;
 
-      bail5:
+bail5:
 	c2_rnic_close(c2dev);
-      bail4:
+bail4:
 	vq_term(c2dev);
-      bail3:
+bail3:
 	dma_free_coherent(&c2dev->pcidev->dev,
 			  c2dev->aeq.q_size * c2dev->aeq.msg_size,
 			  q2_pages, dma_unmap_addr(&c2dev->aeq, mapping));
-      bail2:
+bail2:
 	dma_free_coherent(&c2dev->pcidev->dev,
 			  c2dev->rep_vq.q_size * c2dev->rep_vq.msg_size,
 			  q1_pages, dma_unmap_addr(&c2dev->rep_vq, mapping));
-      bail1:
+bail1:
 	c2_free_mqsp_pool(c2dev, c2dev->kern_mqsp_pool);
-      bail0:
+bail0:
 	vfree(c2dev->qptr_array);
 
 	return err;
-- 
2.1.4


