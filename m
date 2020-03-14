X-GM-THRID: 6804107396790616064
X-Received: by 2002:a50:e70a:: with SMTP id a10mr18563803edn.364.1584205035514;
        Sat, 14 Mar 2020 09:57:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:99d5:: with SMTP id n21ls7710479edb.10.gmail; Sat, 14
 Mar 2020 09:57:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvH3rFRa7qYSDY8hDkoQZ2fQBywyhKPqd2W6M9XY1jt9sbWmDfHDSuyChcZY+YUMlDQ0KKc
X-Received: by 2002:aa7:da82:: with SMTP id q2mr19837107eds.245.1584205034038;
        Sat, 14 Mar 2020 09:57:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584205034; cv=none;
        d=google.com; s=arc-20160816;
        b=p40aL9TEWkM1PrsfnSsGlrdrjs9St17ZG209RGFnSFa4J61yBenLN88WxY41mkckbi
         BfugmHa5uQra1lMTyzdsZNWYxV/ng/uwcV916ozWGH/Mx0Mf2sTgeTEUYRwLBGVn8Fdg
         lGQAFyYGOthD+Q8I0VCWQvQ/W5jHwJ0S3sD5Y1d2pG4u2gRGp3kKw0U7YhCp7X2Hhbje
         8TBRJ5NeKtXhLz50KasxF7wfzaQuYpsZVHOyArhwdw5dGFBI67NdbbEHABS5iVYstTye
         5TvarBPpF5U7ECftNHpHsCUX5HBS1+/dmegeQ6Gac/08AnujUPkyNczTrHno7Q+YM9Qp
         hVzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+B1x2KRJ9FG9eap6UMO/pprLm9OLG1O2acU37XRjTlE=;
        b=xpQfOg02XV853w2IG+eOHf47V5XxZ7sUgnu3mA+Y2yfBv4tvNpjS9PGKsGR07oIL+m
         hQHMNqZVxGHYGmAJZRbXcyU7ZU8hGPV1CtXiVucv2bMcoB0z0otznzxnuIZq1pNGQYr5
         ruxCGcnJiSOR+I/bJi/jRPgwU/oK0DNj94hOb0fqLN9oJoCBNI86r/307fXDIQqKBl2a
         +uvy0VaCbD7LJ2NZ0kBxc2jqCoVwPRF1fgXkr+Q3nZgDz9eK1A8u/7QhVHu4blx196yE
         9/54jL5kouBRPDbkJpyRm3EXegosKaDVvzoQ48JZQCnirrgoFwW5Sf06zyj8RO7u1U5v
         uiGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cw13si703022edb.2.2020.03.14.09.57.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2020 09:57:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,553,1574118000"; 
   d="scan'208";a="342369392"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2020 17:57:13 +0100
Date: Sat, 14 Mar 2020 17:57:12 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com, 
    abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_atmio16d: remove
 commented code blocks
In-Reply-To: <20200314165130.GA18939@deeUbuntu>
Message-ID: <alpine.DEB.2.21.2003141756000.3026@hadrien>
References: <20200314165130.GA18939@deeUbuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Mar 2020, Deepak R Varma wrote:

> Remove two if# 0 directive code blocks. The first commented code block

#if

> is redundant too; whereas the other code block is never used. Problem

Why do you say that the first one is redundant?

julia

> detected by checkpatch script.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/comedi/drivers/ni_atmio16d.c | 10 ----------
>  1 file changed, 10 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/ni_atmio16d.c b/drivers/staging/comedi/drivers/ni_atmio16d.c
> index 68ad9676f962..0bca7d752015 100644
> --- a/drivers/staging/comedi/drivers/ni_atmio16d.c
> +++ b/drivers/staging/comedi/drivers/ni_atmio16d.c
> @@ -266,19 +266,9 @@ static int atmio16d_ai_cmdtest(struct comedi_device *dev,
>  	if (cmd->scan_begin_src == TRIG_FOLLOW) {
>  		/* internal trigger */
>  		err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
> -	} else {
> -#if 0
> -		/* external trigger */
> -		/* should be level/edge, hi/lo specification here */
> -		err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
> -#endif
>  	}
>
>  	err |= comedi_check_trigger_arg_min(&cmd->convert_arg, 10000);
> -#if 0
> -	err |= comedi_check_trigger_arg_max(&cmd->convert_arg, SLOWEST_TIMER);
> -#endif
> -
>  	err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
>  					   cmd->chanlist_len);
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200314165130.GA18939%40deeUbuntu.
>

