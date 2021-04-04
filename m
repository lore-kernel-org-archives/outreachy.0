X-GM-THRID: 6947173308910534656
X-Received: by 2002:a2e:819a:: with SMTP id e26mr13441170ljg.222.1617529761173;
        Sun, 04 Apr 2021 02:49:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls3470155lfo.0.gmail; Sun, 04 Apr
 2021 02:49:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx5PQ9SXRnsxU2VCLzXNcVzEb/0CLkpR7vL1pdmmyqrETYGoPFSHc3aTUj18bB8qSFWuDpk
X-Received: by 2002:ac2:51a4:: with SMTP id f4mr13910217lfk.411.1617529759292;
        Sun, 04 Apr 2021 02:49:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617529759; cv=none;
        d=google.com; s=arc-20160816;
        b=UYC+a9whhoRbgjO3kl5dj5lIfEqBGb/fdAJSZMu2KAf2maoxZyYZQYMkwnuQdx8EVl
         pTdpr90gwbGZTQfLmbYsjjhXtdaLmfwzNARdvG7c3QKSIJhuFh/I/bXNeTRv/CnuzU36
         jeHu6WRsKC0zYn+9MpSS3fP7ArXYxuUkC0MUUNtNGujDEhTZZ1zcFRNIRmCzeC86rQqC
         ar1gcP5DK8ZUAkOdxwrc50K8HvGhzOY/ZVWskYRWSqF/8gAXNqaY0cDjFf/V/ae+xsqu
         z+/8AzimOc/8spy3B3N0eHoOdG0HpPKs//ujApXgGx/mq8h31yYbQsIx6nFd7dUsGWQS
         Z6rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=aAEZIUQNmTQh57d3KdNUIho5AOXGxh+8HgRq2aZmGRo=;
        b=HFBFfRNX+IFtCrF7ex5I+6bJ0cXRpQfYQB8IlVfwgTCbS/+fSCxduYfFZyQffcyXui
         TpihUxz/JurlhQIVt1GHzDjABUELPFTW+SliSwIXJ1EunKeiSpaDKzsL5WQxUlD5Xzif
         R8rdj+qF1e2cOTGin9r6Oz+fOQcc9i1ypeizCLJtPwn9cT/ZBJL/LVJ2U8OF1n+u/W7j
         Jk0IEL24KR42hZIgmjCKEpXSfmhFQq+g47osderUh8wprBFvaNJsSyspeiLUHqACgM/R
         qnxdSIVaXBiUH7j6jLHejsMeee1+UqL6REVqpbTUC495UbDKUI5hr16skWWwkdxYBe17
         siCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h2si1164137lja.3.2021.04.04.02.49.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Apr 2021 02:49:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AD8yUR6pWVhvFbSZEUUvkrlMaV5qReYIsi2QD?=
 =?us-ascii?q?101hICF9WMqeisyogbAnzhfykjkcQzUNntqHNamGTxrnmqJdy48XILukQU3aqH?=
 =?us-ascii?q?KlRbsD0aLO4R3FXxf/+OlUyLt6f8FFY+HYIFBmga/BkW2FOvk6xt3vytHKuc77?=
 =?us-ascii?q?71NACT5ncLth6QARMGqmO2l7XhNPC5Z8NJf03KR6jgGtc3gWcci3b0NtN4Kvm/?=
 =?us-ascii?q?TwiJnkbRQabiRXjTWmsDXA0s+ZLzGomjsYTjNT0fMD3AH+4nXEz5Tmid/+5j/w?=
 =?us-ascii?q?vlWjiKh+qZ/a5J9iKaW3+64oAwSptg2lf8BAVtS53QwInA=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.81,304,1610406000"; 
   d="scan'208";a="501509798"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Apr 2021 11:49:18 +0200
Date: Sun, 4 Apr 2021 11:49:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deborah Brouwer <deborahbrouwer3563@gmail.com>
cc: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org, 
    straube.linux@gmail.com, unixbhaskar@gmail.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: replace goto with
 direct return
In-Reply-To: <20210404054008.23525-1-deborahbrouwer3563@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104041148590.2958@hadrien>
References: <20210404054008.23525-1-deborahbrouwer3563@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Apr 2021, Deborah Brouwer wrote:

> To conform with Linux kernel coding style, replace goto statement that
> does no cleanup with a direct return.  To preserve meaning, copy comments
> from the original goto statement to the return statement.  Identified by
> the checkpatch warning: WARNING: void function return statements are not
> generally useful.

Maybe the comments are meant as TODO items?

julia

>
> Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> index 391c59490718..d21f21857c20 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> @@ -139,7 +139,9 @@ void rtw_hal_dm_watchdog(struct adapter *Adapter)
>  	hw_init_completed = Adapter->hw_init_completed;
>
>  	if (!hw_init_completed)
> -		goto skip_dm;
> +		/*  Check GPIO to determine current RF on/off and Pbc status. */
> +		/*  Check Hardware Radio ON/OFF or not */
> +		return;
>
>  	/* ODM */
>  	pmlmepriv = &Adapter->mlmepriv;
> @@ -156,10 +158,8 @@ void rtw_hal_dm_watchdog(struct adapter *Adapter)
>
>  	Adapter->HalData->odmpriv.bLinked = bLinked;
>  	ODM_DMWatchdog(&Adapter->HalData->odmpriv);
> -skip_dm:
>  	/*  Check GPIO to determine current RF on/off and Pbc status. */
>  	/*  Check Hardware Radio ON/OFF or not */
> -	return;
>  }
>
>  void rtw_hal_dm_init(struct adapter *Adapter)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210404054008.23525-1-deborahbrouwer3563%40gmail.com.
>

