X-GM-THRID: 6883539581978804224
X-Received: by 2002:a17:902:9890:b029:d2:2f2a:584e with SMTP id s16-20020a1709029890b02900d22f2a584emr300715plp.29.1602698951002;
        Wed, 14 Oct 2020 11:09:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:f993:: with SMTP id cq19ls10166pjb.0.gmail; Wed, 14
 Oct 2020 11:09:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwhtzZft9rgaS42GMouj5qSLq1+VWIVoy1udMwKh1XFo5msV2nn1seNq5xiA80Ry0h3Xeuc
X-Received: by 2002:a17:902:d904:b029:d3:d2dd:2b36 with SMTP id c4-20020a170902d904b02900d3d2dd2b36mr242995plz.32.1602698949118;
        Wed, 14 Oct 2020 11:09:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602698949; cv=none;
        d=google.com; s=arc-20160816;
        b=Ma6RolEAuiVKmrnlbhecubWVhoTLV8iYMVWKqc0AO6yg1D0g3Mgx2/suE1ksPz2c1K
         0Y4E/fOfxQ5rZpVSOSNNUOiIM2TBBkhJ437HYrdvSbpkN0pRwVnA95QxqMt2zjm9wLuM
         aK5iNWycc4r6eajqkDKqyVHH8yLR2i/Py4xXjvL0IgyY/vlP8YeNvcSTdcsEts3+plag
         QK/3x3QhN2+hK3Lje6dreGGRUVYd5roGwfuqCIsL9bb4rCVgQ6VOt84ni2jBcOEMB97C
         N9HleqhOmGFv6UXOMR0FyWcGsGgm8RUjHRz+nbW5hOiAtQ/OmYoprS+fePJIlLybDA7c
         0MKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=YkcpswvzA3MNGiN49/QSkfk3qOBg7vbvYbVI4p+Agi0=;
        b=zkeEsUOqXgap22X20EovVbE/4WheH02y46AXKO6eHinKsgdbh8sB8oh9uba7nP//Wv
         1NQPbXmypJEfrKuxzpXmnF8/pm4RKdduZ0fUigXWSxdAlcLccUY6A4hmma+oAMAaQbhK
         LDRKhhF0u4qRhpPZTVmj87ZSmgFsO8DBy6hGZl3THA4avSFQj9lyck17BeNZHYDpgI8a
         +NacOqba1UzvguCndGM1Yrrcg7l3FpO/sid95s9XmxbwOjpbQ6nd34UoeZgMq0lXUIJr
         219arX6D3EqJqya3ytyGfXA6v8Y8CRY2rYuRc5Ye3TpICNYktYypbeCzkRA4mQg4Lzk5
         cfUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+WUWo3p;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 191si49800pfu.3.2020.10.14.11.09.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 11:09:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+WUWo3p;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id c20so270889pfr.8
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2020 11:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=YkcpswvzA3MNGiN49/QSkfk3qOBg7vbvYbVI4p+Agi0=;
        b=U+WUWo3pAvokXLxMIGpqByFN1rIX6EsRJ0g9XK3MBXPUMimfKs22evdsXkHnPw2hp0
         i3tQ4kFQWdiSmBNPDRX7Jl7AeF3WnmMaaefjHPqSB6sN79LtJR8TqITaiV7XMTrDOBot
         a9MHdP7FfFv5ddj/dHNM4l9XFQTDK5U0+owDR45PMxgGCjdWZbhM+6W5sahF/KIT9CVl
         49IFhEuhTtPQmIt1VT5I5LE50CGKy6NXCEG3XSZBjDeatJSUXPkP4dPp/fkvOhFRttIj
         48B7n2UZF1Ag7yNFgTI7K8/Kxu2VnqAmL/T452z6N9F4DebNx89WmZmvd2eBdSt+5G7Y
         pN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=YkcpswvzA3MNGiN49/QSkfk3qOBg7vbvYbVI4p+Agi0=;
        b=j/Ve8XfjFTuDNhnzA07CQSvdZL201NtljBZXUuv0O5p7Vz5SNF9zDTXERk7CXmdv0a
         Q7w7w5likFf2R9WkMEgkoue5tEhFdDpG3i/GgFJyShkOu1GEdCwnsmxilQvbZ16+cVLJ
         I1TMhBF41KsMFHIPhOddNFwjikndXUq/BoMqWPOy4uwZ2cSkPqQGpE+cOfQ7lD3CYe6Z
         RTAWkMfdmfCXZTSvp/xyYz9gBaw8+tqLEMKe2bzJyaCfx2yVaR4uKvGKwlqYOxngEyWJ
         Hy8DbCkF8UmSJX/gj/MpDCeUV3hdb5e8rqZSzffhCsJaDhG9Ek76mf+YWQqChWmNstT4
         eW/w==
