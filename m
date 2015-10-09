X-GM-THRID: 6203497368702156800
X-Received: by 10.182.80.193 with SMTP id t1mr9525754obx.0.1444364285531;
        Thu, 08 Oct 2015 21:18:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.227 with SMTP id e3ls387472igx.22.gmail; Thu, 08 Oct
 2015 21:18:05 -0700 (PDT)
X-Received: by 10.68.231.66 with SMTP id te2mr9182941pbc.5.1444364285012;
        Thu, 08 Oct 2015 21:18:05 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si6126040pbb.2.2015.10.08.21.18.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 21:18:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ve7so15582554pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 21:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XHHaia9yMl5zPL2WJehXi93JHzF27rlaQ83/2pCkoHQ=;
        b=0UZgg6+TRapzdMEPB8UsqqoW/PFNnJqwWPZg8CMBb3b1eCmzfZO43vsj+v2Nz88oRh
         COgVEu69E4rvESwXd8uluOxZfg2bz29ATZ2VS6mQ3PFBBXWRoktxyzC6ot0sAlsJ4/c3
         f1A/K1Xgp7pdOdCVz28YLWtaVOac2DmwRa+PRNISOW/1kP29+d2/7GMgFVFW6AwO4+P8
         iYbh6RrD3mQcd+rSh3gvviMd7NKIS+HbLJkbrhXIlPh5CW3Csicx1uqy2+lknl93dZ7E
         9eEJhOYw/E5KwgoPB2LCcncMPbIG9pRXI2XddABoXyDRKwKa10S5I1JyswbJa6+q6iuy
         KvEQ==
X-Received: by 10.66.242.138 with SMTP id wq10mr12415813pac.2.1444364284909;
        Thu, 08 Oct 2015 21:18:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id q8sm35277765pap.34.2015.10.08.21.18.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 21:18:04 -0700 (PDT)
Date: Thu, 8 Oct 2015 21:18:03 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: remove braces around single statement
 blocks
Message-ID: <20151009041753.GA29116@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove excess braces as suggested by checkpatch.pl:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 73 ++++++++++++++++--------------------
 1 file changed, 33 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index e11d3d3..ff7266c 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -171,9 +171,9 @@ static struct txq_entry_t *wilc_wlan_txq_remove_from_head(void)
 	if (p->txq_head) {
 		tqe = p->txq_head;
 		p->txq_head = tqe->next;
-		if (p->txq_head) {
+		if (p->txq_head)
 			p->txq_head->prev = NULL;
-		}
+
 		p->txq_entries -= 1;
 
 
@@ -312,9 +312,8 @@ static inline int add_TCP_track_session(u32 src_prt, u32 dst_prt, u32 seq)
 static inline int Update_TCP_track_session(u32 index, u32 Ack)
 {
 
-	if (Ack > Acks_keep_track_info[index].Bigger_Ack_num) {
+	if (Ack > Acks_keep_track_info[index].Bigger_Ack_num)
 		Acks_keep_track_info[index].Bigger_Ack_num = Ack;
-	}
 	return 0;
 
 }
@@ -388,9 +387,9 @@ static inline int tcp_process(struct txq_entry_t *tqe)
 						break;
 					}
 				}
-				if (i == Opened_TCP_session) {
+				if (i == Opened_TCP_session)
 					add_TCP_track_session(0, 0, seq_no);
-				}
+
 				add_TCP_Pending_Ack(Ack_no, i, tqe);
 
 
@@ -671,9 +670,9 @@ static inline void chip_wakeup(void)
 				usleep_range(2 * 1000, 2 * 1000);
 				/* Make sure chip is awake. This is an extra step that can be removed */
 				/* later to avoid the bus access overhead */
