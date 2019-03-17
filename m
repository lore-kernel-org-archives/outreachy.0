X-GM-THRID: 6668974051336126464
X-Received: by 2002:a50:aa70:: with SMTP id p45mr1316072edc.6.1552804694097;
        Sat, 16 Mar 2019 23:38:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b491:: with SMTP id w17ls1895718edd.7.gmail; Sat, 16 Mar
 2019 23:38:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwSuhPmupmt/8jY2mYUmiBj8pko5jjKPufQQTXlM+rYIb+fej79ve5W0wG0E5ZCpnt6K+KN
X-Received: by 2002:a50:addd:: with SMTP id b29mr1302579edd.11.1552804693341;
        Sat, 16 Mar 2019 23:38:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552804693; cv=none;
        d=google.com; s=arc-20160816;
        b=XTafWbRBB5hKZOB8xPoANXjilsEbB/t0ynrbzoPlyBf1jSerSQ9JRs9JH2Dwhp83YM
         g0d/kh2Tc9C7tIV8JY/RwsSFRQ1im2BAaZeM4jxh5PdtzvllXfthOb3pDJTSvdcf4JhX
         WAa3cieyMTf1SyXT1kWlZNSIi59qK9wgRBP2fRec8H1eF7rCTFA4pvpKgEbfr9t4uUfn
         XTilag8YX7i5D1qd9naCryv8XUfDFkA6TaHTeNC1EDCe0bjZjDJ9ipOE9/0mPIEq9sLr
         NjbTptQXhRXCib7Wmy+QkkBdXSU3niJYl8WgeKGrZzAqkBEgzFG2ah1AWO00vN5uKs/O
         3bmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=f+RjYRIFqlrpovtU8Bj58f4vDsVT4UjPQ53kax0e5PA=;
        b=lPQfUGCuSVGfitD0Hr7ehvCBNS7vqRE/jBnJlNcM+4+35fEyfTrHiOXeyOHN3dNomu
         8JjRkLJLnfPViVmpb5lDay0ZNy9u0BLJc1Zu0O0Sara1gpm36najiW7wY66quT1loDdu
         thH+oCAl5KTlL/sRCHDxPv3HQkBeJJ8BpB8BAH/2y9I/1CPT1kTE58vWEHq71d8sIXsJ
         RcYV4K4DOgTr858jDXa2Z9ARRsaXTv0972SkEu+nHw2YMOFL8I/0Z4XrMMhaHe2/mStD
         gXvV5ZT7Y61gSaTcOcNiz0wrtUNfm7aNj/Pq4Reh5jrPEKB+zt3+57FpCP1WXK91RnRO
         xncg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l25si251970edb.4.2019.03.16.23.38.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:38:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,488,1544482800"; 
   d="scan'208";a="299665099"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 07:38:12 +0100
Date: Sun, 17 Mar 2019 07:38:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/7] Staging: rtl8723bs: Change values
 of error codes in functions
In-Reply-To: <df295896fcdcd016cc097c3812812582658c7319.1552782299.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170734240.2588@hadrien>
References: <cover.1552782299.git.madhumithabiw@gmail.com> <df295896fcdcd016cc097c3812812582658c7319.1552782299.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:

> Change values of error codes _SUCCESS and _FAIL in function
> rtw_init_cmd_priv and rtw_init_evt_priv, as the code need to be
> compatible with kernel,

Technically, the code doesn't need to be compatible with the rest of the
kernel, because these specific values don't escape this driver.  So
something like "to follow what is done elsewhere in the kernel".
Ultimately, these -E values should be propagated everywhere, such that
they  become the failure result on some system call, but that will involve
a lot more changes, and it is better to start small.

> _SUCCESS should be 0 and _FAIL should be -ENOMEM
> (as in this case, these are memory allocating functions).
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index ab450f717f34..2890e12f6fb1 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
>  No irqsave is necessary.
>  */
>
> -int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> +int rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)

There is a - and +, but I don't see the change.

julia

>  {
> -	int res = _SUCCESS;
> +	int res = 0;
>
>  	init_completion(&pcmdpriv->cmd_queue_comp);
>  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> @@ -178,7 +178,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  	pcmdpriv->cmd_allocated_buf = rtw_zmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ);
>
>  	if (pcmdpriv->cmd_allocated_buf == NULL) {
> -		res = _FAIL;
> +		res = -ENOMEM;
>  		goto exit;
>  	}
>
> @@ -187,7 +187,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  	pcmdpriv->rsp_allocated_buf = rtw_zmalloc(MAX_RSPSZ + 4);
>
>  	if (pcmdpriv->rsp_allocated_buf == NULL) {
> -		res = _FAIL;
> +		res = -ENOMEM;
>  		goto exit;
>  	}
>
> @@ -203,7 +203,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  static void c2h_wk_callback(_workitem *work);
>  int rtw_init_evt_priv(struct evt_priv *pevtpriv)
>  {
> -	int res = _SUCCESS;
> +	int res = 0;
>
>  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
>  	atomic_set(&pevtpriv->event_seq, 0);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/df295896fcdcd016cc097c3812812582658c7319.1552782299.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

