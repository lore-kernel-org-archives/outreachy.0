X-GM-THRID: 6336450754880995328
X-Received: by 10.200.53.22 with SMTP id y22mr4644722qtb.58.1475450728204;
        Sun, 02 Oct 2016 16:25:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls8829717otw.27.gmail; Sun, 02 Oct
 2016 16:25:27 -0700 (PDT)
X-Received: by 10.157.6.74 with SMTP id 68mr3992135otn.52.1475450727916;
        Sun, 02 Oct 2016 16:25:27 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si6737255pab.2.2016.10.02.16.25.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 16:25:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 190so2020664pfv.1
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 16:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZqzPs8cIUT0oPt1j6GgW1Xh5Cq4oww6pw6iO9nCcvLE=;
        b=z1WatCRku34AtKk7VRuqAGaoKXYfs9SzOvDnzmZbLOVgWFbs8+zNNcX6F5uCNHgpwp
         BNbD+5QDC7HwiiLC1ZK4vDK6td+YGSLEv5uiX9vtemNXyLhHJXeRCYNZsObKXux+AS5w
         TiUtP4oWB6poZnTR9+QCq2sBW2sWH5rBZzjwvvqyi6iM2XTLobJhhUU7Q/CBCbMoqF1j
         ouCjrHdu/aO70c395IMjnhixXyNShKfTuv8sWo1vG2PWVK2UvYDp6xGMw+2ZNx/pP4Ed
         va8azwgf5rGKKde3zzm7bhfwNJKCxkGBg9uVpNKxjaFRyRVCVuTC6+U7w1So0scR77E8
         PuAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZqzPs8cIUT0oPt1j6GgW1Xh5Cq4oww6pw6iO9nCcvLE=;
        b=NQ+570KoZoRXVAbZmuyqsIrvm23M/6MeopZHiUwHN+XO6iHoYpa6bVf3JHdlKxuaeD
         go48SYTOYElqmdxTIqEgMXBMS3y3f5uOUwgFPQbcWHsRgP0c5AOr1ClTmV9ECX6WUwib
         XSx1DQaRWsat1ERzwma9bGybDQK4RyDTY1Q9Me2ae6TIcfMFmFHowadn8ZGd1FM1UdL3
         YxoLeV1pQ5jV+8ZYM+Oa21yOBZR7svcbcv1OyFdmyfg1xrq4tNolIlLWljtmduTrZ2I9
         7DNffdmGObOuXXgeptxOn07wWuYrSvOhzn545gn6JJiyTtWZqS77eJRzXsd57A1kNU8j
         UnKA==
X-Gm-Message-State: AA6/9RmhOswLCx3TpYP1DDjwqdneQ6A/EKq3G33aeplOZsCSLX9xlkHEgd1ZYosuqTP5vA==
X-Received: by 10.98.216.134 with SMTP id e128mr1070264pfg.184.1475450727714;
        Sun, 02 Oct 2016 16:25:27 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id m11sm42250212pfi.30.2016.10.02.16.25.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 16:25:27 -0700 (PDT)
Date: Sun, 2 Oct 2016 16:25:25 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: sayli karnik <karniksayli1995@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] iio: imu: bmi160: bmi160_core: Fix
 sparse warning
Message-ID: <20161002232524.GA2822@d830.WORKGROUP>
References: <20161001110418.GA25515@sayli-HP-15-Notebook-PC>
 <20161002050032.GA14117@d830.WORKGROUP>
 <e4800421-2dc9-2460-470b-a043d198f469@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4800421-2dc9-2460-470b-a043d198f469@metafoo.de>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Oct 02, 2016 at 05:53:08PM +0200, Lars-Peter Clausen wrote:
> On 10/02/2016 07:00 AM, Alison Schofield wrote:
> [...]
> >> ---
> >>  drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
> >> index e0251b8..5355507 100644
> >> --- a/drivers/iio/imu/bmi160/bmi160_core.c
> >> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
> >> @@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
> >>  	struct iio_poll_func *pf = p;
> >>  	struct iio_dev *indio_dev = pf->indio_dev;
> >>  	struct bmi160_data *data = iio_priv(indio_dev);
> >> -	s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
> >> +	__le16 buf[16];
> >> +	/* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
> >>  	int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
> >>  	__le16 sample;
> > 
> > Wondering about this option below.  Data was read into an __le16, so that
> > was good diligence on drivers part.  Seems we can use le16_to_cpu() for the
> > conversion into the buf.
> > 
> > --- a/drivers/iio/imu/bmi160/bmi160_core.c
> > +++ b/drivers/iio/imu/bmi160/bmi160_core.c
> > @@ -408,7 +408,7 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
> >  				       &sample, sizeof(__le16));
> >  		if (ret < 0)
> >  			goto done;
> > -		buf[j++] = sample;
> > +		buf[j++] = le16_to_cpu(sample);
> >  	}
> 
> This conversion is usually skipped on purpose and delayed until it is
> actually needed by the user. The IIO channel is accordingly marked that it
> will produce LE data.
Thanks Lars.  I knew that for buffers, overlooked it, now I'll know it
better!

So, Sayli, you probably got this from the analysis of the last patch.
In buffered mode, we'll go ahead and return the data in it's 'native'
order.  So, my suggestion to convert it here, is wrong.  Ignore ;)

alisons

> 

