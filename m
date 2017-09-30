X-GM-THRID: 6471467521247543296
X-Received: by 10.28.21.65 with SMTP id 62mr1021250wmv.22.1506760278237;
        Sat, 30 Sep 2017 01:31:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.4 with SMTP id 4ls1117627wmm.11.gmail; Sat, 30 Sep 2017
 01:31:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAwYbY0s0KdNaGPYvjoIQrvOnB8JYIc/jXgi4AnNZY6bLiwP8OXAI3t5DNTV57S9XULLVe5
X-Received: by 10.223.150.118 with SMTP id c51mr1158411wra.20.1506760277262;
        Sat, 30 Sep 2017 01:31:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506760277; cv=none;
        d=google.com; s=arc-20160816;
        b=wZkz+Ilk5ILCCaOjajeHzUajS89IOSBv3qIy8LaFiYSz8smoPXZ02c9Ksz6bLJkXsO
         p3//la/JZbmL5NURfEjS/jaPHUMAO0ceOzfmXGn+R3wYm7Hb8npfZnVPmdhyxnw86gx+
         6HKLuGRZ2tyu5A7WLbCljCpxh/44pBWXFsapJo2W+5L2BrQU3dgsRtlpSmVG6om90mkc
         Y4B6JQCDFkvqUbHp7m3jqP4OFws1Odb4xb4lnaRGGdlaGFabKE03914jdVTjZYtaPJej
         6IWpMkC6KYjEuF0/2YSH2OqBlRPDTh7PMegr7yTwp43I9TyodMthQn7pjG8iY69aRqV/
         wotQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=P6okxaaMZh0uoDh9lqYITzPwdezMxYT460hlCgDepYc=;
        b=bhh7U3kZzHaIuMblag81tVrKbzRVCR61PDcCoQo94pVUWKiCa6LHqIPlYFjlUk51Cp
         51JTdvkYJmVwT0OUKtfwhKa9k8dngJsEqR+iSlQNeacSHogMUwNcus94JhN4CvVgh3NK
         gwH71nBBM8u9Aay6DnPeKKyk8v7eH3m5dUinoRPQYNy/U+VI3smwrLqT/rLzRvUAIS2Q
         yhP10kgGkWoxPs6xmbrdF5XXRCWybsOaJTFOmvZCzDwKKZmSOQMxqVHcpB64czW8IzJQ
         /bN1g+rmLbJ7IoPziir6HoTF17RxlzN1wAt3E9Qb3bIhd5irsNK0xhbaFMCP0sZDKlgB
         gkUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m74si540778wma.0.2017.09.30.01.31.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 01:31:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,457,1500933600"; 
   d="scan'208";a="239220007"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2017 10:31:16 +0200
Date: Sat, 30 Sep 2017 10:31:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/6] Staging: rtl8188eu: core: Use
 list_entry instead of container_of
In-Reply-To: <778fb00439b44bd4a9e1ef06b1d619f9e4f5525f.1506755266.git.srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709301028250.2511@hadrien>
References: <cover.1506755265.git.srishtishar@gmail.com> <778fb00439b44bd4a9e1ef06b1d619f9e4f5525f.1506755266.git.srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Sep 2017, Srishti Sharma wrote:

> For variables of type struct list_head* use list_entry to access
> current list element instead of using container_of. Done by the
> following semantic patch by coccinelle.
>
> @r@
> struct list_head* l;
> @@
>
> -container_of
> +list_entry
>   (l,...)
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_xmit.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> index be2f46e..29e9ee9 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> @@ -1401,7 +1401,7 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
>  	plist = phead->next;
>
>  	while (phead != plist) {
> -		pxmitframe = container_of(plist, struct xmit_frame, list);
> +		pxmitframe = list_entry(plist, struct xmit_frame, list);
>
>  		plist = plist->next;

It looks to me like this loop could be rewritten using
list_for_each_entry_safe.  The entry is because you only do something
interesting with the entry and the safe is because the elements of the
list are deleted along the way.  Perhaps the others canbe changed this way
too.

julia



>
> @@ -1432,7 +1432,7 @@ static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv, str
>  	xmitframe_plist = xmitframe_phead->next;
>
>  	if (xmitframe_phead != xmitframe_plist) {
> -		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
> +		pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
>
>  		xmitframe_plist = xmitframe_plist->next;
>
> @@ -1473,7 +1473,7 @@ struct xmit_frame *rtw_dequeue_xframe(struct xmit_priv *pxmitpriv, struct hw_xmi
>  		sta_plist = sta_phead->next;
>
>  		while (sta_phead != sta_plist) {
> -			ptxservq = container_of(sta_plist, struct tx_servq, tx_pending);
> +			ptxservq = list_entry(sta_plist, struct tx_servq, tx_pending);
>
>  			pframe_queue = &ptxservq->sta_pending;
>
> @@ -1811,7 +1811,7 @@ static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struc
>  	plist = phead->next;
>
>  	while (phead != plist) {
> -		pxmitframe = container_of(plist, struct xmit_frame, list);
> +		pxmitframe = list_entry(plist, struct xmit_frame, list);
>
>  		plist = plist->next;
>
> @@ -1878,7 +1878,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
>  	xmitframe_plist = xmitframe_phead->next;
>
>  	while (xmitframe_phead != xmitframe_plist) {
> -		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
> +		pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
>
>  		xmitframe_plist = xmitframe_plist->next;
>
> @@ -1959,7 +1959,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
>  		xmitframe_plist = xmitframe_phead->next;
>
>  		while (xmitframe_phead != xmitframe_plist) {
> -			pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
> +			pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
>
>  			xmitframe_plist = xmitframe_plist->next;
>
> @@ -2006,7 +2006,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
>  	xmitframe_plist = xmitframe_phead->next;
>
>  	while (xmitframe_phead != xmitframe_plist) {
> -		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
> +		pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
>
>  		xmitframe_plist = xmitframe_plist->next;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/778fb00439b44bd4a9e1ef06b1d619f9e4f5525f.1506755266.git.srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

