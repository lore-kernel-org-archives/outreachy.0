X-GM-THRID: 6668981360875536384
X-Received: by 2002:a7b:cb45:: with SMTP id v5mr582966wmj.24.1552765314772;
        Sat, 16 Mar 2019 12:41:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:81cb:: with SMTP id c194ls1508827wmd.14.canary-gmail;
 Sat, 16 Mar 2019 12:41:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqysttalxC8IxKyWWXyCfKMLsZ0BTRc2/nsNbzixzBfLuBIEcmmr7XGk99bxUq6cea2p2+90
X-Received: by 2002:a7b:cb45:: with SMTP id v5mr582964wmj.24.1552765313901;
        Sat, 16 Mar 2019 12:41:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552765313; cv=none;
        d=google.com; s=arc-20160816;
        b=z8idZW27s+bMllkBikbpAEGVjK7pWpBxzAQmt0jkIof4EZ7zZ9Rc/5NyPXcawP16qN
         b+DDlb6tPEE2QqO1GwH7eyaLKkM7i+KBu3X77k7JiokSEhd0xmud6u0YckoQBeRy9ISH
         iebcPO0g3PoRsJO9Wv0gyyQlI+3O37A4SIawi3/XE0witGzQMfPu5hGlNO9uj8UptwyG
         AbG8ei713OpwbXWRm0IvEgS+XGegozlHQ9K4riuce+lhVmdCWLhcCqIZRdXcnlHBuu6f
         lMiqP6W12YFWym8PqGa7KJyICajrvwjqvZOt9fddfV4H+hhsMyXGnO05gczApUE5+WZX
         862g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JgubMytBUz1rXOiOTe8j4HIopzvdopTAVGd1apDboZA=;
        b=VtHecA+YhXxof9IwhHP8R66tVA5blImquDIkPDzRT+4/ZRAz3I4bfG+tUlv0JNwTbN
         helPMMptxVtdCakC4xBJzmlpz9nn8ayrTQC1adRrKnl2pQoskTZM9lc0vLkxdOI5l6cD
         TB0uWxqEsNlQkk2M3IgkkEOy3A8SxT0Ss+3z70dVKPtbivSohfghr38nVl3c67Q/tbAT
         p2vryFLJ18xRSKfx4B8uTYf9dNp4+RntBLXLRm2L7SVumQJ/fDKXTrX+8y1eAVDyZt+g
         bGpW2MDfI/aaLjS1hgLvSm3GbzN2G0efcDZucRmMOOO3dHetxEEY6ND5kqOKPR5FlgS0
         ysMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n5si312183wrj.0.2019.03.16.12.41.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:41:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="374101634"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 20:41:53 +0100
Date: Sat, 16 Mar 2019 20:41:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: rtl8188eu: rtw_recv.c:
 fix a space issue
In-Reply-To: <20190316193230.23325-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903162041410.2487@hadrien>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com> <20190316193230.23325-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

You are missing the v3 in the subject line.

julia

On Sun, 17 Mar 2019, Sanjana Sanikommu wrote:

