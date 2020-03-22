X-GM-THRID: 6807025252399316992
X-Received: by 2002:a2e:99c9:: with SMTP id l9mr11451521ljj.79.1584884429567;
        Sun, 22 Mar 2020 06:40:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:964b:: with SMTP id z11ls480707ljh.11.gmail; Sun, 22 Mar
 2020 06:40:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuuobbqLEu3g12lDfvPkX9rVNtFazLdyqLMWvbz8uWxrJD71dD1FAN4FoQHtUa1H+oe4rpc
X-Received: by 2002:a2e:964e:: with SMTP id z14mr11313548ljh.44.1584884428072;
        Sun, 22 Mar 2020 06:40:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584884428; cv=none;
        d=google.com; s=arc-20160816;
        b=fAmADLRHcB1cJT4K9xmfLvmPGyTThYRtLjwE4i/THlW1ADaH8VbkHxWxchjW10+4Vz
         ITL9z9rLMagJ4/CPtRd4mTIbrlKlnQfbTM2gxtYipXqA4FykYMLwRLVaaWQDsJGUZm1I
         +bbW0fBqP/iWUM8dDY8+jY8Y+0yui3T81w8P9HtRVN7IVMZtsuuRsOygYycXd2VIzxkJ
         Xl2/PwUJrCO95fpCNbhBEmm3Gc6uSgiNQ2tqmdU5c59d8057N+bNR/KnJ7s1XAEXKbn5
         Sf1dd+3mnsQg8TkFx0H5AKmK3ANI/lrpwrkprTayysoJ7HAgv0lCZfgZv87ACt63vPBh
         Fyxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=HPOVHPt1HcrNvyj5LNyOdoRbxEDWQ1GjwqdE0Ac+O0E=;
        b=ZTVrspPBRLvNVupXeHTFvVJa24XSx+7utYusVAvrRQ8Rc/DBY3SNUl230IpIJyMKQa
         9bIRgvO9ZqBfhkBrjrt0JYDfg2+H2GQ/IJsm+6mdEOcA7cgnl9Pf+dQqaO7FJRMjiCKH
         IeAL/QI8flGFJNVSnAYX+sJgsy0riWA7M3udcGgIAGlomea3uL6mBd9RN6y/Niohte+6
         4ULoCx7PbvPKGfoKMNJVAGamiA15GmkjQhhA2ITLpvUV2v2ZxVxv2KBhzYF6JdPY0YLZ
         4pZAIztx5hxzScki4dUVrd2MZ+TD2nPPHb/pkIy/07iiI7ki++5O7iZ0V3/STEEkU9pq
         VTNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s17si876716ljm.5.2020.03.22.06.40.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 06:40:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="343199099"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 14:40:26 +0100
Date: Sun, 22 Mar 2020 14:40:26 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Simran Singhal <singhalsimran0@gmail.com>
cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: tools: Fix RETURN_VOID
 warnings
In-Reply-To: <20200322133423.GA27425@simran-Inspiron-5558>
Message-ID: <alpine.DEB.2.21.2003221439440.2325@hadrien>
References: <20200322133423.GA27425@simran-Inspiron-5558>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Simran Singhal wrote:

> Fix 'void function return statements are not generally useful'
> checkpatch.pl warnings.
>
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/greybus/tools/loopback_test.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index ba6f905f26fa..78333fb45b70 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -855,11 +855,8 @@ void loopback_run(struct loopback_test *t)
>
>  	log_results(t);
>
> -	return;
> -

This is not correct.  Please think about what you are doing.

julia

>  err:
>  	printf("Error running test\n");
> -	return;
>  }
>
>  static int sanity_check(struct loopback_test *t)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322133423.GA27425%40simran-Inspiron-5558.
>

