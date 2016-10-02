X-GM-THRID: 6335766380437045248
X-Received: by 10.157.48.92 with SMTP id w28mr4706044otd.50.1475421764778;
        Sun, 02 Oct 2016 08:22:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.200 with SMTP id g191ls1834903ita.20.canary; Sun, 02 Oct
 2016 08:22:44 -0700 (PDT)
X-Received: by 10.98.31.5 with SMTP id f5mr441118pff.37.1475421764336;
        Sun, 02 Oct 2016 08:22:44 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si1895136pac.1.2016.10.02.08.22.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:22:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8C67B71;
	Sun,  2 Oct 2016 15:22:43 +0000 (UTC)
Date: Sun, 2 Oct 2016 17:22:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com, markh@compro.net,
	lidza.louina@gmail.com
Subject: Re: [PATCH] Staging: dgnc: constify attribute_group structures
Message-ID: <20161002152244.GA32091@kroah.com>
References: <1475160534-23482-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1475160534-23482-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 29, 2016 at 08:18:54PM +0530, Bhumika Goyal wrote:
> Check for attribute_group structures that are only passed as a second
> argument to the functions sysfs_remove_group and sysfs_create_group. As
> these arguments are constant so, attribute_group structures having this
> property  can also be made constant.
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

I'll take this patch, but all of these sysfs files should be removed
from the driver, as there are standard ways of getting this information
from a tty device that is not using this interface.

So if you want to send a follow-on patch, removing all of them, I would
really appreciate it.

thanks,

greg k-h

