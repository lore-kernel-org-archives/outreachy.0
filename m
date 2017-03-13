X-GM-THRID: 6396598979256123392
X-Received: by 10.46.8.90 with SMTP id g26mr5515533ljd.16.1489408174100;
        Mon, 13 Mar 2017 05:29:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.14 with SMTP id l14ls1552974ljb.38.gmail; Mon, 13 Mar
 2017 05:29:32 -0700 (PDT)
X-Received: by 10.25.223.67 with SMTP id q3mr4207769lfj.1.1489408172811;
        Mon, 13 Mar 2017 05:29:32 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id b186si592583wme.1.2017.03.13.05.29.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 05:29:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id g70so11680458lfh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 05:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/L2IkcvO9RizxESP0I50mz5X9YNofxc3+CSPluleLac=;
        b=HN1vHsAo5rO0Eo5rtH2c7/HMktGOMo39dLovE4FM5G3t35zKMpuDqOBD43WfXC6PIx
         mHXTOEBSL1seONjc/zB1xeJEbQa8eTiNtmTN93WcWxYJ6dH/DF4CyPTRoahJus+9+sHz
         tVY4q4BJZRFmuzE8yQEfB7K5RbfsXlHj/vIIsTsm4ugSOjm4/diObHUccvllJkJ2s7rz
         54EoEp815Uo4BOHV70Xdmq81uNyhzoMT6sK26Tk6A3D9cc5Hg8a44X0eqTBYOX8PVhTk
         51WGQ4qwOO/eExUMKL6nHrtDloJoafGkx4CUFxFkkmR+CXc9cd7GMNoxhqIPW5ebCIEJ
         A8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/L2IkcvO9RizxESP0I50mz5X9YNofxc3+CSPluleLac=;
        b=mKld1QS+rvjx0LkaGpQkVHYOLQINaLU/mXXUQZGjq9OF2I3IScpGhvrmSVh4yYPSn5
         +Bfzw20wSuoSESEnoQB3hQDKhV8KYrs0NuKP6LucA33WH50g0udWysZJrkahh5bYWZgx
         RGDGxYF1jtEpFwJKjOaPR/4Ev8m4uCJBX8HtTRpxXUm6u103jRipxLdY0VnWCwnqoWaw
         8F123DhH7DryEQYV85xDxqNzxOhJtfNqtRYcnNzLnyxa3HD22z6hI3kl/fxo6GLiAlC1
         DRU54jrGpFRZLp2DabJgYG8dqd5M+sxTnqg1S0cZ1tvW5/PzvBe3K0rfUM9gDD9On8aB
         4OWw==
X-Gm-Message-State: AMke39lSXm5Zh5SgyMi0i43Io5srrNthCXqrbiOtfIyYBxXWz/x1ig8k6xwtQM2Ya0zFbAALD3TKRUI5NzcHXA==
X-Received: by 10.25.145.83 with SMTP id y19mr8200227lfj.132.1489408172255;
 Mon, 13 Mar 2017 05:29:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Mon, 13 Mar 2017 05:29:31 -0700 (PDT)
In-Reply-To: <20170312183121.GA7728@d830.WORKGROUP>
References: <20170312131052.GA21816@singhal-Inspiron-5558> <20170312183121.GA7728@d830.WORKGROUP>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Mon, 13 Mar 2017 17:59:31 +0530
Message-ID: <CALrZqyO1GHEcwHDiC00SGVWiB1v2+JLU4E8PwxW8z0yNt62MXw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: adis16060_core: Use private
 driver lock instead of mlock
To: Alison Schofield <amsfield22@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 12:01 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Sun, Mar 12, 2017 at 06:40:52PM +0530, simran singhal wrote:
>> The IIO subsystem is redefining iio_dev->mlock to be used by
>> the IIO core only for protecting device operating mode changes.
>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>
>> In this driver, mlock was being used to protect hardware state
>> changes.  Replace it with a lock in the devices global data.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>
> This does not compile.
> alisons
>
Alison, this is compiling fine for me.
I tried it again using:
$make clean
$make allyesconfig
$make drivers/staging/iio/gyro/adis16060_core.o

>> ---
>>  drivers/staging/iio/gyro/adis16060_core.c | 8 +++++---
>>  1 file changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
>> index c9d46e7..90a3a18 100644
>> --- a/drivers/staging/iio/gyro/adis16060_core.c
>> +++ b/drivers/staging/iio/gyro/adis16060_core.c
>> @@ -29,11 +29,13 @@
>>   * @us_r:            actual spi_device to read back data
>>   * @buf:             transmit or receive buffer
>>   * @buf_lock:                mutex to protect tx and rx
>> + * @lock:            protect sensor state
>>   **/
>>  struct adis16060_state {
>>       struct spi_device               *us_w;
>>       struct spi_device               *us_r;
>>       struct mutex                    buf_lock;
>> +     struct mutex                    lock;    /* protect sensor state */
>>
>>       u8 buf[3] ____cacheline_aligned;
>>  };
>> @@ -87,7 +89,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>>       switch (mask) {
>>       case IIO_CHAN_INFO_RAW:
>>               /* Take the iio_dev status lock */
>> -             mutex_lock(&indio_dev->mlock);
>> +             mutex_lock(&st->lock);
>>               ret = adis16060_spi_write(indio_dev, chan->address);
>>               if (ret < 0)
>>                       goto out_unlock;
>> @@ -96,7 +98,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>>               if (ret < 0)
>>                       goto out_unlock;
>>
>> -             mutex_unlock(&indio_dev->mlock);
>> +             mutex_unlock(&st->lock);
>>               *val = tval;
>>               return IIO_VAL_INT;
>>       case IIO_CHAN_INFO_OFFSET:
>> @@ -112,7 +114,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>>       return -EINVAL;
>>
>>  out_unlock:
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->lock);
>>       return ret;
>>  }
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312131052.GA21816%40singhal-Inspiron-5558.
>> For more options, visit https://groups.google.com/d/optout.

