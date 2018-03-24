X-GM-THRID: 6536501456103538688
X-Received: by 2002:a19:200f:: with SMTP id g15-v6mr1859845lfg.12.1521900832086;
        Sat, 24 Mar 2018 07:13:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.145.76 with SMTP id q12ls1303209ljg.5.gmail; Sat, 24 Mar
 2018 07:13:51 -0700 (PDT)
X-Google-Smtp-Source: AG47ELu108l5kDRRY8rod9Pn2Da7FBpo5g7K2ECtxJyanccCPV5Uxug76ye5tIAjOesP5EET8xuw
X-Received: by 10.46.125.4 with SMTP id y4mr1938621ljc.4.1521900831180;
        Sat, 24 Mar 2018 07:13:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521900831; cv=none;
        d=google.com; s=arc-20160816;
        b=iWjIHoJv/E5tdMnpOxugCBkYrjxFVZqxex+Ow/rN19RpSvudTPRapZ6dOERo7pMnBu
         5uu6GQuixNzyi15IbwVhNhPiCeYCHjPeau6bzNwk+BAjqSBXNJpbk+yVoVMZxu/9SD+Y
         5wuYIOCZJdfpaeKzLY3YVJx16ngJQbJnTtW18VbsdMeAarfEem/0Hz9hZHiogQVOR6tk
         xF68VVqPnW4lP3Qx4OyLhIx29J4fZJoZb8vooj6XvAVGFLR0bX1s1p/XSKmK7jt8HkDS
         8adHQ4uJh9G+aOoEyoYBhllYSFnew8BDUf028WS4fTudfiIAJ0JdxhNyMNOxsGO6Z9uD
         MxOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=RcZ1TbPJBmTzp+WqQaooB/19qU8aV//LkB1ry4DcbfA=;
        b=fdOLrVFt9ZUGFwswo9TReW3Fy08kqQV5zMW93hOOH+Vd3K8a8xp9eOPeghDKsGKm5P
         Q1RNbXAZ0Mu/cHYvZSd9dX7q0Z5JQ8xdNbLQYWvw8idELz2X4ulfEj7D7xFZkhDbIges
         5f3ky8vu+SzlkbZDwgypV296wo4j9Iw4Q3v1ARqV1Daxqlxj5x8Hv/YGIAmvLSMQe59J
         A+T8kd6U0kkgGTqeIc/oDgAlFI6QQQ8BN/vBQlGVOfM7Cr2JZwj/WNj6jiYa5dIBsUgE
         yyy1n6UHLtcjmwpcLlegXQVyS2BG/gptnoDS1UqRwVH9/ccw6r89zbmkSbrGemxa8dZW
         bqgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w7-v6si368238lfc.2.2018.03.24.07.13.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 07:13:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,355,1517871600"; 
   d="scan'208";a="259665329"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 15:13:49 +0100
Date: Sat, 24 Mar 2018 10:13:47 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, mchehab@kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: media: Remove explicit
 function name
In-Reply-To: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803241013070.2323@hadrien>
References: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> Replace explicit function name in string with %s..., __func__.
> Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v2:
>  - Clean up subject line.

I have the impression that you now have subject lines that are the same.

julia

>
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 7d3349b..0f94b8e 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -703,7 +703,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_g && !gamma_param->table_g) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
> +		dev_err(dev, "%s: table ptr empty for G\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_g, gamma->table_g,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521897826-28871-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

