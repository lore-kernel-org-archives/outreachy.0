X-GM-THRID: 6252303141698535424
X-Received: by 10.182.102.38 with SMTP id fl6mr2259599obb.46.1455727764730;
        Wed, 17 Feb 2016 08:49:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.104 with SMTP id b101ls1731685ioj.6.gmail; Wed, 17 Feb
 2016 08:49:24 -0800 (PST)
X-Received: by 10.107.152.10 with SMTP id a10mr3960119ioe.28.1455727764105;
        Wed, 17 Feb 2016 08:49:24 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id 79si334035pft.0.2016.02.17.08.49.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 08:49:24 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id x65so14301384pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 08:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=DOmYF4X9f3s2MfjtRPfSJDKQ0L7dRC9wV1KN13bQT34=;
        b=ZjYwi50BMnIWTatWN3Cv2wwDoiKy12ALpYY9Z7JLzF8rxOOUwQqCLhJ0XgaiBtbEfn
         3FD2rh10bygGF1IcRzvRTuQRZwdm/LqfWF7kLF0itYiS3tYutFaYhiLzhdfdllzopezQ
         /EN1fvHfuPRZFAdU0O1RPtlSYoRk0Ee218QNW7zWoxvcWp/EK4V4EXA/XXTcXLK+AXFM
         lwfvsIr3TDEIizX+mDAdCm431kQ/l6mkF3bC8lVHnofo1MqMbAXy9LJ7qiJ6BnKGvR/3
         Xi3MCMvRECgRSlc8UPLJCMX7Q2ILvG+c/xsYeeUfTS2R6EYKj5Z+4Sba9lG/eT2LmL7e
         v8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=DOmYF4X9f3s2MfjtRPfSJDKQ0L7dRC9wV1KN13bQT34=;
        b=W5/ngsLAFZTkBAhGJA4ft7QVw7qumJIldTivqXesotr5aEWH/13l+fk1mAkH2bY1BY
         t6be0sSxG8et2nkvC/T903uWGoDbYTt1V4OgQHA9oCulF57AvDBATnohfPiogdML7HLk
         ogHmD0ZPfnjOyM50tMxmYtvdySyY19F7kUa52+f9kExcr4r+AULIDLomqKPJGgHd9xWv
         7xTcR2Urr1dQkIORz6PJ/PR1OBfXlYjq+y6/LaXefqvT9gR5dsg1zEXmprWhwTGqyWwx
         xLbmrqE5CMP5OUhvGE/8Gw/ZWsOdWnAmS/vRECCp0R89MXGVAybdOG39bhZV9OtIZj5Y
         uHCQ==
