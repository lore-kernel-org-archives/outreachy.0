X-GM-THRID: 6252303141698535424
X-Received: by 10.112.167.136 with SMTP id zo8mr423244lbb.10.1455727966265;
        Wed, 17 Feb 2016 08:52:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.23.94 with SMTP id n91ls932168lfi.99.gmail; Wed, 17 Feb
 2016 08:52:45 -0800 (PST)
X-Received: by 10.25.18.227 with SMTP id 96mr433107lfs.4.1455727965548;
        Wed, 17 Feb 2016 08:52:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w197si170322wmw.3.2016.02.17.08.52.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 08:52:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,461,1449529200"; 
   d="scan'208";a="203531705"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 17:52:44 +0100
Date: Wed, 17 Feb 2016 11:52:42 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] staging: wilc1000: Fix line over 80 characters
 long
In-Reply-To: <9a360b5a2d20b83ab91b34f4b0fc199cc5133a22.1455727711.git.anchalj109@gmail.com>
Message-ID: <alpine.DEB.2.10.1602171151340.4547@hadrien>
References: <cover.1455727711.git.anchalj109@gmail.com> <9a360b5a2d20b83ab91b34f4b0fc199cc5133a22.1455727711.git.anchalj109@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 17 Feb 2016, Anchal Jain wrote:

