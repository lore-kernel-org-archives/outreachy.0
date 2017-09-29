X-GM-THRID: 6471275503571435520
X-Received: by 10.223.168.41 with SMTP id l38mr1049350wrc.24.1506719444973;
        Fri, 29 Sep 2017 14:10:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.10.83 with SMTP id 80ls945792wmk.1.canary-gmail; Fri, 29
 Sep 2017 14:10:43 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QASBan0KOTEJF3RcCpZ37c5UCt+nMsSboVxOoDSc7LZp/uCcUD9gIYMNFbK8q+rpJ5N8cWx
X-Received: by 10.28.131.14 with SMTP id f14mr833753wmd.25.1506719443931;
        Fri, 29 Sep 2017 14:10:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506719443; cv=none;
        d=google.com; s=arc-20160816;
        b=LX+bCitcR8BjfR5BLaEtax/4/0kslk3wT8UVeTFQ0GmN9D92u07R6ynpP3Nhh3X7ai
         4uisb/gKi7gLYSDkh/UgGayl7LRcYrQNeKvxk4Ca5zdzHWPbooO61lkT65i9i6llyzcG
         s6LZljH/Qlq5fG2xxkwXFWveIgXcu0m2nOJTV/5eEwW2Ykgc+/wueQ3ZvBwueCcqFayt
         PxQti7jhviEaL3WLcPDVQuKjGsxuSp6kjt3eJjdA1qH54je0x4BLTuHPy+27kmrsCfFV
         eCaN4P6H6TMv0KKjOK6RU3hEe8JPmUZxIBg++jnpCA4kpNHbsieLNsKKhz8or1uO6oKd
         /qjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Mevqtp4CKmakSrUocWTdPXIBljC61yAVscEuLo+cYeU=;
        b=ppH+dyHaqAPR4JCXQG3hwebf9Mqx3hWZLHQTQppa7Ia1sE+ziP4VJKFpnqRUPzBq7y
         rfjdAR0uu7xTqXK+h8U8RuUomwswD3EU33g57UOeAGPqlkT+oOC/aMuIr8quGA0LCC5J
         GbmkFw+B/XhGPG7a4r9TXUU+4708i7B2hoFV2XnRfH2N9Ld8pE+ChZRiretbQI7dBnFi
         Ds1z6BoYhGXvwbj21wsyF7/TkGhOYtLnyHv2VQw/gKWD2evGUX1zZk/NigeAwRqyap4J
         7Vf9ddqyk6gXZOPeGA/AB/7nhhcEBGPLeC4Hp+PbNrUhPvgPXf6eo3hj9aET22GGbEhH
         a7jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q145si784963wme.4.2017.09.29.14.10.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 14:10:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,453,1500933600"; 
   d="scan'208";a="293402146"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO hadrien.local) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Sep 2017 23:10:43 +0200
Date: Fri, 29 Sep 2017 23:10:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Remove unnecessary
 comments.
In-Reply-To: <1506711232-19670-1-git-send-email-shreeya.patel23498@gmail.com>
Message-ID: <alpine.DEB.2.20.1709292310000.3517@hadrien>
References: <1506711232-19670-1-git-send-email-shreeya.patel23498@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Sep 2017, Shreeya Patel wrote:

> The comments regarding memset are not needed in the
> files which have been modified since the necessary changes
> are already there in the files.

The comments don't look very useful, but I don't understand "since the
necessary changes are alread there in the files"

julia


>
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c     | 3 ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 3 ---
>  drivers/staging/rtl8723bs/core/rtw_recv.c     | 3 ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c     | 3 ---
>  4 files changed, 12 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 6b77820..5b583f7 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -28,9 +28,6 @@ sint	_rtw_init_mlme_priv(struct adapter *padapter)
>  	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
>  	sint	res = _SUCCESS;
>
> -	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
> -	/* memset((u8 *)pmlmepriv, 0, sizeof(struct mlme_priv)); */
> -
>  	pmlmepriv->nic_hdl = (u8 *)padapter;
>
>  	pmlmepriv->pscanned = NULL;
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index b6d137f..ca35c1c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -474,9 +474,6 @@ int	init_mlme_ext_priv(struct adapter *padapter)
>  	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
>  	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
>
> -	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
> -	/* memset((u8 *)pmlmeext, 0, sizeof(struct mlme_ext_priv)); */
> -
>  	pmlmeext->padapter = padapter;
>
>  	/* fill_fwpriv(padapter, &(pmlmeext->fwpriv)); */
> diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
> index 68a6303..9c08307 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_recv.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
> @@ -46,9 +46,6 @@ sint _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
>  	union recv_frame *precvframe;
>  	sint	res = _SUCCESS;
>
> -	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
> -	/* memset((unsigned char *)precvpriv, 0, sizeof (struct  recv_priv)); */
> -
>  	spin_lock_init(&precvpriv->lock);
>
>  	_rtw_init_queue(&precvpriv->free_recv_queue);
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index 022f654..8cd05f8 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -51,9 +51,6 @@ s32	_rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  	struct xmit_frame *pxframe;
>  	sint	res = _SUCCESS;
>
> -	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
> -	/* memset((unsigned char *)pxmitpriv, 0, sizeof(struct xmit_priv)); */
> -
>  	spin_lock_init(&pxmitpriv->lock);
>  	spin_lock_init(&pxmitpriv->lock_sctx);
>  	sema_init(&pxmitpriv->xmit_sema, 0);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506711232-19670-1-git-send-email-shreeya.patel23498%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

