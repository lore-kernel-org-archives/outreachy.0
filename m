X-GM-THRID: 6335768924747988992
X-Received: by 10.194.172.9 with SMTP id ay9mr212938wjc.2.1475172628786;
        Thu, 29 Sep 2016 11:10:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.70 with SMTP id 67ls323974ljf.36.gmail; Thu, 29 Sep 2016
 11:10:27 -0700 (PDT)
X-Received: by 10.25.203.81 with SMTP id b78mr219309lfg.8.1475172627892;
        Thu, 29 Sep 2016 11:10:27 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c13si1832107wme.3.2016.09.29.11.10.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 11:10:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,268,1473112800"; 
   d="scan'208";a="238801485"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2016 20:10:24 +0200
Date: Thu, 29 Sep 2016 20:10:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: hdm-dim2: constify
 attribute_group structures
In-Reply-To: <1475161111-24767-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1609292009530.3160@hadrien>
References: <1475161111-24767-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 29 Sep 2016, Bhumika Goyal wrote:

> Check for attribute_group structures that are only passed as a second
> argument to the functions sysfs_remove_group and sysfs_create_group. As
> these arguments are constant so, attribute_group structures having this
> property can also be made constant.
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
> expression e1,e2;
> @@
> (
> sysfs_remove_group(e1,&i@p)
> |
> sysfs_create_group(e1,&i@p)
> )
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
>     509	    160	      0	    669	    29d
> drivers/staging/most/hdm-dim2/dim2_sysfs.o
>
> File size after:
>    text	   data	    bss	    dec	    hex	filename
>     565	     96	      0	    661	    295
> drivers/staging/most/hdm-dim2/dim2_sysfs.o
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/most/hdm-dim2/dim2_sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/most/hdm-dim2/dim2_sysfs.c b/drivers/staging/most/hdm-dim2/dim2_sysfs.c
> index 2b28e4a..d8b22f9 100644
> --- a/drivers/staging/most/hdm-dim2/dim2_sysfs.c
> +++ b/drivers/staging/most/hdm-dim2/dim2_sysfs.c
> @@ -39,7 +39,7 @@ static struct attribute *bus_default_attrs[] = {
>  	NULL,
>  };
>
> -static struct attribute_group bus_attr_group = {
> +static const struct attribute_group bus_attr_group = {
>  	.attrs = bus_default_attrs,
>  };
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475161111-24767-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

