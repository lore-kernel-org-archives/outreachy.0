X-GM-THRID: 6664981263437266944
X-Received: by 2002:adf:f08c:: with SMTP id n12mr15137wro.7.1551812160717;
        Tue, 05 Mar 2019 10:56:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:67c4:: with SMTP id b187ls458510wmc.5.canary-gmail; Tue,
 05 Mar 2019 10:55:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqx2AYSbBAdcgIezmYtuEpFO1JG7nhdumZ1TOJSnt77q7OcK5oBRIfrAIPz4MRQX0tvZDBQJ
X-Received: by 2002:a1c:2545:: with SMTP id l66mr419559wml.14.1551812159891;
        Tue, 05 Mar 2019 10:55:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551812159; cv=none;
        d=google.com; s=arc-20160816;
        b=NYWiyWg9/4RuJkN1uL4ZLAHAxIDDQSezTSnrKfI3lXK4A8CVlxTqzydsShChGzSedC
         7NiCdEYycZPD5k3TGfZb2z/oPfBkOt0MU8lnPf975OIrdnmqGE2Yg+YkMXvpGiLN+Wtt
         rjQ+/lly7fp3gvxfCHEgOwIN1lp6zo3D0JxrGnERlqvk13b+frrSboKdZHuoN6wLtVvo
         dk3BreFdfQALerW//FgzRQyqRPqF/hOX4wjefGO37XIYSyawsrr0tQfGOjWidSbKjqlD
         PIaR+/O+59nlo7WLzOaJVyVpyi1dfVn51Wc4kuHumrzfzUnFXqguTFQORUPeyh0eIygO
         qYEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3o1rfVTeqWB2Z6OE9kQHR2MmHGqnUNdSPSfSWBwmIaw=;
        b=WezEL08Btxk1q6+ZNhwwQiynPrUG4B8oqvW76mBgs69wRkeTb2W40feQVwEyEQBzZr
         EQgH5MkgxjasPN94ev6gQ7zgOl9jaFNY+5U0ZExzZoe3P7AC3Q0P8NUPAcx9NAofH9/D
         B72ETTbz7aEGzKFwdsyDzL9V0DNuopOWdkxqlA2TNByqpVdd9ZBY4hRfXxQiWS1GoW0/
         Q3axfEAIW19wuMBAM3ANOD9KiY5nRHW1vLNSepYwdWDKsHQLIeJTYP+E97B5l/k4b0fu
         TtcjRA41touc5J2uSUpFV4fu59LsgFY5+jzhNGwVDbKsXCZQ0DBO2qC4J0tqO9YmBnaJ
         ciuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b134si21902wmd.2.2019.03.05.10.55.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 10:55:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,445,1544482800"; 
   d="scan'208";a="298222443"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 19:55:33 +0100
Date: Tue, 5 Mar 2019 19:55:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/1] staging: fbtft: convert a
 macro to a function.
In-Reply-To: <20190305185109.GA2942@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.20.1903051954200.3701@hadrien>
References: <20190305185109.GA2942@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:

> Convert a macro to an inline function to improve type safety and make
> the code simpler.

Didn't you have a series before where you also removed the other macros?
You need to send the whole series again, even if some parts don't change.
Greg will ignore all of the lower versioned patches on this file.

julia

>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v3:
>   -- Change the subject line according to log messages.
>   -- Remove extra spaces.
>
> Changes in v2:
>   -- Make the converion from macro to inline function.
>
>  drivers/staging/fbtft/fb_watterott.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> index 502d67f..40e5427 100644
> --- a/drivers/staging/fbtft/fb_watterott.c
> +++ b/drivers/staging/fbtft/fb_watterott.c
> @@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	return 0;
>  }
>
> -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> -			   (((c) & 000700) >> 6) |\
> -			   (((c) & 0x0018) >> 3))
> +inline int rgb565_to_rgb332(u16 c)
> +{
> +	return ((c & 0xE000) >> 8)| ((c & 000700) >> 6)| ((c & 0x0018) >> 3);
> +}
>
>  static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
>  {
> @@ -116,7 +117,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
>  	for (i = start_line; i <= end_line; i++) {
>  		pos[1] = cpu_to_be16(i);
>  		for (j = 0; j < par->info->var.xres; j++) {
> -			buf8[j] = RGB565toRGB332(*vmem16);
> +			buf8[j] = rgb565_to_rgb332(*vmem16);
>  			vmem16++;
>  		}
>  		ret = par->fbtftops.write(par,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190305185109.GA2942%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

