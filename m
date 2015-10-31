X-GM-THRID: 6211907924193705984
X-Received: by 10.66.122.201 with SMTP id lu9mr11385459pab.8.1446322520778;
        Sat, 31 Oct 2015 13:15:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.4 with SMTP id rs4ls662313obb.23.gmail; Sat, 31 Oct
 2015 13:15:20 -0700 (PDT)
X-Received: by 10.182.233.229 with SMTP id tz5mr11741499obc.26.1446322520261;
        Sat, 31 Oct 2015 13:15:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id fa8si1255567pab.1.2015.10.31.13.15.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 13:15:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fv9so110801330pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 13:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=G6B39qeuvibI3JQ9U/VNU6hOat1UBolO545rP0wmpTg=;
        b=tWoJ5UM531xGx7QmcZY/QpVn429lQow5Pnlk8UPp0iBJKOoVMD69YiHaOBECTDzZj5
         F4TBd5a/VCznsLDUBgRNtL5hgZ1hEGp9Xca9hsRYSrbHOQfds+5RbseeMiFQS+p6EZfP
         OofSbIPs+qREL/sMZ3qvQ09TUptw9devtttbR1bdu+ZZcCjDAFe9y2Yl+/LtHAB+iZ4c
         ery1T5B+p78zP0tZSgYnncLm7ZYpqTLNhwHnZghvCH9SmiHOFaGMfLjZHoOb+r6SFBnJ
         kHikMVH/9SW9WEZCrv6fY08QoSz216MjwHqo/1jDpAdghv7Dz2EbFtUToBf2p74JAoCu
         v0Vg==
X-Received: by 10.66.156.135 with SMTP id we7mr13617114pab.89.1446322519919;
        Sat, 31 Oct 2015 13:15:19 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.213.28])
        by smtp.gmail.com with ESMTPSA id j16sm15359150pbq.23.2015.10.31.13.15.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 13:15:19 -0700 (PDT)
Date: Sun, 1 Nov 2015 01:45:13 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: amso1100: Remove extern from function
 declarations
Message-ID: <20151031201513.GA9835@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Functions have the extern specifier by default, so this keyword can be
removed.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/amso1100/c2.h    | 80 +++++++++++++++++------------------
 drivers/staging/rdma/amso1100/c2_mq.h | 14 +++---
 drivers/staging/rdma/amso1100/c2_vq.h | 20 ++++-----
 3 files changed, 57 insertions(+), 57 deletions(-)

diff --git a/drivers/staging/rdma/amso1100/c2.h b/drivers/staging/rdma/amso1100/c2.h
index d619d73..21b565a 100644
--- a/drivers/staging/rdma/amso1100/c2.h
+++ b/drivers/staging/rdma/amso1100/c2.h
@@ -476,72 +476,72 @@ static inline int c2_errno(void *reply)
 }
 
 /* Device */
-extern int c2_register_device(struct c2_dev *c2dev);
-extern void c2_unregister_device(struct c2_dev *c2dev);
-extern int c2_rnic_init(struct c2_dev *c2dev);
-extern void c2_rnic_term(struct c2_dev *c2dev);
-extern void c2_rnic_interrupt(struct c2_dev *c2dev);
-extern int c2_del_addr(struct c2_dev *c2dev, __be32 inaddr, __be32 inmask);
-extern int c2_add_addr(struct c2_dev *c2dev, __be32 inaddr, __be32 inmask);
+int c2_register_device(struct c2_dev *c2dev);
+void c2_unregister_device(struct c2_dev *c2dev);
+int c2_rnic_init(struct c2_dev *c2dev);
+void c2_rnic_term(struct c2_dev *c2dev);
+void c2_rnic_interrupt(struct c2_dev *c2dev);
+int c2_del_addr(struct c2_dev *c2dev, __be32 inaddr, __be32 inmask);
+int c2_add_addr(struct c2_dev *c2dev, __be32 inaddr, __be32 inmask);
 
 /* QPs */
