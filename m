X-GM-THRID: 6396716918154199040
X-Received: by 10.129.158.213 with SMTP id v204mr15988180ywg.70.1489394432546;
        Mon, 13 Mar 2017 01:40:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls2363147otb.38.gmail; Mon, 13 Mar
 2017 01:40:32 -0700 (PDT)
X-Received: by 10.157.31.115 with SMTP id x48mr13216421otx.95.1489394432174;
        Mon, 13 Mar 2017 01:40:32 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id t8si1223680ith.0.2017.03.13.01.40.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 01:40:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id f203so5312268itf.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 01:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=WdCWM1YzTrOtbm4NEa36MRbSs76OV/GjdCk7+oD9C6M=;
        b=f8mH4R635GLqYzbfBHSADfWpRo16WFQLc+JjAKrOul45bSDnu23CYhKouh1fbWROwe
         z/MxxcTDZNgDCKhDxSwJeFjQwsLRDUth2aankZLx0y/uB8sv0wKpuzL8inAifC9bBIMs
         uAURZpbC7buc5e6ayu8gfdqGNWtU+xw52bD52Meke2h901MsXkspDgIq2zuJqjXbg147
         5XQstSZyNp22XKr2zDRqPjcTLBdJXgDzAOl1HWMKQZotBE6oXoTh+OUIydXgQAccDjWL
         hVyV90FNf3yKPJH0l5pp2rTq6+KGty4yHBPm8Vl26HS1j/n5PD041fU7nuDgCvET0p3M
         jVnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=WdCWM1YzTrOtbm4NEa36MRbSs76OV/GjdCk7+oD9C6M=;
        b=O6GS5RFLmI9XAojCaarKyGeJ47cYXHy+NqmZXtmVEKZfO7KYc7kF9k/2nwvW6tadvo
         IcOm42UrD3XNRq+J8y9I0mZHnm6uFa4lARhcYuV8US2rtT9c7Pvq0sN82Q8vd0h2RBU6
         S/MDQ1C22Msm6brIKFBhdHwTSwQgsTdspTxV1vNYYMlT2MO8/ufiOBavDKUy85Zd0U8G
         HQL601ygv7y+WYmMLH5KMm7nbb3Pq35LBouUs0C71gnMFKNol4DcQncubv/8QpRhFS8W
         OzlYZV7CxND5cvDMiN9tQHHP6EZx76yXih8XPvj0clsj01RUQ1p1gs8cNU2unNqB30vV
         hV6A==
X-Gm-Message-State: AFeK/H0ql0swQIPK6URrAO1StSgdlxF93+xsvs4h7lIAjTTOC/1bQ7vAtGBL86sEADWPMS5D2KfBl5nPS25/9g==
X-Received: by 10.36.129.133 with SMTP id q127mr9992177itd.89.1489394431800;
 Mon, 13 Mar 2017 01:40:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Mon, 13 Mar 2017 01:40:01 -0700 (PDT)
In-Reply-To: <20170312221350.GA14070@d830.WORKGROUP>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1703122154130.7649@hadrien> <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com>
 <alpine.DEB.2.20.1703122235320.7649@hadrien> <20170312221350.GA14070@d830.WORKGROUP>
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 13 Mar 2017 14:10:01 +0530
Message-ID: <CAOCi2DEyu6_bBjsrSFzf0VcXcUnZ3LugLf==R9zsSmj+1JdFKw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
To: Alison Schofield <amsfield22@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, 
	lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org, 
	knaack.h@gmx.de, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 3:43 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Sun, Mar 12, 2017 at 10:37:39PM +0100, Julia Lawall wrote:
>>
>>
>> On Mon, 13 Mar 2017, Gargi Sharma wrote:
>>
>> > On Mon, Mar 13, 2017 at 2:26 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > >
>> > >
>> > > On Mon, 13 Mar 2017, Gargi Sharma wrote:
>> > >
>> > >> The IIO subsystem is redefining iio_dev->mlock to be used by
>> > >> the IIO core only for protecting device operating mode changes.
>> > >> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>> > >>
>> > >> In this driver, mlock was being used to protect hardware state
>> > >> changes.  Replace it with a lock in the devices global data.
>> > >> This was done using Coccinelle Script.
>> > >>
>> > >> @r1@
>> > >> identifier xxx_state;
>> > >> @@
>> > >> struct xxx_state {
>> > >> ...
>> > >> + struct mutex          lock; /* protect sensor state */
>> > >> };
>> > >>
>> > >> @r2@
>> > >> expression e;
>> > >> @@
>> > >> - mutex_lock(e);
>> > >> + mutex_lock(&st->lock);
>> > >>
>> > >> @r3@
>> > >> expression e;
>> > >> @@
>> > >> - mutex_unlock(e);
>> > >> + mutex_unlock(&st->lock);
>> > >
>> > >
>> > > This rule is probably hjelpful in practice, but is very unsafe.  Is there
>> > > any way that you can characterize the kind of structure you want to add a
>> > > new lock to?  And likewise, what lock and unlock calls you want to
>> > > replace?  And what is st?
>> > >
>> > Hi!
>> >
>> > I wanted to do the following things, but was getting a parse error with the
>> > Coccinelle Script.
>> >
>> > st is a structure of type xxx_state. If I inherit xxx_state from r1,
>> > to r2 and write
>> > the following in the cocci script, for some reason it was not parsing
>> > the structure at all.
>> >
>> > @r2@
>> > expression e1,e2;
>> > xxx_state << r1.xxx_state;
>>
>> << is the way you inherit a metavariable in script code.  The first script
>> language available was python and it was considered to be odd to ask
>> people to put types on variables to be used in python code.  In any case,
>> all kinds of terms are represented as strings, so the tpye would not be
>> very useful.
>>
>> When you are in pattern matching (SmPL) code, metavariables are inherited
>> as
>>
>> identifier r1.xxx_state;
>>
>> (or whatever is the appropriate type)
>>
>> julia
>>
>> > identifier i;
>> > position p;
>> > @@
>> > struct xxx_state i@p = e1;        //If the script is only till this
>> >                                                  // point and there is an * in
>> >                                                  // the beginning, the rule
>> >                                                  //does not detect a structure.
>> > mutex_lock
>> > (
>> > - e1
>> > + &i->lock                              //this gives a parsing error
>> > );
>> >
>> >
>> > > julia
>> > >
>
> Gargi,
>
> Please insert the new lock above the __cacheline_aligned struct
> member.

I will do that, but is there any reason why the lock should be above
____cacheline_aligned struct member?

>
> I like the automated editing because it certainly cuts down on typos,
> and even with this one, you can just move the new lock field upon
> inspection.  Sadly, I don't think the script will apply too widely
> because the use of "_state" for driver global data isn't a standard,
> nor availability of that struct in the functions needing the locking.
I only saw three files that had the mlock and they followed the structure
with _state as suffix and only had mutex_lock for &indio_dev->mlock.
Hence, I went ahead with the script even though I knew it wasn't probably
very safe.
>
> That sadness expressed ;) we do have a boatload of drivers upstream
> that will eventually make this migration, so the value of the cocci
> script would go beyond these 15 staging drivers. That's valuable.

An autmoated script can work if there is a pattern all the file containing
the mlocks possess. I believe for the staging driver all the structures
have a _state as prefix and the mutex lock is held on those structures.
>
> Let's make sure anything done with any automated tools is walked
> through thoroughly.
Yes of course! My intention for a script was to make the transition to
private locks a little less hassle free if possible. :)