-				if ((wilc_get_chipid(true) == 0)) {
+				if ((wilc_get_chipid(true) == 0))
 					wilc_debug(N_ERR, "Couldn't read chip id. Wake up failed\n");
-				}
+
 			} while ((wilc_get_chipid(true) == 0) && ((++trials % 3) == 0));
 
 		} while (wilc_get_chipid(true) == 0);
@@ -697,9 +696,9 @@ static inline void chip_wakeup(void)
 				/* later to avoid the bus access overhead */
 				g_wlan.hif_func.hif_read_reg(0xf1, &clk_status_reg);
 
-				if ((clk_status_reg & 0x1) == 0) {
+				if ((clk_status_reg & 0x1) == 0)
 					wilc_debug(N_ERR, "clocks still OFF. Wake up failed\n");
-				}
+
 			}
 			/* in case of failure, Reset the wakeup bit to introduce a new edge on the next loop */
 			if ((clk_status_reg & 0x1) == 0) {
@@ -761,9 +760,9 @@ static inline void chip_wakeup(void)
 
 			/* Make sure chip is awake. This is an extra step that can be removed */
 			/* later to avoid the bus access overhead */
-			if ((wilc_get_chipid(true) == 0)) {
+			if ((wilc_get_chipid(true) == 0))
 				wilc_debug(N_ERR, "Couldn't read chip id. Wake up failed\n");
-			}
+
 		} while ((wilc_get_chipid(true) == 0) && ((++trials % 3) == 0));
 
 	} while (wilc_get_chipid(true) == 0);
@@ -850,23 +849,23 @@ int wilc_wlan_handle_txq(u32 *pu32TxqCount)
 		do {
 			if ((tqe != NULL) && (i < (WILC_VMM_TBL_SIZE - 1)) /* reserve last entry to 0 */) {
 
-				if (tqe->type == WILC_CFG_PKT) {
+				if (tqe->type == WILC_CFG_PKT)
 					vmm_sz = ETH_CONFIG_PKT_HDR_OFFSET;
-				}
-				else if (tqe->type == WILC_NET_PKT) {
+
+				else if (tqe->type == WILC_NET_PKT)
 					vmm_sz = ETH_ETHERNET_HDR_OFFSET;
-				}
-				else {
+
+				else
 					vmm_sz = HOST_HDR_OFFSET;
-				}
+
 				vmm_sz += tqe->buffer_size;
 				PRINT_D(TX_DBG, "VMM Size before alignment = %d\n", vmm_sz);
 				if (vmm_sz & 0x3) {                                                                                                     /* has to be word aligned */
 					vmm_sz = (vmm_sz + 4) & ~0x3;
 				}
-				if ((sum + vmm_sz) > LINUX_TX_SIZE) {
+				if ((sum + vmm_sz) > LINUX_TX_SIZE)
 					break;
-				}
+
 				PRINT_D(TX_DBG, "VMM Size AFTER alignment = %d\n", vmm_sz);
 				vmm_table[i] = vmm_sz / 4;                                                                                /* table take the word size */
 				PRINT_D(TX_DBG, "VMMTable entry size = %d\n", vmm_table[i]);
@@ -929,9 +928,8 @@ int wilc_wlan_handle_txq(u32 *pu32TxqCount)
 			}
 		} while (!p->quit);
 
-		if (!ret) {
+		if (!ret)
 			goto _end_;
-		}
 
 		timeout = 200;
 		do {
@@ -983,9 +981,8 @@ int wilc_wlan_handle_txq(u32 *pu32TxqCount)
 				break;
 			}
 
-			if (!ret) {
+			if (!ret)
 				break;
-			}
 
 			if (entries == 0) {
 				PRINT_WRN(GENERIC_DBG, "[wilc txq]: no more buffer in the chip (reg: %08x), retry later [[ %d, %x ]]\n", reg, i, vmm_table[i - 1]);
@@ -1008,9 +1005,9 @@ int wilc_wlan_handle_txq(u32 *pu32TxqCount)
 			}
 		} while (1);
 
