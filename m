X-GM-THRID: 6399483181164134400
X-Received: by 10.99.149.72 with SMTP id t8mr17258392pgn.62.1490127180735;
        Tue, 21 Mar 2017 13:13:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls94673ota.23.gmail; Tue, 21 Mar 2017
 13:13:00 -0700 (PDT)
X-Received: by 10.157.56.66 with SMTP id r2mr16757073otd.110.1490127180369;
        Tue, 21 Mar 2017 13:13:00 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si3724722pfx.8.2017.03.21.13.13.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 13:13:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n11so12234198pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 13:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ulRD8nniBuRYVtQ8bCUZUeAgZOzHvbzm9o6HqxDk5uY=;
        b=P7tgHI3k3k3RZyLAmQFsTatXZJ/12U5yQ7CRQf/VMDsMH9Rpt7EZg38sJ6ZunyU894
         /8YCFKGv9/C2NXs77FpWjXtoLrWx3oGp8ip/KHv/85+3Luj/PMj405QQnXiVfFD4i3pj
         UvdMMNtcS8QAJIklRqV2xqckMQpLaBsyEAc5XiOr4Z3SjnSYSfvrxuWPOKP5I27aadmv
         Wgy6xOfNtvizzH83PbkbksKCJ3LXCDpCL3hsP1OiVQcPOXQw3hl+2RONJAhIhaqBgVb3
         wMIrAkVizXkQ49DoGKLVcQETn/IxDEDH3bJ9nWlHR/zRTYMoVPKJMEH9bAIlS1ygAZzG
         wizg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ulRD8nniBuRYVtQ8bCUZUeAgZOzHvbzm9o6HqxDk5uY=;
        b=XHH5MtIYNeO4TjpftDs6HbPBUGFvCRFyOSJERuKiWIjKnUcufRq98Cr9cUFy3OiV6B
         1gKKmWo/w/C82zoMjiSl8xwlbJnXBF6zrmYkyGlKgH5JG9fACoiXKMClJRPUcPg/s3OI
         W/eUsQhoBCnI21p5PT9vhjAzpF/lM6IH0NU/YSH/d95Tg+iH25y6XF7BKmPNRzzP6Yzi
         2ah0FfUOR/avkCDEIRn5hZAdiyTCQ14eCHCpfMF7kVvsoLx0icc/BZ2+qcDQrNxexY9w
         HLu9B+TLAspUiL5dCneUUmtj9TVcppyYClnVqCxf+dsd7j/S4G/nW4ulGHigpbi757NM
         fAlA==
X-Gm-Message-State: AFeK/H2fgUGewqSshmi9e0cVLrWrj5vHIEXt/U/J2F2PJTovz6zJra/zZ/DHNWGVWGiLGA==
X-Received: by 10.98.222.2 with SMTP id h2mr42592418pfg.113.1490127180079;
        Tue, 21 Mar 2017 13:13:00 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id e70sm41206010pfl.105.2017.03.21.13.12.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 13:12:59 -0700 (PDT)
Date: Tue, 21 Mar 2017 13:12:58 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: ade7754: Replace mlock with
 buf_lock and refactor code
Message-ID: <20170321201257.GA12475@d830.WORKGROUP>
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

Hi Gargi,
The mlock wasn't really protecting the read followed by write.
You'll introduce a new func that does that.  It'll use the
existing transaction lock so that an spi_write can't sneak
in between your spi_read and write.  

This is going to be the same change in all the meter drivers.
3 are exactly the same,  a 4th is very close.  

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

