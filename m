X-GM-THRID: 6398911459091283968
X-Received: by 10.99.95.211 with SMTP id t202mr11235174pgb.155.1490118429429;
        Tue, 21 Mar 2017 10:47:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.192.3 with SMTP id q3ls25053iof.29.gmail; Tue, 21 Mar 2017
 10:47:08 -0700 (PDT)
X-Received: by 10.107.3.224 with SMTP id e93mr9328156ioi.59.1490118428500;
        Tue, 21 Mar 2017 10:47:08 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si3443353pfz.1.2017.03.21.10.47.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 10:47:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id w20so1509017pgc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 10:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tL/OK8ooBbaQ7LlZVbbx12dTZvZ2Ed4FyNKBCaMTxCI=;
        b=JVIeNYnZIs/cgiKccUaiQD5Ij0pM8daDhXACL4Smhg2F08AQYe2bww3fHZuBTfciWD
         VMafiIx8iDZygyaSXP5gDGpYihoSpw1M8ligVM6DTCpCNvzvXpinhJv2iw7VVhspT1Wt
         kwgjk6WcbwjMHsN/4OXMw8YpY8dYNzIm1iKZYhlb9MqAhlpq8u+7uJO4nNr6qGRdMXn8
         1WZFrNRnX0pwtFTRQqlnyCbscRfjjKv0JFBPuHRPOQQVNEPV/uhmBIdQWrHO0mfJFPTc
         odRtIspPNr1EE6xQYE5AbJqNdaxSUaDgk/cJG72j1YRBcYoLn8fwzrzJTscG8vmbHI0P
         923w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tL/OK8ooBbaQ7LlZVbbx12dTZvZ2Ed4FyNKBCaMTxCI=;
        b=RoyDiWDR4PinWb3HCqn41k+xJ2qyL7p0yCLDx0hJnXfskYG/XOvR5GRBd3KKZgAjF8
         cwcFR/EbD4EdLDPPxaaRtYxBWXZemhvGO4tSOx0HCusX2YJe3tQ94sdlD6io29RpvneL
         fT7c2hOuXpAvUTw9yyoffn+AeezCopB1xS0CPORcT86as7n2ix98Hdcn5H3L3tjmR+Hb
         dF7unSI2tm3cQ0xAvZZDISxo739P6QM1LFhOztcrGBy5Ket20cjQcq0kcCDwOfX6DDzr
         C0zK1g+AX7y12TXIxlWU5T4kmhrM88nETEcOwEY+J0a9mIKcfs1cPQPeQ3MAzMR6V9pr
         SNmw==
X-Gm-Message-State: AFeK/H0D3zPU5qsVNoGaXi9zmT3cUefkyyo7s0DNsGXIihZ8kgJM8n8vnFioQa1CNStwVg==
X-Received: by 10.99.154.9 with SMTP id o9mr39237764pge.69.1490118428156;
        Tue, 21 Mar 2017 10:47:08 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id n15sm40871864pfj.18.2017.03.21.10.47.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 10:47:07 -0700 (PDT)
Date: Tue, 21 Mar 2017 10:47:06 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v6] staging: Use buf_lock instead of
 mlock and Refactor code
Message-ID: <20170321174706.GE2793@d830.WORKGROUP>
References: <20170319200621.GA21295@singhal-Inspiron-5558>
 <20170321164812.GA2793@d830.WORKGROUP>
 <CALrZqyPp30PNGRhVVnvv1FphTb7tK58+_sd=fCeSZ40LQaP9WA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALrZqyPp30PNGRhVVnvv1FphTb7tK58+_sd=fCeSZ40LQaP9WA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 21, 2017 at 10:34:01PM +0530, SIMRAN SINGHAL wrote:
> On Tue, Mar 21, 2017 at 10:18 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Mon, Mar 20, 2017 at 01:36:21AM +0530, simran singhal wrote:
> >
> > Hi Simran,
> >
> > I going to ask for a v7 without looking at the code ;)
> > Subject line needs subsystem and driver.
> > Subject and log message can be improved.
> 
> Hi Alison,
> I have already sent v7 with changed subject.

