X-GM-THRID: 6336577206052978688
X-Received: by 10.46.33.101 with SMTP id h98mr208327ljh.5.1475349876671;
        Sat, 01 Oct 2016 12:24:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.200.144 with SMTP id y138ls201905lff.25.gmail; Sat, 01 Oct
 2016 12:24:35 -0700 (PDT)
X-Received: by 10.46.33.77 with SMTP id h74mr884802ljh.24.1475349875386;
        Sat, 01 Oct 2016 12:24:35 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e21si710400wmc.2.2016.10.01.12.24.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:24:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,428,1473112800"; 
   d="scan'208";a="195303805"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Oct 2016 21:24:34 +0200
Date: Sat, 1 Oct 2016 21:24:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de, 
    lars@metafoo.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org, 
    joe@perches.com, apw@canonical.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] Staging: iio: ad7150: constify
 attribute_group structures
In-Reply-To: <1475349315-6155-6-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1610012124120.3445@hadrien>
References: <1475349315-6155-1-git-send-email-bhumirks@gmail.com> <1475349315-6155-6-git-send-email-bhumirks@gmail.com>
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
>    3561	   1152	      8	   4721	   1271	drivers/staging/iio/cdc/ad7150.o
>
> File size after:
>    text	   data	    bss	    dec	    hex	filename
>    3625	   1088	      8	   4721	   1271	drivers/staging/iio/cdc/ad7150.o
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/iio/cdc/ad7150.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index 5578a07..6998c3d 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -562,7 +562,7 @@ static struct attribute *ad7150_event_attributes[] = {
>  	NULL,
>  };
>
> -static struct attribute_group ad7150_event_attribute_group = {
> +static const struct attribute_group ad7150_event_attribute_group = {
>  	.attrs = ad7150_event_attributes,
>  	.name = "events",
>  };
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475349315-6155-6-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

