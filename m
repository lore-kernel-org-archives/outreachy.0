X-GM-THRID: 7280184524800
X-Received: by 10.66.224.42 with SMTP id qz10mr27862213pac.0.1425915471459;
        Mon, 09 Mar 2015 08:37:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.163 with SMTP id 35ls436576iok.43.gmail; Mon, 09 Mar
 2015 08:37:51 -0700 (PDT)
X-Received: by 10.66.157.129 with SMTP id wm1mr27618664pab.15.1425915471137;
        Mon, 09 Mar 2015 08:37:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ri9si2732551pdb.1.2015.03.09.08.37.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 08:37:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,368,1422918000"; 
   d="scan'208";a="125065983"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Mar 2015 16:37:48 +0100
Date: Mon, 9 Mar 2015 16:37:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: rtl8188eu: core:
 rtw_xmt: Delete spaces before tabs
In-Reply-To: <1425908752-7321-1-git-send-email-ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.10.1503091636360.3136@hadrien>
References: <1425908752-7321-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

For the subject, you should be able to put just staging: rtl8188eu:.  You
can do git log --oneline drivers/staging/rtl8188eu/core/rtw_xmit.cto see
what subjects others have used for this file.

Also, you can just send the patch to the outreachy mailing list.  Greg is
subscribed.

julia

On Mon, 9 Mar 2015, Ioana Ciornei wrote:

> This patch fixes the checkpatch.pl warning:
>
> WARNING: please, no space before tabs
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_xmit.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> index 7a71df1..7a35c47 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> @@ -94,7 +94,7 @@ s32	_rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  	}
>  	pxmitpriv->pxmit_frame_buf = (u8 *)N_BYTE_ALIGMENT((size_t)(pxmitpriv->pallocated_frame_buf), 4);
>  	/* pxmitpriv->pxmit_frame_buf = pxmitpriv->pallocated_frame_buf + 4 - */
> -	/* 						((size_t) (pxmitpriv->pallocated_frame_buf) &3); */
> +	/*						((size_t) (pxmitpriv->pallocated_frame_buf) &3); */
>
>  	pxframe = (struct xmit_frame *)pxmitpriv->pxmit_frame_buf;
>
> @@ -132,7 +132,7 @@ s32	_rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>
>  	pxmitpriv->pxmitbuf = (u8 *)N_BYTE_ALIGMENT((size_t)(pxmitpriv->pallocated_xmitbuf), 4);
>  	/* pxmitpriv->pxmitbuf = pxmitpriv->pallocated_xmitbuf + 4 - */
> -	/* 						((size_t) (pxmitpriv->pallocated_xmitbuf) &3); */
> +	/*						((size_t) (pxmitpriv->pallocated_xmitbuf) &3); */
>
>  	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
>
> @@ -283,8 +283,8 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
>
>  	/*  (1) RTS_Threshold is compared to the MPDU, not MSDU. */
>  	/*  (2) If there are more than one frag in  this MSDU, only the first frag uses protection frame. */
> -	/* 		Other fragments are protected by previous fragment. */
> -	/* 		So we only need to check the length of first fragment. */
> +	/*		Other fragments are protected by previous fragment. */
> +	/*		So we only need to check the length of first fragment. */
>  	if (pmlmeext->cur_wireless_mode < WIRELESS_11_24N  || padapter->registrypriv.wifi_spec) {
>  		if (sz > padapter->registrypriv.rts_thresh) {
>  			pattrib->vcs_mode = RTS_CTS;
> @@ -413,7 +413,7 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
>  	/*  get user_prio from IP hdr */
>  	if (pattrib->ether_type == 0x0800) {
>  		_rtw_pktfile_read(ppktfile, (u8 *)&ip_hdr, sizeof(ip_hdr));
> -/* 		user_prio = (ntohs(ip_hdr.tos) >> 5) & 0x3; */
> +/*		user_prio = (ntohs(ip_hdr.tos) >> 5) & 0x3; */
>  		user_prio = ip_hdr.tos >> 5;
>  	} else if (pattrib->ether_type == 0x888e) {
>  		/*  "When priority processing of data frames is supported, */
> @@ -1469,7 +1469,7 @@ s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitfram
>  	if (rtw_xmit_classifier(padapter, pxmitframe) == _FAIL) {
>  		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
>  			 ("rtw_xmitframe_enqueue: drop xmit pkt for classifier fail\n"));
> -/* 		pxmitframe->pkt = NULL; */
> +/*		pxmitframe->pkt = NULL; */
>  		return _FAIL;
>  	}
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425908752-7321-1-git-send-email-ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

