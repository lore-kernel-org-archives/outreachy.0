X-GM-THRID: 6668981360875536384
X-Received: by 2002:a17:906:3744:: with SMTP id e4mr989936ejc.3.1552754442310;
        Sat, 16 Mar 2019 09:40:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8ebb:: with SMTP id w56ls284927edw.2.gmail; Sat, 16 Mar
 2019 09:40:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxDg4O/fhqOCBRZKIzJhHhnQqmCmvYy1fYX6jAwUWLeKk+PlHMY/Yx9pllLhVNx6CzQDn9k
X-Received: by 2002:a50:b361:: with SMTP id r30mr1091977edd.8.1552754441619;
        Sat, 16 Mar 2019 09:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552754441; cv=none;
        d=google.com; s=arc-20160816;
        b=j/Lhk0waBfm5oP5RvZPRvDXN29dSttY3E6eBASdL5jsdzGZO8eZAPeTxvGsLy3c/GL
         MBqoENpJ/fPiNBnnIj3jenSlCpi5qXZ0nmoe/Q6FZ8EaFTmcm9khMPKZxtZmNiaxBr/+
         usve/SWx2WtbrI0s6RFBAzDG0n0cVjV7G1MN69cWQj2AoKY38/+zeRCBAVt387XT1Cgu
         WSsD2id8mEy09MSqFRLa7apumR7FEfFeOvWtdIH9qs1jv/g4eJ7/3jhraCW2sGQQkFGU
         7SK+ug0fb1d4v+XbJNwD2Y+fE1i7jsU5fDYJe9CWLRb6lmzoOEE6wrbpy4S+tXq5Jre9
         8cFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=WYOfpY/BVEXfJoZmOO5/WztBrEJSuVOX6vn7+GhGbug=;
        b=prDQWbevRZCcWkskAc1SO7nt1Qm7+cZFOYsGciD0KJDSf9PjMBD4fT5m5UDKrxES0t
         eq0NSLtSNpN6Clt1IborrDN7fFfmqb855FozOCGqAAPFtpEttt0rD6FsVxu2uueVhWrq
         kl/OemmXkt67lxrJhWAdTov0BwzyEA0Fzt3fdCs1Gpnzt9UzSFn5mDlSa4kDGeDZP1Dc
         IvaPJelUT1hOa0zv5YuKRQ7cEGW3YmwAo0RV/14N917kiOGZWHavNJtxtWRntR/SC4Ub
         1g3CATIgSpuagHHgzr/fG0QtnK+vjVRQCw2dpg03VP/MOStjqunbXcHdsL7cXBWVQwz4
         jWsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r37si184956edd.2.2019.03.16.09.40.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:40:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="299588691"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 17:40:40 +0100
Date: Sat, 16 Mar 2019 17:40:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: rtl8188eu: rtw_recv.c:
 fix a space issue
In-Reply-To: <20190316162913.19144-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161738310.2487@hadrien>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com> <20190316162913.19144-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Sanjana Sanikommu wrote:

> Fix a space issue which removed checks after compilation using
> checkpatch.pl.

I don't understand "removed checks after compilation".

>
> CHECK: spaces preferred around '%' (ctx:VxV)
> CHECK: spaces preferred around '-' (ctx:VxV)
> CHECK: spaces preferred around '&' (ctx:VxV)
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 24 +++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index fc72e797f8e5..1d3e011a732a 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -253,7 +253,7 @@ static int recvframe_chkmic(struct adapter *adapter,
>
>  			/* icv_len included the mic code */
>  			datalen = precvframe->pkt->len-prxattrib->hdrlen -
> -				  prxattrib->iv_len-prxattrib->icv_len-8;
> +				  prxattrib->iv_len - prxattrib->icv_len-8;

There are two occurrences of - on this line.

>  			pframe = precvframe->pkt->data;
>  			payload = pframe+prxattrib->hdrlen+prxattrib->iv_len;
>
> @@ -277,14 +277,14 @@ static int recvframe_chkmic(struct adapter *adapter,
>  			if (bmic_err) {
>  				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
>  					 ("\n *(pframemic-8)-*(pframemic-1)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
> -					 *(pframemic-8), *(pframemic-7), *(pframemic-6),
> -					 *(pframemic-5), *(pframemic-4), *(pframemic-3),
> -					 *(pframemic-2), *(pframemic-1)));
> +					 *(pframemic - 8), *(pframemic - 7), *(pframemic - 6),
> +					 *(pframemic - 5), *(pframemic - 4), *(pframemic - 3),
> +					 *(pframemic - 2), *(pframemic - 1)));
>  				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
>  					 ("\n *(pframemic-16)-*(pframemic-9)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
> -					 *(pframemic-16), *(pframemic-15), *(pframemic-14),
> -					 *(pframemic-13), *(pframemic-12), *(pframemic-11),
> -					 *(pframemic-10), *(pframemic-9)));
> +					 *(pframemic - 16), *(pframemic - 15), *(pframemic - 14),
> +					 *(pframemic - 13), *(pframemic - 12), *(pframemic - 11),
> +					 *(pframemic - 10), *(pframemic - 9)));

This makes the overflow of 80 characters even worse.  Add some newlines to
solve the problem.

>  				{
>  					uint i;
>
> @@ -367,7 +367,7 @@ static struct recv_frame *decryptor(struct adapter *padapter,
>  	if (prxattrib->encrypt > 0) {
>  		u8 *iv = precv_frame->pkt->data+prxattrib->hdrlen;
>
> -		prxattrib->key_index = (((iv[3])>>6)&0x3);
> +		prxattrib->key_index = (((iv[3])>>6) & 0x3);

There should be spaces around the >> as well.

julia

>
>  		if (prxattrib->key_index > WEP_KEYS) {
>  			DBG_88E("prxattrib->key_index(%d)>WEP_KEYS\n", prxattrib->key_index);
> @@ -496,7 +496,7 @@ static int recv_decache(struct recv_frame *precv_frame, u8 bretry,
>  {
>  	int tid = precv_frame->attrib.priority;
>
> -	u16 seq_ctrl = ((precv_frame->attrib.seq_num&0xffff) << 4) |
> +	u16 seq_ctrl = ((precv_frame->attrib.seq_num & 0xffff) << 4) |
>  		(precv_frame->attrib.frag_num & 0xf);
>
>  	if (tid > 15) {
> @@ -564,7 +564,7 @@ static void process_wmmps_data(struct adapter *padapter,
>  	if (!(psta->qos_info&0xf))
>  		return;
>
> -	if (psta->state&WIFI_SLEEP_STATE) {
> +	if (psta->state & WIFI_SLEEP_STATE) {
>  		u8 wmmps_ac = 0;
>
>  		switch (pattrib->priority) {
> @@ -1763,7 +1763,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
>  			preorder_ctrl->indicate_seq = pattrib->seq_num;
>  			rtw_recv_indicatepkt(padapter, prframe);
>
> -			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
> +			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
>  			return _SUCCESS;
>  		}
>  	} else if (pattrib->amsdu == 1) { /* temp filter -> means didn't support A-MSDUs in a A-MPDU */
> @@ -1771,7 +1771,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316162913.19144-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

