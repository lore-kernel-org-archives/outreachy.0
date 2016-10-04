X-GM-THRID: 6336450754880995328
X-Received: by 10.107.145.134 with SMTP id t128mr1837288iod.14.1475624881627;
        Tue, 04 Oct 2016 16:48:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.48 with SMTP id h45ls3907675ote.22.gmail; Tue, 04 Oct
 2016 16:48:01 -0700 (PDT)
X-Received: by 10.157.54.219 with SMTP id s27mr1504705otd.90.1475624881304;
        Tue, 04 Oct 2016 16:48:01 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ua1si1940687pac.1.2016.10.04.16.48.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 16:48:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id cd13so8626897pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 16:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=168GvTDLcBvvrW95xdoQpeYx6IrCPYbkBEq7ALH61+4=;
        b=XkmD2/sKFp6eA7Aw/rh8g/X/9ltL/Lg8hbNxjXXtRWMUhj1Ok0oIVUUsx8fOwmY3GK
         eogCAvJcDbd8nVaRy1qQLGKB+QvamlCcBWUVQkjg0sZxCNJiYBViqqvIHHr5oyUdH+1P
         4QQQh8VTsb9JWc6kGJVMd7rURg6aOSZOkOpypvLGzIp7uIz7xJGWSAHt+MrL3fsl8baV
         joK47QUNrtaY1P5kgNjrZdZJJPGI5SUkxzRUygfoOxxG3q1MXD38npfIHbUFgOfgGfVN
         JPiEUpucvVKdTKBHJ82t1CN7S3sxO789f8nxL/ECe0+koZGrE0LOGM3qFHYoeXcHaNK6
         esMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=168GvTDLcBvvrW95xdoQpeYx6IrCPYbkBEq7ALH61+4=;
        b=Y9xnBvTkX9d99i+SaFzx+lPP8Ugq0Z7S9l4gjXy7ocn4v3OVMSGBy4HI9lw34+7xLU
         mXgl9JkbCRWRo23SPGNIYCdypfRMxyjN725Syf/EyjG7DIU5hRTW7WdZapCRpN2dvehx
         E+31MQfDwz6ioRSNujo+9g7x5u7ZZ9HSKmnNPYfMi4K8QA2pYJdig/nOl6iHNPT5eTOE
         XUBOeOWM3KKvae63dONyzGXfDmSqgdZpl2iLL0lKuraHz+12t2v4QzPjZJqSQpRRYsz6
         /ri7rHScZ2pDiNZLtxWPx7MiKGV9AiGRwgZB0xwUnzXf0PSBqPBhm6dZL2akD87zRhHp
         1Dlg==
X-Gm-Message-State: AA6/9RmWtE3cvOLwUo+ZlDPKI4Hzdq9LnLn2XEtK6LGGGZH0kcm5mH08LqHH0wZRfjf5/A==
X-Received: by 10.66.144.5 with SMTP id si5mr8982503pab.158.1475624881085;
        Tue, 04 Oct 2016 16:48:01 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id wd7sm8563224pab.2.2016.10.04.16.48.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 16:48:00 -0700 (PDT)
Date: Tue, 4 Oct 2016 16:47:58 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	linux-iio@vger.kernel.org, lars@metafoo.de
Subject: Re: [Outreachy kernel] [PATCH] iio: imu: bmi160: bmi160_core: Fix
 sparse warning
Message-ID: <20161004234757.GA5635@d830.WORKGROUP>
References: <20161001110418.GA25515@sayli-HP-15-Notebook-PC>
 <20161002050032.GA14117@d830.WORKGROUP>
 <e4800421-2dc9-2460-470b-a043d198f469@metafoo.de>
 <20161002232524.GA2822@d830.WORKGROUP>
 <CAKG5xWi6M5jemARfENuVgigaqUbvdJmeVbwpR3kWDM9d8LBW-w@mail.gmail.com>
 <20161003171601.GC3132@d830.WORKGROUP>
 <CAKG5xWj7RSTpeGcnJtA-2PJk5NVFO_2DV-Fgo938wAafvhS8PA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG5xWj7RSTpeGcnJtA-2PJk5NVFO_2DV-Fgo938wAafvhS8PA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Oct 05, 2016 at 03:17:22AM +0530, sayli karnik wrote:
