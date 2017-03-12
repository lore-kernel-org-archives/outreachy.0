X-GM-THRID: 6396578971833597952
X-Received: by 10.157.37.82 with SMTP id j18mr13587717otd.68.1489353741410;
        Sun, 12 Mar 2017 14:22:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.235 with SMTP id f98ls4483737otf.16.gmail; Sun, 12 Mar
 2017 14:22:20 -0700 (PDT)
X-Received: by 10.157.43.121 with SMTP id f54mr13720452otd.134.1489353740951;
        Sun, 12 Mar 2017 14:22:20 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id r6si1981529ywb.6.2017.03.12.14.22.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 14:22:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id p77so8099053ywg.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 14:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=B0wF/2QC37kjw8bY7pYGGUtateRuK8VjQWvYuFECayY=;
        b=CzFo++Wey71asfIjq4rbHghCC18rM4dUuTnNI2wVPbpZKTtBelFE7oUdxSTZqzdGmb
         JmbD18W5y6WuktDmToV5/tZA6UTu/Id2uwnM3JsyywnkKiN2nqDyk0hiGi2Jy6F3aEXt
         4QE9vdnMZfFOj+LbSsZ/qpzbp/vbx2jALX2lC53HBsdKzjWTTVCpk4KOiUnw2jlzOj00
         gaoc9VmdXE1fci24X2HOXhniJjhBkIGsrphedvPprmucKSsAwaS7Qj3oPcZOaWWi068m
         NfFn3rDwrCUp0+3p41Wo1VsBt9N3+VMtgaS1LnVhJuSSbbb6KhWQklTM/gXK33IDV/5P
         h2WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=B0wF/2QC37kjw8bY7pYGGUtateRuK8VjQWvYuFECayY=;
        b=PrhYzBGXAv4aOFPL64bX6h8xyZkLVWDm6LaUaKqsqCsi3piI100u+DYWNqLO1rznmw
         P/hXcCjFXb+exfIc7b/WhHS1G4FbRCX4HH05UJ/ZtJ6jYOWvD2yS7tRISdr2SO6nH6Kw
         fqvmuVMlfbuWw801EjL6UTuBBNGtoTyd0IJJeBLcB6SkMgpOQmfhLNN6dwpo101VspqV
         ixT8u3VuFZChY2Br//szNtA018BrfC0DLAR7b6S57Tm+kFGmGxCbvKQD01+i2YnLoLkA
         5IOTwY9IygZ4SmmS4vn2y9j2Lp+IDoWZXqXZ20kY3qqaCWOzzfPhwCofkZSJCFCXY0C9
         aOkg==
X-Gm-Message-State: AMke39mzPVeJhNssVfSzDUdy3/9/Tu9MaZJpR7XUuY0Q10U5xL5SZGXUz8EVovOUHA5ADOLMuxoDqdhkNwPGpQ==
X-Received: by 10.129.131.210 with SMTP id t201mr15087236ywf.47.1489353740609;
 Sun, 12 Mar 2017 14:22:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Sun, 12 Mar 2017 14:21:40 -0700 (PDT)
In-Reply-To: <20170312184841.GA8713@d830.WORKGROUP>
References: <20170312115013.GA31878@sayli-HP-15-Notebook-PC> <20170312184841.GA8713@d830.WORKGROUP>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Mon, 13 Mar 2017 02:51:40 +0530
Message-ID: <CAKG5xWhoYww_U9zNv=9EiAOya3R0C6Aafm3BUAfzdCXSYk4y+A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad9834: Use private
 driver lock instead of mlock
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 12:18 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Sun, Mar 12, 2017 at 05:21:25PM +0530, sayli karnik wrote:
>> iio_dev->mlock should be used by the IIO core only for protecting
>> device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
>> INDIO_BUFFER_* modes.
>> Replace mlock with a lock in the device's global data to protect hardware
>> state changes.
>
> Hi Sayli,
> Thanks for the patch!  Find one fix-up and one opportunity for
> a follow on patch embedded below.
> alisons
>
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/iio/frequency/ad9834.c | 10 ++++++----
>>  1 file changed, 6 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
>> index f92ff7f..4259474 100644
>> --- a/drivers/staging/iio/frequency/ad9834.c
>> +++ b/drivers/staging/iio/frequency/ad9834.c
>> @@ -63,6 +63,7 @@
>>   * @msg:             default spi message
>>   * @freq_xfer:               tuning word spi transfer
>>   * @freq_msg:                tuning word spi message
>> + * @lock:            protect sensor state
>>   * @data:            spi transmit buffer
>>   * @freq_data:               tuning word spi transmit buffer
>>   */
>> @@ -77,6 +78,7 @@ struct ad9834_state {
>>       struct spi_message              msg;
>>       struct spi_transfer             freq_xfer[2];
>>       struct spi_message              freq_msg;
>> +     struct mutex                    lock;   /* protect sensor state */
>>
>>       /*
>>        * DMA (thus cache coherency maintenance) requires the
>> @@ -149,7 +151,7 @@ static ssize_t ad9834_write(struct device *dev,
>>       if (ret)
>>               goto error_ret;
>
> Not related to your patch...the above goto error_ret seems excessived.
> When you look down at error_ret, it's not doing any clean up. So,
> perhaps we can just return right here and get rid of the goto & label?
>
Right! This has to be on top of Greg's tree and not this patch I'm assuming?
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->lock);
>>       switch ((u32)this_attr->address) {
>>       case AD9834_REG_FREQ0:
>>       case AD9834_REG_FREQ1:
>> @@ -207,7 +209,7 @@ static ssize_t ad9834_write(struct device *dev,
>>       default:
>>               ret = -ENODEV;
>>       }
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->lock);
>>
>>  error_ret:
>>       return ret ? ret : len;
>> @@ -224,7 +226,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
>>       int ret = 0;
>>       bool is_ad9833_7 = (st->devid == ID_AD9833) || (st->devid == ID_AD9837);
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->lock);
>>
>>       switch ((u32)this_attr->address) {
>>       case 0:
>> @@ -267,7 +269,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
>>               st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
>>               ret = spi_sync(st->spi, &st->msg);
>>       }
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_lock(&st->lock);
>
> Needs to be mutex_unlock()
>
>>
>>       return ret ? ret : len;
>>  }
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312115013.GA31878%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.

