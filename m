X-GM-THRID: 6468972080640557056
X-Received: by 10.28.24.207 with SMTP id 198mr129887wmy.12.1506177895298;
        Sat, 23 Sep 2017 07:44:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.86.197 with SMTP id k66ls1753148lje.2.gmail; Sat, 23 Sep
 2017 07:44:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDBXAN1FWOQSDIWHuHvmzfoJ+Q4an03cyJYQyDLXVFNDFPG4hCPV0e8+rgsv9fpXbG31kJb
X-Received: by 10.46.20.17 with SMTP id u17mr94560ljd.24.1506177893864;
        Sat, 23 Sep 2017 07:44:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506177893; cv=none;
        d=google.com; s=arc-20160816;
        b=cicjQdfyMvTNDP703B0x0PkXLlpr1u1p6wpgel6r5IR+nHGy5ZtlVkRWATzPadcuHX
         g03Lp3mdMagW2Wjdz302c7gaDCpNH+74o9sgX6UiVUdXFLlgh1zXVuz6SG+BNjKs4bHn
         qtMvGQ6Fag3T2WyKRPRZSBwnoKV0EvP+6qjl5KyXdVJkKRAKYveOnGs2qsjQ4Suuo0YF
         bUY7yHvUhCGppcgXgQy6uUGDScM0LjF1prg4R2BUajGGR+VzKIylclGkvafrsNavUq9y
         DG6kXV19zf8cRSesaL6AbsyrJPB5v6TvqHFfcXG2PBYg5UTz+NGfp6E/Tr6R5wBHkEO6
         nA7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=FxSb9ssatb/3OOWYXmsYW8s33r6jJrssYlo5qE3qfvM=;
        b=HnOqUj2VGZmFBXSXq7QHbhA9/FMs9pIvX7I8BrQQIK+oYtlQftg+E6hjxsIJESvP2N
         mrI3jYcF61BLix5vbAb/ilJHIHBJrzmIq7JMq3DZpbkiiRZaj6mje1I2L9/FApj7Sdq6
         FuGHNUZK36dhNHNPNC6dLZzygMAZJ88uXW3ofQE5ozCGiHpEZb/twJNcD8/cNnuXSTV7
         oK7Ah07ndt0xoGn+ZbzdJii3GdHztvmV+QO9XDjCpmdu1cFIUEiUTuzhaWMq01AVogN8
         m4vyY06+3M+fl4ta6FL04UdS6JCAz56CsQVGzGD0qBfYt8NORHnz9t91l9qLJPuX07NX
         ZI0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 191si156407wmn.2.2017.09.23.07.44.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 07:44:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,429,1500933600"; 
   d="scan'208";a="238488863"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Sep 2017 16:44:53 +0200
Date: Sat, 23 Sep 2017 16:44:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Gilles Muller <Gilles.Muller@lip6.fr>, 
    Nicolas Palix <nicolas.palix@imag.fr>, Michal Marek <mmarek@suse.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] coccinelle: boolconv: improve script to handle more
 cases
In-Reply-To: <20170923135526.GA30354@aishwarya>
Message-ID: <alpine.DEB.2.20.1709231643590.2016@hadrien>
References: <20170923135526.GA30354@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Sep 2017, Aishwarya Pant wrote:

> Given expressions A, B and a binary operator op, the current script checks for
> cases where
> 	A op B ? true : false can be replaced by A op B
>
> This can be extended to handle the other case where
> 	A op B ? false : true can be replaced by !(A op B)
>
> Moreover we can use the binary operator type to catch all desirable comparisons
> in one go instead of writing them down.
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>
> Okay I'm not sure if A op B ? false : true conversion to !(A op B) is even
> desirable because it might hinder code readability in certain cases.
> Just putting it out here because while I was running coccicheck in staging
> drivers a few cases like the above turned up.

Maybe the user can decide what they want to do in this case.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  scripts/coccinelle/misc/boolconv.cocci | 43 ++++++++--------------------------
>  1 file changed, 10 insertions(+), 33 deletions(-)
>
> diff --git a/scripts/coccinelle/misc/boolconv.cocci b/scripts/coccinelle/misc/boolconv.cocci
> index 33c464d..9b32b5f 100644
> --- a/scripts/coccinelle/misc/boolconv.cocci
> +++ b/scripts/coccinelle/misc/boolconv.cocci
> @@ -16,27 +16,19 @@ virtual report
>
>  @depends on patch@
>  expression A, B;
> +binary operator op = {==,!=,>,<,>=,<=,&&,||};
>  symbol true, false;
>  @@
>
>  (
> -  A == B
> -|
> -  A != B
> -|
> -  A > B
> -|
> -  A < B
> -|
> -  A >= B
> -|
> -  A <= B
> -|
> -  A && B
> +  A op B
> +- ? true : false
>  |
> -  A || B
> ++ !(
> +  A op B
> ++ )
> +- ? false : true
>  )
> -- ? true : false
>
>  //----------------------------------------------------------
>  //  For context mode
> @@ -44,28 +36,13 @@ symbol true, false;
>
>  @r depends on !patch@
>  expression A, B;
> +binary operator op = {==,!=,>,<,>=,<=,&&,||};
>  symbol true, false;
>  position p;
>  @@
>
> -(
> -  A == B
> -|
> -  A != B
> -|
> -  A > B
> -|
> -  A < B
> -|
> -  A >= B
> -|
> -  A <= B
> -|
> -  A && B
> -|
> -  A || B
> -)
> -* ? true : false@p
> +  A op B
> +* ? \(true\|false\) : \(false@p\|true@p\)
>
>  //----------------------------------------------------------
>  //  For org mode
> --
> 2.7.4
>
>

