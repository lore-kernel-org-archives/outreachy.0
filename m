X-GM-THRID: 6336577206052978688
X-Received: by 10.46.9.87 with SMTP id 84mr40892ljj.12.1475350205554;
        Sat, 01 Oct 2016 12:30:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.5 with SMTP id o5ls892929wmg.2.canary; Sat, 01 Oct 2016
 12:30:04 -0700 (PDT)
X-Received: by 10.28.207.3 with SMTP id f3mr161655wmg.10.1475350204814;
        Sat, 01 Oct 2016 12:30:04 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u64si234054wmf.0.2016.10.01.12.30.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:30:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,428,1473112800"; 
   d="scan'208";a="195303951"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Oct 2016 21:30:03 +0200
Date: Sat, 1 Oct 2016 21:30:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de, 
    lars@metafoo.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org, 
    joe@perches.com, apw@canonical.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] Staging: iio: sca3000_core:
 constify attribute_group structures
In-Reply-To: <1475349315-6155-2-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1610012129420.3445@hadrien>
References: <1475349315-6155-1-git-send-email-bhumirks@gmail.com> <1475349315-6155-2-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 2 Oct 2016, Bhumika Goyal wrote:

> Check for attribute_group structures that are only stored in the
> event_attrs filed of iio_info structure. As the event_attrs field
> of iio_info structures is constant, so these attribute_group
> structures can also be declared constant.
> Done using coccinelle:
>
> @r1 disable optional_qualifier @
> identifier i;
> position p;
> @@
> static struct attribute_group i@p = {...};
>
> @ok1@
> identifier r1.i;
> position p;
> struct iio_info x;
> @@
> x.event_attrs=&i@p;
>
> @bad@
> position p!={r1.p,ok1.p};
> identifier r1.i;
> @@
> i@p
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> static
> +const
> struct attribute_group i={...};
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> +const
> struct attribute_group i;
>
> File size before:
>    text	   data	    bss	    dec	    hex	filename
>    7745	    864	      8	   8617	   21a9
> drivers/staging/iio/accel/sca3000_core.o
>
> File size after:
>    text	   data	    bss	    dec	    hex	filename
>    7809	    800	      8	   8617	   21a9
> drivers/staging/iio/accel/sca3000_core.o
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/iio/accel/sca3000_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
> index d626125..774a8bf 100644
> --- a/drivers/staging/iio/accel/sca3000_core.c
> +++ b/drivers/staging/iio/accel/sca3000_core.c
> @@ -1010,7 +1010,7 @@ static struct attribute *sca3000_event_attributes[] = {
>  	NULL,
>  };
>
> -static struct attribute_group sca3000_event_attribute_group = {
> +static const struct attribute_group sca3000_event_attribute_group = {
>  	.attrs = sca3000_event_attributes,
>  	.name = "events",
>  };
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475349315-6155-2-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