X-Gm-Message-State: AG10YOSF3jVfjhwkxvuG5WeKJEeCzbne8mJDofuHula+DMCoI56e1V05z/ytnR0j4y+tlw==
X-Received: by 10.98.74.17 with SMTP id x17mr3541191pfa.14.1455727763964;
        Wed, 17 Feb 2016 08:49:23 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id o73sm3949149pfa.37.2016.02.17.08.49.21
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 08:49:23 -0800 (PST)
Date: Wed, 17 Feb 2016 22:19:46 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: wilc1000: Fix line over 80 characters long
Message-ID: <9a360b5a2d20b83ab91b34f4b0fc199cc5133a22.1455727711.git.anchalj109@gmail.com>
References: <cover.1455727711.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455727711.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Break lines so that they do not exceed 80
characters. Problem found using checkpatch.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 45 +++++++++++++++++++++++++-----------
 1 file changed, 31 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 98b21d4..a611cba 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -200,7 +200,8 @@ static inline int add_tcp_pending_ack(u32 ack, u32 session_index,
 	if (pending_base + pending_acks < MAX_PENDING_ACKS) {
 		pending_acks_info[pending_base + pending_acks].ack_num = ack;
 		pending_acks_info[pending_base + pending_acks].txqe = txqe;
-		pending_acks_info[pending_base + pending_acks].session_index = session_index;
+		pending_acks_info[pending_base + pending_acks].session_index =
+			session_index;
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
@@ -513,7 +515,8 @@ void chip_wakeup(struct wilc *wilc)
 				if ((wilc_get_chipid(wilc, true) == 0))
 					wilc_debug(N_ERR, "Couldn't read chip id. Wake up failed\n");
 
-			} while ((wilc_get_chipid(wilc, true) == 0) && ((++trials % 3) == 0));
+			} while ((wilc_get_chipid(wilc, true) == 0) &&
+				 ((++trials % 3) == 0));
 
 		} while (wilc_get_chipid(wilc, true) == 0);
 	} else if ((wilc->io_type & 0x1) == HIF_SDIO)	 {
@@ -526,7 +529,8 @@ void chip_wakeup(struct wilc *wilc)
 			wilc->hif_func->hif_read_reg(wilc, 0xf1,
 						     &clk_status_reg);
 
-			while (((clk_status_reg & 0x1) == 0) && (((++trials) % 3) == 0)) {
+			while (((clk_status_reg & 0x1) == 0) &&
+				(((++trials) % 3) == 0)) {
 				usleep_range(2 * 1000, 2 * 1000);
 
 				wilc->hif_func->hif_read_reg(wilc, 0xf1,
@@ -672,7 +676,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				counter++;
 				if (counter > 200) {
 					counter = 0;
-					ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, 0);
+					ret = wilc->hif_func->hif_write_reg(
+						wilc, WILC_HOST_TX_CTRL, 0);
 					break;
 				}
 			}
@@ -683,7 +688,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 
 		timeout = 200;
 		do {
-			ret = wilc->hif_func->hif_block_tx(wilc, WILC_VMM_TBL_RX_SHADOW_BASE, (u8 *)vmm_table, ((i + 1) * 4));
+			ret = wilc->hif_func->hif_block_tx(wilc,
+					WILC_VMM_TBL_RX_SHADOW_BASE,
+					(u8 *)vmm_table, ((i + 1) * 4));
 			if (!ret)
 				break;
 
@@ -694,7 +701,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				break;
 
 			do {
-				ret = wilc->hif_func->hif_read_reg(wilc, WILC_HOST_VMM_CTL, &reg);
+				ret = wilc->hif_func->hif_read_reg(wilc,
+						WILC_HOST_VMM_CTL, &reg);
 				if (!ret)
 					break;
 				if ((reg >> 2) & 0x1) {
@@ -705,7 +713,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				}
 			} while (--timeout);
 			if (timeout <= 0) {
-				ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_VMM_CTL, 0x0);
+				ret = wilc->hif_func->hif_write_reg(wilc,
+						WILC_HOST_VMM_CTL, 0x0);
 				break;
 			}
 
@@ -713,11 +722,13 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				break;
 
 			if (entries == 0) {
-				ret = wilc->hif_func->hif_read_reg(wilc, WILC_HOST_TX_CTRL, &reg);
+				ret = wilc->hif_func->hif_read_reg(wilc,
+						WILC_HOST_TX_CTRL, &reg);
 				if (!ret)
 					break;
 				reg &= ~BIT(0);
-				ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, reg);
+				ret = wilc->hif_func->hif_write_reg(wilc,
+						WILC_HOST_TX_CTRL, reg);
 				if (!ret)
 					break;
 				break;
@@ -757,9 +768,12 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				header = cpu_to_le32(header);
 				memcpy(&txb[offset], &header, 4);
 				if (tqe->type == WILC_CFG_PKT) {
-					buffer_offset = ETH_CONFIG_PKT_HDR_OFFSET;
+					buffer_offset =
+						ETH_CONFIG_PKT_HDR_OFFSET;
 				} else if (tqe->type == WILC_NET_PKT) {
-					char *bssid = ((struct tx_complete_data *)(tqe->priv))->bssid;
+					char *bssid =
+						((struct tx_complete_data *)
+						 (tqe->priv))->bssid;
 
 					buffer_offset = ETH_ETHERNET_HDR_OFFSET;
 					memcpy(&txb[offset + 4], bssid, 6);
@@ -853,7 +867,8 @@ static void wilc_wlan_handle_rxq(struct wilc *wilc)
 						IS_MANAGMEMENT_CALLBACK |
 						IS_MGMT_STATUS_SUCCES);
 
-				WILC_WFI_mgmt_rx(wilc, &buffer[offset + HOST_HDR_OFFSET], pkt_len);
+				WILC_WFI_mgmt_rx(wilc,
+				&buffer[offset + HOST_HDR_OFFSET], pkt_len);
 			} else {
 				if (!is_cfg_packet) {
 					if (pkt_len > 0) {
@@ -865,7 +880,9 @@ static void wilc_wlan_handle_rxq(struct wilc *wilc)
 				} else {
 					struct wilc_cfg_rsp rsp;
 
-					wilc_wlan_cfg_indicate_rx(wilc, &buffer[pkt_offset + offset], pkt_len, &rsp);
+					wilc_wlan_cfg_indicate_rx(wilc,
+					&buffer[pkt_offset + offset],
+							pkt_len, &rsp);
 					if (rsp.type == WILC_CFG_RSP) {
 						if (wilc->cfg_seq_no == rsp.seq_no)
 							up(&wilc->cfg_event);
-- 
1.9.1


