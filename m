X-GM-THRID: 6396716918154199040
X-Received: by 10.46.7.80 with SMTP id i16mr280967ljd.5.1489571091000;
        Wed, 15 Mar 2017 02:44:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.227.79 with SMTP id c15ls41219lfk.49.gmail; Wed, 15 Mar
 2017 02:44:50 -0700 (PDT)
X-Received: by 10.25.150.2 with SMTP id y2mr254448lfd.21.1489571090522;
        Wed, 15 Mar 2017 02:44:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n128si972993wmf.2.2017.03.15.02.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 02:44:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,168,1486422000"; 
   d="scan'208";a="216805302"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2017 10:44:48 +0100
Date: Wed, 15 Mar 2017 10:44:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    Alison Schofield <amsfield22@gmail.com>, outreachy-kernel@googlegroups.com, 
    lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org, 
    knaack.h@gmx.de, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
In-Reply-To: <CAOCi2DGcpoN791cH82nKWYdYdS82MmfJeUpcTcUSG9cbEw3Q4g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703151044270.3212@hadrien>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703122154130.7649@hadrien> <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com> <alpine.DEB.2.20.1703122235320.7649@hadrien> <20170312221350.GA14070@d830.WORKGROUP>
 <alpine.DEB.2.20.1703122321140.7649@hadrien> <CAOCi2DGcpoN791cH82nKWYdYdS82MmfJeUpcTcUSG9cbEw3Q4g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 13 Mar 2017, Gargi Sharma wrote:

> On Mon, Mar 13, 2017 at 3:57 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> Please insert the new lock above the __cacheline_aligned struct
> >> member.
> >
> > Regrettably, at the moment, Coccinelle can't help you find this.  It could
> > help if there is something particular about the type.
> >
> >
> >> I like the automated editing because it certainly cuts down on typos,
> >> and even with this one, you can just move the new lock field upon
> >> inspection.  Sadly, I don't think the script will apply too widely
> >> because the use of "_state" for driver global data isn't a standard,
> >> nor availability of that struct in the functions needing the locking.
> >
> > The _state is part of a metavariable name.  It doesn't have any impact on
> > what is matched.
> >
> >> That sadness expressed ;) we do have a boatload of drivers upstream
> >> that will eventually make this migration, so the value of the cocci
> >> script would go beyond these 15 staging drivers. That's valuable.
> >>
> >> Let's make sure anything done with any automated tools is walked
> >> through thoroughly.  Per the task description: this is not intended
> >> as a search&replace exercise.
> >
> > Automation is great, modulo the need to manually check the result.
> > However, it could be better not to include in the commit log semantic
> > patches that are too far off from what updates the driver in a safe way.
> > It doesn't have to update all drivers safely, but it should work for the
> > modified one.  The goal should be to complement the log message text, not
> > to make the reader confused :)
>
> Will it be better if I remove the script from the commit log here? That way the
> confusion can be prevented :)

Perhaps a good idea.

julia

