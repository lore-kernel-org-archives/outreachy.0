X-GM-THRID: 6532041434877394944
X-Received: by 10.80.189.198 with SMTP id z6mr2024416edh.7.1520859928602;
        Mon, 12 Mar 2018 06:05:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.206.28 with SMTP id y28ls6539700edi.0.gmail; Mon, 12 Mar
 2018 06:05:27 -0700 (PDT)
X-Google-Smtp-Source: AG47ELu4CEePBTUoV6oEL+6Teh35WGktlY4Yvm4gVCovFHFfSvfTry2MFROD0FePrggviiwNvUbY
X-Received: by 10.80.243.7 with SMTP id p7mr2031560edm.1.1520859927345;
        Mon, 12 Mar 2018 06:05:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520859927; cv=none;
        d=google.com; s=arc-20160816;
        b=EarCm80XqjZZsG4wQNNiRoExLlb8CZU0j301z2RSF8sSNlbzLuCcftcil04yqRs1fN
         U9ZOPVJ2YRo0ITxxm2jz0JsVlS+Xi7IbBszRR5oOL2JYoTbeiRoGAqEJsDye+N7OmxcU
         aUrZCm56EyrH+h+VE64F4piMODW7Q+29FrFYiFZi6aIB/su7RoMA6QT/lm1JPyKK3q/W
         V8eCDfy8sX9Xq0dvindiKhZ7EPxcmlHUiUn6oyFAZzoH43kVzuN32yLFleWzVNyaOUn8
         cakGoGrsLBaznqs9bU4e8Lb+SXnF5REm1I5Mp9ilAokcGiDkco88gwLOnTbUnQ4ZmRbp
         dQbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=O/zFgrpgCfRM2QbWMnUqH7UVxwQ//puVTXdQ058W2tM=;
        b=zUj+CUO6Zx6dfMhJH79U3V22Yd8DetRPqKqTTVVzyeWI8up/szjS+fOps4sizBt8Aw
         3KjEom/tsSOP59sy6uM4hu1BOKLV+USQEpbrbhoLUI4zNipWGJjgb66qaHREePaHLG0I
         swcF+tSSPNSTGyiP6a6DvBPLNZs/PBbm4nNNjkNrLVgckiIoy1XoQSHs+YWUrApAorSI
         9XPKU4/fB/2VuUUUk6E1iZ820iFMIM2gmo0pKfxeMKvhSBB21YW4Sa/j1HzQ32KbZ+Op
         bCJjhakzHTU3ZzX5oDNjepzdOq2Xqq+p8uIA/iMav/rBf3ojpjHc7oi3CIYtZMc8DNcE
         7ljw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f24si303310edc.0.2018.03.12.06.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Mar 2018 06:05:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,461,1515452400"; 
   d="scan'208";a="317560406"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2018 14:05:26 +0100
Date: Mon, 12 Mar 2018 14:05:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Fix
 line break
In-Reply-To: <1520859397-31387-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803121405130.3056@hadrien>
References: <1520859397-31387-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 12 Mar 2018, Nishka Dasgupta wrote:

> Break line after operator instead of in the middle of a variable name.
> Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> index 46fd2c7..9376c6a 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> @@ -922,8 +922,8 @@ ipipeif_link_setup(struct media_entity *entity, const struct media_pad *local,
>  		if (remote->entity == &vpfe->vpfe_ipipe.subdev.entity)
>  			/* connencted to ipipe */
>  			ipipeif->output = IPIPEIF_OUTPUT_IPIPE;
> -		else if (remote->entity == &vpfe->vpfe_resizer.
> -			crop_resizer.subdev.entity)
> +		else if (remote->entity ==
> +				&vpfe->vpfe_resizer.crop_resizer.subdev.entity)
>  			/* connected to resizer */
>  			ipipeif->output = IPIPEIF_OUTPUT_RESIZER;
>  		else
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1520859397-31387-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

