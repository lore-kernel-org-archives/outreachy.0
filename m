X-GM-THRID: 6342268830362894336
X-Received: by 10.66.52.40 with SMTP id q8mr5542499pao.107.1476697548998;
        Mon, 17 Oct 2016 02:45:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.20.72 with SMTP id 69ls4614710iou.32.gmail; Mon, 17 Oct
 2016 02:45:46 -0700 (PDT)
X-Received: by 10.107.38.14 with SMTP id m14mr6517380iom.21.1476697546786;
        Mon, 17 Oct 2016 02:45:46 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f3si1265809pfa.0.2016.10.17.02.45.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 02:45:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id s8so12448301pfj.2
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 02:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Pwb52HgTKdThFHHr5UBqZuY8cV1iBtUW0IqQOV0VmjA=;
        b=yRaUe8ZqKhHiZceiGQS3j7LutIFGklKr76o1mWF6F98gasVxIL+mRU13I0PWciIuoC
         ZCvaWU4ZBknqK7tbBHK/e0k5+lWkwimlYIPgo2bUiNegTPjOzGUOme0qdYmzcUbwasK9
         C+pLa69zq8zEWqXS3QRQy6VoUMbeGwZTEnp6Xgjl2rvrEYvIxPxxEFonNHH7WK+mE3Nt
         i19aZdU9IGvaV/sJE2PDUqPqzqCHUALMwC5pMpIFh6hkBEMli0pid35lZ2AASpeMHFtK
         OD6oj4cd7Wy9VJzXzVNKPpb3HSZOTcLB3lFIxlZbTvnp4PnWc+9e+2itilbH42KWOyOn
         7GfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=Pwb52HgTKdThFHHr5UBqZuY8cV1iBtUW0IqQOV0VmjA=;
        b=Az6LL7Q8CTqGOkg8jYvxFXt+zruWjj/FCdMHZA2RptEuyVJL/PIi6G0BuobsPth/sB
         3nI0McoMGHZRzXYphqONX196P1JVblLK7tJ1xYKEZMdUGYDghAT9fZQMpj+khm8pvHlL
         L0RkDDgxtIkEodwF1vM7fPYIwey+HezaWzP/+bpRq+PhRDHz+Pt4y3rx8DX91Hjo50kN
         TFNETL11aRrsn9w5NoFrt7P61w61iQsqWEK7dydHz74EivXyxk1Wk9KLcSjpFCCY44/V
         QbQFU0LAzbkxWGtp1lsqUE431t0iIMa5S1+fwQeJZDz09mNhvx/zulAmYDF8pVmJt7ce
         Sd9w==
X-Gm-Message-State: AA6/9Rl6l3AB5sRPqNS0jpx3VF8divjmShJDb1pED64abjV5ssGQbIFFFI3KBmHndDqPXw==
X-Received: by 10.98.58.73 with SMTP id h70mr31486625pfa.138.1476697545958;
        Mon, 17 Oct 2016 02:45:45 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.6])
        by smtp.gmail.com with ESMTPSA id i63sm46454611pfi.64.2016.10.17.02.45.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 17 Oct 2016 02:45:45 -0700 (PDT)
Date: Mon, 17 Oct 2016 17:45:37 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: iio: cdc: ad7746: add additional config defines
Message-ID: <20161017094535.GB2809@Socrates-DK>
Mail-Followup-To: Lars-Peter Clausen <lars@metafoo.de>,
	linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org
References: <1476674510-10734-1-git-send-email-eraretuya@gmail.com>
 <e0a34a65-5443-7fc4-500c-f1b43b1788dc@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e0a34a65-5443-7fc4-500c-f1b43b1788dc@metafoo.de>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 17, 2016 at 09:51:07AM +0200, Lars-Peter Clausen wrote:
