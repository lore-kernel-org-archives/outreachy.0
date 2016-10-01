X-GM-THRID: 6336070668192317440
X-Received: by 10.66.14.193 with SMTP id r1mr3094633pac.117.1475308368064;
        Sat, 01 Oct 2016 00:52:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls2728103ioe.45.gmail; Sat, 01 Oct
 2016 00:52:45 -0700 (PDT)
X-Received: by 10.36.127.70 with SMTP id r67mr2185337itc.39.1475308365138;
        Sat, 01 Oct 2016 00:52:45 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si5886712pab.2.2016.10.01.00.52.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 00:52:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id t6so2177487pae.2
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 00:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZqFSV18qOuHBi1riX30qWB6yqj0Q6zmWRjpb7kLQGwE=;
        b=fSVcJlJBPiHlErDI+L5Y4eevQYwvM8bDYcAJ2MhKpJD0O1ohdd4kfqb0RZeCQ9QxS8
         JNrW/t2ydkc5bqCLdC3BOlkDqnUjoSgUWnw6wnLQKxOytcPY+euIfVKF/TVxdX88igDh
         ahTABxHPSbEQreN8tMpTv35skr9O9jD+nIQtuBN1zkMUYa2/ofDFU2VgNOSeEkgqyQXR
         UgtUTizEtgbJIqV/JOM908PN3370KTEqNTvR35TPxBdLExrBVgg4tOEXRZ2z46UqFQXd
         A3pF+fT4Rjxqulr7fNYikiYSch4csEVgWUSC427WR0U3kDVD91KDNoTnUWOD36gdDdRV
         CXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=ZqFSV18qOuHBi1riX30qWB6yqj0Q6zmWRjpb7kLQGwE=;
        b=InL+DCRpr98UGz7oUjNe5xVXkZl5JxStUj95o5zr0RFIPlrxSWR6D6z3HnLScG/A4Q
         7HYHyPrHwAldCyQ+sCJ9GkodDVVP4OuKywrxuZet6v92HC39q/t2U/kmf6zAKnKoK8qA
         k7yRF2a9Nfq2P/05vVBb31lw4wn9w7auwNhaHf5ZiWprTVo+ZyL03hbHhR2FSa8saON0
         cd5U4pI8TiTPSLqIlVIORTmAV4vgX1Mc2Sfg15DbElVawcxxbRp3U/a+6UwTgI2IbYQC
         rEdkUto2clKOVSb3Emoi105SX31C5XIWWveuOdxxp1J8r5N0yWxpe37vSFvVA9FKhqWZ
         V6Fw==
X-Gm-Message-State: AA6/9RlcXOMZPPOUlN/bCjBM7MQnogiZzA1ejNsXC9PIs9CwwKkFFuumoq9eteAtqrj9lA==
X-Received: by 10.67.5.33 with SMTP id cj1mr18556832pad.120.1475308364635;
        Sat, 01 Oct 2016 00:52:44 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.202])
        by smtp.gmail.com with ESMTPSA id x8sm32643568pfi.93.2016.10.01.00.52.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 00:52:43 -0700 (PDT)
Date: Sat, 1 Oct 2016 15:52:40 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: iio: ad7192: implement IIO_CHAN_INFO_SAMP_FREQ
Message-ID: <20161001075239.GA3233@Socrates-DK>
Mail-Followup-To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <1475231304-3021-1-git-send-email-eraretuya@gmail.com>
 <21ebde28-4670-bfa5-a171-d7547bb84b26@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <21ebde28-4670-bfa5-a171-d7547bb84b26@metafoo.de>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 30, 2016 at 02:45:31PM +0200, Lars-Peter Clausen wrote:
> On 09/30/2016 12:28 PM, Eva Rachel Retuya wrote:
> > Use IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute
> > instead of using IIO_DEV_ATTR_SAMP_FREQ() macro.
> > 
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> 
> Hi,
> 
> Thanks for the patch. There is one tiny bug in the patch, see in the inline
> review.
> 
> The commit message can also be slightly improved. A commit message should
> typically contain why, what and how. For trivial cases some of these might
> be omitted but it is always a good idea to include them regardless. In this
> case the commit message only includes the what. The how is trivial, so that
> is OK. But the why is missing and not necessarily obvious to everybody, e.g.
> consider somebody reading the log 5 years from now.
> 
> For the why part the commit message could contain that this driver
> originally predates the availability of the IIO_CHAN_INFO_SAMP_FREQ
> attribute which is why it was not using it and using it has some advantages
> like it can be access by in-kernel consumers. And it also reduces the code size.
> 

Thank you for the comment. I sent the v2 with all your concerns
addressed.

Eva

> [...]
> > @@ -548,7 +499,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
> >  			    long mask)
> >  {
> >  	struct ad7192_state *st = iio_priv(indio_dev);
> > -	int ret, i;
> > +	int ret, i, div;
> >  	unsigned int tmp;
> >  
> >  	ret = iio_device_claim_direct_mode(indio_dev);
> > @@ -572,10 +523,25 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
> >  				break;
> >  			}
> >  		break;
> > +	case IIO_CHAN_INFO_SAMP_FREQ:
> > +		if (!val)
> > +			return -EINVAL;
> 
> The direct return here bypasses the iio_device_release_direct_mode() and
> will keep the direct mode locked. This sould instead be
> 
> if (!val) {
> 	ret = -EINVAL;
> 	break;
> }
> 
> > +
> > +		div = st->mclk / (val * st->f_order * 1024);
> > +		if (div < 1 || div > 1023) {
> > +			ret = -EINVAL;
> > +			goto out;
> 
> Since this is in a switch statement and we want to jump to the end of the
> switch I'd just use break, instead of introducing a new label.
> 
> > +		}
> > +
> > +		st->mode &= ~AD7192_MODE_RATE(-1);
> > +		st->mode |= AD7192_MODE_RATE(div);
> > +		ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
> > +		break;
> >  	default:
> >  		ret = -EINVAL;
> >  	}
> >  
> > +out:
> >  	iio_device_release_direct_mode(indio_dev);
> >  
> >  	return ret;

