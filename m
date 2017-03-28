X-GM-THRID: 6400014269629333504
X-Received: by 10.36.117.75 with SMTP id y72mr4566291itc.0.1490726255798;
        Tue, 28 Mar 2017 11:37:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.139.211 with SMTP id n202ls4891385iod.42.gmail; Tue, 28
 Mar 2017 11:37:35 -0700 (PDT)
X-Received: by 10.107.9.90 with SMTP id j87mr9613115ioi.86.1490726255348;
        Tue, 28 Mar 2017 11:37:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id g82si697982pfb.5.2017.03.28.11.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 11:37:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so23172962pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 11:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VJ6TRF2xz2RqRRjqRM1ftK2Ux0vcEktKZOl/pwrNU8o=;
        b=YLEXlLt5McJ6VtXJKaGQz4BX5HM2+G6TuPtGZoQmiVJEGkxdaJG1eokwYv9x9GLIfd
         ltfGjCbvn0C0TvE9bMmJSgYl4nLDQyYI3a9a/kk2wlnjxNj+J/a/s6zs9dN/pCGyiXJ+
         jtDHW0nbVBOboOU6Qb40uIL2m1c9/JWCdsPXkO1pWAXzsYXfsQiJ9Njn9SD4B0y2dqbE
         KDZoLJ/BFPcCPpEOZQLNZV1zvTbP8HWJKxXgc4L5XTenfPEtze99snWAMrgj0sl2x05Q
         8TzfLNHsLgTV8ANyptSCitQCTigNC74A34G7hOxA5rAq3M2NJPI2Rea46AqiA3VC2VCy
         5n9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VJ6TRF2xz2RqRRjqRM1ftK2Ux0vcEktKZOl/pwrNU8o=;
        b=K3jRRVicEfxVhcROrK8mLSqGwmajP3hej1/9I3+UEmhoC4+f2H/B4isV0qvfZDWDxV
         d76c6zOMFcDC7mkGMVP8eOyMghEFbZJJhkOOX3qXvhzX+241Jmi0ci7vMkdTLwPtpWgB
         V61c1psjHY0lMQu7XQW3sftTykfHKiFZ+4cpEqZKaXzDtDKMugLWBTHL8FK/wUATlx1u
         hYd8or5LjL0mlC8h3GgztAnH56wMdEE64f3XuTPvZPk0CL0nl7vY6wvhHbtRDybgR/Sj
         IguNOj8oNAJMmuUvTxzeGnAH0hG2my+YKJ78/83B1sf3D3lUuJDwVT74OpvOKdrZt7/p
         bitA==
X-Gm-Message-State: AFeK/H2ZAemi+cq4VEe0+/BsAipNtAgT3J3c2MQK29CKlzdM4OGGerzXFR7yckdMrdDb7Q==
X-Received: by 10.84.214.129 with SMTP id j1mr37536397pli.23.1490726255026;
        Tue, 28 Mar 2017 11:37:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id x21sm8828079pfa.71.2017.03.28.11.37.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 11:37:34 -0700 (PDT)
Date: Tue, 28 Mar 2017 11:37:33 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg KH <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: iio: ade7753: Replace
 mlock with driver private lock
Message-ID: <20170328183732.GA3808@d830.WORKGROUP>
References: <20170323183520.GA9871@singhal-Inspiron-5558>
 <20170323192116.GA6614@d830.WORKGROUP>
 <CALrZqyNP-8CeAGRr3uDuAhBweT1Sp3H4bWPy8y__7tvnzxR=zw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALrZqyNP-8CeAGRr3uDuAhBweT1Sp3H4bWPy8y__7tvnzxR=zw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 28, 2017 at 10:55:17PM +0530, SIMRAN SINGHAL wrote:
> On Fri, Mar 24, 2017 at 12:51 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Fri, Mar 24, 2017 at 12:05:20AM +0530, simran singhal wrote:
> >> The IIO subsystem is redefining iio_dev->mlock to be used by
> >> the IIO core only for protecting device operating mode changes.
> >> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> >>
> >> In this driver, mlock was being used to protect hardware state
> >> changes.  Replace it with a lock in the devices global data.
> >
> > Hi Simran,
> >
> > Please post all revision histories below the --- not just the most
> > recent.
> >
> Sorry, will not repeat this.
> 
> > Does this lock enforce the needed "atomicity" in the write_frequency
> > function? I read Jonathans comment on a previous revision about
> > "ensuring the spi bus frequency and sampling frequency of the device
> > are changed in an atomic fashion"
> >
> 
> By introducing another lock I am protecting read_modify_write and
> in this way also protecting the designated register that we are about
> to write.

I see it protecting this path from being re-entered.  My uncertainty
is about other paths to read/write.

> 
> > Is it possible for another spi bus transaction (read or write) to
> > occur between the read and write in write_frequency?
> >
> 
> Gargi has also come up with a solution.
> https://groups.google.com/forum/#!topic/outreachy-kernel/kzE9CrI5Bd8
> 
> Should I do like her as her's also seem correct or go ahead with this.

My suggestion would be to wait for feedback on Gargi's patch. 
(See the Outreachy log about creating similar solutions.)

We will not be able to close on this set of patches during the
Outreachy application window.  You can continue to push for closure
beyond the March 30th date as your time allows :)

Thanks,
alisons

> 
> > alisons
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >> ---
> >>
> >>  v4:
> >>    -Add mutex_init
> >>
> >>  drivers/staging/iio/meter/ade7753.c | 7 +++++--
> >>  1 file changed, 5 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> >> index b71fbd3..30aebaf 100644
> >> --- a/drivers/staging/iio/meter/ade7753.c
> >> +++ b/drivers/staging/iio/meter/ade7753.c
> >> @@ -80,11 +80,13 @@
> >>   * @us:         actual spi_device
> >>   * @tx:         transmit buffer
> >>   * @rx:         receive buffer
> >> + * @lock:       protect sensor state
> >>   * @buf_lock:       mutex to protect tx and rx
> >>   **/
> >>  struct ade7753_state {
> >>       struct spi_device   *us;
> >>       struct mutex        buf_lock;
> >> +     struct mutex        lock;  /* protect sensor state */
> >>       u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> >>       u8          rx[ADE7753_MAX_RX];
> >>  };
> >> @@ -484,7 +486,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
> >>       if (!val)
> >>               return -EINVAL;
> >>
> >> -     mutex_lock(&indio_dev->mlock);
> >> +     mutex_lock(&st->lock);
> >>
> >>       t = 27900 / val;
> >>       if (t > 0)
> >> @@ -505,7 +507,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
> >>       ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
> >>
> >>  out:
> >> -     mutex_unlock(&indio_dev->mlock);
> >> +     mutex_unlock(&st->lock);
> >>
> >>       return ret ? ret : len;
> >>  }
> >> @@ -581,6 +583,7 @@ static int ade7753_probe(struct spi_device *spi)
> >>       st = iio_priv(indio_dev);
> >>       st->us = spi;
> >>       mutex_init(&st->buf_lock);
> >> +     mutex_init(&st->lock);
> >>
> >>       indio_dev->name = spi->dev.driver->name;
> >>       indio_dev->dev.parent = &spi->dev;
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170323183520.GA9871%40singhal-Inspiron-5558.
> >> For more options, visit https://groups.google.com/d/optout.

