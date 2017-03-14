X-GM-THRID: 6397400318166958080
X-Received: by 10.107.164.99 with SMTP id n96mr349199ioe.70.1489517085224;
        Tue, 14 Mar 2017 11:44:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.5 with SMTP id p5ls174243iop.34.gmail; Tue, 14 Mar 2017
 11:44:44 -0700 (PDT)
X-Received: by 10.36.225.65 with SMTP id n62mr1021928ith.13.1489517084699;
        Tue, 14 Mar 2017 11:44:44 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y203si3379571pfb.0.2017.03.14.11.44.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 11:44:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so20168177pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 11:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=L8sK3TqxrPKc3SXVZctJZO2DTnMfQC9+hYPRvi5pXSY=;
        b=T5WFIVUYx3jz4AUwyudNV3OiGvYFaji+0MzQcqzlDxw4lxJa2s6fQ7e8sVwH8aXw9i
         hez92bdhDWnyAiNdnnY+OByVePZAjG1key/v2605N/ONmWbt2K+wJwEq9uKStbivz2R5
         9uvRp3gJfVUixdjlMR6/fem2nZtstLYYSHCNSFP9Xl02Lhya97PLjHUav1mQGgnOCK+p
         158nSInYtRpUiAcYlbONs6E9F6rIY6JQ3D5SNQpKWaneVJae1E37IiDpMDfdwebVM7yl
         8gA/2RR7jRmsw0G+Pz5Ajda2g3Ojpnn6n7q6E1dciiGYwuB4Xps8ZoaKVBxF6RrGEmgj
         WEgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=L8sK3TqxrPKc3SXVZctJZO2DTnMfQC9+hYPRvi5pXSY=;
        b=KEa/TUl4DQ6Qe72oUo7kFHmTGO0adnRw5RPlskxplnX65TvlgCPOjyghokqnoemoWn
         uBqwm61zONAnC8qO07HIU1j43/w7Pl/GT7MylKyKirk25EsjQH5gRzaY+qdrQzfzdXV6
         TPSykKxz2kwaWMmyVLWfhshnSsMvpRlyarcIQfHydYl9P62OYZ9nK9wkmJtus2Oqcpmz
         AN3f/8lhcJR/dcwP9GJCVZMUSWmWrfCK2xOdHgWvyQQq6RC2uE0RiivobU1ggYIXDGYD
         1Qwpadi8xv3ZK5fSQz6D81UBXi3yh5vlZVODPGzjb7qBDOojDwKa0tClUqxHqX4Rnwb3
         aHug==
X-Gm-Message-State: AMke39lo8jtm4Vi41IceBzvLb8oBV9omWZ2xtS4jJm4oFAZl6LlbSVNxzfoEpLDCXoT0sg==
X-Received: by 10.99.229.83 with SMTP id z19mr45236655pgj.55.1489517084184;
        Tue, 14 Mar 2017 11:44:44 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.186.161.154])
        by smtp.gmail.com with ESMTPSA id 73sm39996377pfj.31.2017.03.14.11.44.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 11:44:43 -0700 (PDT)
Date: Tue, 14 Mar 2017 06:35:27 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: iio: accel: replace mlock with driver private
 lock
Message-ID: <20170314010527.GA19732@aishwarya>
References: <20170313235754.GA18423@aishwarya>
 <69d0fa64-371f-88df-8109-7d483f5fa781@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <69d0fa64-371f-88df-8109-7d483f5fa781@metafoo.de>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 14, 2017 at 06:11:51PM +0100, Lars-Peter Clausen wrote:
> On 03/14/2017 12:58 AM, Aishwarya Pant wrote:
> > IIO subsystem is redefining iio_dev mlock to be used by IIO core only
> > for protecting device operating mode changes.
> > 
> > In the driver adis164201, a struct adis16201_state has been introduced
> > to store driver state information. Wherever iio_dev->mlock was used to
> > protect hardware state changes, it has been replaced by driver private
> > lock.
> > 
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > ---
> >  drivers/staging/iio/accel/adis16201.c | 34 ++++++++++++++++++++--------------
> >  1 file changed, 20 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
> > index d6c8658..6d84eae 100644
> > --- a/drivers/staging/iio/accel/adis16201.c
> > +++ b/drivers/staging/iio/accel/adis16201.c
> > @@ -150,6 +150,11 @@
> >  
> >  #define ADIS16201_ERROR_ACTIVE          BIT(14)
> >  
> > +struct adis16201_state {
> > +	struct adis adis; /* adis device */
> > +	struct mutex lock; /* protect state changes */
> > +};
> > +
> >  enum adis16201_scan {
> >  	ADIS16201_SCAN_ACC_X,
> >  	ADIS16201_SCAN_ACC_Y,
> > @@ -172,7 +177,7 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
> >  			      int *val, int *val2,
> >  			      long mask)
> >  {
> > -	struct adis *st = iio_priv(indio_dev);
> > +	struct adis16201_state *st = iio_priv(indio_dev);
> >  	int ret;
> >  	int bits;
> >  	u8 addr;
> > @@ -223,17 +228,17 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
> >  		default:
> >  			return -EINVAL;
> >  		}
> > -		mutex_lock(&indio_dev->mlock);
> > +		mutex_lock(&st->lock);
> 
> I think this lock could simply be removed completely. adis_read_reg_16() is
> already atomic and there is nothing else to protect here.

I believed the lock was put in here to prevent race condition in this
line:

addr = adis16201_addresses[chan->scan_index];

Is that not the case here?

> 
> >  		addr = adis16201_addresses[chan->scan_index];
> > -		ret = adis_read_reg_16(st, addr, &val16);
> > +		ret = adis_read_reg_16(&st->adis, addr, &val16);
> >  		if (ret) {
> > -			mutex_unlock(&indio_dev->mlock);
> > +			mutex_unlock(&st->lock);
> >  			return ret;
> >  		}
> >  		val16 &= (1 << bits) - 1;
> >  		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
> >  		*val = val16;
> > -		mutex_unlock(&indio_dev->mlock);
> > +		mutex_unlock(&st->lock);
> >  		return IIO_VAL_INT;
> >  	}
> >  	return -EINVAL;
> 

