X-GM-THRID: 6339690897688494080
X-Received: by 10.36.123.197 with SMTP id q188mr3740949itc.26.1476120647522;
        Mon, 10 Oct 2016 10:30:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.198 with SMTP id s64ls9903827otb.15.gmail; Mon, 10 Oct
 2016 10:30:47 -0700 (PDT)
X-Received: by 10.237.59.118 with SMTP id q51mr6435041qte.64.1476120647037;
        Mon, 10 Oct 2016 10:30:47 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si9013899par.0.2016.10.10.10.30.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 10:30:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (smb-adpcdg2-01.hotspot.hub-one.net [213.174.99.135])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 46694725;
	Mon, 10 Oct 2016 17:30:45 +0000 (UTC)
Date: Mon, 10 Oct 2016 19:30:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: lidza.louina@gmail.com, markh@compro.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: dgnc: replace DGNC_VERIFY_BOARD macro with
 dgnc_verify_board function.
Message-ID: <20161010173053.GD7299@kroah.com>
References: <20161010140016.GA18255@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161010140016.GA18255@lennorien.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Mon, Oct 10, 2016 at 11:00:16AM -0300, Elise Lennion wrote:
> Fix checkpatch warning:
> 
> WARNING: Macros with flow control statements should be avoided
> 
> Macros with flow control statements should be avoided. They break
> the flow of the calling function and make it harder to test the code.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
> 
> v2: Fixed the return values of dgnc_verify_board. 
>     Reworked to return NULL instead of 0, as suggested 
>     by Julia Lawall <julia.lawall@lip6.fr>.
> 
>  drivers/staging/dgnc/dgnc_sysfs.c | 74 +++++++++++++++++++++++++++------------
>  1 file changed, 51 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
> index 290bf6e..cdec40a 100644
> --- a/drivers/staging/dgnc/dgnc_sysfs.c
> +++ b/drivers/staging/dgnc/dgnc_sysfs.c
> @@ -90,17 +90,21 @@ void dgnc_remove_driver_sysfiles(struct pci_driver *dgnc_driver)
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
> -	} while (0)
> +static struct dgnc_board *dgnc_verify_board(struct device *p)
> +{
> +	struct dgnc_board *bd;
> +
> +	if (!p)
> +		return NULL;
> +
> +	bd = dev_get_drvdata(p);
> +	if (!bd || bd->magic != DGNC_BOARD_MAGIC)
> +		return NULL;
> +	if (bd->state != BOARD_READY)
> +		return NULL;
> +
> +	return bd;
> +}

While this is a nice cleanup, take a step back and see what is being
done with this code.

First off, (!p) can never be true, so checking for it shows that the
original author didn't understand how sysfs worked.  After that, bd will
also always be not NULL, as the driver already set that up.  Same for
the ->magic field, that's pointless to check as it can't be wrong.

So maybe, BOARD_READY matters, but that's impossible to be not correct
as it is set before the sysfs files are created, and never changes from
what I can tell.

So all of these checks are pointless and can just be removed.

But then, step back even further, what code is checking for these
things?  It's odd sysfs files that I have said need to be removed from
the driver as they are pointless and not something that any tty driver
should have.

So how about just dropping the sysfs files instead?  That deletes a
bunch of code (some of it wrong and pointless as described above), gets
the driver closer to being mergable out of the staging directory, and it
keeps anyone from ever copying bad coding patterns like this ever again.

thanks,

greg k-h

