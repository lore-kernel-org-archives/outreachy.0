X-GM-THRID: 6335766380437045248
X-Received: by 10.25.221.149 with SMTP id w21mr242746lfi.25.1475173230856;
        Thu, 29 Sep 2016 11:20:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.21 with SMTP id v21ls22182wmv.23.gmail; Thu, 29 Sep 2016
 11:20:30 -0700 (PDT)
X-Received: by 10.28.56.199 with SMTP id f190mr6391wma.16.1475173230444;
        Thu, 29 Sep 2016 11:20:30 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u190si277wmf.0.2016.09.29.11.20.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 11:20:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,268,1473112800"; 
   d="scan'208";a="238802049"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2016 20:20:21 +0200
Date: Thu, 29 Sep 2016 20:20:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, markh@compro.net, 
    gregkh@linuxfoundation.org, lidza.louina@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: constify attribute_group
 structures
In-Reply-To: <1475160534-23482-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1609292016400.3160@hadrien>
References: <1475160534-23482-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 29 Sep 2016, Bhumika Goyal wrote:

> Check for attribute_group structures that are only passed as a second
> argument to the functions sysfs_remove_group and sysfs_create_group. As
> these arguments are constant so, attribute_group structures having this
> property  can also be made constant.

The structure is used in the following context:

        ret = sysfs_create_group(&c->kobj, &dgnc_tty_attribute_group);
        if (ret) {
                dev_err(c, "dgnc: failed to create sysfs tty device attributes.\n");
     		sysfs_remove_group(&c->kobj, &dgnc_tty_attribute_group);
		return;
	}

I'm not familiar with these functions, but it is unusual to have a cleanup
function for a resource in the error handling code of the same code that
creates the resource.  You also sent a patch on most/hdm-dim2/dim2_sysfs.c
which doesn't do this.  Perhaps both are correct, but it could be worth
looking into.  One approach is to unfold the definitions of the function.
Another is to find other calls to sysfs_create_group and see what its
errror handling code contains.  When you unfold the definitions of the
functions, you would want to see if sysfs_create_group can fail when it
has partially completed its work, but it does not do the cleanup itself.
This would again be unusual.

julia


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
> expression e1;
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
>    6248	   1024	      0	   7272	   1c68
> drivers/staging/dgnc/dgnc_sysfs.o
>
> File size after:
>    text	   data	    bss	    dec	    hex	filename
>    6288	    960	      0	   7248	   1c50
> drivers/staging/dgnc/dgnc_sysfs.o
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
> index a83e0e4..290bf6e 100644
> --- a/drivers/staging/dgnc/dgnc_sysfs.c
> +++ b/drivers/staging/dgnc/dgnc_sysfs.c
> @@ -677,7 +677,7 @@ static struct attribute *dgnc_sysfs_tty_entries[] = {
>  	NULL
>  };
>
> -static struct attribute_group dgnc_tty_attribute_group = {
> +static const struct attribute_group dgnc_tty_attribute_group = {
>  	.name = NULL,
>  	.attrs = dgnc_sysfs_tty_entries,
>  };
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475160534-23482-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

