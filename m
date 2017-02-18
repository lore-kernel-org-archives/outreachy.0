X-GM-THRID: 6388140683581980672
X-Received: by 10.25.204.15 with SMTP id c15mr266418lfg.5.1487445459594;
        Sat, 18 Feb 2017 11:17:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.18 with SMTP id 18ls699674wmf.21.canary-gmail; Sat, 18
 Feb 2017 11:17:38 -0800 (PST)
X-Received: by 10.28.153.75 with SMTP id b72mr472967wme.14.1487445458830;
        Sat, 18 Feb 2017 11:17:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si429870wmg.3.2017.02.18.11.17.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 11:17:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="213913221"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 20:17:37 +0100
Date: Sat, 18 Feb 2017 20:17:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jonathan Cameron <jic23@kernel.org>
cc: sayli karnik <karniksayli1995@gmail.com>, 
    outreachy-kernel@googlegroups.com, Hartmut Knaack <knaack.h@gmx.de>, 
    Lars-Peter Clausen <lars@metafoo.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: iio: adis16240_core:
 Replace symbolic permission with octal permission
In-Reply-To: <fc505638-1355-7a14-3853-32210e186df8@kernel.org>
Message-ID: <alpine.DEB.2.20.1702182017140.2383@hadrien>
References: <20170217180807.GA18849@sayli-HP-15-Notebook-PC> <fc505638-1355-7a14-3853-32210e186df8@kernel.org>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, Jonathan Cameron wrote:

> On 17/02/17 18:08, sayli karnik wrote:
> > The patch resolves following checkpatch issue:
> > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using
> > octal permissions '0444'.
> >
> > Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> Applied to the togreg branch of iio.git. Pushed out as testing initially to let
> the autobuilders play with it.
>
> One request though, please post iio related patches to linux-iio@vger.kernel.org even
> for drivers in staging.  That way they are less likely to fall through the cracks!

I updates the Outreachy instructions accordingly.

thanks,
julia

>
> Jonathan
> > ---
> >  drivers/staging/iio/accel/adis16240_core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/iio/accel/adis16240_core.c b/drivers/staging/iio/accel/adis16240_core.c
> > index d5b99e6..e1bc9fc 100644
> > --- a/drivers/staging/iio/accel/adis16240_core.c
> > +++ b/drivers/staging/iio/accel/adis16240_core.c
> > @@ -65,7 +65,7 @@ static ssize_t adis16240_read_12bit_signed(struct device *dev,
> >  	return ret;
> >  }
> >
> > -static IIO_DEVICE_ATTR(in_accel_xyz_squared_peak_raw, S_IRUGO,
> > +static IIO_DEVICE_ATTR(in_accel_xyz_squared_peak_raw, 0444,
> >  		       adis16240_read_12bit_signed, NULL,
> >  		       ADIS16240_XYZPEAK_OUT);
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/fc505638-1355-7a14-3853-32210e186df8%40kernel.org.
> For more options, visit https://groups.google.com/d/optout.
>

