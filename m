X-GM-THRID: 6396716918154199040
X-Received: by 10.99.126.27 with SMTP id z27mr17506111pgc.111.1489394520270;
        Mon, 13 Mar 2017 01:42:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.20.14 with SMTP id 14ls4039672iou.2.gmail; Mon, 13 Mar
 2017 01:41:59 -0700 (PDT)
X-Received: by 10.107.21.195 with SMTP id 186mr8969935iov.14.1489394519433;
        Mon, 13 Mar 2017 01:41:59 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id d20si1047263itc.1.2017.03.13.01.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 01:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id 68so12649679ioh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 01:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=eIEoQ98rrtYd3kCWl+O/mB7GdPu+VMK01GEA5JfoWtM=;
        b=u6RQkVOs5i2pBG5wx7TCc5/3Ot0D3UAQcmDF8HGcIOUj+LO/hInAhjnD01f8GKoX3W
         CaD/DTyk+ykHjao3EzjiQBXXgiH5Hn4ZkGIFLYRvAED4TXn6Wt1/DMriHOB+TBYRsiZ4
         znXhQVUJTORT+f7bBpJEShzdJvHOmVfSlVs/HORLa5U4/L/OvTsnL2MiLA/w5mWcpBD1
         6pUTcT1RuLg8a04hmhdgNsMT2hbaWsB4IiZALRF66dIZEHacG9+dpk7uZzAXAQReEJ4S
         SOAxNUrOxdPKaeW7om0OhLhUjiupdeQTlbTol8hp6Slw1l+5Ova8FIx1nRjD0iZ4uPRX
         A5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=eIEoQ98rrtYd3kCWl+O/mB7GdPu+VMK01GEA5JfoWtM=;
        b=bLPrf14ssEAHy3XTMnGIz4v7eoVasS8LEoQxuMtZdiTUhALcFezri3O9K230WwyKVN
         dag5bJ/2Oyo+rCBcnzWr6l03EJchZ4BxkD/JG8KRW76kpeQ+kFQOqWtDBalofaEWdIe8
         ZDdyvzmVI/rtDg+Gm2EwfFfxuKFdFFxrasUTbTarTW3kF/oF/VLkquF57ZUCeViq2c9X
         bLsVQBYdtdreAwAe4qhh7f1F5p9MplP6fhCwtMzWJ4TJZyBiSULtsAnETQVc2xFS3Wd1
         L6DkVeW1XIZERqdcWFpRt/YEOWpcsGtjCrHF/pul9lBBz2IkoSkhQtLB2pYy0GxK8SZT
         B3tQ==
X-Gm-Message-State: AMke39m3zG4MQUUg1+SZvb7k1vQK0Rw0GFHUIEYpBLM09KeIboMZYhvbQsBCPOjZ6iKruTfFh5/oSHMSD1rFiw==
X-Received: by 10.107.27.207 with SMTP id b198mr25366820iob.218.1489394519082;
 Mon, 13 Mar 2017 01:41:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Mon, 13 Mar 2017 01:41:28 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1703122321140.7649@hadrien>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1703122154130.7649@hadrien> <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com>
 <alpine.DEB.2.20.1703122235320.7649@hadrien> <20170312221350.GA14070@d830.WORKGROUP>
 <alpine.DEB.2.20.1703122321140.7649@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 13 Mar 2017 14:11:28 +0530
Message-ID: <CAOCi2DGcpoN791cH82nKWYdYdS82MmfJeUpcTcUSG9cbEw3Q4g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Alison Schofield <amsfield22@gmail.com>, outreachy-kernel@googlegroups.com, 
	lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org, 
	knaack.h@gmx.de, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 3:57 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> Please insert the new lock above the __cacheline_aligned struct
>> member.
>
> Regrettably, at the moment, Coccinelle can't help you find this.  It could
> help if there is something particular about the type.
>
>
>> I like the automated editing because it certainly cuts down on typos,
>> and even with this one, you can just move the new lock field upon
>> inspection.  Sadly, I don't think the script will apply too widely
>> because the use of "_state" for driver global data isn't a standard,
>> nor availability of that struct in the functions needing the locking.
>
> The _state is part of a metavariable name.  It doesn't have any impact on
> what is matched.
>
>> That sadness expressed ;) we do have a boatload of drivers upstream
>> that will eventually make this migration, so the value of the cocci
>> script would go beyond these 15 staging drivers. That's valuable.
>>
>> Let's make sure anything done with any automated tools is walked
>> through thoroughly.  Per the task description: this is not intended
>> as a search&replace exercise.
>
> Automation is great, modulo the need to manually check the result.
> However, it could be better not to include in the commit log semantic
> patches that are too far off from what updates the driver in a safe way.
> It doesn't have to update all drivers safely, but it should work for the
> modified one.  The goal should be to complement the log message text, not
> to make the reader confused :)

Will it be better if I remove the script from the commit log here? That way the
confusion can be prevented :)

