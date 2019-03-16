X-GM-THRID: 6668378512224681984
X-Received: by 2002:a17:906:4f0a:: with SMTP id t10mr490400eju.5.1552750095540;
        Sat, 16 Mar 2019 08:28:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4942:: with SMTP id f2ls2408407ejt.8.gmail; Sat, 16
 Mar 2019 08:28:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwS3QsZdsxbRwSE66lRkap3BDNPu2tzsyRLRPOrD3lvjOBuSQzwQsve2cP5sDPaioyoEr53
X-Received: by 2002:a17:906:1d16:: with SMTP id n22mr970122ejh.14.1552750094733;
        Sat, 16 Mar 2019 08:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552750094; cv=none;
        d=google.com; s=arc-20160816;
        b=HA0H8Dw5Hcm+qe6MCXD2522bGs50sclXNNqP7M6ELKEg6ic7zgCAuLnwZXlZiIdu8J
         qhywcEcRyHwgrXZf51ft2+J3Yt+MN8Bg8eIriLXIJWGjY4JEDrLrd93pDggW3eMsqyFh
         xwuFZQpAOBuMzgG0T7NxK0f0K8AtA5wwV4Kxr8ETTr3iZPGRPad4SOdW7wOunZ6G+Y4Y
         NHpqS6LRzvw/+ax9z5po2PhONCIq5pKnzKeXdZFN9DUGUdPF+gUIDLlaODaC3kTw7dtC
         7eCwnx3J5AbaRDvnOcjWY/i4EPB4tOFqWaUck5l9wzak4+Cl8GQzNovj9pcZyMtswyXe
         snOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Htjp66NuzrbPzhVy28aQwLH81+8G5DhgaXfspncnonM=;
        b=nsh7eRrDqL8vXBgGt3ATzWfBXxfXMuFx6kpfEE5HwKMLjduugkdd8i46w/yIH5Ydlr
         1mQUZPJlh0SVAxVy7hYywqlfLPPkCp0l7TxkRDo0AB1FweqmccOSZm+u73mgal1jP0/d
         9u4x6RjoUcbRaBKpAXwQOI6Gav+k1rsdKMRVGcjTKu2zuRGqnKFB4NjASJniGReX0oN4
         ZllTm9L58jzx+Yyl1zr5LagHeP7vDGTGCEuLwu3jAccNoeBzw8pXI9qubNujYE+aeMwt
         sZafGGbNljiyu3r9SS10JGOfsfSnSP2dDe8W6/iOZikBgrqU2PPVy+sshiehQGt8L8OI
         6z5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i16si238158ede.0.2019.03.16.08.28.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:28:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="299581408"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 16:28:10 +0100
Date: Sat, 16 Mar 2019 16:28:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: Remove functions
 and replace return types
In-Reply-To: <20190316151615.25314-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161624120.2487@hadrien>
References: <20190316151615.25314-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:

> - Remove functions rtw_init_cmd_priv and rtw_init_evt_priv, as its only
> purpose is to call the other functions _rtw_init_cmd_priv and
> _rtw_init_evt_priv, respectively.
> - Rename functions from _rtw_init_cmd_priv and _rtw_init_evt_priv, to
>  rtw_init_cmd_priv and rtw_init_evt_priv.
> - Replace return types from sint to int
> - Replace _SUCCESS with 0 and _FAIL with -ENOMEM (as it is memory
> allocating functions), to maintain compatibility with rest of the kernel,
> wherein the driver returns 1 for  _SUCCESS and 0 for _FAIL.
> - Replace local variable 'res' data type from sint to int in both the
> functions.
> - Include missing NULL check for kmalloc
> - Replace NULL comparison with ! in function rtw_init_cmd_priv.
> Issue suggested by Coccinelle using ret.cocci.

This is looking good, but there is still more to do.  You have changed the
return values of these functions, so now you have to go find the call
sites and update those as well.

This is also kind of a lot of different changes for one patch.  At least
the sint -> int change is not related to the rest.  Make a series with
that part in another patch.

The missing NULL check could also be a separate patch.

It could be:

patch 1: drop wrappers and change function names
patch 2: sint -> int
patch 3: change _SUCCESS and _FAIL
patch 4: replace NULL comparison
patch 5: add null check

julia


>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 34 +++++++-----------------
>  1 file changed, 10 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 91520ca3bbad..6db7fe82be7d 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
>  No irqsave is necessary.
>  */
>
> -sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> +int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  {
> -	sint res = _SUCCESS;
> +	int res = 0;
>
>  	init_completion(&pcmdpriv->cmd_queue_comp);
>  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> @@ -177,8 +177,8 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>
>  	pcmdpriv->cmd_allocated_buf = rtw_zmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ);
>
> -	if (pcmdpriv->cmd_allocated_buf == NULL) {
> -		res = _FAIL;
> +	if (!pcmdpriv->cmd_allocated_buf) {
> +		res = -ENOMEM;
>  		goto exit;
>  	}
>
> @@ -186,8 +186,8 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>
>  	pcmdpriv->rsp_allocated_buf = rtw_zmalloc(MAX_RSPSZ + 4);
>
> -	if (pcmdpriv->rsp_allocated_buf == NULL) {
> -		res = _FAIL;
> +	if (!pcmdpriv->rsp_allocated_buf) {
> +		res = -ENOMEM;
>  		goto exit;
>  	}
>
> @@ -201,9 +201,9 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  }
>
>  static void c2h_wk_callback(_workitem *work);
> -sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
> +int rtw_init_evt_priv(struct evt_priv *pevtpriv)
>  {
> -	sint res = _SUCCESS;
> +	int res = 0;
>
>  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
>  	atomic_set(&pevtpriv->event_seq, 0);
> @@ -213,6 +213,8 @@ sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
>  	pevtpriv->c2h_wk_alive = false;
>  	pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
>
> +	if (!pevtpriv->c2h_queue)
> +		return -ENOMEM;
>  	return res;
>  }
>
> @@ -295,22 +297,6 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
>  	return obj;
>  }
>
> -u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
> -{
> -	u32 res;
> -
> -	res = _rtw_init_cmd_priv(pcmdpriv);
> -	return res;
> -}
> -
> -u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
> -{
> -	int	res;
> -
> -	res = _rtw_init_evt_priv(pevtpriv);
> -	return res;
> -}
> -
>  void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
>  {
>  	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_evt_priv\n"));
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316151615.25314-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

