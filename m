X-GM-THRID: 6396604644937695232
X-Received: by 10.157.22.184 with SMTP id c53mr14852303ote.87.1489383001879;
        Sun, 12 Mar 2017 22:30:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.6 with SMTP id q6ls1977134otc.10.gmail; Sun, 12 Mar
 2017 22:30:01 -0700 (PDT)
X-Received: by 10.13.245.67 with SMTP id e64mr15233077ywf.127.1489383001504;
        Sun, 12 Mar 2017 22:30:01 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si3026379pfx.8.2017.03.12.22.30.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 22:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so17875169pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 22:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vqpzEKxSU+eGx+YPCzw5VystqMg2sUf89Kb3BKoD0oE=;
        b=JaoqQPp/fWH0/uN83h+W+qbf08jQ6raFO//OVaZNJFBAtn2SzJ4lpgV67U/+ZoPhtK
         9ECVKboPDvZP+Qm8+YeOskABs3QchSLQ9qXEMewVI8l2YSQ7PDNBbvC4rZwnu/eNjTkp
         J9XyRV8f18UrQaDnFvhlJsBoxmhDdQiJA7/rWhIB4R1y/kQrNcMQekvMnnWOUsrwEO+v
         fSyLPh3iBoMTUU62sILkiM6uKKfIZq1AqkDffi26tzrdY9a7ujPjI2v+m7EVk+aO2wwD
         c7phK3mm+BWS47EwINm6Js5eoNRR+LYLJzSA7zQLJCEWTNbjS1KvoRtFgGDLhFGplcln
         LVgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vqpzEKxSU+eGx+YPCzw5VystqMg2sUf89Kb3BKoD0oE=;
        b=CydP9DmchE80mAqAI+uUEQeEYRZO7rr1eylnz1HmB+MUom3qroU2MX/r7WmYLiKeEj
         PURRiAxUEosx+q9cDD6hMKSGRQWNbvSTe96fo2w6GExcrJVGaCMkxjf2K+GXee7Vi3iq
         GfT+nBiwFF5yYA6mKvskYzFZi+QokYgQ5S72q38a5s0AZbJ6P87vFtuZ3uj2WmQE9sGo
         C2pRzvXEabQ3FYsZrPWdxSVNKfXwoilnoyHXq8jlW6eWBPfUBZdiO06SJK6cta214Qxz
         9eAIGfxZK3wMYgGcFroz0lcdLu/jNq2xFMmchg3oseDEt8w9v4QwkxhsVKdSDpXnyCd7
         gvlA==
X-Gm-Message-State: AMke39ktnb18Z9iMOvXyV1Eruxa2FBK5tet77QjF9DPon2ylGkMDhZSeVyMZxxisjkFvag==
X-Received: by 10.84.131.33 with SMTP id 30mr44703313pld.45.1489383001217;
        Sun, 12 Mar 2017 22:30:01 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id 74sm31027933pge.14.2017.03.12.22.29.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 22:30:00 -0700 (PDT)
Date: Sun, 12 Mar 2017 22:29:58 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Pete Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ade7753: replace mlock
 with driver private lock
Message-ID: <20170313052956.GA18681@d830.WORKGROUP>
References: <20170312133250.GA7772@singhal-Inspiron-5558>
 <20170312183304.GB7728@d830.WORKGROUP>
 <CALrZqyOkKMb1bM0V=L7G7v+64N4FHuYUSoW1+8rvcZQU-816sg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALrZqyOkKMb1bM0V=L7G7v+64N4FHuYUSoW1+8rvcZQU-816sg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 13, 2017 at 09:28:34AM +0530, SIMRAN SINGHAL wrote:
> On Mon, Mar 13, 2017 at 12:03 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Sun, Mar 12, 2017 at 07:02:50PM +0530, simran singhal wrote:
> >> The IIO subsystem is redefining iio_dev->mlock to be used by
> >> the IIO core only for protecting device operating mode changes.
> >> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> >>
> >> In this driver, mlock was being used to protect hardware state
> >> changes.  Replace it with a lock in the devices global data.
> >>
> >> Fix some coding style issues related to white space also.
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >
> > Hi Simran, This looks good to me.  Let's see what the
> > reviewers say.  I think the white space stuff is ok,
> > since it was right where you were editing.
> > alisons
> >
> Alison, so sending this patch here on outreachy mailing list is fine.
> Still confuse :P

You are OK.  You sent it to everyone suggested in the Task Description.

This patch was sent before I posted the Task Description.  I'm assuming
that since then you've found the posted Task:
https://kernelnewbies.org/IIO_tasks 
Find Coding Task 2 --> "PATCHES need to be sent to all of:"

> 
> >> ---
> >>  drivers/staging/iio/meter/ade7753.c | 14 ++++++++------
> >>  1 file changed, 8 insertions(+), 6 deletions(-)
> >>
> >> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> >> index dfd8b71..ca99d82 100644
> >> --- a/drivers/staging/iio/meter/ade7753.c
> >> +++ b/drivers/staging/iio/meter/ade7753.c
> >> @@ -81,12 +81,14 @@
> >>   * @tx:         transmit buffer
> >>   * @rx:         receive buffer
> >>   * @buf_lock:       mutex to protect tx and rx
> >> + * @lock:    protect sensor state
> >>   **/
> >>  struct ade7753_state {
> >> -         struct spi_device   *us;
> >> -                 struct mutex        buf_lock;
> >> -                         u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> >> -                                 u8          rx[ADE7753_MAX_RX];
> >> +     struct spi_device   *us;
> >> +     struct mutex        buf_lock;
> >> +     struct mutex        lock;       /* protect sensor state */
> >> +     u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> >> +     u8          rx[ADE7753_MAX_RX];
> >>  };
> >>
> >>  static int ade7753_spi_write_reg_8(struct device *dev,
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
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312133250.GA7772%40singhal-Inspiron-5558.
> >> For more options, visit https://groups.google.com/d/optout.

