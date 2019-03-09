X-GM-THRID: 6666437691631992832
X-Received: by 2002:a50:a499:: with SMTP id w25mr6240929edb.3.1552151320672;
        Sat, 09 Mar 2019 09:08:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9e41:: with SMTP id z59ls3131435ede.8.gmail; Sat, 09 Mar
 2019 09:08:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqzLr98uikWXgpdg2QM2FCQouESIMMAr1da6oCuiqx9Bk/jPSFT+PFomvijG3fPhiXOpFAiK
X-Received: by 2002:a50:a499:: with SMTP id w25mr6240926edb.3.1552151319811;
        Sat, 09 Mar 2019 09:08:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552151319; cv=none;
        d=google.com; s=arc-20160816;
        b=IXjx54CzoS19i2whP0twWyLmpeD78ohMTrBx/lyaWVKLKjOrhdHkmkD8Oh8zRfHMFY
         mDLQfWuyEf84uLjckvWurcKcV6VM2U7oJjbvYGE1T1KDqOOpcC8O2sX/SGLjVK7Yqc7n
         h4mCHTtx/ciT5DLsMB+99aWyPfwMfjIia3AMrz/LtPYDzCf9JyZB+J4ERFp0PDXrlaHa
         ym1yHtgF4mXymiD6aWmmPAap86Exs00BJC5lx1518GD3J6sSs3IKFYKJotNLM9ckBZDJ
         6hpUu28QEIEXbmcDD8OeL0Pc/fCBgU6aX9GGnPtS7RVt5Ys0i9MF2KuOmYb18S+gBQRt
         3pWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ejtbxygo2P5OIw8tXFKYpE1pUkxiJ0o3M1l7zWu7IgE=;
        b=ZnWsV1+NlTKB5h2zBuzxp46qRtm6vW68lDK49ieabX8CklGDyQRyagQsjowpSO+m7d
         GIDhJkUV2MBAT8o6sykDHbPJQfPeD+f2CKG7m49+9oWoejlSHwFjYFq+oYJgFj7uhl91
         XG63fEeHN9kDceaNpPFyb4X0H+RA4R3mNxFsjROG9s49fzuh+ZrlVcGOx5WcSaMPsFsg
         nTixdFgjR6HASWFNd5qz5ut87Q6LNME7jTCX20e8Azz7mhmb1hJYLYyviSsVdbsWQJCF
         u34vhw/AQax6FIWWwq8BQk7Kfl//96asZEuICepFZroHy/ND5YtNlydCRk9lfzdKC38R
         oX5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a7si606314edb.1.2019.03.09.09.08.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 09:08:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,460,1544482800"; 
   d="scan'208";a="298664543"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 18:08:34 +0100
Date: Sat, 9 Mar 2019 18:08:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aarushi Mehta <mehta.aaru20@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: board: replace macro with
 function
In-Reply-To: <0ce45d3e104e179cbf124d6c41aee442d6ed03cb.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.1903091804360.13389@hadrien>
References: <0ce45d3e104e179cbf124d6c41aee442d6ed03cb.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Mar 2019, Aarushi Mehta wrote:

> From b0da5fe54699fd2b4b627344fa5a118d6d985853 Mon Sep 17 00:00:00 2001
> From: Aarushi Mehta <mehta.aaru20@gmail.com>
> Date: Sat, 9 Mar 2019 22:16:42 +0530
> Subject: [PATCH 51/51] staging: board: replace macro with function

What is this?

You need to put a log message.

>
> Signed-off-by: Aarushi Mehta <mehta.aaru20@gmail.com>
> ---
>  drivers/staging/board/board.h | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/board/board.h b/drivers/staging/board/board.h
> index 5609daf4d869..a2119ae1bac1 100644
> --- a/drivers/staging/board/board.h
> +++ b/drivers/staging/board/board.h
> @@ -31,16 +31,15 @@ int board_staging_register_clock(const struct board_staging_clk *bsc);
>  int board_staging_register_device(const struct board_staging_dev *dev);
>  void board_staging_register_devices(const struct board_staging_dev *devs,
>  				    unsigned int ndevs);
> -
> -#define board_staging(str, fn)			\
> -static int __init runtime_board_check(void)	\
> -{						\
> -	if (of_machine_is_compatible(str))	\
> -		fn();				\
> -						\
> -	return 0;				\
> -}						\
> -						\
> -device_initcall(runtime_board_check)

The above macro should generate a new function definition.  It can't be
rewritten as a function.

julia

> +static void board_staging(str, fn)
> +{
> +	static inline int __init runtime_board_check(void)
> +	{
> +		if (of_machine_is_compatible(str))
> +			fn();
> +		return 0;
> +	}
> +	device_initcall(runtime_board_check)
> +}
>
>  #endif /* __BOARD_H__ */
> --
> 2.17.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0ce45d3e104e179cbf124d6c41aee442d6ed03cb.camel%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