Simran,
I see v7.  Needs subsystem (iio) and to nitpick, driver name
is "adis16060" ;) Other comments still apply. 
Please append all version histories below the --- for review.
v7:
v6:
.
.
v2: 
thanks,
alisons
> 
> >
> >> The IIO subsystem is redefining iio_dev->mlock to be used by
> >> the IIO core only for protecting device operating mode changes.
> >> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> >>
> >> In this driver, mlock was being used to protect hardware state
> >> changes. Replace it with buf_lock in the devices global data.
> >            ^^^^^^^^^^^ this was not done
> >>
> >> As buf_lock protects both the adis16060_spi_write() and
> >> adis16060_spi_read() functions and both are always called in
> >> pair. First write, then read. Thus, refactor the code to have
> >> one single function adis16060_spi_write_than_read() which is
> >> protected by the existing buf_lock.
> > This was done.  So, you were able to obsolete the need for mlock
> > by creating the paired function.
> >
> >>
> >> Removed nested locks as the function adis16060_read_raw call
> >> a lock on &st->buf_lock and then calls the function
> >> adis16060_spi_write which again tries to get hold
> >> of the same lock.
> > ^^^^ this was not done.  Yes, you avoided nested locks through
> > proper coding, but we don't want to give the impression in the
> > log message that there was a pre-existing nested lock issue.
> >
> > I did checkpatch & compile it...but looked no further yet.
> >
> > alisons
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >> ---
> >>
> >>  v6:
> >>    -Change commit message
> >>    -Remove nested lock
> >>
> >>  drivers/staging/iio/gyro/adis16060_core.c | 40 ++++++++++---------------------
> >>  1 file changed, 13 insertions(+), 27 deletions(-)
> >>
> >> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
> >> index c9d46e7..1c6de46 100644
> >> --- a/drivers/staging/iio/gyro/adis16060_core.c
> >> +++ b/drivers/staging/iio/gyro/adis16060_core.c
> >> @@ -40,25 +40,17 @@ struct adis16060_state {
> >>
> >>  static struct iio_dev *adis16060_iio_dev;
> >>
> >> -static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
> >> +static int adis16060_spi_write_than_read(struct iio_dev *indio_dev,
> >> +                                      u8 conf, u16 *val)
> >>  {
> >>       int ret;
> >>       struct adis16060_state *st = iio_priv(indio_dev);
> >>
> >> -     mutex_lock(&st->buf_lock);
> >> -     st->buf[2] = val; /* The last 8 bits clocked in are latched */
> >> +     st->buf[2] = conf; /* The last 8 bits clocked in are latched */
> >>       ret = spi_write(st->us_w, st->buf, 3);
> >> -     mutex_unlock(&st->buf_lock);
> >> -
> >> -     return ret;
> >> -}
> >> -
> >> -static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
> >> -{
> >> -     int ret;
> >> -     struct adis16060_state *st = iio_priv(indio_dev);
> >>
> >> -     mutex_lock(&st->buf_lock);
> >> +     if (ret < 0)
> >> +             return ret;
> >>
> >>       ret = spi_read(st->us_r, st->buf, 3);
> >>
> >> @@ -69,8 +61,8 @@ static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
> >>        */
> >>       if (!ret)
> >>               *val = ((st->buf[0] & 0x3) << 12) |
> >> -                     (st->buf[1] << 4) |
> >> -                     ((st->buf[2] >> 4) & 0xF);
> >> +                      (st->buf[1] << 4) |
> >> +                      ((st->buf[2] >> 4) & 0xF);
> >>       mutex_unlock(&st->buf_lock);
> >>
> >>       return ret;
> >> @@ -83,20 +75,18 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
> >>  {
> >>       u16 tval = 0;
> >>       int ret;
> >> +     struct adis16060_state *st = iio_priv(indio_dev);
> >>
> >>       switch (mask) {
> >>       case IIO_CHAN_INFO_RAW:
> >>               /* Take the iio_dev status lock */
> >> -             mutex_lock(&indio_dev->mlock);
> >> -             ret = adis16060_spi_write(indio_dev, chan->address);
> >> +             mutex_lock(&st->buf_lock);
> >> +             ret = adis16060_spi_write_than_read(indio_dev,
> >> +                                                 chan->address, &tval);
> >> +             mutex_unlock(&st->buf_lock);
> >>               if (ret < 0)
> >> -                     goto out_unlock;
> >> +                     return ret;
> >>
> >> -             ret = adis16060_spi_read(indio_dev, &tval);
> >> -             if (ret < 0)
> >> -                     goto out_unlock;
> >> -
> >> -             mutex_unlock(&indio_dev->mlock);
> >>               *val = tval;
> >>               return IIO_VAL_INT;
> >>       case IIO_CHAN_INFO_OFFSET:
> >> @@ -110,10 +100,6 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
> >>       }
> >>
> >>       return -EINVAL;
> >> -
> >> -out_unlock:
> >> -     mutex_unlock(&indio_dev->mlock);
> >> -     return ret;
> >>  }
> >>
> >>  static const struct iio_info adis16060_info = {
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170319200621.GA21295%40singhal-Inspiron-5558.
> >> For more options, visit https://groups.google.com/d/optout.

