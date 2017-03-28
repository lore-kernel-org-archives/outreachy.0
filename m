X-GM-THRID: 6400014269629333504
X-Received: by 10.36.85.136 with SMTP id e130mr4485549itb.36.1490721918697;
        Tue, 28 Mar 2017 10:25:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.205 with SMTP id t13ls16461223otd.8.gmail; Tue, 28 Mar
 2017 10:25:18 -0700 (PDT)
X-Received: by 10.129.48.147 with SMTP id w141mr9449320yww.47.1490721918315;
        Tue, 28 Mar 2017 10:25:18 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id k191si310343vka.4.2017.03.28.10.25.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 10:25:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id y16so14049722vky.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 10:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/IqPXlkJmPRYDpf8AiiHvTlqoqp/6xUojBzmUtCGbQM=;
        b=CLsLgMY81rVhR43K3ozzhSR6cl2WLDp42wsgPlE5wstfrjVJPTD/TI+xlh782yNyDH
         dN3aU+10HYyUYs9Q3e+xMj9jGGl6xV9DXj2ltD3kuzYiHhn5XQDRojwCfdvG2EVHI6SO
         fDA9otrNOzeiTncXZxWy2ITHOSslyVnCKKYaenGxtZGVWUmEtjX/QLodoxk5epC5WWCa
         V240kvejIYZ0G2yesykKWmN/hhHZbYTjbuAKc+HxWEZMwKQdPeOJ5aQZaM5c3JRBeX5Z
         9YR7mM0EPIS1iPqvBn1C7z7ZUbS2/VJ3qIkCq7SdZnHWCX3n+LZeaoYPv5NtXQifxfqC
         C2tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/IqPXlkJmPRYDpf8AiiHvTlqoqp/6xUojBzmUtCGbQM=;
        b=dVqmj7oyDPEUsGp+/yjhqJb82RzL66ubRkjPu4mjP6KMf3byDsfwtT4eWir4uE+r2R
         xX4lhC+aEvP/rTWS1qvbXztakIT/cnQlufLwFCpdBkl5o4fEpIzb1twTWQVOVArtFwBN
         EKU1eecoFKocloL1HusfdDANWEHRuoH0ZIKow140SmXRgIU/OGo6MHE9asz9mP8+/TPA
         QWPvajYektalPCyP1iE9RlKCjmcDZ+GbqIEnvoQ3wjayg72MQRj3iNJdv/ou/eQsLESt
         ibkrbG12U+OLcChx9+Wa/wrhXl5VxOY0TI/qgw0I5mBPFnp1QOHF7lAtVUYqNuJU6nf1
         unSQ==
X-Gm-Message-State: AFeK/H05/Rv/dmx62q8tI7yW4io8CGLzj98PDUX/qP5SzxTYYuoRnRzxMUcXqbWja6+lcyFlSFCxhVo331HSvw==
X-Received: by 10.176.0.83 with SMTP id 77mr11795067uai.120.1490721917958;
 Tue, 28 Mar 2017 10:25:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Tue, 28 Mar 2017 10:25:17 -0700 (PDT)
In-Reply-To: <20170323192116.GA6614@d830.WORKGROUP>
References: <20170323183520.GA9871@singhal-Inspiron-5558> <20170323192116.GA6614@d830.WORKGROUP>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Tue, 28 Mar 2017 22:55:17 +0530
Message-ID: <CALrZqyNP-8CeAGRr3uDuAhBweT1Sp3H4bWPy8y__7tvnzxR=zw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: iio: ade7753: Replace
 mlock with driver private lock
To: Alison Schofield <amsfield22@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg KH <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 24, 2017 at 12:51 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Fri, Mar 24, 2017 at 12:05:20AM +0530, simran singhal wrote:
>> The IIO subsystem is redefining iio_dev->mlock to be used by
>> the IIO core only for protecting device operating mode changes.
>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>
>> In this driver, mlock was being used to protect hardware state
>> changes.  Replace it with a lock in the devices global data.
>
> Hi Simran,
>
> Please post all revision histories below the --- not just the most
> recent.
>
Sorry, will not repeat this.

> Does this lock enforce the needed "atomicity" in the write_frequency
> function? I read Jonathans comment on a previous revision about
> "ensuring the spi bus frequency and sampling frequency of the device
> are changed in an atomic fashion"
>

By introducing another lock I am protecting read_modify_write and
in this way also protecting the designated register that we are about
to write.

> Is it possible for another spi bus transaction (read or write) to
> occur between the read and write in write_frequency?
>

Gargi has also come up with a solution.
https://groups.google.com/forum/#!topic/outreachy-kernel/kzE9CrI5Bd8

Should I do like her as her's also seem correct or go ahead with this.

> alisons
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>
>>  v4:
>>    -Add mutex_init
>>
>>  drivers/staging/iio/meter/ade7753.c | 7 +++++--
>>  1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
>> index b71fbd3..30aebaf 100644
>> --- a/drivers/staging/iio/meter/ade7753.c
>> +++ b/drivers/staging/iio/meter/ade7753.c
>> @@ -80,11 +80,13 @@
>>   * @us:         actual spi_device
>>   * @tx:         transmit buffer
>>   * @rx:         receive buffer
>> + * @lock:       protect sensor state
>>   * @buf_lock:       mutex to protect tx and rx
>>   **/
>>  struct ade7753_state {
>>       struct spi_device   *us;
>>       struct mutex        buf_lock;
>> +     struct mutex        lock;  /* protect sensor state */
>>       u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>>       u8          rx[ADE7753_MAX_RX];
>>  };
>> @@ -484,7 +486,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>       if (!val)
>>               return -EINVAL;
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->lock);
>>
>>       t = 27900 / val;
>>       if (t > 0)
>> @@ -505,7 +507,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>>       ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>>
>>  out:
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->lock);
>>
>>       return ret ? ret : len;
>>  }
>> @@ -581,6 +583,7 @@ static int ade7753_probe(struct spi_device *spi)
>>       st = iio_priv(indio_dev);
>>       st->us = spi;
>>       mutex_init(&st->buf_lock);
>> +     mutex_init(&st->lock);
>>
>>       indio_dev->name = spi->dev.driver->name;
>>       indio_dev->dev.parent = &spi->dev;
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170323183520.GA9871%40singhal-Inspiron-5558.
>> For more options, visit https://groups.google.com/d/optout.

