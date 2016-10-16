X-GM-THRID: 6342042153586262016
X-Received: by 10.66.193.3 with SMTP id hk3mr5021110pac.87.1476624664844;
        Sun, 16 Oct 2016 06:31:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.178.27 with SMTP id u27ls1747493ite.13.gmail; Sun, 16 Oct
 2016 06:31:00 -0700 (PDT)
X-Received: by 10.66.118.199 with SMTP id ko7mr4535210pab.109.1476624660294;
        Sun, 16 Oct 2016 06:31:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p131si4121901vkf.1.2016.10.16.06.30.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 06:31:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,354,1473112800"; 
   d="scan'208";a="240960554"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2016 15:30:57 +0200
Date: Sun, 16 Oct 2016 15:30:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Siddhi Dave <d.sandy5990@gmail.com>
cc: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org, 
    driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Clean up Macros
In-Reply-To: <20161016124231.GA18162@siddhi-home-laptop>
Message-ID: <alpine.DEB.2.20.1610161525490.2207@hadrien>
References: <20161016124231.GA18162@siddhi-home-laptop>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 16 Oct 2016, Siddhi Dave wrote:

> Fix checkpatch warning: Macros with flow control statements should be avoided
>
> Because Macros with flow control statements (goto and return) are
> not very nice to read as any flow movement is unexpected.
>
> Signed-off-by: Siddhi Dave <d.sandy5990@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_sysfs.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
> index 290bf6e..0767740 100644
> --- a/drivers/staging/dgnc/dgnc_sysfs.c
> +++ b/drivers/staging/dgnc/dgnc_sysfs.c
> @@ -90,16 +90,16 @@ void dgnc_remove_driver_sysfiles(struct pci_driver *dgnc_driver)
>  	driver_remove_file(driverfs, &driver_attr_pollrate);
>  }
>
> -#define DGNC_VERIFY_BOARD(p, bd)				\
> -	do {							\
> -		if (!p)						\
> -			return 0;				\
> -								\
> -		bd = dev_get_drvdata(p);			\
> -		if (!bd || bd->magic != DGNC_BOARD_MAGIC)	\
> -			return 0;				\
> -		if (bd->state != BOARD_READY)			\
> -			return 0;				\
> +#define DGNC_VERIFY_BOARD(p, bd)
> +do {
> +	if (!p)
> +		return 0;
> +
> +		bd = dev_get_drvdata(p);
> +		if (!bd || bd->magic != DGNC_BOARD_MAGIC)
> +			return 0;
> +		if (bd->state != BOARD_READY)
> +			return 0;
>  	} while (0)

This does not look correct.  You are still sort of defining a macro,
except that you have dropped all of the \s.  A macro has to be defined on
a single line, or a line continued with \, so this would cause major
syntax errors.  I think that someone else worked on similar code and found
that some of the tests were also not needed in the context in which this
code is used.

julia

>
>  static ssize_t vpd_show(struct device *p, struct device_attribute *attr,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161016124231.GA18162%40siddhi-home-laptop.
> For more options, visit https://groups.google.com/d/optout.
>