> On 10/17/2016 05:21 AM, Eva Rachel Retuya wrote:
> > Introduce defines for shifting and mask under the config register for
> > better readability.
> > 
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> 
> Hi,
> 
> Thanks for the patch. Comments inline.
> 
> > ---
> >  drivers/staging/iio/cdc/ad7746.c | 26 ++++++++++++++++----------
> >  1 file changed, 16 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> > index f41251c..751f0d1 100644
> > --- a/drivers/staging/iio/cdc/ad7746.c
> > +++ b/drivers/staging/iio/cdc/ad7746.c
> > @@ -70,8 +70,12 @@
> >  #define AD7746_EXCSETUP_EXCLVL(x)	(((x) & 0x3) << 0)
> >  
> >  /* Config Register Bit Designations (AD7746_REG_CFG) */
> > -#define AD7746_CONF_VTFS(x)		((x) << 6)
> > -#define AD7746_CONF_CAPFS(x)		((x) << 3)
> > +#define AD7746_CONF_VTFS_SHIFT		6
> > +#define AD7746_CONF_CAPFS_SHIFT		3
> > +#define AD7746_CONF_VTFS_MASK		0x3
> > +#define AD7746_CONF_CAPFS_MASK		0x7
> > +#define AD7746_CONF_VTFS(x)		((x) << AD7746_CONF_VTFS_SHIFT)
> > +#define AD7746_CONF_CAPFS(x)		((x) << AD7746_CONF_CAPFS_SHIFT)
> >  #define AD7746_CONF_MODE_IDLE		(0 << 0)
> >  #define AD7746_CONF_MODE_CONT_CONV	(1 << 0)
> >  #define AD7746_CONF_MODE_SINGLE_CONV	(2 << 0)
> > @@ -224,8 +228,8 @@ static int ad7746_select_channel(struct iio_dev *indio_dev,
> >  	case IIO_CAPACITANCE:
> >  		cap_setup = (chan->address & 0xFF) | AD7746_CAPSETUP_CAPEN;
> >  		vt_setup = chip->vt_setup & ~AD7746_VTSETUP_VTEN;
> > -		delay = ad7746_cap_filter_rate_table[(chip->config >> 3) &
> > -			0x7][1];
> > +		delay = ad7746_cap_filter_rate_table[(chip->config &
> > +			AD7746_CONF_CAPFS_MASK) >> AD7746_CONF_CAPFS_SHIFT][1];
> 
> This flips the order in which the shift and the mask are applied, that will
> break things. But maybe we should change things so that the mask includes
> the offset and use the GENMASK() macro to create them. This would also allow
> to simplify
> 

My bad, I blindly followed the feedback from a recent patch I made on
this driver. I'm aware and wondering why the order got reversed,
should've replied back to that thread.

Anyways, thank you for the feedback. Will send v2 with your proposed
changes.

Eva

> 	chip->config &= ~AD7746_CONF_CAPFS(AD7746_CONF_CAPFS_MASK);
> 
> to
> 
> 	chip->config &= ~AD7746_CONF_CAPFS_MASK;
> 
> I'd also introduce a helper variable to move the index calculation outside
> of the array brackets. It is a bit convoluted the way it is right now.
> 
> Same comment for the similar changes done below.
> 
> >  
> >  		if (chip->capdac_set != chan->channel) {
> >  			ret = i2c_smbus_write_byte_data(chip->client,
> > @@ -246,8 +250,8 @@ static int ad7746_select_channel(struct iio_dev *indio_dev,
> >  	case IIO_TEMP:
> >  		vt_setup = (chan->address & 0xFF) | AD7746_VTSETUP_VTEN;
> >  		cap_setup = chip->cap_setup & ~AD7746_CAPSETUP_CAPEN;
> > -		delay = ad7746_cap_filter_rate_table[(chip->config >> 6) &
> > -			0x3][1];
> > +		delay = ad7746_cap_filter_rate_table[(chip->config &
> > +			AD7746_CONF_VTFS_MASK) >> AD7746_CONF_VTFS_SHIFT][1];
> >  		break;
> >  	default:
> >  		return -EINVAL;
> [...]
> > @@ -636,12 +640,14 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
> >  		switch (chan->type) {
> >  		case IIO_CAPACITANCE:
> >  			*val = ad7746_cap_filter_rate_table[
> > -					(chip->config >> 3) & 0x7][0];
> > +				(chip->config & AD7746_CONF_CAPFS_MASK) >>
> > +					AD7746_CONF_CAPFS_SHIFT][0];
> >  			ret = IIO_VAL_INT;
> >  			break;
> >  		case IIO_VOLTAGE:
> >  			*val = ad7746_vt_filter_rate_table[
> > -					(chip->config >> 6) & 0x3][0];
> > +				(chip->config & AD7746_CONF_VTFS_MASK) >>
> > +					AD7746_CONF_VTFS_SHIFT][0];
> >  			break;
> >  		default:
> >  			ret = -EINVAL;
> > 
> 

