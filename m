X-GM-THRID: 6401527449864110080
X-Received: by 10.157.49.68 with SMTP id v4mr418588otd.95.1490898926379;
        Thu, 30 Mar 2017 11:35:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.17 with SMTP id q17ls6714198iod.51.gmail; Thu, 30 Mar
 2017 11:35:25 -0700 (PDT)
X-Received: by 10.99.181.73 with SMTP id u9mr445644pgo.44.1490898925528;
        Thu, 30 Mar 2017 11:35:25 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id q9si473778itc.1.2017.03.30.11.35.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 11:35:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id e75so13990631itd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 11:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=r+dCbCH67uwoM23qy65gluFAA2lzn1Wlnx0QwUkEJ4M=;
        b=pPRZjxsQisZYsNAjYPBwKq/L7zJC2OEP+xszTNyF1Jfnt4Phhjc99jUgvbue+H2YTs
         4xRlWBbRIk2jUCEDh8QxWgbvt6NnCAbNvrE3VfNxqO1s57PfsX/pte//pt+S2lN2vWu3
         QlvoaaSs7/3LtySM+WLE4iQAg29w4FqG4AO1KUiFBf+3hpekJ/ex1Vw4vlsRLS9PAo1p
         Ys3Mi9I/Jy9aZEcBHDAYO+GcMZIRaUkreg4voQJYLfCIBbm+Mw6J+dvwMiy7PtgudP7T
         Nihbw18AurNtnsfxidbmVrMjk+VqN1BV4aB2V05xCYYYX7mYDVXMRAhVZUePbaxEd5K/
         d4GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=r+dCbCH67uwoM23qy65gluFAA2lzn1Wlnx0QwUkEJ4M=;
        b=tIoPi1qIQmUK5GJ1Km+s5Dp43FmYTwyocChibw964oddgD/9Rudo2pBqsyC+yZlakp
         cAvngMSyJAeEtEQFJalvMZjRrwv+boGs2Ef8ds2zYPhjX+VxRvRZZ0ns5urJofXvW09i
         dy+D5jolrjpHb2esabbq/iivHZ9kY9K97tZkGJJWLNPYXmKQaeWK4AW6u5tldVXoh6zf
         0MJky7fgZi9cDKXzEv/DMTKwyJvMFi29WGEUwRcX/Ckg40ZVmW99Sg6BntDQvLOiVgpq
         TWI9mlklRSkiWz95T4HjXqwn92Ll9+C1ukuf7niiQslUDeNVNHEBGKgNJ4ldkhvLUD/y
         JTXg==
X-Gm-Message-State: AFeK/H2I3hGnXZHheN0AeTumw5g1ySXPWS7vcDeX4l1ipREdeAvbg5FQkntG8gGckVy8VYH/cepcH84Nu2sLTA==
X-Received: by 10.36.103.215 with SMTP id u206mr2278387itc.6.1490898925033;
 Thu, 30 Mar 2017 11:35:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Thu, 30 Mar 2017 11:34:54 -0700 (PDT)
In-Reply-To: <98194f4f-55e3-9f74-d4c7-a87b4344db3d@kernel.org>
References: <1490866426-15575-1-git-send-email-gs051095@gmail.com>
 <ce65c22f-2c3a-a8b0-fcbb-8198829a4b65@kernel.org> <20170330182549.GB6160@d830.WORKGROUP>
 <98194f4f-55e3-9f74-d4c7-a87b4344db3d@kernel.org>
From: Gargi Sharma <gs051095@gmail.com>
Date: Fri, 31 Mar 2017 00:04:54 +0530
Message-ID: <CAOCi2DFGCyj2jWsG0Dpf75kbsHzHSv2EUECuPSa64hx+UZCbNw@mail.gmail.com>
Subject: Re: [RFC/PATCH v3] staging: iio: update locking method during
 frequency writes
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, linux-iio@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 30, 2017 at 11:58 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 30/03/17 19:25, Alison Schofield wrote:
>> On Thu, Mar 30, 2017 at 07:22:49PM +0100, Jonathan Cameron wrote:
>>> On 30/03/17 10:33, Gargi Sharma wrote:
>>>> The driver needs to insure atomicity during frequency
>>>> changes of bus and device. The iiodev->mlock as used
>>>> was not doing that. Replace it with the drivers existing
>>>> buffer lock and introduce an auxiliary spi_write() that does
>>>> not hold the lock.
>>>>
>>>> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>>> Only one comment on this.  Why an RFC?  I nearly
>>> ignored this in my sweep of easy patches to pick up
>>> this evening purely because I thought there might still
>>> be something that needed real thought in it.
>>
>> Oh, that was my bad influence!
>> We were reviewing proposals for these in Outreachy and I'd
>> suggested the RFC label for the proposals.  Thanks for
>> addressing it.
>> alisons
> Was fair enough for round one - though saying why it might
> need comments in the patch description is always good.
>
> By V3 with all positive comments, probably fine to loose the
> RFC :)