-		if (!ret) {
+		if (!ret)
 			goto _end_;
-		}
+
 		if (entries == 0) {
 			ret = WILC_TX_ERR_NO_BUF;
 			goto _end_;
@@ -1066,9 +1063,8 @@ int wilc_wlan_handle_txq(u32 *pu32TxqCount)
 				if (tqe->tx_complete_func)
 					tqe->tx_complete_func(tqe->priv, tqe->status);
 				#ifdef TCP_ACK_FILTER
-				if (tqe->tcp_PendingAck_index != NOT_TCP_ACK) {
+				if (tqe->tcp_PendingAck_index != NOT_TCP_ACK)
 					Pending_Acks_info[tqe->tcp_PendingAck_index].txqe = NULL;
-				}
 				#endif
 				kfree(tqe);
 			} else {
@@ -1197,9 +1193,8 @@ static void wilc_wlan_handle_rxq(void)
 						 *      wake up the waiting task...
 						 **/
 						PRINT_D(RX_DBG, "p->cfg_seq_no = %d - rsp.seq_no = %d\n", p->cfg_seq_no, rsp.seq_no);
-						if (p->cfg_seq_no == rsp.seq_no) {
+						if (p->cfg_seq_no == rsp.seq_no)
 							up(&g_linux_wlan->cfg_event);
-						}
 					} else if (rsp.type == WILC_CFG_RSP_STATUS) {
 						/**
 						 *      Call back to indicate status...
@@ -1222,9 +1217,9 @@ static void wilc_wlan_handle_rxq(void)
 #endif
 		kfree(rqe);
 
-		if (has_packet) {
+		if (has_packet)
 			linux_wlan_rx_complete();
-		}
+
 	} while (1);
 
 	p->rxq_exit = 1;
@@ -1365,9 +1360,9 @@ void wilc_handle_isr(void)
 	acquire_bus(ACQUIRE_AND_WAKEUP);
 	g_wlan.hif_func.hif_read_int(&int_status);
 
-	if (int_status & PLL_INT_EXT) {
+	if (int_status & PLL_INT_EXT)
 		wilc_pllupdate_isr_ext(int_status);
-	}
+
 	if (int_status & DATA_INT_EXT) {
 		wilc_wlan_handle_isr_ext(int_status);
 	#ifndef WILC_OPTIMIZE_SLEEP_INT
@@ -1375,9 +1370,8 @@ void wilc_handle_isr(void)
 		genuChipPSstate = CHIP_WAKEDUP;
 	#endif
 	}
-	if (int_status & SLEEP_INT_EXT) {
+	if (int_status & SLEEP_INT_EXT)
 		wilc_sleeptimer_isr_ext(int_status);
-	}
 
 	if (!(int_status & (ALL_INT_EXT))) {
 #ifdef WILC_SDIO
@@ -2052,9 +2046,8 @@ u16 Set_machw_change_vir_if(bool bValue)
 	/*Reset WILC_CHANGING_VIR_IF register to allow adding futrue keys to CE H/W*/
 	mutex_lock(&g_linux_wlan->hif_cs);
 	ret = (&g_wlan)->hif_func.hif_read_reg(WILC_CHANGING_VIR_IF, &reg);
-	if (!ret) {
+	if (!ret)
 		PRINT_ER("Error while Reading reg WILC_CHANGING_VIR_IF\n");
-	}
 
 	if (bValue)
 		reg |= BIT(31);
@@ -2063,9 +2056,9 @@ u16 Set_machw_change_vir_if(bool bValue)
 
 	ret = (&g_wlan)->hif_func.hif_write_reg(WILC_CHANGING_VIR_IF, reg);
 
-	if (!ret) {
+	if (!ret)
 		PRINT_ER("Error while writing reg WILC_CHANGING_VIR_IF\n");
-	}
+
 	mutex_unlock(&g_linux_wlan->hif_cs);
 
 	return ret;
-- 
2.1.4


