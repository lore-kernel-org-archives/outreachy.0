X-GM-THRID: 6332335989632008192
X-Received: by 10.25.200.20 with SMTP id y20mr992862lff.21.1474382685740;
        Tue, 20 Sep 2016 07:44:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.193 with SMTP id s184ls1054696lja.43.gmail; Tue, 20 Sep
 2016 07:44:44 -0700 (PDT)
X-Received: by 10.46.69.213 with SMTP id s204mr1040884lja.18.1474382684980;
        Tue, 20 Sep 2016 07:44:44 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si2572186wmd.1.2016.09.20.07.44.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 07:44:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,368,1470693600"; 
   d="scan'208";a="237566007"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Sep 2016 16:44:44 +0200
Date: Tue, 20 Sep 2016 16:44:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net, 
    florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/4] Staging: rtl8712: rtl8712_recv:
 Use !x instead of x == NULL
In-Reply-To: <27343d51184cdabfc675105edc04caa8b8c50bbe.1474360940.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.10.1609201643100.2914@hadrien>
References: <cover.1474360939.git.bankarsandhya512@gmail.com> <27343d51184cdabfc675105edc04caa8b8c50bbe.1474360940.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 20 Sep 2016, Sandhya Bankar wrote:

> Use !x instead of x == NULL. This patch was found by checkpatch.
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_recv.c |   12 ++++++------
>  1 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> index 4027d1a..66f0e0a 100644
> --- a/drivers/staging/rtl8712/rtl8712_recv.c
> +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> @@ -60,7 +60,7 @@ int r8712_init_recv_priv(struct recv_priv *precvpriv, struct _adapter *padapter)
>  	_init_queue(&precvpriv->free_recv_buf_queue);
>  	precvpriv->pallocated_recv_buf =
>  		kzalloc(NR_RECVBUFF * sizeof(struct recv_buf) + 4, GFP_ATOMIC);
> -	if (precvpriv->pallocated_recv_buf == NULL)
> +	if (!precvpriv->pallocated_recv_buf)
>  		return _FAIL;

No relation to this patch, but it could be nice to think about how to get
rid of these non-standard return values.  For example, the normal return
value for failure of kzalloc is -ENOMEM.  This would require checking all
of the return points from this function, and then checking all of the call
sites of this function to see/adjust what values they expect.

julia


>  	precvpriv->precv_buf = precvpriv->pallocated_recv_buf + 4 -
>  			      ((addr_t) (precvpriv->pallocated_recv_buf) & 3);
> @@ -274,7 +274,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
>  	fragnum = pfhdr->attrib.frag_num;
>  	psta_addr = pfhdr->attrib.ta;
>  	psta = r8712_get_stainfo(pstapriv, psta_addr);
> -	if (psta == NULL)
> +	if (!psta)
>  		pdefrag_q = NULL;
>  	else
>  		pdefrag_q = &psta->sta_recvpriv.defrag_q;
> @@ -999,15 +999,15 @@ int recv_func(struct _adapter *padapter, void *pcontext)
>  	}
>  	process_phy_info(padapter, prframe);
>  	prframe = r8712_decryptor(padapter, prframe);
> -	if (prframe == NULL) {
> +	if (!prframe) {
>  		retval = _FAIL;
>  		goto _exit_recv_func;
>  	}
>  	prframe = r8712_recvframe_chk_defrag(padapter, prframe);
> -	if (prframe == NULL)
> +	if (!prframe)
>  		goto _exit_recv_func;
>  	prframe = r8712_portctrl(padapter, prframe);
> -	if (prframe == NULL) {
> +	if (!prframe) {
>  		retval = _FAIL;
>  		goto _exit_recv_func;
>  	}
> @@ -1065,7 +1065,7 @@ static int recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
>  		if ((le32_to_cpu(prxstat->rxdw0) >> 23) & 0x01)
>  			shift_sz = 2;
>  		precvframe = r8712_alloc_recvframe(pfree_recv_queue);
> -		if (precvframe == NULL)
> +		if (!precvframe)
>  			goto  _exit_recvbuf2recvframe;
>  		INIT_LIST_HEAD(&precvframe->u.hdr.list);
>  		precvframe->u.hdr.precvbuf = NULL; /*can't access the precvbuf*/
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/27343d51184cdabfc675105edc04caa8b8c50bbe.1474360940.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

