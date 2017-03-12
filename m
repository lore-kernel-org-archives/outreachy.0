X-GM-THRID: 6396578971833597952
X-Received: by 10.46.83.76 with SMTP id t12mr5286639ljd.26.1489354505863;
        Sun, 12 Mar 2017 14:35:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.28 with SMTP id s28ls728012ljd.22.gmail; Sun, 12 Mar
 2017 14:35:05 -0700 (PDT)
X-Received: by 10.46.20.16 with SMTP id u16mr4013139ljd.23.1489354505400;
        Sun, 12 Mar 2017 14:35:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si578995wmg.0.2017.03.12.14.35.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 14:35:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,154,1486422000"; 
   d="scan'208";a="264221456"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 22:35:04 +0100
Date: Sun, 12 Mar 2017 22:35:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: Alison Schofield <amsfield22@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Lars-Peter Clausen <lars@metafoo.de>, 
    Michael Hennerich <Michael.Hennerich@analog.com>, 
    Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad9834: Use private
 driver lock instead of mlock
In-Reply-To: <CAKG5xWhoYww_U9zNv=9EiAOya3R0C6Aafm3BUAfzdCXSYk4y+A@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703122234310.7649@hadrien>
References: <20170312115013.GA31878@sayli-HP-15-Notebook-PC> <20170312184841.GA8713@d830.WORKGROUP> <CAKG5xWhoYww_U9zNv=9EiAOya3R0C6Aafm3BUAfzdCXSYk4y+A@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 13 Mar 2017, sayli karnik wrote:

> On Mon, Mar 13, 2017 at 12:18 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Sun, Mar 12, 2017 at 05:21:25PM +0530, sayli karnik wrote:
> >> iio_dev->mlock should be used by the IIO core only for protecting
> >> device operating mode changes. ie. Changes between INDIO_DIRECT_MODE,
> >> INDIO_BUFFER_* modes.
> >> Replace mlock with a lock in the device's global data to protect hardware
> >> state changes.
> >
> > Hi Sayli,
> > Thanks for the patch!  Find one fix-up and one opportunity for
> > a follow on patch embedded below.
> > alisons
> >
> >>
> >> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> >> ---
> >>  drivers/staging/iio/frequency/ad9834.c | 10 ++++++----
> >>  1 file changed, 6 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
> >> index f92ff7f..4259474 100644
> >> --- a/drivers/staging/iio/frequency/ad9834.c
> >> +++ b/drivers/staging/iio/frequency/ad9834.c
> >> @@ -63,6 +63,7 @@
> >>   * @msg:             default spi message
> >>   * @freq_xfer:               tuning word spi transfer
> >>   * @freq_msg:                tuning word spi message
> >> + * @lock:            protect sensor state
> >>   * @data:            spi transmit buffer
> >>   * @freq_data:               tuning word spi transmit buffer
> >>   */
> >> @@ -77,6 +78,7 @@ struct ad9834_state {
> >>       struct spi_message              msg;
> >>       struct spi_transfer             freq_xfer[2];
> >>       struct spi_message              freq_msg;
> >> +     struct mutex                    lock;   /* protect sensor state */
> >>
> >>       /*
> >>        * DMA (thus cache coherency maintenance) requires the
> >> @@ -149,7 +151,7 @@ static ssize_t ad9834_write(struct device *dev,
> >>       if (ret)
> >>               goto error_ret;
> >
> > Not related to your patch...the above goto error_ret seems excessived.
> > When you look down at error_ret, it's not doing any clean up. So,
> > perhaps we can just return right here and get rid of the goto & label?
> >
> Right! This has to be on top of Greg's tree and not this patch I'm assuming?

You need to make a series if you want to send two patches on the same
file.

julia

> >>
> >> -     mutex_lock(&indio_dev->mlock);
> >> +     mutex_lock(&st->lock);
> >>       switch ((u32)this_attr->address) {
> >>       case AD9834_REG_FREQ0:
> >>       case AD9834_REG_FREQ1:
> >> @@ -207,7 +209,7 @@ static ssize_t ad9834_write(struct device *dev,
> >>       default:
> >>               ret = -ENODEV;
> >>       }
> >> -     mutex_unlock(&indio_dev->mlock);
> >> +     mutex_unlock(&st->lock);
> >>
> >>  error_ret:
> >>       return ret ? ret : len;
> >> @@ -224,7 +226,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
> >>       int ret = 0;
> >>       bool is_ad9833_7 = (st->devid == ID_AD9833) || (st->devid == ID_AD9837);
> >>
> >> -     mutex_lock(&indio_dev->mlock);
> >> +     mutex_lock(&st->lock);
> >>
> >>       switch ((u32)this_attr->address) {
> >>       case 0:
> >> @@ -267,7 +269,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
> >>               st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
> >>               ret = spi_sync(st->spi, &st->msg);
> >>       }
> >> -     mutex_unlock(&indio_dev->mlock);
> >> +     mutex_lock(&st->lock);
> >
> > Needs to be mutex_unlock()
> >
> >>
> >>       return ret ? ret : len;
> >>  }
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312115013.GA31878%40sayli-HP-15-Notebook-PC.
> >> For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKG5xWhoYww_U9zNv%3D9EiAOya3R0C6Aafm3BUAfzdCXSYk4y%2BA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

