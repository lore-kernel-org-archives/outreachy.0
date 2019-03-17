X-GM-THRID: 6668974051336126464
X-Received: by 2002:a17:906:350e:: with SMTP id r14mr1393572eja.10.1552859707021;
        Sun, 17 Mar 2019 14:55:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ee8a:: with SMTP id f10ls3863914edr.6.gmail; Sun, 17 Mar
 2019 14:55:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4E3eBnkvvDEkX8zeSHkw2z5PrPYUSO4Pl6qXS1FKNudw3ZrQMah0mdY3Nw3Bdeg+WhhIH
X-Received: by 2002:a05:6402:1659:: with SMTP id s25mr1593797edx.2.1552859706232;
        Sun, 17 Mar 2019 14:55:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552859706; cv=none;
        d=google.com; s=arc-20160816;
        b=nLT870ax7VUGZvQ8V2abPHKbIJCWABvljhe7gHaKV5vM9FcyAGouF3R2x5ib1KwzEP
         4F/Iv0/UZiTqNWASYpzkqYffEOU03ZHGTbDvAUdDzkSK5tS26FmU2rzjP10UTPXQc4GI
         OaADgL+1PBixicnbw9LaYI+z9z4N2Ui/nIJRE1dhBDs+9M3jl/aH0Duj02R1KRuyxyBG
         nmJlN37mB+nE8glHs/flp+Ylho2Q+0urHq22sVRg7jpTTBw7OwfxVSDOnJDWdZSGNQ6r
         NUrBtd7H6XjCVc0qFf0prCaWJOzMqrOyKNvaVyA6xVxsSD6iHUxqyimdy6dM40+wZkNr
         rBUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=q7Aj/JXdc5Jg8vqSUlPTeAyHSNWQfa1UIbMVeelgHrg=;
        b=FvfdZda1pfCsSLPPrSkVDjvxUS8BB4YjJQolb9+LmVrL98WYkDPi+ZQIi5rTXH/frv
         Kna9qqw1eklgxtVnA12xgNO+xJE4PIh1vrGJCi1lkPm3NnAUQi8ydrrnX58fQo7VN7qJ
         AWIeO1jWP5oMFh5ydrleShIiXmZYs+avbO+wnBXupU/zTGNMXcpQhR6R5QcSO+ZzhM8x
         mZcdOqee3LkYpO9q9yhNdWT8C0a0AW+3hjKfMcWKbq5MFW7J4sbId/9558nHhodG13hP
         e80yo5SfPaL6XHkmuKiIFOgDjMM9i0iEqRWXiggaw7hN7JVHNZUOplssCnhmlU1+glEb
         WNJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p25si219930eju.1.2019.03.17.14.55.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 14:55:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,491,1544482800"; 
   d="scan'208";a="374416221"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 22:55:05 +0100
Date: Sun, 17 Mar 2019 22:55:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] Staging: rtl8723bs: Add missing
 NULL check for kmalloc
In-Reply-To: <4010080c4d3e2bd0ed50a747eff3d00c66eea169.1552858206.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903172254090.2434@hadrien>
References: <cover.1552858206.git.madhumithabiw@gmail.com> <4010080c4d3e2bd0ed50a747eff3d00c66eea169.1552858206.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Madhumitha Prabakaran wrote:

> Include missing NULL check for kmalloc in function rtw_init_evt_priv.
> Also, remove unnecessary local variable 'res' in the function and
> replace the value directly in the return of the function.

These changes seem quite unrelated.  Dropping res was possible before any
of the other changes because its value was never updated, and if you make
your change, the value of res is not updated either.

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 3550de9f12c3..c76f27a6b3ab 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -203,8 +203,6 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  static void c2h_wk_callback(_workitem *work);
>  int rtw_init_evt_priv(struct evt_priv *pevtpriv)
>  {
> -	int res = 0;
> -
>  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
>  	atomic_set(&pevtpriv->event_seq, 0);
>  	pevtpriv->evt_done_cnt = 0;
> @@ -213,7 +211,10 @@ int rtw_init_evt_priv(struct evt_priv *pevtpriv)
>  	pevtpriv->c2h_wk_alive = false;
>  	pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
>
> -	return res;
> +	if (!pevtpriv->c2h_queue)
> +		return -ENOMEM;
> +
> +	return 0;
>  }
>
>  void _rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4010080c4d3e2bd0ed50a747eff3d00c66eea169.1552858206.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

