X-GM-THRID: 6804214248261025792
X-Received: by 2002:adf:ed42:: with SMTP id u2mr21036920wro.226.1584229583361;
        Sat, 14 Mar 2020 16:46:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls3964900wme.3.gmail; Sat, 14
 Mar 2020 16:46:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuBVHTe6I/93mlVSgLC9/ZWap5atN6PZNDetMx5ZS6rNdk+cXKzL8hINeL6S0ShLq/DeND9
X-Received: by 2002:a1c:a70f:: with SMTP id q15mr18939869wme.66.1584229582288;
        Sat, 14 Mar 2020 16:46:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584229582; cv=none;
        d=google.com; s=arc-20160816;
        b=Vi65wqCe+APybRzgi22bJjWs+Ptkj5Vw2So7JKDnOA4oL9/qW2Ow6RtuVutg/ZoJH4
         CnTjFK5QaV3lsn7ITlr5vkHYgwzTtQcE12dPu6csn1UyQBinYpCmNLfqlL1k/OuWGsf0
         ixbjoPm/NlpWfMGuAbRns6VgM61ca0luaXV2BlyDhfryIeIKm/eIA5upeqCqwCPayI/f
         MOXwgciHgAOMoB4jX2agkl6zmnfnr+q1Q8FK5GxtEzXGcWCfCwdQTBmXlzK5LzdCccqN
         EwlwEe87kyamB3IDBdLYhXX5R25cVhW70Gk7Q5k1eD/5F6lO1m/WRBq/2dlzDU1o7StG
         Tw5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:to:from:dkim-signature;
        bh=DkP+DgHhEl3/8NKs0kugn1cqJupCkCqOhevgqmk1rpY=;
        b=BWKkURRD8M6JfoPtl+6mxbeZFlEflIYizXwJCyopqKZ07rAEfU4IzX47MBVcLZBod4
         thUIgowtMy7fUOVTlgdWivEDU1WTHgFXI6tWc2GQtGF1OA4z7ySL0UnSG7HsN9Uu5Xv0
         qgKmQ9Vj+lH60vvX+DwPRHhduPwlmCg57gF9kK1UE9ojGFvRtXu7RNJyPY66dpnG//CC
         UQgeMaLMrWUenbLYmDhvBBs9Z/yxbF2lVRsvl7dMtM1paZ/UQEugVY/TNa+120t5IBGB
         FS/GCfN9DEswcwrHtOBSfFmll+yXQCNeYrGC13N4o4EBktzOMqT4JKnvVlHJWF/LO5LI
         9guw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=blwDBrlz;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o194si782227wme.2.2020.03.14.16.46.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 16:46:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=blwDBrlz;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id s14so16738120wrt.8
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 16:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=DkP+DgHhEl3/8NKs0kugn1cqJupCkCqOhevgqmk1rpY=;
        b=blwDBrlzY0qIZiqFjtlm8l9aDBICliZ9EEnyPGsvxGmAuMjSo33VNODlBrI/thOoAV
         zvQQPkNKnLLY2Wj3h3VwjUQMtWJDAfnttDckPW+dj38QoQP9T5Xl8Y8Ob2S3l8JdOACb
         2SW7EBQDpA9Swaro4mtoL5Aap0WLg33ApSEOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=DkP+DgHhEl3/8NKs0kugn1cqJupCkCqOhevgqmk1rpY=;
        b=Pw6qQrkX6/LAz6fQCrc8wTYuvAECdEIvxAuiawKoXCXCeJV4xwPI4xmwkfvF+qZQj4
         r1yl7ONgiwgsC/L4N5MqOAqljzpovl8tUNZxw8Z0wzjwkPfIzbL+Ztu+RS+oK+ZWOB2F
         7naWo7dOJnDsnYQtxMV+YDui7bwOINggmzjlf78ljPQqgMx9FnwIa8ftjOOivZOI3/lD
         zAdqgveSnUExRq23XqL714HWLQjrb2Tnb9evmabjtdVJt9Um/F83xJFlGSM82Vus6vPT
         A523EJHvghdSvbZ65bCHA+pA5wF+7bpiNBb0wCu8m712DRBzWzAsYUo8iYjH4H1w9iKo
         PsYA==
