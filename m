X-GM-THRID: 6398760479278235648
X-Received: by 10.99.128.72 with SMTP id j69mr8415545pgd.60.1490006081257;
        Mon, 20 Mar 2017 03:34:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.232 with SMTP id 95ls12928229ots.19.gmail; Mon, 20 Mar
 2017 03:34:40 -0700 (PDT)
X-Received: by 10.13.207.66 with SMTP id r63mr13966906ywd.21.1490006080816;
        Mon, 20 Mar 2017 03:34:40 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id s67si403860pfs.4.2017.03.20.03.34.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 03:34:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n11so5294286pfg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 03:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=06Goyxdldh/rBMPwub6TtpSnMRziDYaSS0otDWjsy0c=;
        b=YTnJl4c1Xh5oRxrinK9KERUDL4Fu5z0AFdQ8+WH95wfE90V6daGdeZ77qCI8dNGr+L
         qDOdHBC6JREUtisbSyky+mTrKKqGvKpCcbditOLRvRAAWWilEx0dpp768ArkKvfskRoj
         VSptGDqwJgbB72TJc0XRwqP0CBMyhaalEN5+cAW/bmjLKvKSflzAJpsI0I6zOLjrH+rr
         JYiy6TmyHo719u19Z9y+UvmWX0cz3aZeJIfl+D3zGbLA1j5ZQiDbgskl+3463wRxMlmM
         JEBa7Lks5OIcxy3N3j9L9Phxx+gFnp9mAFHJAF9Ipx5/eym2546QkjxsZuj1TNpaO4Er
         iaVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=06Goyxdldh/rBMPwub6TtpSnMRziDYaSS0otDWjsy0c=;
        b=KxpFmKbGhAxnI/9DOJdg8fDeZVZZaTDxEcuajt2Iy2sndIeShMcR1Bw+IkaENrHOlt
         4x0592o3beiXjRe2mBAzXqA5+4O8pvRXJRvHSafQA60umO0b9CpB6aX7oCMd0Ix1XZN1
         gURG3yJi1Qtdln5vijor4hpAHrCFRTxOKy3DuXNpJAcNKpSAuXV7kblF+fpHbnK+h1eg
         cjc76dM1kyBcDKtVNfsWYbQ5h/xdCZSAaO/za5VnqXELB5o9TWWqRqXMawROdRAlFyJR
         HYDcPcoeR+MtC9qQWMxinE0CwzlkZAhpuoF25YHmyoH1Y/CsFZ1zmQ2d2ovnNiZ5Syhk
         TrIg==
X-Gm-Message-State: AFeK/H1KgO+CHBildH0AlJq775VLTMFmsb0lH5r/q+cIdG16os4C+3FVeDPaik4liP34Vg==
X-Received: by 10.99.158.2 with SMTP id s2mr30771684pgd.116.1490006080484;
        Mon, 20 Mar 2017 03:34:40 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.10])
        by smtp.gmail.com with ESMTPSA id s13sm32376630pfd.46.2017.03.20.03.34.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 03:34:40 -0700 (PDT)
Date: Mon, 20 Mar 2017 16:04:32 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Barry Song <21cnbao@gmail.com>, outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v3] staging: iio: accel: adis16201: remove iio_dev mlock
Message-ID: <20170320103432.GA8228@aishwarya>
References: <20170317214356.GA8369@aishwarya>
 <c4f803ee-8a6a-520e-2be3-bb68a57a8303@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c4f803ee-8a6a-520e-2be3-bb68a57a8303@kernel.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 19, 2017 at 10:19:42AM +0000, Jonathan Cameron wrote:
> On 17/03/17 21:43, Aishwarya Pant wrote:
> > In the driver adis16201 read raw does not require an iio_dev->mlock for
> > reads. It can run concurrently as adis_read_reg_16() is protected by a
> > transaction lock.
> > 
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> Great, one suggestion for a follow up patch below.
> 
> Applied to the togreg branch of iio.git and pushed out as testing for
> the autobuilders to play with it.
> 
> Thanks,
> 
> Jonathan
> > 
> > ---
> > Changes in v3:
> > 	-- Fix change log format
> > 	-- Send patch to linuc-iio
> > Changes in v2:
> > 	-- Remove read lock
> > 
> >  drivers/staging/iio/accel/adis16201.c | 6 +-----
> >  1 file changed, 1 insertion(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
> > index d6c8658..fd2baf2 100644
> > --- a/drivers/staging/iio/accel/adis16201.c
> > +++ b/drivers/staging/iio/accel/adis16201.c
> > @@ -223,17 +223,13 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
> >  		default:
> >  			return -EINVAL;
> >  		}
> > -		mutex_lock(&indio_dev->mlock);
> >  		addr = adis16201_addresses[chan->scan_index];
> >  		ret = adis_read_reg_16(st, addr, &val16);
> Not a lot of point in having the local variable addr given it's
> only used here.  Perhaps you could follow up with a patch getting
> rid of it?

Sure. I will look at clean-up opportunities here. 

But I'm unsure of where I should be rebasing from? 
greg's staging tree or the togreg branch of the iio tree.
https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/
According to the link, togreg was last updated 2 weeks ago.

thanks
Aishwarya


> > -		if (ret) {
> > -			mutex_unlock(&indio_dev->mlock);
> > +		if (ret)
> >  			return ret;
> > -		}
> >  		val16 &= (1 << bits) - 1;
> >  		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
> >  		*val = val16;
> > -		mutex_unlock(&indio_dev->mlock);
> >  		return IIO_VAL_INT;
> >  	}
> >  	return -EINVAL;
> > 
> 