Thanks!
Gargi
Per the task description: this is not intended
> as a search&replace exercise.
>
> alisons
>
>
>> > >>
>> > >> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> > >> ---
>> > >>  drivers/staging/iio/adc/ad7280a.c | 21 +++++++++++----------
>> > >>  1 file changed, 11 insertions(+), 10 deletions(-)
>> > >>
>> > >> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
>> > >> index ee679ac..27a3ce3 100644
>> > >> --- a/drivers/staging/iio/adc/ad7280a.c
>> > >> +++ b/drivers/staging/iio/adc/ad7280a.c
>> > >> @@ -136,6 +136,7 @@ struct ad7280_state {
>> > >>       unsigned char                   cb_mask[AD7280A_MAX_CHAIN];
>> > >>
>> > >>       __be32                          buf[2] ____cacheline_aligned;
>> > >> +     struct mutex                    lock;  /* protect sensor state */
>> > >>  };
>> > >>
>> > >>  static void ad7280_crc8_build_table(unsigned char *crc_tab)
>> > >> @@ -410,7 +411,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
>> > >>       devaddr = this_attr->address >> 8;
>> > >>       ch = this_attr->address & 0xFF;
>> > >>
>> > >> -     mutex_lock(&indio_dev->mlock);
>> > >> +     mutex_lock(&st->lock);
>> > >>       if (readin)
>> > >>               st->cb_mask[devaddr] |= 1 << (ch + 2);
>> > >>       else
>> > >> @@ -418,7 +419,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
>> > >>
>> > >>       ret = ad7280_write(st, devaddr, AD7280A_CELL_BALANCE,
>> > >>                          0, st->cb_mask[devaddr]);
>> > >> -     mutex_unlock(&indio_dev->mlock);
>> > >> +     mutex_unlock(&st->lock);
>> > >>
>> > >>       return ret ? ret : len;
>> > >>  }
>> > >> @@ -433,10 +434,10 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
>> > >>       int ret;
>> > >>       unsigned int msecs;
>> > >>
>> > >> -     mutex_lock(&indio_dev->mlock);
>> > >> +     mutex_lock(&st->lock);
>> > >>       ret = ad7280_read(st, this_attr->address >> 8,
>> > >>                         this_attr->address & 0xFF);
>> > >> -     mutex_unlock(&indio_dev->mlock);
>> > >> +     mutex_unlock(&st->lock);
>> > >>
>> > >>       if (ret < 0)
>> > >>               return ret;
>> > >> @@ -466,11 +467,11 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
>> > >>       if (val > 31)
>> > >>               return -EINVAL;
>> > >>
>> > >> -     mutex_lock(&indio_dev->mlock);
>> > >> +     mutex_lock(&st->lock);
>> > >>       ret = ad7280_write(st, this_attr->address >> 8,
>> > >>                          this_attr->address & 0xFF,
>> > >>                          0, (val & 0x1F) << 3);
>> > >> -     mutex_unlock(&indio_dev->mlock);
>> > >> +     mutex_unlock(&st->lock);
>> > >>
>> > >>       return ret ? ret : len;
>> > >>  }
>> > >> @@ -655,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>> > >>
>> > >>       val = clamp(val, 0L, 0xFFL);
>> > >>
>> > >> -     mutex_lock(&indio_dev->mlock);
>> > >> +     mutex_lock(&st->lock);
>> > >>       switch ((u32)this_attr->address) {
>> > >>       case AD7280A_CELL_OVERVOLTAGE:
>> > >>               st->cell_threshhigh = val;
>> > >> @@ -674,7 +675,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>> > >>       ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
>> > >>                          this_attr->address, 1, val);
>> > >>
>> > >> -     mutex_unlock(&indio_dev->mlock);
>> > >> +     mutex_unlock(&st->lock);
>> > >>
>> > >>       return ret ? ret : len;
>> > >>  }
>> > >> @@ -792,13 +793,13 @@ static int ad7280_read_raw(struct iio_dev *indio_dev,
>> > >>
>> > >>       switch (m) {
>> > >>       case IIO_CHAN_INFO_RAW:
>> > >> -             mutex_lock(&indio_dev->mlock);
>> > >> +             mutex_lock(&st->lock);
>> > >>               if (chan->address == AD7280A_ALL_CELLS)
>> > >>                       ret = ad7280_read_all_channels(st, st->scan_cnt, NULL);
>> > >>               else
>> > >>                       ret = ad7280_read_channel(st, chan->address >> 8,
>> > >>                                                 chan->address & 0xFF);
>> > >> -             mutex_unlock(&indio_dev->mlock);
>> > >> +             mutex_unlock(&st->lock);
>> > >>
>> > >>               if (ret < 0)
>> > >>                       return ret;
>> > >> --
>> > >> 2.7.4
>> > >>
>> > >> --
>> >
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703122235320.7649%40hadrien.
>> For more options, visit https://groups.google.com/d/optout.

