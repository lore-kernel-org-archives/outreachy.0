X-GM-THRID: 6396604644937695232
X-Received: by 10.99.151.10 with SMTP id n10mr7617697pge.9.1489743208323;
        Fri, 17 Mar 2017 02:33:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls2170758iod.49.gmail; Fri, 17 Mar
 2017 02:33:27 -0700 (PDT)
X-Received: by 10.107.46.135 with SMTP id u7mr3930763iou.37.1489743207527;
        Fri, 17 Mar 2017 02:33:27 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id n127si122105ita.3.2017.03.17.02.33.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 02:33:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id y18so2941642itc.2
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 02:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=NrJrsE+ziP56UL9IS/kUVkOOSpLrpRkS2WUZbZfTWQs=;
        b=sp3Z72MYe7PF7P2NFlTcom9CuCr2gQqAimzyPfGmMtGak5NM71njiprDYq6uJdiRao
         xwrfOeK+8viMQ7RFq5CFqg3pCtjUwqbDs8rzOgcZem7NGr+Yah/ROLhzCbXAYY8pMczc
         RT/HOP75/PH9mIz4PoTjO0Z4Cp7GvTqXvcDfJN2FuysoBOwwxKsEEZ4RgSfSgvERiEbT
         gskI8D6bveDAneMk+1kCxS/yZL+LDTPm4WZ7+cpLRoW4YoZH6gOUQCQhfXskaPTxMnmq
         TwLpK3GATrtEZIz8Iyoc6iLnYEb5bFdZg+asWNIPOqEAC1vnwTlLlaIXY+NK/lqfhVph
         dEKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=NrJrsE+ziP56UL9IS/kUVkOOSpLrpRkS2WUZbZfTWQs=;
        b=fOPMgf7RI7kDpGy41yKipePaT0adooeKY1PvPEGvnDFa3hvzHx8s9pmJLFLP3wqZzI
         gtv7d3OoXd3pomfMhxcqgYwrBcx+1zfx4ebUKaPLehehHz9Kwx/iopux9M09K5TVryA1
         +OF9brDFSbfu6c041Rca2iRT4UrYgPpvDTb4CKTFPOVjNNCn67tnaU4dK5An7AESZGoO
         oE58/og3/b19MXYMHLGbRPja71qCcrI6u78y4mhoaYqVlgnmv310QJXP0OcxANo0UIae
         Vgk64iBNpJruT8AlcP5AQ/SGqJmGfBBdfomY7HvQqIuEMlMH3sX/xUmu1G6/DIlueji6
         4R+g==
X-Gm-Message-State: AFeK/H1ywoylTHnbl8U9Br911DgqtGRJgR7Pi179jletJ2HI61EIcFw4oAfmOhSnqMdKc0YRTLLRJvjKaWlEog==
X-Received: by 10.36.129.133 with SMTP id q127mr1861426itd.89.1489743207245;
 Fri, 17 Mar 2017 02:33:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Fri, 17 Mar 2017 02:32:56 -0700 (PDT)
In-Reply-To: <6e55c61d-7587-4191-1fc5-de43e26986d7@metafoo.de>
References: <20170312133250.GA7772@singhal-Inspiron-5558> <6e55c61d-7587-4191-1fc5-de43e26986d7@metafoo.de>
From: Gargi Sharma <gs051095@gmail.com>
Date: Fri, 17 Mar 2017 15:02:56 +0530
Message-ID: <CAOCi2DH8xVeD8_sZtxg9jqaF_29D9zEQSBR8-pYNRAbnmESNyQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: iio: ade7753: replace
 mlock with driver private lock
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: simran singhal <singhalsimran0@gmail.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Pete Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 5:30 PM, Lars-Peter Clausen <lars@metafoo.de> wrote:
>
> On 03/12/2017 02:32 PM, simran singhal wrote:
> > The IIO subsystem is redefining iio_dev->mlock to be used by
> > the IIO core only for protecting device operating mode changes.
> > ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> >
> > In this driver, mlock was being used to protect hardware state
> > changes.  Replace it with a lock in the devices global data.
> >
> > Fix some coding style issues related to white space also.
> >
> > Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> > ---
> >  drivers/staging/iio/meter/ade7753.c | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> > index dfd8b71..ca99d82 100644
> > --- a/drivers/staging/iio/meter/ade7753.c
> > +++ b/drivers/staging/iio/meter/ade7753.c
> > @@ -81,12 +81,14 @@
> >   * @tx:         transmit buffer
> >   * @rx:         receive buffer
> >   * @buf_lock:       mutex to protect tx and rx
> > + * @lock:    protect sensor state
>
> It might make sense to reuse the existing lock which currently protects the
> read/write functions. You can do this by introducing a variant of
> ade7753_spi_{read,write}_reg_16() that does not take a lock and use these to
> implement the read-modify-write cycle in a protected section.

There are other read/write functions for example,
ade7753_spi_{read/write}_reg_8 that use the mutex as well. Should a
variant of these functions be introduced as well? Also, how does one
go about implementing RMW inside a protected section.


>
> Looking through the driver there seem to be other places as well that do
> read-modify-write that should be protected by a lock, but currently are not.
> This might be a good task.

Am I right in understanding that we want to introduce mutex lock for
writes in other drivers as well?

Thanks,
Gargi
>
> >   **/
> >  struct ade7753_state {
> > -         struct spi_device   *us;
> > -                 struct mutex        buf_lock;
> > -                         u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> > -                                 u8          rx[ADE7753_MAX_RX];
> > +     struct spi_device   *us;
> > +     struct mutex        buf_lock;
> > +     struct mutex        lock;       /* protect sensor state */
> > +     u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> > +     u8          rx[ADE7753_MAX_RX];
> >  };
> >
> >  static int ade7753_spi_write_reg_8(struct device *dev,
> > @@ -484,7 +486,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
> >       if (!val)
> >               return -EINVAL;
> >
> > -     mutex_lock(&indio_dev->mlock);
> > +     mutex_lock(&st->lock);
> >
> >       t = 27900 / val;
> >       if (t > 0)
> > @@ -505,7 +507,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
> >       ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
> >
> >  out:
> > -     mutex_unlock(&indio_dev->mlock);
> > +     mutex_unlock(&st->lock);
> >
> >       return ret ? ret : len;
> >  }
> >
>
> --