> On Mon, Oct 3, 2016 at 10:46 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Mon, Oct 03, 2016 at 07:07:39PM +0530, sayli karnik wrote:
> >> On Mon, Oct 3, 2016 at 4:55 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> >> > On Sun, Oct 02, 2016 at 05:53:08PM +0200, Lars-Peter Clausen wrote:
> >> >> On 10/02/2016 07:00 AM, Alison Schofield wrote:
> >> >> [...]
> >> >> >> ---
> >> >> >>  drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
> >> >> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >> >> >>
> >> >> >> diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
> >> >> >> index e0251b8..5355507 100644
> >> >> >> --- a/drivers/iio/imu/bmi160/bmi160_core.c
> >> >> >> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
> >> >> >> @@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
> >> >> >>    struct iio_poll_func *pf = p;
> >> >> >>    struct iio_dev *indio_dev = pf->indio_dev;
> >> >> >>    struct bmi160_data *data = iio_priv(indio_dev);
> >> >> >> -  s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
> >> >> >> +  __le16 buf[16];
> >> >> >> +  /* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
> >> >> >>    int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
> >> >> >>    __le16 sample;
> >> >> >
> >> >> > Wondering about this option below.  Data was read into an __le16, so that
> >> >> > was good diligence on drivers part.  Seems we can use le16_to_cpu() for the
> >> >> > conversion into the buf.
> >> >> >
> >> >> > --- a/drivers/iio/imu/bmi160/bmi160_core.c
> >> >> > +++ b/drivers/iio/imu/bmi160/bmi160_core.c
> >> >> > @@ -408,7 +408,7 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
> >> >> >                                    &sample, sizeof(__le16));
> >> >> >             if (ret < 0)
> >> >> >                     goto done;
> >> >> > -           buf[j++] = sample;
> >> >> > +           buf[j++] = le16_to_cpu(sample);
> >> >> >     }
> >> >>
> >> >> This conversion is usually skipped on purpose and delayed until it is
> >> >> actually needed by the user. The IIO channel is accordingly marked that it
> >> >> will produce LE data.
> >> > Thanks Lars.  I knew that for buffers, overlooked it, now I'll know it
> >> > better!
> >> >
> >> > So, Sayli, you probably got this from the analysis of the last patch.
> >> > In buffered mode, we'll go ahead and return the data in it's 'native'
> >> > order.  So, my suggestion to convert it here, is wrong.  Ignore ;)
> >> >
> >> Oh I see! So should I resend the patch with an updated
> >> description?(cosmetic/bug fix)
> >
> > Yes.  In the commit message, you can leave out the subdirs (imu: bmc160:)
> > so that you have more space for a descriptive message of the change.
> 
> A quick question about this being a bug fix or not. This would have
> worked fine on little endian systems. But wouldn't the byte order have
> changed in case of a big endian buffer, when the little endian samples
> are stored in it?
> If not, then this will be a cosmetic patch.
> 
> thanks,
> sayli

Hi Sayli,
Pulling linux-iio back in.  Once we've started group thread, we need to
keep replying to 'all'.  It helps those invested in this particular
patch, and also helps those who search in the future with similar
issues.

To answer your question.  I say cosmetic, because the le16 is going
into a 16bit buf element, and is labelled as IIO_LE in the channel
buffer definition.  That's why Lars was saying we don't need to do
any conversion.  We'll pass the bits as they came in, and tell the
readers of the buf that they are in little endian format.  (And, also
note we weren't truncating any as was the case in your first endian fix.)

OK - having said that, I stare at this code more, and wonder why
we are even bothering to label the sample as __le16, and whether
we should just label it as s16.  Also, I'm wondering about the use
of sizeof().  Shouldn't we be saying sizeof(sample) not sizeof(__le16)?
It's not a checkpatch error, but I feel like I've seen coccichecks
or coccinelle script patches repairing these misuses of sizeof

See what you think, group reply with questions, and we'll get to the
bottom of this one soon!  

Thanks,
alisons


