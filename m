X-GM-THRID: 6664782574497300480
X-Received: by 2002:adf:fb91:: with SMTP id a17mr1393461wrr.1.1551803379274;
        Tue, 05 Mar 2019 08:29:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d49:: with SMTP id t70ls412865wmt.12.canary-gmail; Tue,
 05 Mar 2019 08:29:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqw/fFkWiNYseXsgyS+KI/KLTyrOOc2xYTzf9087TTZ1yguaYaEdNWf5fzj9r1/SGKS/Pk8h
X-Received: by 2002:a1c:c704:: with SMTP id x4mr402751wmf.7.1551803378579;
        Tue, 05 Mar 2019 08:29:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551803378; cv=none;
        d=google.com; s=arc-20160816;
        b=ygytY4ewZarYCiAud5jnWjhhSs4S3UumQNX1meUF7yIuZMZgJ6hHz3NE/WCaUDebsn
         e3vLOqEgnqcisa/AoqLIAvBEvctS8CvwrQspFxx9XxrS7vduAEwS1A51eMdUu8LO18LW
         KIMtjb44+chNl6H9rS5MvtLBmukVhZGIsGMH92ZCSb10WRPMMemS4ktBv69lSDqzs61F
         aK7eybLnn1npImSDKWhkaabrGs6Ht4wdk3mVfdBhSL3C7JteMhCHLMvJUVanHzBnUyPq
         68OR8LNUmfL61mQFOmAplpizQ66uYGd3NTO4Z9rFZFMW9SNF16K7JtK74mQSHIdaJFii
         GkEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8AaPpJTAIomNh50Jm8sNFp1KOwqFh+Pslk1vcpLJ6g8=;
        b=FuYCdWvbc2EEwVBPMLyPwH3mWBE4MmUKp6iMzV/0MmSDCGvdRQOPeoqU+/qaH+JkqE
         peGHGrKa4BxGPaK68/Lt9bNilJyN1/XsQeFgn8Zj36pq+udwSAdCdQ4tQKVxMHowhhUN
         CX7M5Tzp4Wdw120SZVlPjS9pLZ3iWSRJynQb5ibz+f61avNiSkFQq4pMI8ticYqyL+xm
         a3ydxUQFpKTjE/jimpxqJuvMr0SxPVh91nW3JWQclI1c54mayUFiajzazef3/TyekOBC
         FRB86hFdge/vCoXjN43RFGTlTRPGP4ljF0XNottIEGhJzQqIhbKkWxFW2oILr2SzQ2Fk
         6NUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t22si558637wmj.2.2019.03.05.08.29.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:29:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,444,1544482800"; 
   d="scan'208";a="372046948"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 17:29:38 +0100
Date: Tue, 5 Mar 2019 17:29:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: fbtft: Avoid
 CamelCase.
In-Reply-To: <20190305162229.GA32171@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.20.1903051726230.3701@hadrien>
References: <20190305162229.GA32171@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Mar 2019, Bhagyashri Dighole wrote:

> Fix coding style issues detected by checkpatch.pl `CHECK: Avoid
> CamelCase`.

Good job on making the function.  However the subject line and the log
message are not really appropriate any more.  Say what you did (convert a
macro to a function) and why (improve type safety).  The camel case thign
is sort of a lucky accident that led you to the problem.

>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v2:
>   -- Make conversion from macro to inline function.
>
>  drivers/staging/fbtft/fb_watterott.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> index 502d67f..90b7c07 100644
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
> +	return ((c & 0xE000) >> 8)  | ((c & 000700) >> 6) | ((c & 0x0018) >> 3);

This is getting really close to 80 characters.  It's fine though, but
still there is no need to make the code wider than it has to be.  You can
remove the extra space before the first |.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190305162229.GA32171%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

