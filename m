X-GM-THRID: 6396716918154199040
X-Received: by 10.129.172.96 with SMTP id z32mr15830543ywj.39.1489356833968;
        Sun, 12 Mar 2017 15:13:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls13511559otc.30.gmail; Sun, 12 Mar
 2017 15:13:53 -0700 (PDT)
X-Received: by 10.129.105.130 with SMTP id e124mr15980434ywc.2.1489356833593;
        Sun, 12 Mar 2017 15:13:53 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r66si2797985pfb.7.2017.03.12.15.13.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 15:13:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so17018980pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 15:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1cFLubePMYA5SUlcaYkVnLZRcweKrBpRdWdKiD5BSA0=;
        b=M+HAvjRBuW8BUuZSA76+7DAvd7NM5lNTgcofbnxNiTCudJc34STwz0dfxBHXpmDlbq
         XbvAgaPpKo0T45cSk6IP50xSdR5LU7NJ/WdFmlN0SwNkkqpfchD4A3BbyTmiRJdY7RwT
         tEe0XifZ6e2UvjE29GnoRd19hJmYKokxrWMlL6qIfm81xlBWlNA1VVkMJee2cyd+GuSy
         QovvsUqsTe5hxy/dtsb4Gnr5vH/dToIKf2NjMd0N6D4Ct2W9S2o3stOvj4P23Ov5i/Go
         hDue4zLEPPVtDUAtH2yHzuSEhjLIWhkbfWKY41b1rLF8Px0k5BLGLP8C5NrTx4Vr3kCC
         Splg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1cFLubePMYA5SUlcaYkVnLZRcweKrBpRdWdKiD5BSA0=;
        b=RR4vUPxE7NQ7ME9pPo8+aw0rKFflOzSaXUKVJQRrSZW+q7h+CEkMFtUU1MMT35wXRS
         odd6PGEKw0noCbCZAJCOBukWvF2xZbfeL6S4ZppTeUo+qsBCe6bN7pSNQ0JYIyBGSoCa
         vjMCJROqtPXLC+B038+gxwa+kwGvzYqHGpvlAWbWDEpZt43fDlXGNAd0r4aHMjnOyG5b
         LBkZpc9M6Ad/uoJxNw/waUV6KgAvl/R5ldqWZ0leNpXDxnhwU6jF7bC3UB3QgfzmHfMu
         g98aIhk4S/QcgXyXdH1oefClvDn+r1YN4XHz6yHHt0D9vcHBPZ1NIkNtNuOe25ytHlQR
         f08g==
X-Gm-Message-State: AMke39kMl9OCLoL2W4kAMhuBtWAefHiiOru2Nw2J8qDCEUkLNlh7+q/Kg9dsf0ZNWy/CeA==
X-Received: by 10.84.215.215 with SMTP id g23mr42888493plj.159.1489356833220;
        Sun, 12 Mar 2017 15:13:53 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id n8sm30105399pgd.5.2017.03.12.15.13.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 15:13:52 -0700 (PDT)
Date: Sun, 12 Mar 2017 15:13:51 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gargi Sharma <gs051095@gmail.com>, outreachy-kernel@googlegroups.com,
	lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
Message-ID: <20170312221350.GA14070@d830.WORKGROUP>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1703122154130.7649@hadrien>
 <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com>
 <alpine.DEB.2.20.1703122235320.7649@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703122235320.7649@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 10:37:39PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 13 Mar 2017, Gargi Sharma wrote:
> 
> > On Mon, Mar 13, 2017 at 2:26 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > >
> > >
> > > On Mon, 13 Mar 2017, Gargi Sharma wrote:
> > >
> > >> The IIO subsystem is redefining iio_dev->mlock to be used by
> > >> the IIO core only for protecting device operating mode changes.
> > >> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> > >>
> > >> In this driver, mlock was being used to protect hardware state
> > >> changes.  Replace it with a lock in the devices global data.
> > >> This was done using Coccinelle Script.
> > >>
> > >> @r1@
> > >> identifier xxx_state;
> > >> @@
> > >> struct xxx_state {
> > >> ...
> > >> + struct mutex          lock; /* protect sensor state */
> > >> };
> > >>
> > >> @r2@
> > >> expression e;
> > >> @@
> > >> - mutex_lock(e);
> > >> + mutex_lock(&st->lock);
> > >>
> > >> @r3@
> > >> expression e;
> > >> @@
> > >> - mutex_unlock(e);
> > >> + mutex_unlock(&st->lock);
> > >
> > >
> > > This rule is probably hjelpful in practice, but is very unsafe.  Is there
> > > any way that you can characterize the kind of structure you want to add a
> > > new lock to?  And likewise, what lock and unlock calls you want to
> > > replace?  And what is st?
> > >
> > Hi!
> >
> > I wanted to do the following things, but was getting a parse error with the
> > Coccinelle Script.
> >
> > st is a structure of type xxx_state. If I inherit xxx_state from r1,
> > to r2 and write
> > the following in the cocci script, for some reason it was not parsing
> > the structure at all.
> >
> > @r2@
> > expression e1,e2;
> > xxx_state << r1.xxx_state;
> 
> << is the way you inherit a metavariable in script code.  The first script
> language available was python and it was considered to be odd to ask
> people to put types on variables to be used in python code.  In any case,
> all kinds of terms are represented as strings, so the tpye would not be
> very useful.
> 
> When you are in pattern matching (SmPL) code, metavariables are inherited
> as
> 
> identifier r1.xxx_state;
> 
> (or whatever is the appropriate type)
> 
> julia
> 
> > identifier i;
> > position p;
> > @@
> > struct xxx_state i@p = e1;        //If the script is only till this
> >                                                  // point and there is an * in
> >                                                  // the beginning, the rule
> >                                                  //does not detect a structure.
> > mutex_lock
> > (
> > - e1
> > + &i->lock                              //this gives a parsing error
> > );
> >
> >
> > > julia
> > >

