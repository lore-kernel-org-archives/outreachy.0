X-GM-THRID: 6396604644937695232
X-Received: by 10.25.193.213 with SMTP id r204mr4268622lff.24.1489377516109;
        Sun, 12 Mar 2017 20:58:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.152 with SMTP id h24ls1384428lji.53.gmail; Sun, 12 Mar
 2017 20:58:35 -0700 (PDT)
X-Received: by 10.46.20.16 with SMTP id u16mr4109114ljd.23.1489377515066;
        Sun, 12 Mar 2017 20:58:35 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id i76si570479wmh.1.2017.03.12.20.58.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 20:58:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id g70so10850789lfh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 20:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=tUtgMSDunmdGgiahiKJlqNssj/YDhkwjHkonvwTKzKE=;
        b=XWyoC5VbH7H67gEp0QS9HyHJNdVTgS2Y01MkhUdcSfJD3vlBH/Hz1qjzILBbzlqTFy
         K29HXo7cq3l0DO49c2eU7dY3EcdP7bU8wmmM8oyhzBbI8ox9+oKTlUcqP9X6txKYQ1ah
         j+3MAmbf7ci+IOyY6IwFN87wSAUmnLuM7uXdIitoffBxilImZO2+61CYZ8Dqy+IYM3fA
         KUpQUKTaQUUdB/l/Cl6pb60+4Gsd8qcu/Td0uRohUbHCQyfih+8HodjN2lU/JaSDexAM
         Lrk2W902sVwvDhHpPgPN6uZZtdKLFfvVumM/vyT9GE8wb1y+gjMWsSC+bApXG0WCb8ma
         eEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=tUtgMSDunmdGgiahiKJlqNssj/YDhkwjHkonvwTKzKE=;
        b=iOuka5Wd6jUs/mQFMWmSNAlsK0diKgy0iOwSMqSZB9gIHL3tkpog+MEWpFfBiUb2gD
         ybV4ugG6xEJG6flOOttKCcmSw6snsvUNWpX5gJqE43pH/2viImAUZ6IV/qveLZpakqRA
         rpCtl1MjGza+PhYK/QV2GEKccXgKcHJL6OZQ/z5g25VSw34F1uiSd6C2rO2VSEAhfFdD
         V52YvnxE5i8DiATj/DISa23PpjLjWSdEAZSIC636izACJxn7LX6VlmzSkm1wC1FqXvXj
         Y6BKQt/h9zBcDP1bR6sZ4cWh1C/XT+mhcHk3u9kSjvPlC7yQSdlFWR/XlwM/CCTQaDLn
         iEBg==
X-Gm-Message-State: AMke39kXrTktgjrlYv/6Ohi3nvYcCOunw0YiMhQTET+ryiMkE5LQkWXTiv/TN3BfOcfobDq7cUOOuEiWVNaLKg==
X-Received: by 10.25.38.83 with SMTP id m80mr7781139lfm.166.1489377514543;
 Sun, 12 Mar 2017 20:58:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sun, 12 Mar 2017 20:58:34 -0700 (PDT)
In-Reply-To: <20170312183304.GB7728@d830.WORKGROUP>
References: <20170312133250.GA7772@singhal-Inspiron-5558> <20170312183304.GB7728@d830.WORKGROUP>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Mon, 13 Mar 2017 09:28:34 +0530
Message-ID: <CALrZqyOkKMb1bM0V=L7G7v+64N4FHuYUSoW1+8rvcZQU-816sg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ade7753: replace mlock
 with driver private lock
To: Alison Schofield <amsfield22@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Pete Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 12:03 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Sun, Mar 12, 2017 at 07:02:50PM +0530, simran singhal wrote:
>> The IIO subsystem is redefining iio_dev->mlock to be used by
>> the IIO core only for protecting device operating mode changes.
>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>
>> In this driver, mlock was being used to protect hardware state
>> changes.  Replace it with a lock in the devices global data.
>>
>> Fix some coding style issues related to white space also.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>
> Hi Simran, This looks good to me.  Let's see what the
> reviewers say.  I think the white space stuff is ok,
> since it was right where you were editing.
> alisons
>
Alison, so sending this patch here on outreachy mailing list is fine.
Still confuse :P

>> ---
>>  drivers/staging/iio/meter/ade7753.c | 14 ++++++++------
>>  1 file changed, 8 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
>> index dfd8b71..ca99d82 100644
>> --- a/drivers/staging/iio/meter/ade7753.c
>> +++ b/drivers/staging/iio/meter/ade7753.c
>> @@ -81,12 +81,14 @@
>>   * @tx:         transmit buffer
>>   * @rx:         receive buffer
>>   * @buf_lock:       mutex to protect tx and rx
>> + * @lock:    protect sensor state
>>   **/
>>  struct ade7753_state {
>> -         struct spi_device   *us;
>> -                 struct mutex        buf_lock;
>> -                         u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>> -                                 u8          rx[ADE7753_MAX_RX];
>> +     struct spi_device   *us;
>> +     struct mutex        buf_lock;
>> +     struct mutex        lock;       /* protect sensor state */
>> +     u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
>> +     u8          rx[ADE7753_MAX_RX];
>>  };
>>
>>  static int ade7753_spi_write_reg_8(struct device *dev,
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
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312133250.GA7772%40singhal-Inspiron-5558.
>> For more options, visit https://groups.google.com/d/optout.