> Break lines so that they do not exceed 80
> characters. Problem found using checkpatch.
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 45 +++++++++++++++++++++++++-----------
>  1 file changed, 31 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index 98b21d4..a611cba 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -200,7 +200,8 @@ static inline int add_tcp_pending_ack(u32 ack, u32 session_index,
>  	if (pending_base + pending_acks < MAX_PENDING_ACKS) {
>  		pending_acks_info[pending_base + pending_acks].ack_num = ack;
>  		pending_acks_info[pending_base + pending_acks].txqe = txqe;
> -		pending_acks_info[pending_base + pending_acks].session_index = session_index;
> +		pending_acks_info[pending_base + pending_acks].session_index =
> +			session_index;
>  		txqe->tcp_pending_ack_idx = pending_base + pending_acks;
>  		pending_acks++;
>  	}
> @@ -256,7 +257,8 @@ static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
>
>  				for (i = 0; i < tcp_session; i++) {
>  					if (i < 2 * MAX_TCP_SESSION &&
> -					    ack_session_info[i].seq_num == seq_no) {
> +					    ack_session_info[i].seq_num ==
> +						seq_no) {
>  						update_tcp_session(i, ack_no);
>  						break;
>  					}
> @@ -513,7 +515,8 @@ void chip_wakeup(struct wilc *wilc)
>  				if ((wilc_get_chipid(wilc, true) == 0))
>  					wilc_debug(N_ERR, "Couldn't read chip id. Wake up failed\n");
>
> -			} while ((wilc_get_chipid(wilc, true) == 0) && ((++trials % 3) == 0));
> +			} while ((wilc_get_chipid(wilc, true) == 0) &&
> +				 ((++trials % 3) == 0));
>
>  		} while (wilc_get_chipid(wilc, true) == 0);
>  	} else if ((wilc->io_type & 0x1) == HIF_SDIO)	 {
> @@ -526,7 +529,8 @@ void chip_wakeup(struct wilc *wilc)
>  			wilc->hif_func->hif_read_reg(wilc, 0xf1,
>  						     &clk_status_reg);
>
> -			while (((clk_status_reg & 0x1) == 0) && (((++trials) % 3) == 0)) {
> +			while (((clk_status_reg & 0x1) == 0) &&
> +				(((++trials) % 3) == 0)) {
>  				usleep_range(2 * 1000, 2 * 1000);
>
>  				wilc->hif_func->hif_read_reg(wilc, 0xf1,
> @@ -672,7 +676,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  				counter++;
>  				if (counter > 200) {
>  					counter = 0;
> -					ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, 0);
> +					ret = wilc->hif_func->hif_write_reg(
> +						wilc, WILC_HOST_TX_CTRL, 0);
>  					break;
>  				}
>  			}
> @@ -683,7 +688,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>
>  		timeout = 200;
>  		do {
> -			ret = wilc->hif_func->hif_block_tx(wilc, WILC_VMM_TBL_RX_SHADOW_BASE, (u8 *)vmm_table, ((i + 1) * 4));
> +			ret = wilc->hif_func->hif_block_tx(wilc,
> +					WILC_VMM_TBL_RX_SHADOW_BASE,
> +					(u8 *)vmm_table, ((i + 1) * 4));
>  			if (!ret)
>  				break;
>
> @@ -694,7 +701,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  				break;
>
>  			do {
> -				ret = wilc->hif_func->hif_read_reg(wilc, WILC_HOST_VMM_CTL, &reg);
> +				ret = wilc->hif_func->hif_read_reg(wilc,
> +						WILC_HOST_VMM_CTL, &reg);
>  				if (!ret)
>  					break;
>  				if ((reg >> 2) & 0x1) {
> @@ -705,7 +713,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  				}
>  			} while (--timeout);
>  			if (timeout <= 0) {
> -				ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_VMM_CTL, 0x0);
> +				ret = wilc->hif_func->hif_write_reg(wilc,
> +						WILC_HOST_VMM_CTL, 0x0);
>  				break;
>  			}
>
> @@ -713,11 +722,13 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  				break;
>
>  			if (entries == 0) {
> -				ret = wilc->hif_func->hif_read_reg(wilc, WILC_HOST_TX_CTRL, &reg);
> +				ret = wilc->hif_func->hif_read_reg(wilc,
> +						WILC_HOST_TX_CTRL, &reg);
>  				if (!ret)
>  					break;
>  				reg &= ~BIT(0);
> -				ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, reg);
> +				ret = wilc->hif_func->hif_write_reg(wilc,
> +						WILC_HOST_TX_CTRL, reg);
>  				if (!ret)
>  					break;
>  				break;
> @@ -757,9 +768,12 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  				header = cpu_to_le32(header);
>  				memcpy(&txb[offset], &header, 4);
>  				if (tqe->type == WILC_CFG_PKT) {
> -					buffer_offset = ETH_CONFIG_PKT_HDR_OFFSET;
> +					buffer_offset =
> +						ETH_CONFIG_PKT_HDR_OFFSET;
>  				} else if (tqe->type == WILC_NET_PKT) {
> -					char *bssid = ((struct tx_complete_data *)(tqe->priv))->bssid;
> +					char *bssid =
> +						((struct tx_complete_data *)
> +						 (tqe->priv))->bssid;
>
>  					buffer_offset = ETH_ETHERNET_HDR_OFFSET;
>  					memcpy(&txb[offset + 4], bssid, 6);
> @@ -853,7 +867,8 @@ static void wilc_wlan_handle_rxq(struct wilc *wilc)
>  						IS_MANAGMEMENT_CALLBACK |
>  						IS_MGMT_STATUS_SUCCES);
>
> -				WILC_WFI_mgmt_rx(wilc, &buffer[offset + HOST_HDR_OFFSET], pkt_len);
> +				WILC_WFI_mgmt_rx(wilc,
> +				&buffer[offset + HOST_HDR_OFFSET], pkt_len);

The argument list needs to be indented as compared o the function name.

>  			} else {
>  				if (!is_cfg_packet) {
>  					if (pkt_len > 0) {
> @@ -865,7 +880,9 @@ static void wilc_wlan_handle_rxq(struct wilc *wilc)
>  				} else {
>  					struct wilc_cfg_rsp rsp;
>
> -					wilc_wlan_cfg_indicate_rx(wilc, &buffer[pkt_offset + offset], pkt_len, &rsp);
> +					wilc_wlan_cfg_indicate_rx(wilc,
> +					&buffer[pkt_offset + offset],
> +							pkt_len, &rsp);

All argument lines need to be indented the same amount.

julia

>  					if (rsp.type == WILC_CFG_RSP) {
>  						if (wilc->cfg_seq_no == rsp.seq_no)
>  							up(&wilc->cfg_event);
> --
> 1.9.1
>
>

