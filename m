X-GM-THRID: 6254805477248466944
X-Received: by 10.25.15.161 with SMTP id 33mr4716485lfp.0.1456310598354;
        Wed, 24 Feb 2016 02:43:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.8.204 with SMTP id 195ls540230lfi.75.gmail; Wed, 24 Feb
 2016 02:43:17 -0800 (PST)
X-Received: by 10.25.29.211 with SMTP id d202mr4708055lfd.7.1456310597717;
        Wed, 24 Feb 2016 02:43:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si1192064wmv.1.2016.02.24.02.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 02:43:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,493,1449529200"; 
   d="scan'208";a="204425505"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 11:43:17 +0100
Date: Wed, 24 Feb 2016 11:43:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Clean up tests if
 NULL returned on failure
In-Reply-To: <1456310371-7930-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602241142430.2149@localhost6.localdomain6>
References: <1456310371-7930-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 24 Feb 2016, Bhumika Goyal wrote:

> Some functions like kmalloc/usb_alloc_urb/kmalloc_array returns NULL as
> their return value on failure. !x is generally preferred over x==NULL
> or NULL==x so make use of !x if the value returned on failure
> by these functions is NULL.
> Done using coccinelle:
> 
> @@
> expression e;
> statement S;
> @@
> e = \(kmalloc\|devm_kzalloc\|kmalloc_array
>      \|devm_ioremap\|usb_alloc_urb\|alloc_netdev\)(...);
> - if(e==NULL)
> + if(!e)
>   S
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8712/recv_linux.c      | 2 +-
>  drivers/staging/rtl8712/rtl871x_io.c      | 2 +-
>  drivers/staging/rtl8712/rtl871x_mlme.c    | 6 +++---
>  drivers/staging/rtl8712/rtl871x_mp.c      | 4 ++--
>  drivers/staging/rtl8712/rtl871x_sta_mgt.c | 2 +-
>  drivers/staging/rtl8712/rtl871x_xmit.c    | 8 ++++----
>  6 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
> index 2f5460d..be970ef 100644
> --- a/drivers/staging/rtl8712/recv_linux.c
> +++ b/drivers/staging/rtl8712/recv_linux.c
> @@ -56,7 +56,7 @@ int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
>  
>  	precvbuf->irp_pending = false;
>  	precvbuf->purb = usb_alloc_urb(0, GFP_KERNEL);
> -	if (precvbuf->purb == NULL)
> +	if (!precvbuf->purb)
>  		res = _FAIL;

Unrelated to the change you are making, would it be possible to remove 
these uses of _FAIL and replace them by standard error values?

julia

