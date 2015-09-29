X-GM-THRID: 6199177214450204672
X-Received: by 10.112.164.1 with SMTP id ym1mr24327lbb.15.1443562797573;
        Tue, 29 Sep 2015 14:39:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.11 with SMTP id ku11ls7505lac.2.gmail; Tue, 29 Sep
 2015 14:39:57 -0700 (PDT)
X-Received: by 10.152.19.131 with SMTP id f3mr26519lae.9.1443562797075;
        Tue, 29 Sep 2015 14:39:57 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTP id o5si120231wib.0.2015.09.29.14.39.56
        for <outreachy-kernel@googlegroups.com>;
        Tue, 29 Sep 2015 14:39:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,609,1437429600"; 
   d="scan'208";a="180048692"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2015 23:39:56 +0200
Date: Tue, 29 Sep 2015 23:39:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging:iio/accel: Fixed checkpatch.pl
 warnings
In-Reply-To: <1443562269-42782-1-git-send-email-cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.02.1509292336300.2031@localhost6.localdomain6>
References: <1443562269-42782-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

For the subject line, check git log --oneline filename.c to see what is 
commonly used.  For example, I see Staging: iio: accel: or just Staging: 
iio:.

For the rest of the subject line, say something more specific to what you 
did.  Checkpatch does a lot of things, and fixing each one should really 
be a separate patch.

On Tue, 29 Sep 2015, Cristina Moraru wrote:

> 'Block comments use a trailing */ on a separate line' Warnings

The commit message should be in the imperative.  In your case, it could be 
"Move final */ to the next line, in accordance with the suggestion of 
checkpatch".

julia

> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/iio/accel/lis3l02dq_ring.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/accel/lis3l02dq_ring.c b/drivers/staging/iio/accel/lis3l02dq_ring.c
> index b892f2c..1a0651c 100644
> --- a/drivers/staging/iio/accel/lis3l02dq_ring.c
> +++ b/drivers/staging/iio/accel/lis3l02dq_ring.c
> @@ -195,7 +195,8 @@ __lis3l02dq_write_data_ready_config(struct iio_dev *indio_dev, bool state)
>  	/* Enable requested */
>  	} else if (state && !currentlyset) {
>  		/* If not set, enable requested
> -		 * first disable all events */
> +		 * first disable all events
> +		 */
>  		ret = lis3l02dq_disable_all_events(indio_dev);
>  		if (ret < 0)
>  			goto error_ret;
> @@ -255,7 +256,8 @@ static int lis3l02dq_trig_try_reen(struct iio_trigger *trig)
>  	int i;
>  
>  	/* If gpio still high (or high again)
> -	 * In theory possible we will need to do this several times */
> +	 * In theory possible we will need to do this several times
> +	 */
>  	for (i = 0; i < 5; i++)
>  		if (gpio_get_value(st->gpio))
>  			lis3l02dq_read_all(indio_dev, NULL);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443562269-42782-1-git-send-email-cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

