X-GM-THRID: 6336450754880995328
X-Received: by 10.67.30.200 with SMTP id kg8mr2184927pad.53.1475690465552;
        Wed, 05 Oct 2016 11:01:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.40.85 with SMTP id o82ls459787ioo.50.gmail; Wed, 05 Oct
 2016 11:01:01 -0700 (PDT)
X-Received: by 10.107.41.136 with SMTP id p130mr2583428iop.11.1475690461117;
        Wed, 05 Oct 2016 11:01:01 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id p193si2503318ywe.6.2016.10.05.11.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 11:01:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id u124so4496223ywg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 05 Oct 2016 11:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=R57cHlSbJJWU49R9RE4M4Y/g/m0gI6UGtH42Aapv5bE=;
        b=ZVn32/DxE+W5echjqcET2ABhHQmfW11yyF52zmhFe4f0xJzO9tFDBF18boDRCkCNpX
         F4WGOXjLePs1fmRLbRUzIUu/J9cgz7PWOFSEizUre3S51gjnHEn4zb8Y66efS9QXjhqv
         eQ2KylZmu833+GGxNjok9PzFcdG/RHqVKtvlFKclmtfPiRVf32ijmK9TLLUIXj22TR+u
         1BRZvcMbMlma6G151WFGNPTwJy1+OjlOGphro3hveFyLfcxqlXdkwjk8cvfeemDceevy
         FWaX18/6tyUl1zfWIXolBep4kwIv2yPjUS8W/3SKVAt5NFfR/swA+SLDdIeaorE6K+Pl
         cz8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=R57cHlSbJJWU49R9RE4M4Y/g/m0gI6UGtH42Aapv5bE=;
        b=gdOheDIU8LkxwGKSLj6qnMRqmknwKS9BHuD90t95EinkT0yvOo+LA9rNjBWeaKT9Fi
         DQpbVc1p0LQz7BaPeAipcRF/siHHFrD2qX1T4RWk9YjtJxnrvybKP5dRroQDAI864f6B
         xrM/QIUObDhMYLat0umukG+qLYQc0CrbdPeR3wA1+1PS25CrmGC6Ah+NTj1rcxD7itOV
         yt5jVlSm9ifMcG+sVIAavrgujFS0lNtOCDGgc8A1RjV+jtodb53G58/Z1N686m91hHcU
         DUKzRT/82pIo4BXI9ddBVRjr4mMq8Y4Q/v8SsftK/zyxH9lvIo0pa1tNDoaKYkcZKcPf
         gQ6w==
X-Gm-Message-State: AA6/9RnL4JV0bvDWKMGvjIQRtHscoSAnVZjEaxGy297M24iUUM7+MizyUSyjrFutKg/Rx/u9fr8fZWM4bmFhGw==
X-Received: by 10.37.171.207 with SMTP id v73mr3004905ybi.187.1475690460853;
 Wed, 05 Oct 2016 11:01:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Wed, 5 Oct 2016 11:00:20 -0700 (PDT)
In-Reply-To: <20161004234757.GA5635@d830.WORKGROUP>
References: <20161001110418.GA25515@sayli-HP-15-Notebook-PC>
 <20161002050032.GA14117@d830.WORKGROUP> <e4800421-2dc9-2460-470b-a043d198f469@metafoo.de>
 <20161002232524.GA2822@d830.WORKGROUP> <CAKG5xWi6M5jemARfENuVgigaqUbvdJmeVbwpR3kWDM9d8LBW-w@mail.gmail.com>
 <20161003171601.GC3132@d830.WORKGROUP> <CAKG5xWj7RSTpeGcnJtA-2PJk5NVFO_2DV-Fgo938wAafvhS8PA@mail.gmail.com>
 <20161004234757.GA5635@d830.WORKGROUP>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Wed, 5 Oct 2016 23:30:20 +0530