>  	precvbuf->pskb = NULL;
>  	precvbuf->reuse = false;
> diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
> index fbbc635..3a10940 100644
> --- a/drivers/staging/rtl8712/rtl871x_io.c
> +++ b/drivers/staging/rtl8712/rtl871x_io.c
> @@ -113,7 +113,7 @@ uint r8712_alloc_io_queue(struct _adapter *adapter)
>  	struct io_req *pio_req;
>  
>  	pio_queue = kmalloc(sizeof(*pio_queue), GFP_ATOMIC);
> -	if (pio_queue == NULL)
> +	if (!pio_queue)
>  		goto alloc_io_queue_fail;
>  	INIT_LIST_HEAD(&pio_queue->free_ioreqs);
>  	INIT_LIST_HEAD(&pio_queue->processing);
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index 1b022db..14a780e 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -64,7 +64,7 @@ static sint _init_mlme_priv(struct _adapter *padapter)
>  	memset(&pmlmepriv->assoc_ssid, 0, sizeof(struct ndis_802_11_ssid));
>  	pbuf = kmalloc_array(MAX_BSS_CNT, sizeof(struct wlan_network),
>  			     GFP_ATOMIC);
> -	if (pbuf == NULL)
> +	if (!pbuf)
>  		return _FAIL;
>  	pmlmepriv->free_bss_buf = pbuf;
>  	pnetwork = (struct wlan_network *)pbuf;
> @@ -1202,7 +1202,7 @@ sint r8712_set_auth(struct _adapter *adapter,
>  	struct setauth_parm *psetauthparm;
>  
>  	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
> -	if (pcmd == NULL)
> +	if (!pcmd)
>  		return _FAIL;
>  
>  	psetauthparm = kzalloc(sizeof(*psetauthparm), GFP_ATOMIC);
> @@ -1232,7 +1232,7 @@ sint r8712_set_key(struct _adapter *adapter,
>  	sint ret = _SUCCESS;
>  
>  	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
> -	if (pcmd == NULL)
> +	if (!pcmd)
>  		return _FAIL;
>  	psetkeyparm = kzalloc(sizeof(*psetkeyparm), GFP_ATOMIC);
>  	if (psetkeyparm == NULL) {
> diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
> index 44da4fe..9b5a4e7 100644
> --- a/drivers/staging/rtl8712/rtl871x_mp.c
> +++ b/drivers/staging/rtl8712/rtl871x_mp.c
> @@ -281,10 +281,10 @@ void r8712_SetChannel(struct _adapter *pAdapter)
>  	u16 code = GEN_CMD_CODE(_SetChannel);
>  
>  	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
> -	if (pcmd == NULL)
> +	if (!pcmd)
>  		return;
>  	pparm = kmalloc(sizeof(*pparm), GFP_ATOMIC);
> -	if (pparm == NULL) {
> +	if (!pparm) {
>  		kfree(pcmd);
>  		return;
>  	}
> diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
> index 3fe45b6..e90c00d 100644
> --- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
> +++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
> @@ -53,7 +53,7 @@ u32 _r8712_init_sta_priv(struct	sta_priv *pstapriv)
>  
>  	pstapriv->pallocated_stainfo_buf = kmalloc(sizeof(struct sta_info) *
>  						   NUM_STA + 4, GFP_ATOMIC);
> -	if (pstapriv->pallocated_stainfo_buf == NULL)
> +	if (!pstapriv->pallocated_stainfo_buf)
>  		return _FAIL;
>  	pstapriv->pstainfo_buf = pstapriv->pallocated_stainfo_buf + 4 -
>  		((addr_t)(pstapriv->pallocated_stainfo_buf) & 3);
> diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
> index 7089ebd..8e455f0 100644
> --- a/drivers/staging/rtl8712/rtl871x_xmit.c
> +++ b/drivers/staging/rtl8712/rtl871x_xmit.c
> @@ -89,7 +89,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
>  	*/
>  	pxmitpriv->pallocated_frame_buf = kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4,
>  						  GFP_ATOMIC);
> -	if (pxmitpriv->pallocated_frame_buf == NULL) {
> +	if (!pxmitpriv->pallocated_frame_buf) {
>  		pxmitpriv->pxmit_frame_buf = NULL;
>  		return _FAIL;
>  	}
> @@ -128,7 +128,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
>  	_init_queue(&pxmitpriv->pending_xmitbuf_queue);
>  	pxmitpriv->pallocated_xmitbuf = kmalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4,
>  						GFP_ATOMIC);
> -	if (pxmitpriv->pallocated_xmitbuf  == NULL)
> +	if (!pxmitpriv->pallocated_xmitbuf)
>  		return _FAIL;
>  	pxmitpriv->pxmitbuf = pxmitpriv->pallocated_xmitbuf + 4 -
>  			      ((addr_t)(pxmitpriv->pallocated_xmitbuf) & 3);
> @@ -137,7 +137,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
>  		INIT_LIST_HEAD(&pxmitbuf->list);
>  		pxmitbuf->pallocated_buf = kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ,
>  						   GFP_ATOMIC);
> -		if (pxmitbuf->pallocated_buf == NULL)
> +		if (!pxmitbuf->pallocated_buf)
>  			return _FAIL;
>  		pxmitbuf->pbuf = pxmitbuf->pallocated_buf + XMITBUF_ALIGN_SZ -
>  				 ((addr_t) (pxmitbuf->pallocated_buf) &
> @@ -943,7 +943,7 @@ static void alloc_hwxmits(struct _adapter *padapter)
>  	pxmitpriv->hwxmit_entry = HWXMIT_ENTRY;
>  	pxmitpriv->hwxmits = kmalloc_array(pxmitpriv->hwxmit_entry,
>  				sizeof(struct hw_xmit), GFP_ATOMIC);
> -	if (pxmitpriv->hwxmits == NULL)
> +	if (!pxmitpriv->hwxmits)
>  		return;
>  	hwxmits = pxmitpriv->hwxmits;
>  	if (pxmitpriv->hwxmit_entry == 5) {
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456310371-7930-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

