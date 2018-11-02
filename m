X-GM-THRID: 6619077441472167936
X-Received: by 2002:adf:9d83:: with SMTP id p3-v6mr175751wre.31.1541142621118;
        Fri, 02 Nov 2018 00:10:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fb84:: with SMTP id a4-v6ls3272221wrr.0.gmail; Fri, 02
 Nov 2018 00:10:20 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fHXAEnIJPQfmvKvP6Kcgl/+aW/9KjdPxZ6+fNgdk2gqiKobhUSzY0Chl+SVv6kR4Ef4BmF
X-Received: by 2002:a5d:500d:: with SMTP id e13-v6mr1075800wrt.9.1541142620319;
        Fri, 02 Nov 2018 00:10:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541142620; cv=none;
        d=google.com; s=arc-20160816;
        b=rP55wOKx5KZeUh0NZBeP/Wa20kIOzE5g9UCW1HjAp5usqdcK8rl2AkldxUfiQQRved
         XU40UD+Sn1Aaw5bqT8KkDQMHnEocYeDU8px347gsARBVYySTrcqrcj8rBTCbLPCSWMCs
         fFl3JgTAQCJGxfQSpP9jRBti4OdKNe4WspW9n+C0t4NJ7khT6ueGDLiJHGNipzBot4sq
         SAZeUkIFBIAwFffjLS+BgEdiBQJC5n0FE2pTKjnXLE7ChcpIKgWaejJryt7FQwnkcE3B
         J7QQVgXiUgcwF5x312lNy//ecebs5CubRd+1kB/F70z4sdTXC+s/zEHhVSBEaB/6HPTS
         935w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=U8U2L2HW5LeE9NSofPlHOPBRqP2no4kBoNkIMB31Ev0=;
        b=ALx1wEOpwsSlgZxncySHt7QooCDCuCSA0PQH8pvVoitnoQNhJF3mLe0Zo9+StRqkzY
         ZoWjijoWt3bx6LZIfX64S38SocGJpVmnwtTrgU5LqDtUGb5d95BEMixdMI7v0Ccgd7Jk
         RFRkQQrq7x6UnM2ZutUhO47Wxgv2gp3FpW/UeLhy3wEqmfe8Ohp/ock8LTa4N9mz8E6z
         JVX7f+WqfBxft8hv4/Me1cv06RBhVOqeOL4PVNO4vQfMSredsqZ4B5DfXbZDpuQUiHzw
         wuuBO2bdwcE3jyfeeQi+ROXaF0/PR2ojS5Y32+wgM9yU8p/wjrA3OOalYOO434qZsdX/
         lpZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z62-v6si6779wmc.2.2018.11.02.00.10.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 00:10:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,454,1534802400"; 
   d="scan'208";a="284138112"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2018 08:10:18 +0100
Date: Fri, 2 Nov 2018 08:10:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: greybus Change comparison
 to NULL
In-Reply-To: <b305b4321ae1a13c4a8a6391a8db0c8cce109226.1541123999.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.21.1811020809210.3064@hadrien>
References: <cover.1541123999.git.code@wizofe.uk> <b305b4321ae1a13c4a8a6391a8db0c8cce109226.1541123999.git.code@wizofe.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Nov 2018, Ioannis Valasakis wrote:

> Rewrite the comparison to null shortened.

This would be more clear as Shorten the comparison to NULL.  Or Use ! to
make a NULL test.

julia

> Reported by checkpatch.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
> index d28773e06838..d6b0d49130c0 100644
> --- a/drivers/staging/greybus/core.c
> +++ b/drivers/staging/greybus/core.c
> @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
>  static const struct greybus_bundle_id *
>  greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
>  {
> -	if (!id == NULL)
> +	if (!id)
>  		return NULL;
>
>  	for (; id->vendor || id->product || id->class || id->driver_info;
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b305b4321ae1a13c4a8a6391a8db0c8cce109226.1541123999.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

