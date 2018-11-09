X-GM-THRID: 6621630836870479872
X-Received: by 2002:a17:906:1603:: with SMTP id m3-v6mr194616ejd.16.1541743951156;
        Thu, 08 Nov 2018 22:12:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:5fc7:: with SMTP id k7-v6ls137688ejv.15.gmail; Thu,
 08 Nov 2018 22:12:30 -0800 (PST)
X-Google-Smtp-Source: AJdET5d3oW22LIE82pqnKfQ1bO/jiuf4QdEouwlRIB8qYs7SaGn3vlLYYSm0vi8MQUNEcRJoyfR9
X-Received: by 2002:a17:906:e82:: with SMTP id p2-v6mr196756ejf.13.1541743947346;
        Thu, 08 Nov 2018 22:12:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541743947; cv=none;
        d=google.com; s=arc-20160816;
        b=AJR2DTT/eUvA67YZ5TA40z3FSNOvMERSHxdbhVhESSiN3RgfUyjCLDdAU9YY5E27W1
         Y3+0fxS4TF7MZ2MQXPO8A22VphsfeV8qBPlnyLTP09sGsduzVpDE0+Q76ZuE55YzYfgK
         XntYY8tRgOTRPwChYWhAAPKy/H5Ey93/M2o4UJHaJUgD40UCanFilY+clflXS23AqAFH
         Cxi7ORgM2ub99VzxZoFMlL6OmBmTHgj5C2lMgPTqCHYTYaWzEcMcRO973dS2w2RuJ1je
         QwqREZBX6x73Ow/rIABSfkxdf/zO650hhLUBNf3Ij3ZwGvsLyW+3dR7n7RHQl91h2SO0
         Uk5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=jEcBlxEKeYewciU43jCWaT7FOFeYAQAtXC/VtDFqpVg=;
        b=CzEmauysTM++aeqqYHRElKO3k0Iue+wOqGTJBbKdaHPm0lA+mZcAzKxy4tsLcwtA2M
         lzBxC05w8ICWNYD7VoFPF685tIHbUWZdCySG6rHbebnWF3RoW6lMfzGf6Fn3bXj+WVnN
         9oEaKZMxRB0PCLNI4v8WZmDbTSNXSPe92eR6JJHZXMiZzVgHt6v3tBHZjxp5QFyyjlxk
         ZPhKbttxHz2yZZNUxDG1NvDlBuAg3r3IocmH8gHOCbLfLBMCpa+Gc3DTdKONw9E/xdp9
         H4DQR7VH4ocIKfNFm7VH5xJ8RpU8UPP6KY0dsNL5iP3VTbaogrIaGUtHjgA/N7LkvqUG
         leoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a35-v6si353293edd.1.2018.11.08.22.12.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 22:12:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,482,1534802400"; 
   d="scan'208";a="284871053"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Nov 2018 07:12:26 +0100
Date: Fri, 9 Nov 2018 07:12:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Irenge Jules Bashizi <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    jules.octave@outlook.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: davinci_vpfe: Remove one
 blank space
In-Reply-To: <20181108230918.4477-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1811090712090.2471@hadrien>
References: <20181108230918.4477-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 8 Nov 2018, Irenge Jules Bashizi wrote:

> Remove one blank space complained by checkpatch
>
> Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 81b369b28a47..79f7f7f9a36b 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -1466,7 +1466,7 @@ ipipe_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
>  	struct v4l2_mbus_framefmt *format;
>
>  	format = __ipipe_get_format(ipipe, cfg, fmt->pad, fmt->which);
> -	if (format == NULL)
> +	if (!format)
>  		return -EINVAL;

This change was part of another patch.

julia

>
>  	ipipe_try_format(ipipe, cfg, fmt->pad, &fmt->format, fmt->which);
> @@ -1818,7 +1818,6 @@ vpfe_ipipe_init(struct vpfe_ipipe_device *ipipe, struct platform_device *pdev)
>  			  V4L2_CID_CONTRAST, 0,
>  			  IPIPE_CONTRAST_HIGH, 1, 16);
>
> -
>  	v4l2_ctrl_handler_setup(&ipipe->ctrls);
>  	sd->ctrl_handler = &ipipe->ctrls;
>
> --
> 2.17.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181108230918.4477-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