>
> Thanks!
> Gargi
> >
> > julia
> >
> >> alisons
> >>
> >>
> >> > > >>
> >> > > >> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> >> > > >> ---
> >> > > >>  drivers/staging/iio/adc/ad7280a.c | 21 +++++++++++----------
> >> > > >>  1 file changed, 11 insertions(+), 10 deletions(-)
> >> > > >>
> >> > > >> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> >> > > >> index ee679ac..27a3ce3 100644
> >> > > >> --- a/drivers/staging/iio/adc/ad7280a.c
> >> > > >> +++ b/drivers/staging/iio/adc/ad7280a.c
> >> > > >> @@ -136,6 +136,7 @@ struct ad7280_state {
> >> > > >>       unsigned char                   cb_mask[AD7280A_MAX_CHAIN];
> >> > > >>
> >> > > >>       __be32                          buf[2] ____cacheline_aligned;
> >> > > >> +     struct mutex                    lock;  /* protect sensor state */
> >> > > >>  };
> >> > > >>
> >> > > >>  static void ad7280_crc8_build_table(unsigned char *crc_tab)
> >> > > >> @@ -410,7 +411,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
> >> > > >>       devaddr = this_attr->address >> 8;
> >> > > >>       ch = this_attr->address & 0xFF;
> >> > > >>
> >> > > >> -     mutex_lock(&indio_dev->mlock);
> >> > > >> +     mutex_lock(&st->lock);
> >> > > >>       if (readin)
> >> > > >>               st->cb_mask[devaddr] |= 1 << (ch + 2);
> >> > > >>       else
> >> > > >> @@ -418,7 +419,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
> >> > > >>
> >> > > >>       ret = ad7280_write(st, devaddr, AD7280A_CELL_BALANCE,
> >> > > >>                          0, st->cb_mask[devaddr]);
> >> > > >> -     mutex_unlock(&indio_dev->mlock);
> >> > > >> +     mutex_unlock(&st->lock);
> >> > > >>
> >> > > >>       return ret ? ret : len;
> >> > > >>  }
> >> > > >> @@ -433,10 +434,10 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
> >> > > >>       int ret;
> >> > > >>       unsigned int msecs;
> >> > > >>
> >> > > >> -     mutex_lock(&indio_dev->mlock);
> >> > > >> +     mutex_lock(&st->lock);
> >> > > >>       ret = ad7280_read(st, this_attr->address >> 8,
> >> > > >>                         this_attr->address & 0xFF);
> >> > > >> -     mutex_unlock(&indio_dev->mlock);
> >> > > >> +     mutex_unlock(&st->lock);
> >> > > >>
> >> > > >>       if (ret < 0)
> >> > > >>               return ret;
> >> > > >> @@ -466,11 +467,11 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
> >> > > >>       if (val > 31)
> >> > > >>               return -EINVAL;
> >> > > >>
> >> > > >> -     mutex_lock(&indio_dev->mlock);
> >> > > >> +     mutex_lock(&st->lock);
> >> > > >>       ret = ad7280_write(st, this_attr->address >> 8,
> >> > > >>                          this_attr->address & 0xFF,
> >> > > >>                          0, (val & 0x1F) << 3);
> >> > > >> -     mutex_unlock(&indio_dev->mlock);
> >> > > >> +     mutex_unlock(&st->lock);
> >> > > >>
> >> > > >>       return ret ? ret : len;
> >> > > >>  }
> >> > > >> @@ -655,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
> >> > > >>
> >> > > >>       val = clamp(val, 0L, 0xFFL);
> >> > > >>
> >> > > >> -     mutex_lock(&indio_dev->mlock);
> >> > > >> +     mutex_lock(&st->lock);
> >> > > >>       switch ((u32)this_attr->address) {
> >> > > >>       case AD7280A_CELL_OVERVOLTAGE:
> >> > > >>               st->cell_threshhigh = val;
> >> > > >> @@ -674,7 +675,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
> >> > > >>       ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
> >> > > >>                          this_attr->address, 1, val);
> >> > > >>
> >> > > >> -     mutex_unlock(&indio_dev->mlock);
> >> > > >> +     mutex_unlock(&st->lock);
> >> > > >>
> >> > > >>       return ret ? ret : len;
> >> > > >>  }
> >> > > >> @@ -792,13 +793,13 @@ static int ad7280_read_raw(struct iio_dev *indio_dev,
> >> > > >>
> >> > > >>       switch (m) {
> >> > > >>       case IIO_CHAN_INFO_RAW:
> >> > > >> -             mutex_lock(&indio_dev->mlock);
> >> > > >> +             mutex_lock(&st->lock);
> >> > > >>               if (chan->address == AD7280A_ALL_CELLS)
> >> > > >>                       ret = ad7280_read_all_channels(st, st->scan_cnt, NULL);
> >> > > >>               else
> >> > > >>                       ret = ad7280_read_channel(st, chan->address >> 8,
> >> > > >>                                                 chan->address & 0xFF);
> >> > > >> -             mutex_unlock(&indio_dev->mlock);
> >> > > >> +             mutex_unlock(&st->lock);
> >> > > >>
> >> > > >>               if (ret < 0)
> >> > > >>                       return ret;
> >> > > >> --
> >> > > >> 2.7.4
> >> > > >>
> >> > > >> --
> >> > >
> >> >
> >> > --
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DGcpoN791cH82nKWYdYdS82MmfJeUpcTcUSG9cbEw3Q4g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