Message-ID: <CAKG5xWhxd0N6ogx2GvkET1TOhJFrrOmOMRLPtBp1L7FcTBhkPQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: imu: bmi160: bmi160_core: Fix
 sparse warning
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, linux-iio@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 5, 2016 at 5:17 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Wed, Oct 05, 2016 at 03:17:22AM +0530, sayli karnik wrote:
>> On Mon, Oct 3, 2016 at 10:46 PM, Alison Schofield <amsfield22@gmail.com> wrote:
>> > On Mon, Oct 03, 2016 at 07:07:39PM +0530, sayli karnik wrote:
>> >> On Mon, Oct 3, 2016 at 4:55 AM, Alison Schofield <amsfield22@gmail.com> wrote:
>> >> > On Sun, Oct 02, 2016 at 05:53:08PM +0200, Lars-Peter Clausen wrote:
>> >> >> On 10/02/2016 07:00 AM, Alison Schofield wrote:
>> >> >> [...]
>> >> >> >> ---
>> >> >> >>  drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
>> >> >> >>  1 file changed, 2 insertions(+), 1 deletion(-)
>> >> >> >>
>> >> >> >> diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
>> >> >> >> index e0251b8..5355507 100644
>> >> >> >> --- a/drivers/iio/imu/bmi160/bmi160_core.c
>> >> >> >> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
>> >> >> >> @@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>> >> >> >>    struct iio_poll_func *pf = p;
>> >> >> >>    struct iio_dev *indio_dev = pf->indio_dev;
>> >> >> >>    struct bmi160_data *data = iio_priv(indio_dev);
>> >> >> >> -  s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
>> >> >> >> +  __le16 buf[16];
>> >> >> >> +  /* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
>> >> >> >>    int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
>> >> >> >>    __le16 sample;
>> >> >> >
>> >> >> > Wondering about this option below.  Data was read into an __le16, so that
>> >> >> > was good diligence on drivers part.  Seems we can use le16_to_cpu() for the
>> >> >> > conversion into the buf.
>> >> >> >
>> >> >> > --- a/drivers/iio/imu/bmi160/bmi160_core.c
>> >> >> > +++ b/drivers/iio/imu/bmi160/bmi160_core.c
>> >> >> > @@ -408,7 +408,7 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>> >> >> >                                    &sample, sizeof(__le16));
>> >> >> >             if (ret < 0)
>> >> >> >                     goto done;
>> >> >> > -           buf[j++] = sample;
>> >> >> > +           buf[j++] = le16_to_cpu(sample);
>> >> >> >     }
>> >> >>
>> >> >> This conversion is usually skipped on purpose and delayed until it is
>> >> >> actually needed by the user. The IIO channel is accordingly marked that it
>> >> >> will produce LE data.
>> >> > Thanks Lars.  I knew that for buffers, overlooked it, now I'll know it
>> >> > better!
>> >> >
>> >> > So, Sayli, you probably got this from the analysis of the last patch.
>> >> > In buffered mode, we'll go ahead and return the data in it's 'native'
>> >> > order.  So, my suggestion to convert it here, is wrong.  Ignore ;)
>> >> >
>> >> Oh I see! So should I resend the patch with an updated
>> >> description?(cosmetic/bug fix)
>> >
>> > Yes.  In the commit message, you can leave out the subdirs (imu: bmc160:)
>> > so that you have more space for a descriptive message of the change.
>>
>> A quick question about this being a bug fix or not. This would have
>> worked fine on little endian systems. But wouldn't the byte order have
>> changed in case of a big endian buffer, when the little endian samples
>> are stored in it?
>> If not, then this will be a cosmetic patch.
>>
>> thanks,
>> sayli
>
> Hi Sayli,
> Pulling linux-iio back in.  Once we've started group thread, we need to
> keep replying to 'all'.  It helps those invested in this particular
> patch, and also helps those who search in the future with similar
> issues.
>
> To answer your question.  I say cosmetic, because the le16 is going
> into a 16bit buf element, and is labelled as IIO_LE in the channel
> buffer definition.  That's why Lars was saying we don't need to do
> any conversion. We'll pass the bits as they came in, and tell the
> readers of the buf that they are in little endian format.  (And, also
> note we weren't truncating any as was the case in your first endian fix.)
>
Noted!

> OK - having said that, I stare at this code more, and wonder why
> we are even bothering to label the sample as __le16, and whether
> we should just label it as s16.

Oh, in that case we could make both buf and sample s16.

 Also, I'm wondering about the use
> of sizeof().  Shouldn't we be saying sizeof(sample) not sizeof(__le16)?
> It's not a checkpatch error, but I feel like I've seen coccichecks
> or coccinelle script patches repairing these misuses of sizeof
>
Yes sizeof(variable) instead of sizeof(type) makes code resistant to
future type changes.

> See what you think, group reply with questions, and we'll get to the
> bottom of this one soon!
>
> Thanks,
> alisons
>

