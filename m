X-GM-THRID: 6523773996804079616
X-Received: by 10.28.103.133 with SMTP id b127mr1144242wmc.30.1518936095539;
        Sat, 17 Feb 2018 22:41:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.199.10 with SMTP id x10ls938534wmf.9.gmail; Sat, 17 Feb
 2018 22:41:34 -0800 (PST)
X-Google-Smtp-Source: AH8x224RIFUBAbCU6qqAxURwVuDEzUprEnuxlfTf4rI3wJC9wuCw7hJkGxLANXvDR3M4loHqcM6i
X-Received: by 10.28.153.194 with SMTP id b185mr1829638wme.9.1518936094488;
        Sat, 17 Feb 2018 22:41:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518936094; cv=none;
        d=google.com; s=arc-20160816;
        b=b7R/+X1U0g2IcZ+j+l6UEUNiKu5X7yq9pTUjd4A2ZvYExB1zPdHlsUNERqP7r9vYlt
         VAov4A8TPSYCb/6qBxOuhn6WnZjuXDuG5xQxeIplXrHad9YfO/VYxOnsP2+VYb4W3Yms
         U/V/+/eBiARNguUplsn3IWAA99b9VzW1sNs7bl06poEkZa9bycOeEYo1PG7qX/gWMx3z
         0w217Rq79IEtGAtuW7fOWkbADe3qMyhNZEUhaKkoG8TCmmPnzRsxeYlfSu2uMG5lRL15
         e7sAbZLtvDvdwz0Sf+vKs9kV4mbAVqGNZkhQGQKLn9sEgBrDZUHdc2iZb4Dz7w9QKg0F
         tn0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=4flbcLx+jyDfT4xR59kJm94FwK70CNmnn2czaphvqiE=;
        b=hKWPhZrtFqquKl1IRbaaSMqXH1+NifwOvfZUI90JZ7usKgyas9dCLcWpJbsdzeZ0j+
         VTJp6f4uzXikDwTm6ubigoqpZnmaIt7pQSc2eSfuNK670D701L/4hKR9UVMtmxSo7Fee
         S2rDs0HfW9B644pGUbjNfklGG+tp0NkqYL0qqoftDxY8CkOgXSJQa+nzgcDYx2d0iSWY
         y3zbefTckb9xJt8YvLfQ/9Qvew/w0MjosBvuABaJ2VGB+opN4dyYGdC+a+FIlW9GxSoW
         rskmVYtWi/65Yk1hjEsdkcqkOLkNugVqUaEjj8cDZHbyfP0U/Xsa/2/LwiSc2RvC27Ux
         OWFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v196si383643wmf.1.2018.02.17.22.41.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 22:41:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,528,1511823600"; 
   d="scan'208";a="314092996"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 07:41:33 +0100
Date: Sun, 18 Feb 2018 07:41:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: clean up
 conditionals
In-Reply-To: <20180218061449.GA16247@gmail.com>
Message-ID: <alpine.DEB.2.20.1802180738380.2720@hadrien>
References: <20180218061449.GA16247@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Feb 2018, Dafna Hirschfeld wrote:

> Move closing braces and paranthes to the end of the line.
> Remove braces from 'if' statements with a single 'then' line.
> Move logical operators to end of lines
> in multiline conditional.
> Remove unnecessary paranthes.
> Issues found with checkpatch.pl

The changes look nicer now.  The lines in the commit log are still on the
short side, though.  Try for 70-75 characters per line.

Also parentheses is spelled wrong.

julia

>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
> Changes in v2:
> - No breaking line is needed
> - Move logical operators to end of lines
> in multiline conditional where possible
> - Move closing parentheses to the end of line
> - Remove unnecessary paranthes
>
>  drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 24 +++++++-----------------
>  1 file changed, 7 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> index f29e110..21e1b81 100644
> --- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> @@ -64,9 +64,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
>  	if (alloc_sz > 0) {
>  		pxmitbuf->pallocated_buf = rtw_zmalloc(alloc_sz);
>  		if (pxmitbuf->pallocated_buf == NULL)
> -		{
>  			return _FAIL;
> -		}
>
>  		pxmitbuf->pbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitbuf->pallocated_buf), XMITBUF_ALIGN_SZ);
>  	}
> @@ -90,10 +88,8 @@ void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
>  	queue = skb_get_queue_mapping(pkt);
>  	if (padapter->registrypriv.wifi_spec) {
>  		if (__netif_subqueue_stopped(padapter->pnetdev, queue) &&
> -			(pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
> -		{
> +		    (pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
>  			netif_wake_subqueue(padapter->pnetdev, queue);
> -		}
>  	} else {
>  		if (__netif_subqueue_stopped(padapter->pnetdev, queue))
>  			netif_wake_subqueue(padapter->pnetdev, queue);
> @@ -177,18 +173,15 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
>
>  	for (i = 0; i < chk_alive_num; i++) {
>  		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
> -		if (!(psta->state & _FW_LINKED))
> -		{
> +		if (!(psta->state & _FW_LINKED)) {
>  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_fw_linked);
>  			continue;
>  		}
>
>  		/* avoid come from STA1 and send back STA1 */
> -		if (!memcmp(psta->hwaddr, &skb->data[6], 6)
> -			|| !memcmp(psta->hwaddr, null_addr, 6)
> -			|| !memcmp(psta->hwaddr, bc_addr, 6)
> -		)
> -		{
> +		if (!memcmp(psta->hwaddr, &skb->data[6], 6) ||
> +		    !memcmp(psta->hwaddr, null_addr, 6) ||
> +		    !memcmp(psta->hwaddr, bc_addr, 6)) {
>  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_self);
>  			continue;
>  		}
> @@ -248,14 +241,11 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
>  			|| is_broadcast_mac_addr(pkt->data)
>  			#endif
>  			)
> -		&& (padapter->registrypriv.wifi_spec == 0)
> -		)
> -	{
> +		&& padapter->registrypriv.wifi_spec == 0) {
>  		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
>  			res = rtw_mlcst2unicst(padapter, pkt);
> -			if (res == true) {
> +			if (res == true)
>  				goto exit;
> -			}
>  		} else {
>  			/* DBG_871X("Stop M2U(%d, %d)! ", pxmitpriv->free_xmitframe_cnt, pxmitpriv->free_xmitbuf_cnt); */
>  			/* DBG_871X("!m2u); */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180218061449.GA16247%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

