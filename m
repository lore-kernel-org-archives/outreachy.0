X-GM-THRID: 6523773996804079616
X-Received: by 10.46.46.23 with SMTP id u23mr760200lju.14.1518973096810;
        Sun, 18 Feb 2018 08:58:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.80.82 with SMTP id z18ls100166lfj.15.gmail; Sun, 18 Feb
 2018 08:58:15 -0800 (PST)
X-Google-Smtp-Source: AH8x227X2c8r0y5+wRYO+0tMqkOKMGIrwIBP952I2525PcLfyIJ4vxd3dvH2VtkSTIzle7Ybxg8E
X-Received: by 10.25.27.209 with SMTP id b200mr839848lfb.27.1518973095281;
        Sun, 18 Feb 2018 08:58:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518973095; cv=none;
        d=google.com; s=arc-20160816;
        b=SGIn3rL4W5Zfs0nGgf6HaO1HMawJHNG1w8zLeN+BxMsZk5wbUllt9+b78iHkB5tcO8
         kC4QhMQiiMRcViMA1/ksfzL3QeQ092zdT/yzQmuGBsed+ADKT6G1Y8YhQcnIEHuc4lLl
         JJmKud5/hl3+W9UDrIKZf5XbruD/a7pjGu6XYHMgZcr8K8bKdTfJd9JTiiv/I4o7IvWq
         L4+hR6GEh03PJxVwozJ0DwRPvvknUzKq8Rrn+Lv0NiJZ6LOxTfj1ctav5sCQzukO8QQh
         uZkcRYinj+INCt5KvA9ukXHyUHAXGTKEpvIdrFPllxNmgxZQOD68o5IoUoYWCyZJvnVX
         e4VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=kfuJKgIz0CYq1uovLGubPTbZHiaKT6xEMc1tZXBgZ8A=;
        b=biKpzbm9yjE7MLqZeB0HrVdFiIL54o+AJz+y+MvDLtwbNOEUg/C2C6WQn7QABvBTyj
         9l10xF4AZmrycefS3Bhs3HBp2PtgFKFfgtjUVJHh132PkNRfTBBvwiv8/4p2HGja8YHd
         0ncCqtHAJVQq+rE9JXIE3P+16kxCEoKFU2v8ZmkG3Y+IjU0hd+In8XmeJ4BlVCMWCYnO
         VeLiDj7Yt+e0D6sWtrO08Lo+kfS6aAPlyA07Mxvcg2Nq0N3wNwRAFAos/csVdFoGyc9h
         PWh/FjoLnrPIHB7Fnm1jO5F39/5f9XHVjq/hS9Y8JAH7UXXOvVLLQn1slFYbXLUetkUN
         x1EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z10si70435ljc.5.2018.02.18.08.58.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 08:58:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,531,1511823600"; 
   d="scan'208";a="314129476"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 17:58:14 +0100
Date: Sun, 18 Feb 2018 17:58:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: rtl8723bs: clean up
 conditionals
In-Reply-To: <20180218164300.GA22789@gmail.com>
Message-ID: <alpine.DEB.2.20.1802181758010.2777@hadrien>
References: <20180218164300.GA22789@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Feb 2018, Dafna Hirschfeld wrote:

> Move all closing braces and parentheses to the end of the line.
> Remove braces from 'if' statements with a single 'then' line.
> Move logical operators to the end of lines in multiline conditional.
> Remove unnecessary parentheses.
> Issues found with checkpatch.pl
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v4:
> - Fix commit body spelling and lines
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180218164300.GA22789%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

