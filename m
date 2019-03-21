X-GM-THRID: 6670940020392591360
X-Received: by 2002:a2e:2419:: with SMTP id k25mr3122147ljk.38.1553201172374;
        Thu, 21 Mar 2019 13:46:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5199:: with SMTP id u25ls696473lfi.4.gmail; Thu, 21 Mar
 2019 13:46:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzdvW4zyKiiZ6vTSzjLK7gkWNOBb/xJNteHuDPYQ5zziII5acu7eiPnGG/09CsxU2NGBP8
X-Received: by 2002:a19:a40b:: with SMTP id q11mr3130163lfc.33.1553201171418;
        Thu, 21 Mar 2019 13:46:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553201171; cv=none;
        d=google.com; s=arc-20160816;
        b=bYJJaWAnGuGRqvkh94oyPa/SZKO5M/gj6dGLlq5PumnNqtAv8Nf6CpwVk2VW/Povj8
         j8N95rf7ZWgnnm/Qmdnyr+3St77Iljz0XesssJyuNUK2Xvga/w6g5T0gotBG3rtAR7tv
         qVLXgO0gFh6SZSTE5Z5QmxSKP6XloOjyMSJbs4LPdPIPc/Oj+qLe8S/j/OkPWyUpocLf
         IqiIKPArTjsrF0yKsv1g35Fg4laaw93n+bONJvrTxSa1cn24Cz0vzzda2/sFORvViCEi
         CoLwXl/c8QRGex1wtdhqzxN00VW+Dn+8JhypoKEEojibD6aiAPoqS6W5O+3XdO+ID7sQ
         wIVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=idZ16eiKxCSAF18yn7yVIFJp8qZ+fa6goPWRFCY7N5k=;
        b=0FRbZjkQ5zX1GX8+n3UPU7mWRPtc45xWqR8eJQS/v+N+e6uR1QgI3tqgqXhWt5GVFJ
         Kknsiq1bTzcVfSYsN9nVxoLzcw2jIX0O1tJgoJeDv/5coYWIKKQOS4rGaM127smbelXo
         cfD8atVqua31kfqef6OLceGNQ8MwqSTm08VSL1n9ynbyIVtZ65SqDqrJ6/DqRY+Yeq93
         XVN692K9W+glYUMPQRQl7iuJZhxXKYf0JHQVoCf5ZqtEMxcHnyUNNDjMHh6OLq8B/KHm
         BjZzRVfdjZrEZTwIEpELE3e17bmOZJRIKX6hd1Y85tgaR8+7Nh5bRy3HIp4PYjlEa0d5
         +ftw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 19si204124lje.4.2019.03.21.13.46.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 13:46:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,254,1549926000"; 
   d="scan'208";a="375169553"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 21:46:10 +0100
Date: Thu, 21 Mar 2019 21:46:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: rtl8723bs: core: Remove
 return variables in rtw_mlme.c
In-Reply-To: <20190321201359.5948-6-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903212139260.4720@hadrien>
References: <20190321201359.5948-1-nishka.dasgupta@yahoo.com> <20190321201359.5948-6-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove unnecessary local return variables in rtw_mlme.c. Issue found
> with Coccinelle using ret.cocci.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 79adc6f1e53a..68c2b2f198d8 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -353,10 +353,7 @@ u8 *rtw_get_beacon_interval_from_ie(u8 *ie)
>
>  int	rtw_init_mlme_priv(struct adapter *padapter)/* struct	mlme_priv *pmlmepriv) */
>  {
> -	int	res;
> -
> -	res = _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
> -	return res;
> +	return _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
>  }
>
>  void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
> @@ -378,10 +375,7 @@ static struct	wlan_network *rtw_dequeue_network(struct __queue *queue)
>  struct	wlan_network *rtw_alloc_network(struct	mlme_priv *pmlmepriv);
>  struct	wlan_network *rtw_alloc_network(struct	mlme_priv *pmlmepriv)/* _queue	*free_queue) */
>  {
> -	struct	wlan_network	*pnetwork;
> -
> -	pnetwork = _rtw_alloc_network(pmlmepriv);
> -	return pnetwork;
> +	return _rtw_alloc_network(pmlmepriv);

This looks like another instance of what Madhumitha has worked on
recently.  These functions do nothing but call another function that has
the same argument and almost the same name.  You can get rid of these
functions and drop the _ in front of the name of the called function.
There are some sint's floating around that can be changed to int.  and you
can drop the p's at the beginning of all of the pointer-typed variable
names.

Another question is whether the variable pbuf is really needed in the
function _rtw_init_mlme_priv.

julia

>  }
>
>  void rtw_free_network_nolock(struct adapter *padapter, struct wlan_network *pnetwork);
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321201359.5948-6-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

