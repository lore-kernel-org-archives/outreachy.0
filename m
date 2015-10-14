X-GM-THRID: 6205479417229082624
X-Received: by 10.25.24.74 with SMTP id o71mr17868lfi.9.1444826659866;
        Wed, 14 Oct 2015 05:44:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.162 with SMTP id q2ls1278586wik.20.canary; Wed, 14 Oct
 2015 05:44:18 -0700 (PDT)
X-Received: by 10.194.192.71 with SMTP id he7mr725134wjc.2.1444826658409;
        Wed, 14 Oct 2015 05:44:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i8si308148wib.1.2015.10.14.05.44.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 05:44:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,681,1437429600"; 
   d="scan'208";a="182760347"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2015 14:44:18 +0200
Date: Wed, 14 Oct 2015 14:44:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: rtl8712_xmit: Remove
 unnecessary cast
In-Reply-To: <20151014122915.GA11874@ubuntu>
Message-ID: <alpine.DEB.2.10.1510141443020.2421@hadrien>
References: <20151014122915.GA11874@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:

> Explicit typecasting of variables is not required and should be removed.
> Semantic patch used:
> @@
> type T;
> T e;
> identifier x;
> @@
>
> * T x = (T)e;
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_xmit.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
> index 86206d3..9e50bbf 100644
> --- a/drivers/staging/rtl8712/rtl8712_xmit.c
> +++ b/drivers/staging/rtl8712/rtl8712_xmit.c
> @@ -96,7 +96,7 @@ static u32 get_ff_hwaddr(struct xmit_frame *pxmitframe)
>  	u32 addr = 0;
>  	struct pkt_attrib *pattrib = &pxmitframe->attrib;
>  	struct _adapter *padapter = pxmitframe->padapter;
> -	struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
> +	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
>
>  	if (pxmitframe->frame_tag == TXAGG_FRAMETAG)
>  		addr = RTL8712_DMA_H2CCMD;
> @@ -237,7 +237,7 @@ void r8712_do_queue_select(struct _adapter *padapter,
>  			   struct pkt_attrib *pattrib)
>  {
>  	unsigned int qsel = 0;
> -	struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
> +	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
>
>  	if (pdvobj->nr_endpoint == 6)
>  		qsel = (unsigned int) pattrib->priority;
> @@ -374,8 +374,8 @@ u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
>  			struct xmit_frame *pxmitframe)
>  {
>  	struct _adapter *padapter = pxmitframe->padapter;
> -	struct dvobj_priv *pdvobj = (struct dvobj_priv *) &padapter->dvobjpriv;
> -	struct tx_desc *ptxdesc = (struct tx_desc *)pxmitbuf->pbuf;
> +	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
> +	struct tx_desc *ptxdesc   = pxmitbuf->pbuf;

It looks like you have added some space before the =.  I don't think that
is needed.  It wasn't lined up with the previous declaration before, and
it's not lined up with the = on the next line either.

julia

>  	struct cmd_hdr *pcmd_hdr = (struct cmd_hdr *)
>  		(pxmitbuf->pbuf + TXDESC_SIZE);
>  	u16 total_length = (u16) (ptxdesc->txdw0 & 0xffff);
> @@ -419,10 +419,10 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
>  	struct qos_priv *pqospriv = &pmlmepriv->qospriv;
>  	struct security_priv *psecuritypriv = &padapter->securitypriv;
>  	struct pkt_attrib *pattrib = &pxmitframe->attrib;
> -	struct tx_desc *ptxdesc = (struct tx_desc *)pmem;
> -	struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
> +	struct tx_desc *ptxdesc    = (struct tx_desc *)pmem;
> +	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
>  #ifdef CONFIG_R8712_TX_AGGR
> -	struct cmd_priv *pcmdpriv = (struct cmd_priv *)&padapter->cmdpriv;
> +	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
>  #endif
>  	u8 blnSetTxDescOffset;
>  	sint bmcst = IS_MCAST(pattrib->ra);
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014122915.GA11874%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

