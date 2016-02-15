X-GM-THRID: 6251489133143785472
X-Received: by 10.66.101.4 with SMTP id fc4mr15224391pab.48.1455538238866;
        Mon, 15 Feb 2016 04:10:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.46 with SMTP id v14ls736397igr.4.gmail; Mon, 15 Feb 2016
 04:10:38 -0800 (PST)
X-Received: by 10.66.232.1 with SMTP id tk1mr15499288pac.45.1455538238419;
        Mon, 15 Feb 2016 04:10:38 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id ui7si3298169pab.0.2016.02.15.04.10.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 04:10:38 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id x65so86778036pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 04:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Ee9MHOsBtHuq0KYqqldZ03+RtiaB8xxDpLiM/5WX25E=;
        b=WnN4oi/QyDObSc/BPlBLny9vhgSvrVQ19L4O1KQ8Y+ccGrjdh0Zm6Ho2/mQrPblEO/
         xggPxcVM5NFDdE76jNSkOOz5B7n5MDA9hrIBWlImq2G9Hy1s9EgM7O0zPODorV7exQi+
         auYzmPH2+DLV6rcEYO14f43jxhXvD4/49A/ih/uGkTfCqRuckwEPziYGjhbWLCsdA83M
         FtsiY0b9leL80690uuAQQpq9LlUkJtjP057dkqIrTcV7i4w2owiEpKSyh0gEa0X/iKUB
         4qhMyL6bVNLBmxBiTeLxkFLnEyE89BJpPM4AF2jtn7roFZ0LYEp7TQ+PEsnxolqIuJpE
         6bhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Ee9MHOsBtHuq0KYqqldZ03+RtiaB8xxDpLiM/5WX25E=;
        b=AM1w8PuN/Kk2d36UaaKEKdTPyaG5x7eUguezE4WVB1bF3nxPQawMosEM0VxKoyfjXs
         IeYsdVVtfGYaj+B3ubj09DHAPYAtZJEfVuApXtBHY7794zSc1WQP2MbekcwCLndz5Ga3
         08xr0qPbMu5SqfFx7bARwtd8x+WA2IkCkAZ+6t3dH43Y6RJ1BNWD9RuhO51ymV9KJ60r
         WC6ueifNPuz37iIalYuAkCX/6pbeP23vdY4fUGLGTLCQC4pHfbGNm5q/KtcdIHsY5XtN
         wDYyk6vjhuOvaiTB+Wl+g0WRp6XrkjWKMzvxqplTXhaUZHLDbCc1B1rQ+GI+1KKv3YG9
         ca6Q==
X-Gm-Message-State: AG10YOSjN1K1sc6EsmBEDng9tdGuTES5tDzGHziu3j79FubrF+NMn/YRNs3awBd3fuydXA==
X-Received: by 10.98.68.194 with SMTP id m63mr22846634pfi.153.1455538238280;
        Mon, 15 Feb 2016 04:10:38 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id o73sm38227849pfa.37.2016.02.15.04.10.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 04:10:37 -0800 (PST)