Thanks!
Gargi
>
> julia
>
>> alisons
>>
>>
>> > > >>
>> > > >> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> > > >> ---
>> > > >>  drivers/staging/iio/adc/ad7280a.c | 21 +++++++++++----------
>> > > >>  1 file changed, 11 insertions(+), 10 deletions(-)
>> > > >>
>> > > >> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
>> > > >> index ee679ac..27a3ce3 100644
>> > > >> --- a/drivers/staging/iio/adc/ad7280a.c
>> > > >> +++ b/drivers/staging/iio/adc/ad7280a.c
>> > > >> @@ -136,6 +136,7 @@ struct ad7280_state {
>> > > >>       unsigned char                   cb_mask[AD7280A_MAX_CHAIN];
>> > > >>
>> > > >>       __be32                          buf[2] ____cacheline_aligned;
>> > > >> +     struct mutex                    lock;  /* protect sensor state */
>> > > >>  };
>> > > >>
>> > > >>  static void ad7280_crc8_build_table(unsigned char *crc_tab)
>> > > >> @@ -410,7 +411,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
>> > > >>       devaddr = this_attr->address >> 8;
>> > > >>       ch = this_attr->address & 0xFF;
>> > > >>
>> > > >> -     mutex_lock(&indio_dev->mlock);
>> > > >> +     mutex_lock(&st->lock);
>> > > >>       if (readin)
>> > > >>               st->cb_mask[devaddr] |= 1 << (ch + 2);
>> > > >>       else
>> > > >> @@ -418,7 +419,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
>> > > >>
>> > > >>       ret = ad7280_write(st, devaddr, AD7280A_CELL_BALANCE,
>> > > >>                          0, st->cb_mask[devaddr]);
>> > > >> -     mutex_unlock(&indio_dev->mlock);
>> > > >> +     mutex_unlock(&st->lock);
>> > > >>
>> > > >>       return ret ? ret : len;
>> > > >>  }
>> > > >> @@ -433,10 +434,10 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
>> > > >>       int ret;
>> > > >>       unsigned int msecs;
>> > > >>
>> > > >> -     mutex_lock(&indio_dev->mlock);
>> > > >> +     mutex_lock(&st->lock);
>> > > >>       ret = ad7280_read(st, this_attr->address >> 8,
>> > > >>                         this_attr->address & 0xFF);
>> > > >> -     mutex_unlock(&indio_dev->mlock);
>> > > >> +     mutex_unlock(&st->lock);
>> > > >>
>> > > >>       if (ret < 0)
>> > > >>               return ret;
>> > > >> @@ -466,11 +467,11 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
>> > > >>       if (val > 31)
>> > > >>               return -EINVAL;
>> > > >>
>> > > >> -     mutex_lock(&indio_dev->mlock);
>> > > >> +     mutex_lock(&st->lock);
>> > > >>       ret = ad7280_write(st, this_attr->address >> 8,
>> > > >>                          this_attr->address & 0xFF,
>> > > >>                          0, (val & 0x1F) << 3);
>> > > >> -     mutex_unlock(&indio_dev->mlock);
>> > > >> +     mutex_unlock(&st->lock);
>> > > >>
>> > > >>       return ret ? ret : len;
>> > > >>  }
>> > > >> @@ -655,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>> > > >>
>> > > >>       val = clamp(val, 0L, 0xFFL);
>> > > >>
>> > > >> -     mutex_lock(&indio_dev->mlock);
>> > > >> +     mutex_lock(&st->lock);
>> > > >>       switch ((u32)this_attr->address) {
>> > > >>       case AD7280A_CELL_OVERVOLTAGE:
>> > > >>               st->cell_threshhigh = val;
>> > > >> @@ -674,7 +675,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>> > > >>       ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
>> > > >>                          this_attr->address, 1, val);
>> > > >>
>> > > >> -     mutex_unlock(&indio_dev->mlock);
>> > > >> +     mutex_unlock(&st->lock);
>> > > >>
>> > > >>       return ret ? ret : len;
>> > > >>  }
>> > > >> @@ -792,13 +793,13 @@ static int ad7280_read_raw(struct iio_dev *indio_dev,
>> > > >>
>> > > >>       switch (m) {
>> > > >>       case IIO_CHAN_INFO_RAW:
>> > > >> -             mutex_lock(&indio_dev->mlock);
>> > > >> +             mutex_lock(&st->lock);
>> > > >>               if (chan->address == AD7280A_ALL_CELLS)
>> > > >>                       ret = ad7280_read_all_channels(st, st->scan_cnt, NULL);
>> > > >>               else
>> > > >>                       ret = ad7280_read_channel(st, chan->address >> 8,
>> > > >>                                                 chan->address & 0xFF);
>> > > >> -             mutex_unlock(&indio_dev->mlock);
>> > > >> +             mutex_unlock(&st->lock);
>> > > >>
>> > > >>               if (ret < 0)
>> > > >>                       return ret;
>> > > >> --
>> > > >> 2.7.4
>> > > >>
>> > > >> --
>> > >
>> >
>> > --

