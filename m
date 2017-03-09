X-GM-THRID: 6395514792016084992
X-Received: by 10.46.87.80 with SMTP id r16mr2259672ljd.12.1489071981842;
        Thu, 09 Mar 2017 07:06:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.81 with SMTP id i17ls724262ljd.41.gmail; Thu, 09 Mar 2017
 07:06:21 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr2216289ljd.27.1489071981125;
        Thu, 09 Mar 2017 07:06:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si803889wmg.3.2017.03.09.07.06.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 07:06:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,136,1486422000"; 
   d="scan'208";a="263879407"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 16:06:20 +0100
Date: Thu, 9 Mar 2017 16:06:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: media: atomisp: Match
 alignment with open parenthesis.
In-Reply-To: <58c16ed0.0ac0620a.fbb6d.de95@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703091605410.3186@hadrien>
References: <cover.1489069491.git.varshar186@gmail.com> <58c16ed0.0ac0620a.fbb6d.de95@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Varsha Rao wrote:

> This patch matches alignment with open parenthesis and fixes the
> checkpatch issue.
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/media/atomisp/i2c/gc2235.c  | 2 +-
>  drivers/staging/media/atomisp/i2c/mt9m114.c | 2 +-
>  drivers/staging/media/atomisp/i2c/ov2722.c  | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
> index 0c3fa70..e07e2c8 100644
> --- a/drivers/staging/media/atomisp/i2c/gc2235.c
> +++ b/drivers/staging/media/atomisp/i2c/gc2235.c
> @@ -705,7 +705,7 @@ static int distance(struct gc2235_resolution *res, u32 w, u32 h)
>  	match   = abs(((w_ratio << 13) / h_ratio) - (8192));
>
>  	if ((w_ratio < 8192) || (h_ratio < 8192)  ||

At the same time, you could replace the double space before the final ||
by a single space.  It happens in all the cases.

julia

> -		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
> +	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
>  		return -1;
>
>  	return w_ratio + h_ratio;
> diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.c b/drivers/staging/media/atomisp/i2c/mt9m114.c
> index 514b112..be2aca5 100644
> --- a/drivers/staging/media/atomisp/i2c/mt9m114.c
> +++ b/drivers/staging/media/atomisp/i2c/mt9m114.c
> @@ -621,7 +621,7 @@ static int distance(struct mt9m114_res_struct const *res, u32 w, u32 h)
>  	match   = abs(((w_ratio << 13) / h_ratio) - (8192));
>
>  	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
> -		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
> +	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
>  		return -1;
>
>  	return w_ratio + h_ratio;
> diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
> index f615898..0976236 100644
> --- a/drivers/staging/media/atomisp/i2c/ov2722.c
> +++ b/drivers/staging/media/atomisp/i2c/ov2722.c
> @@ -810,7 +810,7 @@ static int distance(struct ov2722_resolution *res, u32 w, u32 h)
>  	match   = abs(((w_ratio << 13) / h_ratio) - (8192));
>
>  	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
> -		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
> +	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
>  		return -1;
>
>  	return w_ratio + h_ratio;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58c16ed0.0ac0620a.fbb6d.de95%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

