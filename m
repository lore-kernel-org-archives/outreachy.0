X-GM-THRID: 6200282727557627904
X-Received: by 10.180.12.170 with SMTP id z10mr493233wib.1.1443706950449;
        Thu, 01 Oct 2015 06:42:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.216 with SMTP id 85ls109894lfr.24.gmail; Thu, 01 Oct
 2015 06:42:29 -0700 (PDT)
X-Received: by 10.112.40.17 with SMTP id t17mr1398836lbk.10.1443706949793;
        Thu, 01 Oct 2015 06:42:29 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id c1si94869wiv.3.2015.10.01.06.42.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 06:42:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id ge5so30607446wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 06:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=phokLQ+RfRGTJp4Qzgj3knwBdUc20PqB8xHiQulNYgY=;
        b=k8U1J6WLF1OR7QzsuFq8M/oH7Jmk1u2+jE5KljeZR3BQ1JCIAFTO2p0+SF29vIKJ6+
         /9A6sZsnDnWgKTXlZn3TsF3+R2/oEfo0xsr6Q/Cpb8PquTGQ+ozhb6va3+ClzCOza58U
         8cTg34RFgFjiSlz2laMp399QQbcT6ykNSEgu7u5eD5hMD2aCbEw7nFrnOn05LFer1RwF
         KzIUTeu1+LUzNR+MLFPX/LGPP/frhk0iaWoc5m9AV9OkQkOUBmG32lIqzIUOTxE3m4AP
         X5hr+LqCEX9DgZ8rwFNwCH4m8n7+yBZKnWFW+5i2oK2RDeI9FfTT/ECewba6vEz4z+1K
         478g==
X-Received: by 10.180.87.1 with SMTP id t1mr3297344wiz.33.1443706949595;
        Thu, 01 Oct 2015 06:42:29 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.43])
        by smtp.gmail.com with ESMTPSA id 12sm6231235wjw.15.2015.10.01.06.42.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 06:42:26 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v3] Staging: octeon: Use preferred kernel type
Date: Thu,  1 Oct 2015 16:42:16 +0300
Message-Id: <1443706936-3622-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 2.1.4

This patch "uint*_t" type instead of "u*" type was used.
checkpatch.pl issue in octeon driver.

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
Changes since v2:
* change commit explain message.
* all uint*_t type changed in one commit.
* add my surname in user name part.
---
---
 drivers/staging/octeon/ethernet-defines.h | 4 ++--
 drivers/staging/octeon/ethernet-rx.c      | 8 ++++----
 drivers/staging/octeon/ethernet-tx.c      | 6 +++---
 drivers/staging/octeon/ethernet.c         | 8 ++++----
 drivers/staging/octeon/octeon-ethernet.h  | 2 +-
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-defines.h b/drivers/staging/octeon/ethernet-defines.h
index f92e0c4..7164005 100644
--- a/drivers/staging/octeon/ethernet-defines.h
+++ b/drivers/staging/octeon/ethernet-defines.h
@@ -37,8 +37,8 @@
 /* Maximum number of SKBs to try to free per xmit packet. */
 #define MAX_OUT_QUEUE_DEPTH 1000
 
-#define FAU_TOTAL_TX_TO_CLEAN (CVMX_FAU_REG_END - sizeof(uint32_t))
-#define FAU_NUM_PACKET_BUFFERS_TO_FREE (FAU_TOTAL_TX_TO_CLEAN - sizeof(uint32_t))
+#define FAU_TOTAL_TX_TO_CLEAN (CVMX_FAU_REG_END - sizeof(u32))
+#define FAU_NUM_PACKET_BUFFERS_TO_FREE (FAU_TOTAL_TX_TO_CLEAN - sizeof(u32))
 
 #define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS+1)
 
diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index d1a33a9..f600247 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -102,7 +102,7 @@ static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
 		    cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface));
 		if (gmxx_rxx_frm_ctl.s.pre_chk == 0) {
 
-			uint8_t *ptr =
+			u8 *ptr =
 			    cvmx_phys_to_ptr(work->packet_ptr.s.addr);
 			int i = 0;
 
@@ -163,8 +163,8 @@ static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
 static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 {
 	const int	coreid = cvmx_get_core_num();
-	uint64_t	old_group_mask;
-	uint64_t	old_scratch;
+	u64	old_group_mask;
+	u64	old_scratch;
 	int		rx_count = 0;
 	int		did_work_request = 0;
 	int		packet_not_copied;
@@ -284,7 +284,7 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 			 * entirely stored in the work entry.
 			 */
 			if (unlikely(work->word2.s.bufs == 0)) {
-				uint8_t *ptr = work->packet_data;
+				u8 *ptr = work->packet_data;
 
 				if (likely(!work->word2.s.not_IP)) {
 					/*
diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 9e2116f..3a5d8f5 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -143,8 +143,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 {
 	cvmx_pko_command_word0_t pko_command;
 	union cvmx_buf_ptr hw_buffer;
-	uint64_t old_scratch;
-	uint64_t old_scratch2;
+	u64 old_scratch;
+	u64 old_scratch2;
 	int qos;
 	int i;
 	enum {QUEUE_CORE, QUEUE_HW, QUEUE_DROP} queue_type;
@@ -576,7 +576,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 	 * calculation may add a little extra, but that doesn't
 	 * hurt.
 	 */
-	copy_location = packet_buffer + sizeof(uint64_t);
+	copy_location = packet_buffer + sizeof(u64);
 	copy_location += ((CVMX_HELPER_FIRST_MBUFF_SKIP + 7) & 0xfff8) + 6;
 
 	/*
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 7274fda..c9183e0 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -382,11 +382,11 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
 	    && (cvmx_helper_interface_get_mode(interface) !=
 		CVMX_HELPER_INTERFACE_MODE_SPI)) {
 		int i;
-		uint8_t *ptr = dev->dev_addr;
-		uint64_t mac = 0;
+		u8 *ptr = dev->dev_addr;
+		u64 mac = 0;
 
 		for (i = 0; i < 6; i++)
-			mac = (mac << 8) | (uint64_t)ptr[i];
+			mac = (mac << 8) | (u64)ptr[i];
 
 		gmx_cfg.u64 =
 		    cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
@@ -835,7 +835,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 				cvm_oct_device[priv->port] = dev;
 				fau -=
 				    cvmx_pko_get_num_queues(priv->port) *
-				    sizeof(uint32_t);
+				    sizeof(u32);
 				queue_delayed_work(cvm_oct_poll_queue,
 						&priv->port_periodic_work, HZ);
 			}
diff --git a/drivers/staging/octeon/octeon-ethernet.h b/drivers/staging/octeon/octeon-ethernet.h
index a242c70..67f640f 100644
--- a/drivers/staging/octeon/octeon-ethernet.h
+++ b/drivers/staging/octeon/octeon-ethernet.h
@@ -43,7 +43,7 @@ struct octeon_ethernet {
 	struct phy_device *phydev;
 	unsigned int last_link;
 	/* Last negotiated link state */
-	uint64_t link_info;
+	u64 link_info;
 	/* Called periodically to check link status */
 	void (*poll)(struct net_device *dev);
 	struct delayed_work	port_periodic_work;
-- 
2.1.4


