X-GM-THRID: 6201447937149501440
X-Received: by 10.25.163.202 with SMTP id m193mr91556lfe.9.1443887726656;
        Sat, 03 Oct 2015 08:55:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.165 with SMTP id s5ls511765wia.44.canary; Sat, 03 Oct
 2015 08:55:26 -0700 (PDT)
X-Received: by 10.180.10.202 with SMTP id k10mr878705wib.2.1443887726310;
        Sat, 03 Oct 2015 08:55:26 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bn1si122736wib.0.2015.10.03.08.55.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 08:55:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,628,1437429600"; 
   d="scan'208";a="180870399"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2015 17:55:25 +0200
Date: Sat, 3 Oct 2015 17:55:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: android: Remove /** from
 regular comments
In-Reply-To: <1443887101-52302-1-git-send-email-cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.10.1510031755040.2586@hadrien>
References: <1443887101-52302-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 3 Oct 2015, Cristina Moraru wrote:

> Fix 'cannot understand function prototype' and 'No description found for
> parameter' kernel-doc warnings by replacing /** with /* in regular
> comments

That's a much clearer commit message.  Thanks :)

julia

>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 236bfae0..a53a0b8 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -82,14 +82,14 @@ struct ashmem_range {
>  /* LRU list of unpinned pages, protected by ashmem_mutex */
>  static LIST_HEAD(ashmem_lru_list);
>
> -/**
> +/*
>   * long lru_count - The count of pages on our LRU list.
>   *
>   * This is protected by ashmem_mutex.
>   */
>  static unsigned long lru_count;
>
> -/**
> +/*
>   * ashmem_mutex - protects the list of and each individual ashmem_area
>   *
>   * Lock Ordering: ashmex_mutex -> i_mutex -> i_alloc_sem
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443887101-52302-1-git-send-email-cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

