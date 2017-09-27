X-GM-THRID: 6467009585509040128
X-Received: by 10.129.211.11 with SMTP id y11mr1697655ywi.166.1506524232323;
        Wed, 27 Sep 2017 07:57:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.249.196 with SMTP id j187ls146203ywf.43.gmail; Wed, 27 Sep
 2017 07:57:11 -0700 (PDT)
X-Received: by 10.129.71.135 with SMTP id u129mr1739876ywa.101.1506524231411;
        Wed, 27 Sep 2017 07:57:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506524231; cv=none;
        d=google.com; s=arc-20160816;
        b=m4rGUddndRvN9/pRXKnO3/oVedj7Xk49PaKMj7e5/MNuoPLg6ZN/Suz/InUZNw7mfz
         d9mKcSidTGzB3vxn6PiwaBUWMnOP7pD2XRxRXIJGtADKyJp0+BMRYzcfjXJ9Z8yIs/r2
         Xq6j14vZVOGq0cZcNdbb292yUgikOX3Js6YN+Bl//gWFpnEwi1+pyCTaK/NOeh1b18lq
         5mpO8ApDCB/N8rdlV9Ug5MLpr7aRigqM1mB3WYecDWIcKWlMoGUs+8+ftdCUWvCCO7pS
         Nbhm8E1PDZYHpf0Un4Yop+cSaqqDP1f1Lc0g0mluJwUihF38bv/QFx8nFPonr1/h9Rf7
         IxrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=0CmyiR6LztHP3xOULhtSKKSpUh/LHBpJsN5DejhXQTk=;
        b=d6M3sbYY5PwIvvinyk2zxxwaLwDd1TlpZDHp1obbUrFJJXv3Wv0Xc30787dFUdQ6s3
         qDoEkSf2RDWSxTbTplPy1LB941jTi6bejWjGg12ahM5TwqbPTurhfcGKMIoVEIHleyLJ
         FOMn6w2pkzTUTwoGDYTnFEL3htDP6QR1c5IKuPh/oguHUPUSDqQKJEgjGdEktM1OHd3z
         xy4mMze+I/qv/41C2RTbqQQLsY35cDJ5f2b5hPzqS+sVmSh1wR9OXFuXXymcpcLELpsl
         68FzkFa2LKb8dXd09GA4TF6XpDl1VB1kEHuPO57Mu88rpLVfTUI0kvsMRcx+O+md0oOs
         mnzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aZFCGlK5;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4003:c06::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-oi0-x242.google.com (mail-oi0-x242.google.com. [2607:f8b0:4003:c06::242])
        by gmr-mx.google.com with ESMTPS id w81si632340ywb.30.2017.09.27.07.57.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 07:57:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4003:c06::242 as permitted sender) client-ip=2607:f8b0:4003:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aZFCGlK5;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4003:c06::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x242.google.com with SMTP id s145so4195798oie.5
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 07:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=0CmyiR6LztHP3xOULhtSKKSpUh/LHBpJsN5DejhXQTk=;
        b=aZFCGlK55U9OF98hgQ7Ri5tmo3ZUK86ZUVElOv1gtMSgm5llArErC55GEHv38INHaS
         DRfhAvhHcLf8Z25PZsjVH7sA2ECaxk3CT91zxuUGwzyqqtz54V5hh/rbefQjhz2wvIS/
         hxYNUOP1lWlDP2bOqhpw72YuX+8tWm1Xg2UGdga40kSsUzDQaaNUf/d8jpgVWbPfy46+
         E+7ailtan6l3/7tlU63ACRuytooypiGw7n+tlCzo3CRLJosYchzIKYQlMsZGmfCeUTgv
         TFBsR/h2qzkcldS/s1E8eOjwo/niz14G3vbn83wGkvQ1ZiozSlg9YlCQK4kJ6i4gURZB
         VFUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0CmyiR6LztHP3xOULhtSKKSpUh/LHBpJsN5DejhXQTk=;
        b=uHQqdi0V5LKWFS0AZJleTo0Vxy1m8/fcYQfOGJ7evTdiMm2cruqJU0XRXQw26oRJGu
         vZ+29iaPbed2/EJmCRjjdlia9bwU0OE1DxL/l52tonojaoBSx5XMO5G3Gyezb7Im3Fx1
         dLioCsqISbBsQyabgn/wRJwAQ2s9uj+8iRhq0NOdCMQKWskZtL4PbBNlpbjaotxDpPgM
         IauSFI4cI2OJ78zqN0FfZDr2UrlkUiFWGQZ2rgfalY4j9bp39UNhCJxVKoGKRZzoMqnQ
         nJlcFXmjbJV4ZeduCbj1CVL7JFDBRRFzpyaVBLEiLRnYNpwRNmzYSGNllJcSsW3IHsYt
         bkwA==
