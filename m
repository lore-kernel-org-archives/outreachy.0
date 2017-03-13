X-GM-THRID: 6396932116719861760
X-Received: by 10.99.123.7 with SMTP id w7mr15335241pgc.133.1489414404767;
        Mon, 13 Mar 2017 07:13:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls14024629otc.22.gmail; Mon, 13 Mar
 2017 07:13:24 -0700 (PDT)
X-Received: by 10.157.14.20 with SMTP id c20mr15011576otc.149.1489414404396;
        Mon, 13 Mar 2017 07:13:24 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id f187si2364123ywc.0.2017.03.13.07.13.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 07:13:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id o4so9782783ywd.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 07:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=HAWnZq8crl5K3Mxw6y18zEnaxBDQIzXf5eW3/DuWjeY=;
        b=TRia3ZL5aj0XcI7nDJVc/ouDsY9waD+34JISLj/p7kNfdDouMoERf7xOyTNQa5xI/w
         z+cGzkqhEL4OCasprYAxvtsbBRBOzMb253O+5zLFdtnGOBB1xyw++DheocQ/BtBlwuCG
         TNH7zrI79JMv22LrUhXtlr6k12Sxz0N9vVUfPdUrt7fbnItIHu59xijTTmtY7iYvyMv1
         vJedyzmvl7IoCwdV7163mJ3k+Omn4i+Edud4fetbMuZG2U20BEaG5rY2kl/2cniQ22Pm
         CWUvJk7DpLiVFb876HFn/mWf4xhGz9HwLgvR03tFw2XR32YPwO3xfRvLWsResZmbL6DL
         2rsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=HAWnZq8crl5K3Mxw6y18zEnaxBDQIzXf5eW3/DuWjeY=;
        b=LD515VHRQzV4K0bb0KzBBcl7gtma86aXKQvdeXatU+3Mlf6mPJiKZcIUnOvSNsD/w+
         mzkmvhNk0yWX4MSsfSBjTYPlcDOoCWs3Ls8ABxSBITHX+xgRa1TifW8BqHy6CeOassiW
         kGaEsvd9J4Uj1GfZZZ9SbRa+8BuwRTYwqNh+uYpmRudmFdHvv2vNs9hYjNrpkkCeMEnd
         7kUAFQdiaqahvpMLgKLfV8sX9KIhPVoxsETSkGHN9x96gRKewUgFRNrX8Dgq/zufU9bg
         FYPZ2zmw6AMV5lp5Bd2BeUQv0zYx8IbwhzJC2bmhoV/KS1m8FI2rxr/BxKuklO3HtG0Z
         x7fQ==
X-Gm-Message-State: AMke39laF89voiDkXHM0HG2J9ztwxxdYDuxUk36rHYCuJEI/eEDsMk94BAGc0o8mM/qwQ+DDdHfhTEs4fSTWuA==
X-Received: by 10.129.123.213 with SMTP id w204mr18042030ywc.267.1489414404050;
 Mon, 13 Mar 2017 07:13:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Mon, 13 Mar 2017 07:12:43 -0700 (PDT)
In-Reply-To: <a81ede74-f294-7ccc-5e0d-431eae058128@metafoo.de>
References: <20170313104307.GA12480@sayli-HP-15-Notebook-PC> <a81ede74-f294-7ccc-5e0d-431eae058128@metafoo.de>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Mon, 13 Mar 2017 19:42:43 +0530
Message-ID: <CAKG5xWg7-wifwSp3j-PmS20puo=BkOYrs0i3J9o2YFSsL2h=_g@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: ad7192: Replace mlock with private driver lock
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 5:22 PM, Lars-Peter Clausen <lars@metafoo.de> wrote:
> On 03/13/2017 11:43 AM, sayli karnik wrote:
>> indio_dev->mlock should be used by the IIO core only for protecting
>> device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
>> INDIO_BUFFER_* modes.
>> Replace mlock with a lock in the device's global data to protect
>> hardware state changes.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/iio/adc/ad7192.c | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
>> index 4fc8588..bed48e7 100644
>> --- a/drivers/staging/iio/adc/ad7192.c
>> +++ b/drivers/staging/iio/adc/ad7192.c
>> @@ -162,6 +162,7 @@ struct ad7192_state {
>>       u32                             scale_avail[8][2];
>>       u8                              gpocon;
>>       u8                              devid;
>> +     struct mutex                    lock;   /* protect sensor state */
>>
>>       struct ad_sigma_delta           sd;
>>  };
>> @@ -463,10 +464,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
>>       case IIO_CHAN_INFO_SCALE:
>>               switch (chan->type) {
>>               case IIO_VOLTAGE:
>> -                     mutex_lock(&indio_dev->mlock);
>> +                     mutex_lock(&st->lock);
>>                       *val = st->scale_avail[AD7192_CONF_GAIN(st->conf)][0];
>>                       *val2 = st->scale_avail[AD7192_CONF_GAIN(st->conf)][1];
>> -                     mutex_unlock(&indio_dev->mlock);
>> +                     mutex_unlock(&st->lock);
>
> Sorry, but this does not make too much sense. If this is the only place
> where the lock is used there isn't really any mutual exclusion going on
> since it doesn't prevent any other code from running concurrently.
>
> The purpose of taking the lock here is that st->conf is in a consistent
> state and is not in the process of being changed.
>
So you mean indio_dev->mlock is good to go here?

>>                       return IIO_VAL_INT_PLUS_NANO;
>>               case IIO_TEMP:
>>                       *val = 0;
>>
>

