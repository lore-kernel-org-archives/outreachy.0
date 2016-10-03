X-GM-THRID: 6336450754880995328
X-Received: by 10.36.29.7 with SMTP id 7mr5438316itj.2.1475514964684;
        Mon, 03 Oct 2016 10:16:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.135 with SMTP id 129ls2444615itj.19.canary; Mon, 03 Oct
 2016 10:16:04 -0700 (PDT)
X-Received: by 10.66.121.234 with SMTP id ln10mr553285pab.23.1475514964114;
        Mon, 03 Oct 2016 10:16:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id z73si2034049pfa.1.2016.10.03.10.16.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 10:16:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id r9so8090087paz.1
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 10:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dcQ851UZmeUdp4xXuF1P0VDjy/lmlayMk6Jm9BU7e8I=;
        b=BE+Ycty+9jKABk6abBKys+0krwaJ0o7vD3Ci9gQioTqsbNca4vW8KfQB/JY4edSduG
         h66jQWgY5mBd77UptLSjsLnPPuiEKamvxqV3u8/EKZ0Ie7qRylSw/QJff+jAPvZi5RUb
         GMNV9MAp7xvEP1OywwF8gKe5VE9/kmNJpBkSajQQY1XRtVAs69J8QvAmDH8kmnQ70QaF
         iYXs+2iDeHHPfoMpxLQxD6fspgpgrZBULehfvG4s10h9RTjSfrUyFBB10vi9NWmVV9To
         pfTAGRAhr3AMXplxrO7qU0UT8r6BWSNee3QEPjolSElevb/s7d9QZxi2aRA6w4iyKJLi
         YcQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dcQ851UZmeUdp4xXuF1P0VDjy/lmlayMk6Jm9BU7e8I=;
        b=eRK408tPOWF32KYuqPaPoKh26AfqaeVv7CdJF7XHsAHT5AjcZl43p80H/5O0dUJ+mq
         yAriSQihknAkbR6P4nCE/xi5iCiTRgFcCNx5l9Gn6MPfHBEetfQh5UzC2H85xTRXzn5+
         9sDE7JIZ3KNU4iGbAz0+BlEVz2qw9bQe8ai1YTQWDvlAxSsYocsS8tYCaXOhqoB/zV9q
         Gyj5fSqnrSh4yY1a9ZJUBlnQkC4wtulGlC4xPSxfR1NOCN3hweeDS3pEFC95+OmNbZU9
         t0KmOl3fReXxur+mPrNh5EgXIjBR1s0E+hOMTyMvsGdhYutYml8oqH2kAmRRiGXvyh3r
         Vk9g==
X-Gm-Message-State: AA6/9Rlbw00Upvf+OygfzfW3nHGz4hQHSnWPfK054HtiK/vUc9HyyLjCoRIbfmg3rDbSGQ==
X-Received: by 10.66.142.169 with SMTP id rx9mr22178480pab.122.1475514963935;
        Mon, 03 Oct 2016 10:16:03 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id jh3sm48741071pac.16.2016.10.03.10.16.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 03 Oct 2016 10:16:03 -0700 (PDT)
Date: Mon, 3 Oct 2016 10:16:02 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, outreachy-kernel@googlegroups.com,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] iio: imu: bmi160: bmi160_core: Fix
 sparse warning
Message-ID: <20161003171601.GC3132@d830.WORKGROUP>
References: <20161001110418.GA25515@sayli-HP-15-Notebook-PC>
 <20161002050032.GA14117@d830.WORKGROUP>
 <e4800421-2dc9-2460-470b-a043d198f469@metafoo.de>
 <20161002232524.GA2822@d830.WORKGROUP>
 <CAKG5xWi6M5jemARfENuVgigaqUbvdJmeVbwpR3kWDM9d8LBW-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG5xWi6M5jemARfENuVgigaqUbvdJmeVbwpR3kWDM9d8LBW-w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Oct 03, 2016 at 07:07:39PM +0530, sayli karnik wrote:
> On Mon, Oct 3, 2016 at 4:55 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Sun, Oct 02, 2016 at 05:53:08PM +0200, Lars-Peter Clausen wrote:
> >> On 10/02/2016 07:00 AM, Alison Schofield wrote:
> >> [...]
> >> >> ---
> >> >>  drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
> >> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >> >>
> >> >> diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
> >> >> index e0251b8..5355507 100644
> >> >> --- a/drivers/iio/imu/bmi160/bmi160_core.c
> >> >> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
> >> >> @@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
> >> >>    struct iio_poll_func *pf = p;
> >> >>    struct iio_dev *indio_dev = pf->indio_dev;
> >> >>    struct bmi160_data *data = iio_priv(indio_dev);
> >> >> -  s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
> >> >> +  __le16 buf[16];
> >> >> +  /* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
> >> >>    int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
> >> >>    __le16 sample;
> >> >
> >> > Wondering about this option below.  Data was read into an __le16, so that
> >> > was good diligence on drivers part.  Seems we can use le16_to_cpu() for the
> >> > conversion into the buf.
> >> >
> >> > --- a/drivers/iio/imu/bmi160/bmi160_core.c
> >> > +++ b/drivers/iio/imu/bmi160/bmi160_core.c
> >> > @@ -408,7 +408,7 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
> >> >                                    &sample, sizeof(__le16));
> >> >             if (ret < 0)
> >> >                     goto done;
> >> > -           buf[j++] = sample;
> >> > +           buf[j++] = le16_to_cpu(sample);
> >> >     }
> >>
> >> This conversion is usually skipped on purpose and delayed until it is
> >> actually needed by the user. The IIO channel is accordingly marked that it
> >> will produce LE data.
> > Thanks Lars.  I knew that for buffers, overlooked it, now I'll know it
> > better!
> >
> > So, Sayli, you probably got this from the analysis of the last patch.
> > In buffered mode, we'll go ahead and return the data in it's 'native'
> > order.  So, my suggestion to convert it here, is wrong.  Ignore ;)
> >
> Oh I see! So should I resend the patch with an updated
> description?(cosmetic/bug fix)

Yes.  In the commit message, you can leave out the subdirs (imu: bmc160:)
so that you have more space for a descriptive message of the change.
alisons

> 
> thanks,
> sayli
> 
> > alisons
> >
> >>