-extern int c2_alloc_qp(struct c2_dev *c2dev, struct c2_pd *pd,
+int c2_alloc_qp(struct c2_dev *c2dev, struct c2_pd *pd,
 		       struct ib_qp_init_attr *qp_attrs, struct c2_qp *qp);
-extern void c2_free_qp(struct c2_dev *c2dev, struct c2_qp *qp);
-extern struct ib_qp *c2_get_qp(struct ib_device *device, int qpn);
-extern int c2_qp_modify(struct c2_dev *c2dev, struct c2_qp *qp,
+void c2_free_qp(struct c2_dev *c2dev, struct c2_qp *qp);
+struct ib_qp *c2_get_qp(struct ib_device *device, int qpn);
+int c2_qp_modify(struct c2_dev *c2dev, struct c2_qp *qp,
 			struct ib_qp_attr *attr, int attr_mask);
-extern int c2_qp_set_read_limits(struct c2_dev *c2dev, struct c2_qp *qp,
+int c2_qp_set_read_limits(struct c2_dev *c2dev, struct c2_qp *qp,
 				 int ord, int ird);
-extern int c2_post_send(struct ib_qp *ibqp, struct ib_send_wr *ib_wr,
+int c2_post_send(struct ib_qp *ibqp, struct ib_send_wr *ib_wr,
 			struct ib_send_wr **bad_wr);
-extern int c2_post_receive(struct ib_qp *ibqp, struct ib_recv_wr *ib_wr,
+int c2_post_receive(struct ib_qp *ibqp, struct ib_recv_wr *ib_wr,
 			   struct ib_recv_wr **bad_wr);
-extern void c2_init_qp_table(struct c2_dev *c2dev);
-extern void c2_cleanup_qp_table(struct c2_dev *c2dev);
-extern void c2_set_qp_state(struct c2_qp *, int);
-extern struct c2_qp *c2_find_qpn(struct c2_dev *c2dev, int qpn);
+void c2_init_qp_table(struct c2_dev *c2dev);
+void c2_cleanup_qp_table(struct c2_dev *c2dev);
+void c2_set_qp_state(struct c2_qp *, int);
+struct c2_qp *c2_find_qpn(struct c2_dev *c2dev, int qpn);
 
 /* PDs */
-extern int c2_pd_alloc(struct c2_dev *c2dev, int privileged, struct c2_pd *pd);
-extern void c2_pd_free(struct c2_dev *c2dev, struct c2_pd *pd);
-extern int c2_init_pd_table(struct c2_dev *c2dev);
-extern void c2_cleanup_pd_table(struct c2_dev *c2dev);
+int c2_pd_alloc(struct c2_dev *c2dev, int privileged, struct c2_pd *pd);
+void c2_pd_free(struct c2_dev *c2dev, struct c2_pd *pd);
+int c2_init_pd_table(struct c2_dev *c2dev);
+void c2_cleanup_pd_table(struct c2_dev *c2dev);
 
 /* CQs */
-extern int c2_init_cq(struct c2_dev *c2dev, int entries,
+int c2_init_cq(struct c2_dev *c2dev, int entries,
 		      struct c2_ucontext *ctx, struct c2_cq *cq);
-extern void c2_free_cq(struct c2_dev *c2dev, struct c2_cq *cq);
-extern void c2_cq_event(struct c2_dev *c2dev, u32 mq_index);
-extern void c2_cq_clean(struct c2_dev *c2dev, struct c2_qp *qp, u32 mq_index);
-extern int c2_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *entry);
-extern int c2_arm_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags flags);
+void c2_free_cq(struct c2_dev *c2dev, struct c2_cq *cq);
+void c2_cq_event(struct c2_dev *c2dev, u32 mq_index);
+void c2_cq_clean(struct c2_dev *c2dev, struct c2_qp *qp, u32 mq_index);
+int c2_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *entry);
+int c2_arm_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags flags);
 
 /* CM */
-extern int c2_llp_connect(struct iw_cm_id *cm_id,
+int c2_llp_connect(struct iw_cm_id *cm_id,
 			  struct iw_cm_conn_param *iw_param);
-extern int c2_llp_accept(struct iw_cm_id *cm_id,
+int c2_llp_accept(struct iw_cm_id *cm_id,
 			 struct iw_cm_conn_param *iw_param);
-extern int c2_llp_reject(struct iw_cm_id *cm_id, const void *pdata,
+int c2_llp_reject(struct iw_cm_id *cm_id, const void *pdata,
 			 u8 pdata_len);
-extern int c2_llp_service_create(struct iw_cm_id *cm_id, int backlog);
-extern int c2_llp_service_destroy(struct iw_cm_id *cm_id);
+int c2_llp_service_create(struct iw_cm_id *cm_id, int backlog);
+int c2_llp_service_destroy(struct iw_cm_id *cm_id);
 
 /* MM */
-extern int c2_nsmr_register_phys_kern(struct c2_dev *c2dev, u64 *addr_list,
+int c2_nsmr_register_phys_kern(struct c2_dev *c2dev, u64 *addr_list,
  				      int page_size, int pbl_depth, u32 length,
  				      u32 off, u64 *va, enum c2_acf acf,
 				      struct c2_mr *mr);
-extern int c2_stag_dealloc(struct c2_dev *c2dev, u32 stag_index);
+int c2_stag_dealloc(struct c2_dev *c2dev, u32 stag_index);
 
 /* AE */
-extern void c2_ae_event(struct c2_dev *c2dev, u32 mq_index);
+void c2_ae_event(struct c2_dev *c2dev, u32 mq_index);
 
 /* MQSP Allocator */
-extern int c2_init_mqsp_pool(struct c2_dev *c2dev, gfp_t gfp_mask,
+int c2_init_mqsp_pool(struct c2_dev *c2dev, gfp_t gfp_mask,
 			     struct sp_chunk **root);
-extern void c2_free_mqsp_pool(struct c2_dev *c2dev, struct sp_chunk *root);
-extern __be16 *c2_alloc_mqsp(struct c2_dev *c2dev, struct sp_chunk *head,
+void c2_free_mqsp_pool(struct c2_dev *c2dev, struct sp_chunk *root);
+__be16 *c2_alloc_mqsp(struct c2_dev *c2dev, struct sp_chunk *head,
 			     dma_addr_t *dma_addr, gfp_t gfp_mask);
-extern void c2_free_mqsp(__be16* mqsp);
+void c2_free_mqsp(__be16* mqsp);
 #endif
diff --git a/drivers/staging/rdma/amso1100/c2_mq.h b/drivers/staging/rdma/amso1100/c2_mq.h
index fc1b9a7..8e1b4d1 100644
--- a/drivers/staging/rdma/amso1100/c2_mq.h
+++ b/drivers/staging/rdma/amso1100/c2_mq.h
@@ -93,14 +93,14 @@ static __inline__ int c2_mq_full(struct c2_mq *q)
 	return q->priv == (be16_to_cpu(*q->shared) + q->q_size - 1) % q->q_size;
 }
 
-extern void c2_mq_lconsume(struct c2_mq *q, u32 wqe_count);
-extern void *c2_mq_alloc(struct c2_mq *q);
-extern void c2_mq_produce(struct c2_mq *q);
-extern void *c2_mq_consume(struct c2_mq *q);
-extern void c2_mq_free(struct c2_mq *q);
-extern void c2_mq_req_init(struct c2_mq *q, u32 index, u32 q_size, u32 msg_size,
+void c2_mq_lconsume(struct c2_mq *q, u32 wqe_count);
+void *c2_mq_alloc(struct c2_mq *q);
+void c2_mq_produce(struct c2_mq *q);
+void *c2_mq_consume(struct c2_mq *q);
+void c2_mq_free(struct c2_mq *q);
+void c2_mq_req_init(struct c2_mq *q, u32 index, u32 q_size, u32 msg_size,
 		       u8 __iomem *pool_start, u16 __iomem *peer, u32 type);
-extern void c2_mq_rep_init(struct c2_mq *q, u32 index, u32 q_size, u32 msg_size,
+void c2_mq_rep_init(struct c2_mq *q, u32 index, u32 q_size, u32 msg_size,
 			   u8 *pool_start, u16 __iomem *peer, u32 type);
 
 #endif				/* _C2_MQ_H_ */
diff --git a/drivers/staging/rdma/amso1100/c2_vq.h b/drivers/staging/rdma/amso1100/c2_vq.h
index 3380562..c1f6cef 100644
--- a/drivers/staging/rdma/amso1100/c2_vq.h
+++ b/drivers/staging/rdma/amso1100/c2_vq.h
@@ -47,17 +47,17 @@ struct c2_vq_req {
 	struct c2_qp *qp;
 };
 
-extern int vq_init(struct c2_dev *c2dev);
-extern void vq_term(struct c2_dev *c2dev);
+int vq_init(struct c2_dev *c2dev);
+void vq_term(struct c2_dev *c2dev);
 
-extern struct c2_vq_req *vq_req_alloc(struct c2_dev *c2dev);
-extern void vq_req_free(struct c2_dev *c2dev, struct c2_vq_req *req);
-extern void vq_req_get(struct c2_dev *c2dev, struct c2_vq_req *req);
-extern void vq_req_put(struct c2_dev *c2dev, struct c2_vq_req *req);
-extern int vq_send_wr(struct c2_dev *c2dev, union c2wr * wr);
+struct c2_vq_req *vq_req_alloc(struct c2_dev *c2dev);
+void vq_req_free(struct c2_dev *c2dev, struct c2_vq_req *req);
+void vq_req_get(struct c2_dev *c2dev, struct c2_vq_req *req);
+void vq_req_put(struct c2_dev *c2dev, struct c2_vq_req *req);
+int vq_send_wr(struct c2_dev *c2dev, union c2wr * wr);
 
-extern void *vq_repbuf_alloc(struct c2_dev *c2dev);
-extern void vq_repbuf_free(struct c2_dev *c2dev, void *reply);
+void *vq_repbuf_alloc(struct c2_dev *c2dev);
+void vq_repbuf_free(struct c2_dev *c2dev, void *reply);
 
-extern int vq_wait_for_reply(struct c2_dev *c2dev, struct c2_vq_req *req);
+int vq_wait_for_reply(struct c2_dev *c2dev, struct c2_vq_req *req);
 #endif				/* _C2_VQ_H_ */
-- 
1.9.1


