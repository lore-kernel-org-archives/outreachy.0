X-GM-THRID: 6336450754880995328
X-Received: by 10.157.15.67 with SMTP id 61mr1380983ott.55.1475617683662;
        Tue, 04 Oct 2016 14:48:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.1 with SMTP id 1ls13941823otb.4.gmail; Tue, 04 Oct 2016
 14:48:03 -0700 (PDT)
X-Received: by 10.157.63.2 with SMTP id m2mr1359243otc.70.1475617683203;
        Tue, 04 Oct 2016 14:48:03 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id w124si2619823ywc.4.2016.10.04.14.48.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 14:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id g192so8547784ywh.0
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 14:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=2vhQwOG6qEommGyZDFh+toePxsJs/CsxGxsEEqcS29c=;
        b=dUoE3RDbc/PBaJHMtCOe5bPBsFvOErLTZksgRC1pYSfnY36g6Oipj0l52SstNlSOpd
         3s4x66shftwzxMSGlFDPGnYqFHv2DvfErL4UwmpZ+T+13ZBzcMGvEodcaRS7W7YVz5OE
         NHjNkTMs2MJh3s1g5+0xuTn795qdvdRNsM8pdKcd66jdl2vrZCVtqQKTvHvcXrd0p7p0
         lRdg3ySLG/vl+fSQ1fFO5HzuY4oV2vdr+4KL7/sUNyoRuzquckW4r4unMr+OGdIAOqpp
         TN4Ss//kXsN0EV/44VHF3f9rFR8XWaH/mdcNefU9PrhyX9Inzn/8MtgrkmJaf2MVRU29
         lKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=2vhQwOG6qEommGyZDFh+toePxsJs/CsxGxsEEqcS29c=;
        b=HZqHeinBpFdq8/ujRoMMk8qaeacL/O6aFhy+BB64BvTJsKazSAU04foGNJhGc0rf/Q
         MVq8VnqUUmJzPdFAmxp+3SuWb6VShX+9n+1rzKhTu/LYoRPHDPxuna0+Gnh0PglVS1WT
         +N0RzbPse67eJpWF6kWcjo0hWucDVNy2CdhVwOf+eJIAkHD9b/h0fyBTsFzD9X00kv1U
         B3OqzSfyOJ3ORXKqbWEJj7pYYPuyUIAbKdAisUvt5K1+iATfHu1fqaBtbwczPjwaLRat
         aP51jtPbzbr8u42miUdnJdcUQe58lmC6/qvNybd+f5XhimYsLdf/m7yLP/mJhN0pBbMs
         zZuQ==
X-Gm-Message-State: AA6/9Rl0kzUvdU3PV9thIz06mR1DalgUr1YWalnIWAQq5+IFwmmgWG5MdXymOuii+mTVCZZW6td/M/u0TdjMyQ==
X-Received: by 10.129.111.8 with SMTP id k8mr4276322ywc.235.1475617682925;
 Tue, 04 Oct 2016 14:48:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Tue, 4 Oct 2016 14:47:22 -0700 (PDT)
In-Reply-To: <20161003171601.GC3132@d830.WORKGROUP>
References: <20161001110418.GA25515@sayli-HP-15-Notebook-PC>
 <20161002050032.GA14117@d830.WORKGROUP> <e4800421-2dc9-2460-470b-a043d198f469@metafoo.de>
 <20161002232524.GA2822@d830.WORKGROUP> <CAKG5xWi6M5jemARfENuVgigaqUbvdJmeVbwpR3kWDM9d8LBW-w@mail.gmail.com>
 <20161003171601.GC3132@d830.WORKGROUP>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Wed, 5 Oct 2016 03:17:22 +0530
Message-ID: <CAKG5xWj7RSTpeGcnJtA-2PJk5NVFO_2DV-Fgo938wAafvhS8PA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: imu: bmi160: bmi160_core: Fix
 sparse warning
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 3, 2016 at 10:46 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Mon, Oct 03, 2016 at 07:07:39PM +0530, sayli karnik wrote:
>> On Mon, Oct 3, 2016 at 4:55 AM, Alison Schofield <amsfield22@gmail.com> wrote:
>> > On Sun, Oct 02, 2016 at 05:53:08PM +0200, Lars-Peter Clausen wrote:
>> >> On 10/02/2016 07:00 AM, Alison Schofield wrote:
>> >> [...]
>> >> >> ---
>> >> >>  drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
>> >> >>  1 file changed, 2 insertions(+), 1 deletion(-)
>> >> >>
>> >> >> diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
>> >> >> index e0251b8..5355507 100644
>> >> >> --- a/drivers/iio/imu/bmi160/bmi160_core.c
>> >> >> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
>> >> >> @@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>> >> >>    struct iio_poll_func *pf = p;
>> >> >>    struct iio_dev *indio_dev = pf->indio_dev;
>> >> >>    struct bmi160_data *data = iio_priv(indio_dev);
>> >> >> -  s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
>> >> >> +  __le16 buf[16];
>> >> >> +  /* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
>> >> >>    int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
>> >> >>    __le16 sample;
>> >> >
>> >> > Wondering about this option below.  Data was read into an __le16, so that
>> >> > was good diligence on drivers part.  Seems we can use le16_to_cpu() for the
>> >> > conversion into the buf.
>> >> >
>> >> > --- a/drivers/iio/imu/bmi160/bmi160_core.c
>> >> > +++ b/drivers/iio/imu/bmi160/bmi160_core.c
>> >> > @@ -408,7 +408,7 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>> >> >                                    &sample, sizeof(__le16));
>> >> >             if (ret < 0)
>> >> >                     goto done;
>> >> > -           buf[j++] = sample;
>> >> > +           buf[j++] = le16_to_cpu(sample);
>> >> >     }
>> >>
>> >> This conversion is usually skipped on purpose and delayed until it is
>> >> actually needed by the user. The IIO channel is accordingly marked that it
>> >> will produce LE data.
>> > Thanks Lars.  I knew that for buffers, overlooked it, now I'll know it
>> > better!
>> >
>> > So, Sayli, you probably got this from the analysis of the last patch.
>> > In buffered mode, we'll go ahead and return the data in it's 'native'
>> > order.  So, my suggestion to convert it here, is wrong.  Ignore ;)
>> >
>> Oh I see! So should I resend the patch with an updated
>> description?(cosmetic/bug fix)
>
> Yes.  In the commit message, you can leave out the subdirs (imu: bmc160:)
> so that you have more space for a descriptive message of the change.

A quick question about this being a bug fix or not. This would have
worked fine on little endian systems. But wouldn't the byte order have
changed in case of a big endian buffer, when the little endian samples
are stored in it?
If not, then this will be a cosmetic patch.

thanks,
sayli

> alisons
>
>>
>> thanks,
>> sayli
>>
>> > alisons
>> >
>> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161003171601.GC3132%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