I was skeptical of the RFC tag hence put the PATCH in subject prefix
as well. :) Anyways, lesson learnt for future!

Thanks,
Gargi
>>
>>>
>>> It's a clean nice patch that I don't think any substantial
>>> questions have been raised against - so just submit it as
>>> patch. As an RFC it is underselling itself!
>>>
>>> Anyhow, never mind, I did look and have applied it ;)
>>>
>>> Applied to the togreg branch of iio.git and pushed out
>>> as testing for the autobuilders to play with it.
>>>
>>> Thanks.
>>>
>>> Jonathan
>>>> ---
>>>> Changes in v3:
>>>>         - Removed unnecessary ret variable inside
>>>>           __ade7754_spi_write_reg_8 function.
>>>> Changes in v2:
>>>>         - Added auxiliary function.
>>>>         - Updated the buf_lock comment appropriately.
>>>> ---
>>>>  drivers/staging/iio/meter/ade7754.c | 24 ++++++++++++++++--------
>>>>  1 file changed, 16 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
>>>> index c8d2d4c..91f8740 100644
>>>> --- a/drivers/staging/iio/meter/ade7754.c
>>>> +++ b/drivers/staging/iio/meter/ade7754.c
>>>> @@ -97,7 +97,7 @@
>>>>  /**
>>>>   * struct ade7754_state - device instance specific data
>>>>   * @us:                    actual spi_device
>>>> - * @buf_lock:              mutex to protect tx and rx
>>>> + * @buf_lock:              mutex to protect tx, rx and write frequency
>>>>   * @tx:                    transmit buffer
>>>>   * @rx:                    receive buffer
>>>>   **/
>>>> @@ -108,17 +108,25 @@ struct ade7754_state {
>>>>     u8                      rx[ADE7754_MAX_RX];
>>>>  };
>>>>
>>>> -static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
>>>> +/* Unlocked version of ade7754_spi_write_reg_8 function */
>>>> +static int __ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
>>>>  {
>>>> -   int ret;
>>>>     struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>>>>     struct ade7754_state *st = iio_priv(indio_dev);
>>>>
>>>> -   mutex_lock(&st->buf_lock);
>>>>     st->tx[0] = ADE7754_WRITE_REG(reg_address);
>>>>     st->tx[1] = val;
>>>> +   return spi_write(st->us, st->tx, 2);
>>>> +}
>>>>
>>>> -   ret = spi_write(st->us, st->tx, 2);
>>>> +static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
>>>> +{
>>>> +   int ret;
>>>> +   struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>>>> +   struct ade7754_state *st = iio_priv(indio_dev);
>>>> +
>>>> +   mutex_lock(&st->buf_lock);
>>>> +   ret = __ade7754_spi_write_reg_8(dev, reg_address, val);
>>>>     mutex_unlock(&st->buf_lock);
>>>>
>>>>     return ret;
>>>> @@ -513,7 +521,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>>>>     if (!val)
>>>>             return -EINVAL;
>>>>
>>>> -   mutex_lock(&indio_dev->mlock);
>>>> +   mutex_lock(&st->buf_lock);
>>>>
>>>>     t = 26000 / val;
>>>>     if (t > 0)
>>>> @@ -531,10 +539,10 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>>>>     reg &= ~(3 << 3);
>>>>     reg |= t << 3;
>>>>
>>>> -   ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
>>>> +   ret = __ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
>>>>
>>>>  out:
>>>> -   mutex_unlock(&indio_dev->mlock);
>>>> +   mutex_unlock(&st->buf_lock);
>>>>
>>>>     return ret ? ret : len;
>>>>  }
>>>>
>>>
>>> --
>>> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>>> the body of a message to majordomo@vger.kernel.org
>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> --
>> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>
>