X-Gm-Message-State: AOAM5311VKtwP5IehX7y1J+P9dmFwS+K3OmN7e4GDjMq592M3O4Ai3aM
	4rT53LLHbiQgbNgbivnf5dTSuohupihpJg==
X-Received: by 2002:a62:3882:0:b029:152:127a:e852 with SMTP id f124-20020a6238820000b0290152127ae852mr494561pfa.21.1602698948630;
        Wed, 14 Oct 2020 11:09:08 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id x10sm269143pfc.88.2020.10.14.11.09.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 11:09:08 -0700 (PDT)
Date: Wed, 14 Oct 2020 23:39:03 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, Manish Chopra <manishc@marvell.com>,
	GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: qlge: remove extra blank lines
Message-ID: <20201014180903.GA61053@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Remove unnecessary blank lines as per the coding style guidelines.
Issue reported by checkpatch scrip

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---

 drivers/staging/qlge/qlge_main.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index cb19cd35d0da..406374a5a431 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -756,7 +756,6 @@ static int ql_get_8012_flash_params(struct ql_adapter *qdev)
 				  "Error reading flash.\n");
 			goto exit;
 		}
-
 	}
 
 	status = ql_validate_flash(qdev,
@@ -1225,7 +1224,6 @@ static void ql_unmap_send(struct ql_adapter *qdev,
 						     maplen), DMA_TO_DEVICE);
 		}
 	}
-
 }
 
 /* Map the buffers for this transmit.  This will return
@@ -1339,7 +1337,6 @@ static int ql_map_send(struct ql_adapter *qdev,
 		dma_unmap_addr_set(&tx_ring_desc->map[map_idx], mapaddr, map);
 		dma_unmap_len_set(&tx_ring_desc->map[map_idx], maplen,
 				  skb_frag_size(frag));
-
 	}
 	/* Save the number of segments we've mapped. */
 	tx_ring_desc->map_cnt = map_idx;
@@ -2103,7 +2100,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring)
 	struct tx_ring *tx_ring;
 	/* While there are entries in the completion queue. */
 	while (prod != rx_ring->cnsmr_idx) {
-
 		netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 			     "cq_id = %d, prod = %d, cnsmr = %d\n",
 			     rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
@@ -2111,7 +2107,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring)
 		net_rsp = (struct ob_mac_iocb_rsp *)rx_ring->curr_entry;
 		rmb();
 		switch (net_rsp->opcode) {
-
 		case OPCODE_OB_MAC_TSO_IOCB:
 		case OPCODE_OB_MAC_IOCB:
 			ql_process_mac_tx_intr(qdev, net_rsp);
@@ -2150,7 +2145,6 @@ static int ql_clean_inbound_rx_ring(struct rx_ring *rx_ring, int budget)
 
 	/* While there are entries in the completion queue. */
 	while (prod != rx_ring->cnsmr_idx) {
-
 		netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 			     "cq_id = %d, prod = %d, cnsmr = %d\n",
 			     rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
@@ -2462,7 +2456,6 @@ static irqreturn_t qlge_isr(int irq, void *dev_id)
 
 static int ql_tso(struct sk_buff *skb, struct ob_mac_tso_iocb_req *mac_iocb_ptr)
 {
-
 	if (skb_is_gso(skb)) {
 		int err;
 		__be16 l3_proto = vlan_get_protocol(skb);
@@ -2869,7 +2862,6 @@ static void ql_free_rx_resources(struct ql_adapter *qdev,
 static int ql_alloc_rx_resources(struct ql_adapter *qdev,
 				 struct rx_ring *rx_ring)
 {
-
 	/*
 	 * Allocate the completion queue for this rx_ring.
 	 */
@@ -3798,7 +3790,6 @@ static int ql_wol(struct ql_adapter *qdev)
 
 static void ql_cancel_all_work_sync(struct ql_adapter *qdev)
 {
-
 	/* Don't kill the reset worker thread if we
 	 * are in the process of recovery.
 	 */
-- 
2.25.1