X-Gm-Message-State: ANhLgQ3pGIu6iRIWAq+7d31V2vb0H2Q9oiaJAOS7VmoQGQpcly8wxhxy
	d+krV4pelf2l+XXzyjbJGn18+QYcmcYimA==
X-Received: by 2002:a5d:55cf:: with SMTP id i15mr25850176wrw.321.1584229581666;
        Sat, 14 Mar 2020 16:46:21 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id g3sm3775974wro.93.2020.03.14.16.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2020 16:46:21 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	GR-Linux-NIC-Dev@marvell.com,
	manishc@marvell.com
Subject: [PATCH 1/2] staging: qlge: qlge_dbg: remove unneeded spaces
Date: Sun, 15 Mar 2020 00:46:07 +0100
Message-Id: <9a7c4bef601322c2c4d58d09b277a4a6ab82bd93.1584228792.git.lu@pplo.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584228792.git.lu@pplo.net>
References: <cover.1584228792.git.lu@pplo.net>
In-Reply-To: <cover.1584228792.git.lu@pplo.net>
References: <cover.1584228792.git.lu@pplo.net>

Remove spaces after type casting operators in order to comply codding
standards.
Issue found with checkpatch.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/qlge/qlge_dbg.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 670361873d1d..e2fa2a907d0d 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1620,9 +1620,9 @@ void ql_dump_wqicb(struct wqicb *wqicb)
 	       le16_to_cpu(wqicb->cq_id_rss));
 	pr_err("wqicb->rid = 0x%x\n", le16_to_cpu(wqicb->rid));
 	pr_err("wqicb->wq_addr = 0x%llx\n",
-	       (unsigned long long) le64_to_cpu(wqicb->addr));
+	       (unsigned long long)le64_to_cpu(wqicb->addr));
 	pr_err("wqicb->wq_cnsmr_idx_addr = 0x%llx\n",
-	       (unsigned long long) le64_to_cpu(wqicb->cnsmr_idx_addr));
+	       (unsigned long long)le64_to_cpu(wqicb->cnsmr_idx_addr));
 }
 
 void ql_dump_tx_ring(struct tx_ring *tx_ring)
