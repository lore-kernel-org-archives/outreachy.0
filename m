X-GM-THRID: 6668974043295645696
X-Received: by 2002:a1c:a406:: with SMTP id n6mr510805wme.24.1552742180248;
        Sat, 16 Mar 2019 06:16:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7014:: with SMTP id l20ls209094wmc.0.canary-gmail; Sat,
 16 Mar 2019 06:16:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwIbDVfko4+Y6WK6MVhH/AasVFlO+m5YMGoqSIILLwfsHeWKTrC9iKOlVEgH4M4+3GYGva1
X-Received: by 2002:a1c:a406:: with SMTP id n6mr510803wme.24.1552742179447;
        Sat, 16 Mar 2019 06:16:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742179; cv=none;
        d=google.com; s=arc-20160816;
        b=cwDO1Rzuy9qHUV1cFTmU/RKhkcUXzuuVW8NgI6zxSQL1Zz2VGBFWPzrDABztojzLku
         /b9f71zfb5WDcGR3AoTt6CSE1bMAGNE3sqIONE6tYiEvLVTHdKMydcL3mBc58PP8wGHo
         JQ05FoX3ZArhoHiFOUafy5hqoJ6KGKZRw5nR3ipa/bKtHFdru/TnO90Qsp7DcZeafWtq
         WMI2KDjfS0IBt1chfNVQVd47nXJoCn/JJ3lLFTpMs4BC8D6fOuWK1kgOGHkClaQLqAMN
         yKkvNPfFBjR76U3bo3EvFU7yb9ZQ3OXdnGX8v5WgqfZqdKyDz68yE+5Zsr/HFmYvAMle
         lgWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=b3D15Nyp4xX7HHVBIll+SaKAn8uM4h/fexNzGuvZGtU=;
        b=JU5gNGgyyAobGHx3E2HKzWo05z2AAKqikL39CbZqtkoNWxg4RJt8BWgOcSTgfXtn0b
         z5gslxvNFYMSHUpuJd9Db+cBYeAwIP0jZF/UZyqpJOpmmpcqM30rnbyCbef9mYLQu5J1
         CnIp/Lbbiyn/3ME1bjN9b/8xYNCE2+NjhDoQAxyNlSbgdxJGK4H7TMnJA+QQVB3pt6Am
         KYRvs2Nf6AN/JHZxB68pu8eGVXzKFEMnE3O1x3N99lVjf8cHywrnIwd7BzEy493CnlaW
         DI9qrnsm46bO/2z7jhRWUPnr3xE8LAa59X43CEmfIewFgcj4ULWr1ejnJQqOKkK+Ziti
         0UKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t22si199164wmj.2.2019.03.16.06.16.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:16:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,485,1544482800"; 
   d="scan'208";a="374006663"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 14:16:19 +0100
Date: Sat, 16 Mar 2019 14:16:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: rtl87223bs: Refactor
 function and check return value
In-Reply-To: <79e1366235e198546f0a6781a8538ac825f775c1.1552740889.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161413522.2487@hadrien>
References: <cover.1552740889.git.madhumithabiw@gmail.com> <79e1366235e198546f0a6781a8538ac825f775c1.1552740889.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:

> - Refactor return tenary statement in _rtw_malloc
> - Check return value against NULL
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/osdep_service.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
> index 73b87da15eb2..9dfdd13d4acd 100644
> --- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
> +++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
> @@ -24,7 +24,15 @@ inline int RTW_STATUS_CODE(int error_code)
>
>  void *_rtw_malloc(u32 sz)
>  {
> -	return kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
> +	int _sz;
> +
> +	if (in_interrupt())
> +		_sz = kmalloc(sz, GFP_ATOMIC);
> +	else
> +		_sz = kmalloc(sz, GFP_KERNEL);
> +	if (!_sz)
> +		return -ENOMEM;
> +	return _sz;

Sorry, but this is neither correct nor useful.

If you compile it, you should see that it is not correct.

The change that should be done is to eliminate the function entirely.  The
calls should be replaced by calls to kmalloc directly, with the second
argument appropriate to the context.

But the way to do that is not by starting with this function, but rather
by working on the usage sites one by one.  When there are no usage sites,
this function definition can be dropped.

julia

>  }
>
>  void *_rtw_zmalloc(u32 sz)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/79e1366235e198546f0a6781a8538ac825f775c1.1552740889.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

