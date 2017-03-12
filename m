X-GM-THRID: 6396716918154199040
X-Received: by 10.46.81.66 with SMTP id b2mr4748055lje.3.1489354662130;
        Sun, 12 Mar 2017 14:37:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.217 with SMTP id c86ls1375612ljd.10.gmail; Sun, 12 Mar
 2017 14:37:41 -0700 (PDT)
X-Received: by 10.46.9.141 with SMTP id 135mr5037951ljj.19.1489354661661;
        Sun, 12 Mar 2017 14:37:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si548227wma.0.2017.03.12.14.37.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 14:37:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,154,1486422000"; 
   d="scan'208";a="216465845"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 22:37:40 +0100
Date: Sun, 12 Mar 2017 22:37:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, lars@metafoo.de, 
    Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
In-Reply-To: <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703122235320.7649@hadrien>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703122154130.7649@hadrien> <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 13 Mar 2017, Gargi Sharma wrote:

> On Mon, Mar 13, 2017 at 2:26 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Mon, 13 Mar 2017, Gargi Sharma wrote:
> >
> >> The IIO subsystem is redefining iio_dev->mlock to be used by
> >> the IIO core only for protecting device operating mode changes.
> >> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> >>
> >> In this driver, mlock was being used to protect hardware state
> >> changes.  Replace it with a lock in the devices global data.
> >> This was done using Coccinelle Script.
> >>
> >> @r1@
> >> identifier xxx_state;
> >> @@
> >> struct xxx_state {
> >> ...
> >> + struct mutex          lock; /* protect sensor state */
> >> };
> >>
> >> @r2@
> >> expression e;
> >> @@
> >> - mutex_lock(e);
> >> + mutex_lock(&st->lock);
> >>
> >> @r3@
> >> expression e;
> >> @@
> >> - mutex_unlock(e);
> >> + mutex_unlock(&st->lock);
> >
> >
> > This rule is probably hjelpful in practice, but is very unsafe.  Is there
> > any way that you can characterize the kind of structure you want to add a
> > new lock to?  And likewise, what lock and unlock calls you want to
> > replace?  And what is st?
> >
> Hi!
>
> I wanted to do the following things, but was getting a parse error with the
> Coccinelle Script.
>
> st is a structure of type xxx_state. If I inherit xxx_state from r1,
> to r2 and write
> the following in the cocci script, for some reason it was not parsing
> the structure at all.
>
> @r2@
> expression e1,e2;
> xxx_state << r1.xxx_state;

<< is the way you inherit a metavariable in script code.  The first script
language available was python and it was considered to be odd to ask
people to put types on variables to be used in python code.  In any case,
all kinds of terms are represented as strings, so the tpye would not be
very useful.

When you are in pattern matching (SmPL) code, metavariables are inherited
as

identifier r1.xxx_state;

(or whatever is the appropriate type)

julia

> identifier i;
> position p;
> @@
> struct xxx_state i@p = e1;        //If the script is only till this
>                                                  // point and there is an * in
>                                                  // the beginning, the rule
>                                                  //does not detect a structure.
> mutex_lock
> (
> - e1
> + &i->lock                              //this gives a parsing error
> );
>
>
> > julia
> >
> >>
> >> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> >> ---
> >>  drivers/staging/iio/adc/ad7280a.c | 21 +++++++++++----------
> >>  1 file changed, 11 insertions(+), 10 deletions(-)
> >>
> >> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> >> index ee679ac..27a3ce3 100644
> >> --- a/drivers/staging/iio/adc/ad7280a.c
> >> +++ b/drivers/staging/iio/adc/ad7280a.c
> >> @@ -136,6 +136,7 @@ struct ad7280_state {
> >>       unsigned char                   cb_mask[AD7280A_MAX_CHAIN];
> >>
> >>       __be32                          buf[2] ____cacheline_aligned;
> >> +     struct mutex                    lock;  /* protect sensor state */
> >>  };
> >>
> >>  static void ad7280_crc8_build_table(unsigned char *crc_tab)
> >> @@ -410,7 +411,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
> >>       devaddr = this_attr->address >> 8;
> >>       ch = this_attr->address & 0xFF;
> >>
> >> -     mutex_lock(&indio_dev->mlock);
> >> +     mutex_lock(&st->lock);
> >>       if (readin)
> >>               st->cb_mask[devaddr] |= 1 << (ch + 2);
> >>       else
> >> @@ -418,7 +419,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
> >>
> >>       ret = ad7280_write(st, devaddr, AD7280A_CELL_BALANCE,
> >>                          0, st->cb_mask[devaddr]);
> >> -     mutex_unlock(&indio_dev->mlock);
> >> +     mutex_unlock(&st->lock);
> >>
> >>       return ret ? ret : len;
> >>  }
> >> @@ -433,10 +434,10 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
> >>       int ret;
> >>       unsigned int msecs;
> >>
> >> -     mutex_lock(&indio_dev->mlock);
> >> +     mutex_lock(&st->lock);
> >>       ret = ad7280_read(st, this_attr->address >> 8,
> >>                         this_attr->address & 0xFF);
> >> -     mutex_unlock(&indio_dev->mlock);
> >> +     mutex_unlock(&st->lock);
> >>
> >>       if (ret < 0)
> >>               return ret;
> >> @@ -466,11 +467,11 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
> >>       if (val > 31)
> >>               return -EINVAL;
> >>
> >> -     mutex_lock(&indio_dev->mlock);
> >> +     mutex_lock(&st->lock);
> >>       ret = ad7280_write(st, this_attr->address >> 8,
> >>                          this_attr->address & 0xFF,
> >>                          0, (val & 0x1F) << 3);
> >> -     mutex_unlock(&indio_dev->mlock);
> >> +     mutex_unlock(&st->lock);
> >>
> >>       return ret ? ret : len;
> >>  }
> >> @@ -655,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
> >>
> >>       val = clamp(val, 0L, 0xFFL);
> >>
> >> -     mutex_lock(&indio_dev->mlock);
> >> +     mutex_lock(&st->lock);
> >>       switch ((u32)this_attr->address) {
> >>       case AD7280A_CELL_OVERVOLTAGE:
> >>               st->cell_threshhigh = val;
> >> @@ -674,7 +675,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
> >>       ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
> >>                          this_attr->address, 1, val);
> >>
> >> -     mutex_unlock(&indio_dev->mlock);
> >> +     mutex_unlock(&st->lock);
> >>
> >>       return ret ? ret : len;
> >>  }
> >> @@ -792,13 +793,13 @@ static int ad7280_read_raw(struct iio_dev *indio_dev,
> >>
> >>       switch (m) {
> >>       case IIO_CHAN_INFO_RAW:
> >> -             mutex_lock(&indio_dev->mlock);
> >> +             mutex_lock(&st->lock);
> >>               if (chan->address == AD7280A_ALL_CELLS)
> >>                       ret = ad7280_read_all_channels(st, st->scan_cnt, NULL);
> >>               else
> >>                       ret = ad7280_read_channel(st, chan->address >> 8,
> >>                                                 chan->address & 0xFF);
> >> -             mutex_unlock(&indio_dev->mlock);
> >> +             mutex_unlock(&st->lock);
> >>
> >>               if (ret < 0)
> >>                       return ret;
> >> --
> >> 2.7.4
> >>
> >> --
>