@@ -1633,7 +1633,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
 	       tx_ring->wq_id);
 	pr_err("tx_ring->base = %p\n", tx_ring->wq_base);
 	pr_err("tx_ring->base_dma = 0x%llx\n",
-	       (unsigned long long) tx_ring->wq_base_dma);
+	       (unsigned long long)tx_ring->wq_base_dma);
 	pr_err("tx_ring->cnsmr_idx_sh_reg, addr = 0x%p, value = %d\n",
 	       tx_ring->cnsmr_idx_sh_reg,
 	       tx_ring->cnsmr_idx_sh_reg
@@ -1686,21 +1686,21 @@ void ql_dump_cqicb(struct cqicb *cqicb)
 	pr_err("cqicb->flags = %x\n", cqicb->flags);
 	pr_err("cqicb->len = %d\n", le16_to_cpu(cqicb->len));
 	pr_err("cqicb->addr = 0x%llx\n",
-	       (unsigned long long) le64_to_cpu(cqicb->addr));
+	       (unsigned long long)le64_to_cpu(cqicb->addr));
 	pr_err("cqicb->prod_idx_addr = 0x%llx\n",
-	       (unsigned long long) le64_to_cpu(cqicb->prod_idx_addr));
+	       (unsigned long long)le64_to_cpu(cqicb->prod_idx_addr));
 	pr_err("cqicb->pkt_delay = 0x%.04x\n",
 	       le16_to_cpu(cqicb->pkt_delay));
 	pr_err("cqicb->irq_delay = 0x%.04x\n",
 	       le16_to_cpu(cqicb->irq_delay));
 	pr_err("cqicb->lbq_addr = 0x%llx\n",
-	       (unsigned long long) le64_to_cpu(cqicb->lbq_addr));
+	       (unsigned long long)le64_to_cpu(cqicb->lbq_addr));
 	pr_err("cqicb->lbq_buf_size = 0x%.04x\n",
 	       le16_to_cpu(cqicb->lbq_buf_size));
 	pr_err("cqicb->lbq_len = 0x%.04x\n",
 	       le16_to_cpu(cqicb->lbq_len));
 	pr_err("cqicb->sbq_addr = 0x%llx\n",
-	       (unsigned long long) le64_to_cpu(cqicb->sbq_addr));
+	       (unsigned long long)le64_to_cpu(cqicb->sbq_addr));
 	pr_err("cqicb->sbq_buf_size = 0x%.04x\n",
 	       le16_to_cpu(cqicb->sbq_buf_size));
 	pr_err("cqicb->sbq_len = 0x%.04x\n",
@@ -1728,7 +1728,7 @@ void ql_dump_rx_ring(struct rx_ring *rx_ring)
 	pr_err("rx_ring->cqicb = %p\n", &rx_ring->cqicb);
 	pr_err("rx_ring->cq_base = %p\n", rx_ring->cq_base);
 	pr_err("rx_ring->cq_base_dma = %llx\n",
-	       (unsigned long long) rx_ring->cq_base_dma);
+	       (unsigned long long)rx_ring->cq_base_dma);
 	pr_err("rx_ring->cq_size = %d\n", rx_ring->cq_size);
 	pr_err("rx_ring->cq_len = %d\n", rx_ring->cq_len);
 	pr_err("rx_ring->prod_idx_sh_reg, addr = 0x%p, value = %d\n",
@@ -1736,7 +1736,7 @@ void ql_dump_rx_ring(struct rx_ring *rx_ring)
 	       rx_ring->prod_idx_sh_reg
 			? ql_read_sh_reg(rx_ring->prod_idx_sh_reg) : 0);
 	pr_err("rx_ring->prod_idx_sh_reg_dma = %llx\n",
-	       (unsigned long long) rx_ring->prod_idx_sh_reg_dma);
+	       (unsigned long long)rx_ring->prod_idx_sh_reg_dma);
 	pr_err("rx_ring->cnsmr_idx_db_reg = %p\n",
 	       rx_ring->cnsmr_idx_db_reg);
 	pr_err("rx_ring->cnsmr_idx = %d\n", rx_ring->cnsmr_idx);
@@ -1959,7 +1959,7 @@ void ql_dump_ib_mac_rsp(struct ib_mac_iocb_rsp *ib_mac_rsp)
 	pr_err("data_len	= %d\n",
 	       le32_to_cpu(ib_mac_rsp->data_len));
 	pr_err("data_addr    = 0x%llx\n",
-	       (unsigned long long) le64_to_cpu(ib_mac_rsp->data_addr));
+	       (unsigned long long)le64_to_cpu(ib_mac_rsp->data_addr));
 	if (ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_RSS_MASK)
 		pr_err("rss    = %x\n",
 		       le32_to_cpu(ib_mac_rsp->rss));
@@ -1976,7 +1976,7 @@ void ql_dump_ib_mac_rsp(struct ib_mac_iocb_rsp *ib_mac_rsp)
 		pr_err("hdr length	= %d\n",
 		       le32_to_cpu(ib_mac_rsp->hdr_len));
 		pr_err("hdr addr    = 0x%llx\n",
-		       (unsigned long long) le64_to_cpu(ib_mac_rsp->hdr_addr));
+		       (unsigned long long)le64_to_cpu(ib_mac_rsp->hdr_addr));
 	}
 }
 #endif
-- 
2.17.1


