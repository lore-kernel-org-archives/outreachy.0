X-GM-THRID: 6399483181164134400
X-Received: by 10.99.251.83 with SMTP id w19mr17709706pgj.160.1490122447506;
        Tue, 21 Mar 2017 11:54:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.28.154 with SMTP id l26ls2932114ota.4.gmail; Tue, 21 Mar
 2017 11:54:06 -0700 (PDT)
X-Received: by 10.13.254.2 with SMTP id o2mr19147960ywf.50.1490122446350;
        Tue, 21 Mar 2017 11:54:06 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y90si3657364pfa.6.2017.03.21.11.54.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 11:54:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id p189so17823537pfp.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 11:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sh+goOXAR7IYCVIAF+JBVJigibbXNdBo1iqogZDv9wQ=;
        b=Yb/jrLO//SSdOqWGs2EO9Rdcv06QEPLq5LDi5R2wvBYU4Kr1mIyWWxlJS8UOV/YmE/
         fiVQcMbh9S0u8BCQ9XK2a3GWFGky0qcjxaoMsjzzNK1wNfhmfYP2ceICc0wfMs5vLeqV
         O7StZzHE95EhpHAJ/RFukp0xRGbx1vQQDMFq0Jy70hw1INj4/Hfs1E6LpzO/YfZNDqzv
         OrMBK3rn45ecWryXMta3aHQblixh0WtWzCkA5aplR0aIfG2MUU5oMpVNzWNpb4d1HPZF
         zx90FEd1OgrtGKUMwAwYLTwkH0KOx6p8dl2ShyMWKlPkqi23khceIORfDzjVuirKhIij
         R/FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sh+goOXAR7IYCVIAF+JBVJigibbXNdBo1iqogZDv9wQ=;
        b=Omm6NQ3w7Gl81cGw4P9wN3KJgyI4Yv8VYYdPUe41Xt0NXSS6CwhOMWfHmfV7cguVXQ
         7P2jt/zv8anyPvPrcOSRW22Jt0i4Dy4XH8M9PdRRs08j3CkgXD6kqeA3eMdY29HJ/Vt8
         fCUG1Hl3lq50hm/iKSoudMDWSqPd5lTUymsEQqfbqUpTGGl7jAeTNJDcTjOLuoAw7BMy
         4F1Mp83zkJA2zqg2N/ynHva89jwmkByfQbM+xHW3OnWdBE099A8zWV6jmRA3A1ZVV3Kp
         IuwcvR/MZ1NAaV2aLzbXJb4z8n/8LtgNf/ex9TPIEizJlGsjReOmiN0JfrYo9VlCZEIw
         gSXA==
X-Gm-Message-State: AFeK/H169aVBosxF1LuVu/jNtRbBTHbjRoM5H1BQAPhLUGgFFp3hwm+8XOAb87WKXMLqLg==
X-Received: by 10.84.173.4 with SMTP id o4mr50520332plb.106.1490122446017;
        Tue, 21 Mar 2017 11:54:06 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id a78sm41029335pfc.25.2017.03.21.11.54.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 11:54:05 -0700 (PDT)
Date: Tue, 21 Mar 2017 11:54:04 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: ade7754: Replace mlock with
 buf_lock and refactor code
Message-ID: <20170321185404.GB11324@d830.WORKGROUP>
References: <1489995561-6988-1-git-send-email-gs051095@gmail.com>
 <20170321172438.GC2793@d830.WORKGROUP>
 <CAOCi2DFEbuKpTFhcYiabJjkY3rAWF4LjnG1DWqLPejQLvK1heg@mail.gmail.com>
 <20170321181207.GA10699@d830.WORKGROUP>
 <CAOCi2DF0nhFpNsWKm5oJc7v_W59GzhaEOWGhTEPDWp3jbs8F+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOCi2DF0nhFpNsWKm5oJc7v_W59GzhaEOWGhTEPDWp3jbs8F+A@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 21, 2017 at 11:48:27PM +0530, Gargi Sharma wrote:
> On Tue, Mar 21, 2017 at 11:42 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Tue, Mar 21, 2017 at 11:18:23PM +0530, Gargi Sharma wrote:
> >> On Tue, Mar 21, 2017 at 10:54 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> >> > On Mon, Mar 20, 2017 at 01:09:21PM +0530, Gargi Sharma wrote:
> >> >> The IIO subsystem is redefining iio_dev->mlock to be used by
> >> >> the IIO core only for protecting device operating mode changes.
> >> >> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> >> >>
> >> >> In this driver, mlock was being used to protect hardware state
> >> >> changes. Replace it with buf_lock in the devices global data.
> >> >>
> >> >> As buf_lock already protects operations in ade7754_write_frequency,
> >> >> there isn't a need to acquire the lock inside ade7754_spi_write_reg_8
> >> >> when writing to the register.
> >> >
> >> > Hi Gargi,
> >> >
> >> > Looks like something went wrong in your patch below.  It doesn't do what
> >> > you say it'll do...Instead of removing the lock from _write_reg_8()
> >> > it inserts a bunch of code.  Anyway, it seems that w_rite_reg_8() is used
> >> > in multiple places, so removing that lock doesn't appear to be an
> >> > option.
> >> >
> >> > See below...
> >> >
> >> > alisons
> >> >
> >> >>
> >> >> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> >> >> ---
> >> >>  drivers/staging/iio/meter/ade7754.c | 13 +++++++++++--
> >> >>  1 file changed, 11 insertions(+), 2 deletions(-)
> >> >>
> >> >> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
> >> >> index 024463a..eb03469 100644
> >> >> --- a/drivers/staging/iio/meter/ade7754.c
> >> >> +++ b/drivers/staging/iio/meter/ade7754.c
> >> >> @@ -29,6 +29,15 @@ static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
> >> >>       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >> >>       struct ade7754_state *st = iio_priv(indio_dev);
> >> >>
> >> >> +     if (reg_address == ADE7754_WAVMODE) {
> >> >> +             st->tx[0] = ADE7754_WRITE_REG(reg_address);
> >> >> +             st->tx[1] = val;
> >> >> +
> >> >> +             ret = spi_write(st->us, st->tx, 2);
> >> >> +
> >> >> +             return ret;
> >> >> +     }
> >> >> +
> >> > What's this?
> >>
> >> When the function ade_spi_write_reg_8() is called inside
> >> ade7754_write_frequency(), we are writing to this( ADE7754_WAVMODE)
> >> register. When writing to this register we don't need to hold the
> >> buf_lock since ade7754_write_frequency() already takes care of that.
> >
> > Oh! I see it now. You created a special 'no lock needed' case
> > inside of --write_reg_8 for  writing frequency.   That works,
> > but it's...ummm...sneaky ;)  Let's see if there's another way.
> >
> > Look back at Lars suggestion on a similar patch.  Maybe that
> > will apply here.
> > http://marc.info/?l=linux-kernel&m=148940648615743&w=2
> >
> 
> I did look at the patch you suggested for inspiration :) What I could
> not understand was the part where Lars wrote about "doing a
> read-modify-write cycle in a protected section." I can write a
> separate function for --write_reg_8 that does not take the lock, but
> do not know how to do a "read-modify-write cycle in a protected
> section" :(
> 
> Gargi

Gargi - That's a great, specific question! Let's pop that back to Lars.

Lars - Can you explain further or perhaps point to a driver that does
something similar?

alisons

> > alisons
> >
> >
> >>
> >> >
> >> >>       mutex_lock(&st->buf_lock);
> >> >>       st->tx[0] = ADE7754_WRITE_REG(reg_address);
> >> >>       st->tx[1] = val;
> >> >> @@ -430,7 +439,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
> >> >>       if (!val)
> >> >>               return -EINVAL;
> >> >>
> >> >> -     mutex_lock(&indio_dev->mlock);
> >> >> +     mutex_lock(&st->buf_lock);
> >> >>
> >> >>       t = 26000 / val;
> >> >>       if (t > 0)
> >> >> @@ -451,7 +460,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
> >> >>       ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
> >> >>
> >> >>  out:
> >> >> -     mutex_unlock(&indio_dev->mlock);
> >> >> +     mutex_unlock(&st->buf_lock);
> >> >>
> >> >>       return ret ? ret : len;
> >> >>  }
> >>
> >> The buf_lock inside ade7754_write_frequency() takes into account that
> >> when using the function ade7754_spi_write_reg_8, lock is already held
> >> and locking is no longer required inside the ade7754_spi_write_reg_8()
> >> function.
> >>
> >> Let me know if this sounds okay, I can perhaps edit the commit log to
> >> make this clearer.
> >>
> >> Thanks,
> >> Gargi
> >>
> >> >> --
> >> >> 2.7.4
> >> >>
> >> >> --
> >> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489995561-6988-1-git-send-email-gs051095%40gmail.com.
> >> >> For more options, visit https://groups.google.com/d/optout.
> >> >
> >> > --
> >> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170321172438.GC2793%40d830.WORKGROUP.
> >> > For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170321181207.GA10699%40d830.WORKGROUP.
> > For more options, visit https://groups.google.com/d/optout.