Gargi,

Please insert the new lock above the __cacheline_aligned struct
member. 

I like the automated editing because it certainly cuts down on typos,
and even with this one, you can just move the new lock field upon
inspection.  Sadly, I don't think the script will apply too widely
because the use of "_state" for driver global data isn't a standard,
nor availability of that struct in the functions needing the locking.

That sadness expressed ;) we do have a boatload of drivers upstream
that will eventually make this migration, so the value of the cocci
script would go beyond these 15 staging drivers. That's valuable.

Let's make sure anything done with any automated tools is walked
through thoroughly.  Per the task description: this is not intended
as a search&replace exercise.

alisons


> > >>
> > >> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > >> ---
> > >>  drivers/staging/iio/adc/ad7280a.c | 21 +++++++++++----------
> > >>  1 file changed, 11 insertions(+), 10 deletions(-)
> > >>
> > >> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > >> index ee679ac..27a3ce3 100644
> > >> --- a/drivers/staging/iio/adc/ad7280a.c
> > >> +++ b/drivers/staging/iio/adc/ad7280a.c
> > >> @@ -136,6 +136,7 @@ struct ad7280_state {
> > >>       unsigned char                   cb_mask[AD7280A_MAX_CHAIN];
> > >>
> > >>       __be32                          buf[2] ____cacheline_aligned;
> > >> +     struct mutex                    lock;  /* protect sensor state */
> > >>  };
> > >>
> > >>  static void ad7280_crc8_build_table(unsigned char *crc_tab)
> > >> @@ -410,7 +411,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
> > >>       devaddr = this_attr->address >> 8;
> > >>       ch = this_attr->address & 0xFF;
> > >>
> > >> -     mutex_lock(&indio_dev->mlock);
> > >> +     mutex_lock(&st->lock);
> > >>       if (readin)
> > >>               st->cb_mask[devaddr] |= 1 << (ch + 2);
> > >>       else
> > >> @@ -418,7 +419,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
> > >>
> > >>       ret = ad7280_write(st, devaddr, AD7280A_CELL_BALANCE,
> > >>                          0, st->cb_mask[devaddr]);
> > >> -     mutex_unlock(&indio_dev->mlock);
> > >> +     mutex_unlock(&st->lock);
> > >>
> > >>       return ret ? ret : len;
> > >>  }
> > >> @@ -433,10 +434,10 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
> > >>       int ret;
> > >>       unsigned int msecs;
> > >>
> > >> -     mutex_lock(&indio_dev->mlock);
> > >> +     mutex_lock(&st->lock);
> > >>       ret = ad7280_read(st, this_attr->address >> 8,
> > >>                         this_attr->address & 0xFF);
> > >> -     mutex_unlock(&indio_dev->mlock);
> > >> +     mutex_unlock(&st->lock);
> > >>
> > >>       if (ret < 0)
> > >>               return ret;
> > >> @@ -466,11 +467,11 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
> > >>       if (val > 31)
> > >>               return -EINVAL;
> > >>
> > >> -     mutex_lock(&indio_dev->mlock);
> > >> +     mutex_lock(&st->lock);
> > >>       ret = ad7280_write(st, this_attr->address >> 8,
> > >>                          this_attr->address & 0xFF,
> > >>                          0, (val & 0x1F) << 3);
> > >> -     mutex_unlock(&indio_dev->mlock);
> > >> +     mutex_unlock(&st->lock);
> > >>
> > >>       return ret ? ret : len;
> > >>  }
> > >> @@ -655,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
> > >>
> > >>       val = clamp(val, 0L, 0xFFL);
> > >>
> > >> -     mutex_lock(&indio_dev->mlock);
> > >> +     mutex_lock(&st->lock);
> > >>       switch ((u32)this_attr->address) {
> > >>       case AD7280A_CELL_OVERVOLTAGE:
> > >>               st->cell_threshhigh = val;
> > >> @@ -674,7 +675,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
> > >>       ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
> > >>                          this_attr->address, 1, val);
> > >>
> > >> -     mutex_unlock(&indio_dev->mlock);
> > >> +     mutex_unlock(&st->lock);
> > >>
> > >>       return ret ? ret : len;
> > >>  }
> > >> @@ -792,13 +793,13 @@ static int ad7280_read_raw(struct iio_dev *indio_dev,
> > >>
> > >>       switch (m) {
> > >>       case IIO_CHAN_INFO_RAW:
> > >> -             mutex_lock(&indio_dev->mlock);
> > >> +             mutex_lock(&st->lock);
> > >>               if (chan->address == AD7280A_ALL_CELLS)
> > >>                       ret = ad7280_read_all_channels(st, st->scan_cnt, NULL);
> > >>               else
> > >>                       ret = ad7280_read_channel(st, chan->address >> 8,
> > >>                                                 chan->address & 0xFF);
> > >> -             mutex_unlock(&indio_dev->mlock);
> > >> +             mutex_unlock(&st->lock);
> > >>
> > >>               if (ret < 0)
> > >>                       return ret;
> > >> --
> > >> 2.7.4
> > >>
> > >> --
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703122235320.7649%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