> fix a space issue around the below operators mentioned in CHECK.Issue found by checkpatch.pl semantic patch results for
> rtw_recv.c..
>
> CHECK: spaces preferred around '%' (ctx:VxV)
> CHECK: spaces preferred around '-' (ctx:VxV)
> CHECK: spaces preferred around '&' (ctx:VxV)
> CHECK: spaces preferred around '+' (ctx:VxV)
> CHECK: spaces preferred around '<<' (ctx:VxV)
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v3:
> fix a overflow of 80 characters which occurred due to fix a spaces around '-'
> from the [PATCH v2 3/3]
> fix a space issue around '>>' from the [PATCH v3 3/3]
> fix a space issue around  '-' from the [PATCH v3 3/3]
>
> Changes in v2:
> Remove "From" line from the [PATCH 3/3]
> Change subject line in [PATCH 3/3]
> Change log message in [PATCH 3/3]
>
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 97 +++++++++++++----------
>  1 file changed, 54 insertions(+), 43 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index fc72e797f8e5..d7620b89813f 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -252,21 +252,22 @@ static int recvframe_chkmic(struct adapter *adapter,
>  			}
>
>  			/* icv_len included the mic code */
> -			datalen = precvframe->pkt->len-prxattrib->hdrlen -
> -				  prxattrib->iv_len-prxattrib->icv_len-8;
> +			datalen = precvframe->pkt->len - prxattrib->hdrlen -
> +				  prxattrib->iv_len - prxattrib->icv_len - 8;
>  			pframe = precvframe->pkt->data;
> -			payload = pframe+prxattrib->hdrlen+prxattrib->iv_len;
> +			payload = pframe + prxattrib->hdrlen +
> +				prxattrib->iv_len;
>
>  			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n prxattrib->iv_len=%d prxattrib->icv_len=%d\n", prxattrib->iv_len, prxattrib->icv_len));
>  			rtw_seccalctkipmic(mickey, pframe, payload, datalen, &miccode[0],
>  					   (unsigned char)prxattrib->priority); /* care the length of the data */
>
> -			pframemic = payload+datalen;
> +			pframemic = payload + datalen;
>
>  			bmic_err = false;
>
>  			for (i = 0; i < 8; i++) {
> -				if (miccode[i] != *(pframemic+i)) {
> +				if (miccode[i] != *(pframemic + i)) {
>  					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
>  						 ("%s: miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
>  						  __func__, i, miccode[i], i, *(pframemic + i)));
> @@ -277,14 +278,24 @@ static int recvframe_chkmic(struct adapter *adapter,
>  			if (bmic_err) {
>  				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
>  					 ("\n *(pframemic-8)-*(pframemic-1)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
> -					 *(pframemic-8), *(pframemic-7), *(pframemic-6),
> -					 *(pframemic-5), *(pframemic-4), *(pframemic-3),
> -					 *(pframemic-2), *(pframemic-1)));
> +					 *(pframemic - 8),
> +					 *(pframemic - 7),
> +					 *(pframemic - 6),
> +					 *(pframemic - 5),
> +					 *(pframemic - 4),
> +					 *(pframemic - 3),
> +					 *(pframemic - 2),
> +					 *(pframemic - 1)));
>  				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
>  					 ("\n *(pframemic-16)-*(pframemic-9)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
> -					 *(pframemic-16), *(pframemic-15), *(pframemic-14),
> -					 *(pframemic-13), *(pframemic-12), *(pframemic-11),
> -					 *(pframemic-10), *(pframemic-9)));
> +					 *(pframemic - 16),
> +					 *(pframemic - 15),
> +					 *(pframemic - 14),
> +					 *(pframemic - 13),
> +					 *(pframemic - 12),
> +					 *(pframemic - 11),
> +					 *(pframemic - 10),
> +					 *(pframemic - 9)));
>  				{
>  					uint i;
>
> @@ -295,14 +306,14 @@ static int recvframe_chkmic(struct adapter *adapter,
>  						RT_TRACE(_module_rtl871x_recv_c_,
>  							 _drv_err_,
>  							 ("0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x",
> -							 *(precvframe->pkt->data+i),
> -							 *(precvframe->pkt->data+i+1),
> -							 *(precvframe->pkt->data+i+2),
> -							 *(precvframe->pkt->data+i+3),
> -							 *(precvframe->pkt->data+i+4),
> -							 *(precvframe->pkt->data+i+5),
> -							 *(precvframe->pkt->data+i+6),
> -							 *(precvframe->pkt->data+i+7)));
> +							 *(precvframe->pkt->data + i),
> +							 *(precvframe->pkt->data + i + 1),
> +							 *(precvframe->pkt->data + i + 2),
> +							 *(precvframe->pkt->data + i + 3),
> +							 *(precvframe->pkt->data + i + 4),
> +							 *(precvframe->pkt->data + i + 5),
> +							 *(precvframe->pkt->data + i + 6),
> +							 *(precvframe->pkt->data + i + 7)));
>  					}
>  					RT_TRACE(_module_rtl871x_recv_c_,
>  						 _drv_err_,
> @@ -365,9 +376,9 @@ static struct recv_frame *decryptor(struct adapter *padapter,
>  	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("prxstat->decrypted=%x prxattrib->encrypt=0x%03x\n", prxattrib->bdecrypted, prxattrib->encrypt));
>
>  	if (prxattrib->encrypt > 0) {
> -		u8 *iv = precv_frame->pkt->data+prxattrib->hdrlen;
> +		u8 *iv = precv_frame->pkt->data + prxattrib->hdrlen;
>
> -		prxattrib->key_index = (((iv[3])>>6)&0x3);
> +		prxattrib->key_index = (((iv[3]) >> 6) & 0x3);
>
>  		if (prxattrib->key_index > WEP_KEYS) {
>  			DBG_88E("prxattrib->key_index(%d)>WEP_KEYS\n", prxattrib->key_index);
> @@ -496,7 +507,7 @@ static int recv_decache(struct recv_frame *precv_frame, u8 bretry,
>  {
>  	int tid = precv_frame->attrib.priority;
>
> -	u16 seq_ctrl = ((precv_frame->attrib.seq_num&0xffff) << 4) |
> +	u16 seq_ctrl = ((precv_frame->attrib.seq_num & 0xffff) << 4) |
>  		(precv_frame->attrib.frag_num & 0xf);
>
>  	if (tid > 15) {
> @@ -561,29 +572,29 @@ static void process_wmmps_data(struct adapter *padapter,
>  	if (!psta->qos_option)
>  		return;
>
> -	if (!(psta->qos_info&0xf))
> +	if (!(psta->qos_info & 0xf))
>  		return;
>
> -	if (psta->state&WIFI_SLEEP_STATE) {
> +	if (psta->state & WIFI_SLEEP_STATE) {
>  		u8 wmmps_ac = 0;
>
>  		switch (pattrib->priority) {
>  		case 1:
>  		case 2:
> -			wmmps_ac = psta->uapsd_bk&BIT(1);
> +			wmmps_ac = psta->uapsd_bk & BIT(1);
>  			break;
>  		case 4:
>  		case 5:
> -			wmmps_ac = psta->uapsd_vi&BIT(1);
> +			wmmps_ac = psta->uapsd_vi & BIT(1);
>  			break;
>  		case 6:
>  		case 7:
> -			wmmps_ac = psta->uapsd_vo&BIT(1);
> +			wmmps_ac = psta->uapsd_vo & BIT(1);
>  			break;
>  		case 0:
>  		case 3:
>  		default:
> -			wmmps_ac = psta->uapsd_be&BIT(1);
> +			wmmps_ac = psta->uapsd_be & BIT(1);
>  			break;
>  		}
>
> @@ -897,20 +908,20 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
>  		switch (pattrib->priority) {
>  		case 1:
>  		case 2:
> -			wmmps_ac = psta->uapsd_bk&BIT(0);
> +			wmmps_ac = psta->uapsd_bk & BIT(0);
>  			break;
>  		case 4:
>  		case 5:
> -			wmmps_ac = psta->uapsd_vi&BIT(0);
> +			wmmps_ac = psta->uapsd_vi & BIT(0);
>  			break;
>  		case 6:
>  		case 7:
> -			wmmps_ac = psta->uapsd_vo&BIT(0);
> +			wmmps_ac = psta->uapsd_vo & BIT(0);
>  			break;
>  		case 0:
>  		case 3:
>  		default:
> -			wmmps_ac = psta->uapsd_be&BIT(0);
> +			wmmps_ac = psta->uapsd_be & BIT(0);
>  			break;
>  		}
>
> @@ -923,7 +934,7 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
>  			psta->state ^= WIFI_STA_ALIVE_CHK_STATE;
>  		}
>
> -		if ((psta->state&WIFI_SLEEP_STATE) && (pstapriv->sta_dz_bitmap&BIT(psta->aid))) {
> +		if ((psta->state & WIFI_SLEEP_STATE) && (pstapriv->sta_dz_bitmap & BIT(psta->aid))) {
>  			struct list_head *xmitframe_plist, *xmitframe_phead;
>  			struct xmit_frame *pxmitframe = NULL;
>
> @@ -961,7 +972,7 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
>  					update_beacon(padapter, _TIM_IE_, NULL, false);
>  				}
>  			} else {
> -				if (pstapriv->tim_bitmap&BIT(psta->aid)) {
> +				if (pstapriv->tim_bitmap & BIT(psta->aid)) {
>  					if (psta->sleepq_len == 0) {
>  						DBG_88E("no buffered packets to xmit\n");
>
> @@ -1160,7 +1171,7 @@ static int validate_recv_frame(struct adapter *adapter,
>  	u8 bDumpRxPkt;
>  	struct rx_pkt_attrib *pattrib = &precv_frame->attrib;
>  	u8 *ptr = precv_frame->pkt->data;
> -	u8  ver = (unsigned char)(*ptr)&0x3;
> +	u8  ver = (unsigned char)(*ptr) & 0x3;
>  	struct mlme_ext_priv *pmlmeext = &adapter->mlmeextpriv;
>
>  	if (pmlmeext->sitesurvey_res.state == SCAN_PROCESS) {
> @@ -1279,8 +1290,8 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
>  	if (pattrib->encrypt)
>  		skb_trim(precvframe->pkt, precvframe->pkt->len - pattrib->icv_len);
>
> -	psnap = (struct ieee80211_snap_hdr *)(ptr+pattrib->hdrlen + pattrib->iv_len);
> -	psnap_type = ptr+pattrib->hdrlen + pattrib->iv_len+SNAP_SIZE;
> +	psnap = (struct ieee80211_snap_hdr *)(ptr + pattrib->hdrlen + pattrib->iv_len);
> +	psnap_type = ptr + pattrib->hdrlen + pattrib->iv_len + SNAP_SIZE;
>  	/* convert hdr + possible LLC headers into Ethernet header */
>  	if ((!memcmp(psnap, rtw_rfc1042_header, SNAP_SIZE) &&
>  	     memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2) &&
> @@ -1299,7 +1310,7 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
>  	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
>  		 ("\n===pattrib->hdrlen: %x,  pattrib->iv_len:%x===\n\n", pattrib->hdrlen,  pattrib->iv_len));
>
> -	memcpy(&be_tmp, ptr+rmv_len, 2);
> +	memcpy(&be_tmp, ptr + rmv_len, 2);
>  	eth_type = ntohs(be_tmp); /* pattrib->ether_type */
>  	pattrib->eth_type = eth_type;
>
> @@ -1308,11 +1319,11 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
>  		return _FAIL;
>
>  	memcpy(ptr, pattrib->dst, ETH_ALEN);
> -	memcpy(ptr+ETH_ALEN, pattrib->src, ETH_ALEN);
> +	memcpy(ptr + ETH_ALEN, pattrib->src, ETH_ALEN);
>
>  	if (!bsnaphdr) {
>  		be_tmp = htons(len);
> -		memcpy(ptr+12, &be_tmp, 2);
> +		memcpy(ptr + 12, &be_tmp, 2);
>  	}
>
>  	return _SUCCESS;
> @@ -1560,7 +1571,7 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
>  		pdata += nSubframe_Length;
>  		a_len -= nSubframe_Length;
>  		if (a_len != 0) {
> -			padding_len = 4 - ((nSubframe_Length + ETH_HLEN) & (4-1));
> +			padding_len = 4 - ((nSubframe_Length + ETH_HLEN) & (4 - 1));
>  			if (padding_len == 4)
>  				padding_len = 0;
>
> @@ -1763,7 +1774,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
>  			preorder_ctrl->indicate_seq = pattrib->seq_num;
>  			rtw_recv_indicatepkt(padapter, prframe);
>
> -			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
> +			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
>  			return _SUCCESS;
>  		}
>  	} else if (pattrib->amsdu == 1) { /* temp filter -> means didn't support A-MSDUs in a A-MPDU */
> @@ -1771,7 +1782,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
>  			preorder_ctrl->indicate_seq = pattrib->seq_num;
>  			retval = amsdu_to_msdu(padapter, prframe);
>
> -			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
> +			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
>  			return retval;
>  		}
>  	}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316193230.23325-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