Date: Mon, 15 Feb 2016 17:41:02 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Fix line over 80 charcters long
Message-ID: <20160215121052.GA9478@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This is a patch that fixes line over 80 characters coding style
warning detected by checkpatch.pl.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 69 ++++++++++++++++++++++++------------
 1 file changed, 47 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 98b21d4..45f70ab 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -200,7 +200,8 @@ static inline int add_tcp_pending_ack(u32 ack, u32 session_index,
 	if (pending_base + pending_acks < MAX_PENDING_ACKS) {
 		pending_acks_info[pending_base + pending_acks].ack_num = ack;
 		pending_acks_info[pending_base + pending_acks].txqe = txqe;
-		pending_acks_info[pending_base + pending_acks].session_index = session_index;
+		pending_acks_info[pending_base +
+		pending_acks].session_index = session_index;
 		txqe->tcp_pending_ack_idx = pending_base + pending_acks;
 		pending_acks++;
 	}
@@ -256,7 +257,8 @@ static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
 
 				for (i = 0; i < tcp_session; i++) {
 					if (i < 2 * MAX_TCP_SESSION &&
-					    ack_session_info[i].seq_num == seq_no) {
+					    ack_session_info[i].seq_num ==
+						seq_no) {
 						update_tcp_session(i, ack_no);
 						break;
 					}
@@ -292,7 +294,9 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
 		if (i >= MAX_PENDING_ACKS ||
 		    pending_acks_info[i].session_index >= 2 * MAX_TCP_SESSION)
 			break;
-		if (pending_acks_info[i].ack_num < ack_session_info[pending_acks_info[i].session_index].bigger_ack_num) {
+		if (pending_acks_info[i].ack_num <
+			ack_session_info[pending_acks_info
+				[i].session_index].bigger_ack_num) {
 			struct txq_entry_t *tqe;
 
 			tqe = pending_acks_info[i].txqe;
@@ -513,7 +517,8 @@ void chip_wakeup(struct wilc *wilc)
 				if ((wilc_get_chipid(wilc, true) == 0))
 					wilc_debug(N_ERR, "Couldn't read chip id. Wake up failed\n");
 
-			} while ((wilc_get_chipid(wilc, true) == 0) && ((++trials % 3) == 0));
+			} while ((wilc_get_chipid(wilc, true) == 0) &&
+				((++trials % 3) == 0));
 
 		} while (wilc_get_chipid(wilc, true) == 0);
 	} else if ((wilc->io_type & 0x1) == HIF_SDIO)	 {
@@ -526,7 +531,8 @@ void chip_wakeup(struct wilc *wilc)
 			wilc->hif_func->hif_read_reg(wilc, 0xf1,
 						     &clk_status_reg);
 
-			while (((clk_status_reg & 0x1) == 0) && (((++trials) % 3) == 0)) {
+			while (((clk_status_reg & 0x1) == 0) &&
+				(((++trials) % 3) == 0)) {
 				usleep_range(2 * 1000, 2 * 1000);
 
 				wilc->hif_func->hif_read_reg(wilc, 0xf1,
@@ -672,7 +678,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				counter++;
 				if (counter > 200) {
 					counter = 0;
-					ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, 0);
+					ret = wilc->hif_func->hif_write_reg(
+						wilc, WILC_HOST_TX_CTRL, 0);
 					break;
 				}
 			}
@@ -683,7 +690,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 
 		timeout = 200;
 		do {
-			ret = wilc->hif_func->hif_block_tx(wilc, WILC_VMM_TBL_RX_SHADOW_BASE, (u8 *)vmm_table, ((i + 1) * 4));
+			ret = wilc->hif_func->hif_block_tx(
+				wilc, WILC_VMM_TBL_RX_SHADOW_BASE,
+				(u8 *)vmm_table, ((i + 1) * 4));
 			if (!ret)
 				break;
 
@@ -694,7 +703,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				break;
 
 			do {
-				ret = wilc->hif_func->hif_read_reg(wilc, WILC_HOST_VMM_CTL, &reg);
+				ret = wilc->hif_func->hif_read_reg(
+					wilc, WILC_HOST_VMM_CTL, &reg);
 				if (!ret)
 					break;
 				if ((reg >> 2) & 0x1) {
@@ -705,7 +715,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				}
 			} while (--timeout);
 			if (timeout <= 0) {
-				ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_VMM_CTL, 0x0);
+				ret = wilc->hif_func->hif_write_reg(
+					wilc, WILC_HOST_VMM_CTL, 0x0);
 				break;
 			}
 
@@ -713,11 +724,13 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				break;
 
 			if (entries == 0) {
-				ret = wilc->hif_func->hif_read_reg(wilc, WILC_HOST_TX_CTRL, &reg);
+				ret = wilc->hif_func->hif_read_reg(
+					wilc, WILC_HOST_TX_CTRL, &reg);
 				if (!ret)
 					break;
 				reg &= ~BIT(0);
-				ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, reg);
+				ret = wilc->hif_func->hif_write_reg(
+					wilc, WILC_HOST_TX_CTRL, reg);
 				if (!ret)
 					break;
 				break;
@@ -757,9 +770,12 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				header = cpu_to_le32(header);
 				memcpy(&txb[offset], &header, 4);
 				if (tqe->type == WILC_CFG_PKT) {
-					buffer_offset = ETH_CONFIG_PKT_HDR_OFFSET;
+					buffer_offset =
+					ETH_CONFIG_PKT_HDR_OFFSET;
 				} else if (tqe->type == WILC_NET_PKT) {
-					char *bssid = ((struct tx_complete_data *)(tqe->priv))->bssid;
+					char *bssid =
+						((struct tx_complete_data *)
+						(tqe->priv))->bssid;
 
 					buffer_offset = ETH_ETHERNET_HDR_OFFSET;
 					memcpy(&txb[offset + 4], bssid, 6);
@@ -777,7 +793,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 							      tqe->status);
 				if (tqe->tcp_pending_ack_idx != NOT_TCP_ACK &&
 				    tqe->tcp_pending_ack_idx < MAX_PENDING_ACKS)
-					pending_acks_info[tqe->tcp_pending_ack_idx].txqe = NULL;
+					pending_acks_info[tqe->
+					tcp_pending_ack_idx].txqe = NULL;
 				kfree(tqe);
 			} else {
 				break;
@@ -853,7 +870,8 @@ static void wilc_wlan_handle_rxq(struct wilc *wilc)
 						IS_MANAGMEMENT_CALLBACK |
 						IS_MGMT_STATUS_SUCCES);
 
-				WILC_WFI_mgmt_rx(wilc, &buffer[offset + HOST_HDR_OFFSET], pkt_len);
+				WILC_WFI_mgmt_rx(wilc, &buffer[offset +
+					HOST_HDR_OFFSET], pkt_len);
 			} else {
 				if (!is_cfg_packet) {
 					if (pkt_len > 0) {
@@ -865,15 +883,22 @@ static void wilc_wlan_handle_rxq(struct wilc *wilc)
 				} else {
 					struct wilc_cfg_rsp rsp;
 
-					wilc_wlan_cfg_indicate_rx(wilc, &buffer[pkt_offset + offset], pkt_len, &rsp);
+					wilc_wlan_cfg_indicate_rx(wilc, &buffer
+						[pkt_offset + offset],
+							pkt_len, &rsp);
 					if (rsp.type == WILC_CFG_RSP) {
-						if (wilc->cfg_seq_no == rsp.seq_no)
+						if (wilc->cfg_seq_no ==
+						rsp.seq_no)
 							up(&wilc->cfg_event);
-					} else if (rsp.type == WILC_CFG_RSP_STATUS) {
-						wilc_mac_indicate(wilc, WILC_MAC_INDICATE_STATUS);
-
-					} else if (rsp.type == WILC_CFG_RSP_SCAN) {
-						wilc_mac_indicate(wilc, WILC_MAC_INDICATE_SCAN);
+					} else if (rsp.type ==
+						WILC_CFG_RSP_STATUS) {
+						wilc_mac_indicate(wilc,
+						WILC_MAC_INDICATE_STATUS);
+
+					} else if (rsp.type ==
+						WILC_CFG_RSP_SCAN) {
+						wilc_mac_indicate(
+						wilc, WILC_MAC_INDICATE_SCAN);
 					}
 				}
 			}
-- 
1.9.1