X-Gm-Message-State: AHPjjUi4l89s1pbnK71buBQpp4h+ow/pq3q9nDYL848iiReM+ny40pL4
	R7fD+nYSxIhlgBspGPbs5jt2a43bJ3fpwfzWWBs=
X-Google-Smtp-Source: AOwi7QDIz4EKuyDJPG5iiz2wuUu1zl7P4oOPsODJB1ShWzgP2FduTYGHqNsGsCzvi99X/KNo3DMR9sXie4DNDI5AhWU=
X-Received: by 10.157.60.187 with SMTP id z56mr987752otc.60.1506524230819;
 Wed, 27 Sep 2017 07:57:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.174.198 with HTTP; Wed, 27 Sep 2017 07:57:09 -0700 (PDT)
In-Reply-To: <20170924151702.776d1ec6@archlinux>
References: <20170918065952.GA5386@himanshi-Inspiron-5558> <20170924151702.776d1ec6@archlinux>
From: Himanshi Jain <himshijain.hj@gmail.com>
Date: Wed, 27 Sep 2017 20:27:09 +0530
Message-ID: <CAKJRnmPZoDgtk0vSZydQ9MG_NUD6-NGEY9u8Nkc24vDzVZDQXQ@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: ade7753: replace mlock with driver private lock
To: Jonathan Cameron <jic23@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Hartmut Knaack <knaack.h@gmx.de>, 
	Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, 
	Daniel Baluta <daniel.baluta@gmail.com>, Alison Schofield <amsfield22@gmail.com>, 
	"Hennerich, Michael" <Michael.Hennerich@analog.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, Sep 24, 2017 at 7:47 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On Mon, 18 Sep 2017 12:29:52 +0530
> Himanshi Jain <himshijain.hj@gmail.com> wrote:
>
>> Replace driver usage of mlock with driver private lock to meet the new
>> model where usage of iio_dev->mlock is being redefined as protecting
>> operating mode changes(changes between BUFFER* and DIRECT modes).
>>
>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
>
> A well presented patch making a sensible change.  My only thought here
> is that ultimately we could cover bother the buffer protection and
> the state protection with a single lock.
>
> Hmm. The new lock (as was the old mlock code) is providing protection
> to ensure we end up with consistent state when changing the
> sampling frequency between the sampling frequency and the
> bus clock speed (which has different maximum values depending
> on the current sampling frequency). In similar cases we have
> expanded the meaning on the buffer lock to fulfil both roles
> - that could be done here as well, although you have to be careful
> about deadlocks.
>

I have understood how to use a single lock for both the purposes as you have
quoted in Katie's patch too i.e. by making an unlocked version of the function
ade7753_spi_write_reg_16(). And since the function is not publicly available
to be used, an unlocked version will not create any issue(which is why I am
assuming, we are not using nested locks - Please correct me if I am wrong.)

I will submit a new patch with a single lock.

> On reflection I think this patch is worthwhile applying even
> if this new lock gets dropped again in some later rework of this
> driver.
>
> Applied to the togreg branch of iio.git and pushed out as testing for
> the autobuilders to play with it.
>

Thank you for reviewing and applying the patch and guiding for a better logical
solution.

> Thanks,
>
> Jonathan
>> ---
>>  drivers/staging/iio/meter/ade7753.c | 7 +++++--
>>  1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
>> index ce26abdea..745c5a6 100644
>> --- a/drivers/staging/iio/meter/ade7753.c
>> +++ b/drivers/staging/iio/meter/ade7753.c
>> @@ -81,10 +81,12 @@
>>   * @tx:         transmit buffer
>>   * @rx:         receive buffer
>>   * @buf_lock:       mutex to protect tx and rx
>> + * @lock:    protect sensor data
>>   **/
>>  struct ade7753_state {
>>       struct spi_device   *us;
>>       struct mutex        buf_lock;
>> +     struct mutex        lock; /* protect sensor data */
>>       u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>       u8          rx[ADE7753_MAX_RX];
>>  };
>> @@ -483,7 +485,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>       if (!val)
>>               return -EINVAL;
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->lock);
>>
>>       t = 27900 / val;
>>       if (t > 0)
>> @@ -504,7 +506,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>       ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>>
>>  out:
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->lock);
>>
>>       return ret ? ret : len;
>>  }
>> @@ -580,6 +582,7 @@ static int ade7753_probe(struct spi_device *spi)
>>       st = iio_priv(indio_dev);
>>       st->us = spi;
>>       mutex_init(&st->buf_lock);
>> +     mutex_init(&st->lock);
>>
>>       indio_dev->name = spi->dev.driver->name;
>>       indio_dev->dev.parent = &spi->dev;
>

