X-GM-THRID: 6399483181164134400
X-Received: by 10.107.140.131 with SMTP id o125mr9255152iod.60.1490120339442;
        Tue, 21 Mar 2017 11:18:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.81.210 with SMTP id s201ls51973ita.18.gmail; Tue, 21 Mar
 2017 11:18:58 -0700 (PDT)
X-Received: by 10.107.47.193 with SMTP id v62mr9135198iov.90.1490120338678;
        Tue, 21 Mar 2017 11:18:58 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id f73si1381649ita.1.2017.03.21.11.18.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 11:18:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id f84so8094220ioj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 11:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=mgoagaaFQ4Ls58h6QGD8Lg/yme0G1MO4Flz+r7atTQc=;
        b=vOVp+jGxRAxu7mURs+i4AIfX+ydp36qcTV3Sr3zdamh3/XxkEPOqi85UazGd+vnGHv
         Ixk4LgTXPmg2piqk3KAlAjjIZnPBaAfv625Pe9N/G0pNr4wTjZHc7OEBeUaM7OUcwQ2I
         uCisy03HWypfONWPkkNISAfMsQcZyuzc9vwTxk/ke3KZH5HgG89smqXdR5Ie9gXY7f70
         zuggijZg0cQlf2OhdzoS0ilxK9agVIScBLRsCwLJqnjq7NJ64+u72dLVktUDcBZuVcXK
         kqreRARevG7UPvkMBfEUAcwp0fPOzQ/DumKaxjEPmkUqqdHEkItf0AJy4BfskrPkHB25
         qjeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=mgoagaaFQ4Ls58h6QGD8Lg/yme0G1MO4Flz+r7atTQc=;
        b=iFbU4aN6++UsfEX8023vqtazDowJuuRXhSeML9WMmoH+61HFFZyzcXzfzZEJVNq6Nh
         zjGka0PEPGd8TmLc0bPyn+BIyLcVPEbe5HFolNi144BxVrWgpBRPqJPhY9zbAVlQESMZ
         AtVJXYxr27CTkrdYb42BzTcS20Avac+5T+tV22ZJirw69DfjBwwpmp2l5uwhJNBlTC6a
         25+tI0aVoo3nc5C79xscMN1nvytI392kJ2W/dzK12Na076TKaAxharcN2IIyIOPl11gm
         nE/hWMdYlwsd4hsHH/36oQihsrszvdcMqmVlhJbjtppB2LE2mS2+XFpbBwgt1hlwYj+t
         l0Rw==
X-Gm-Message-State: AFeK/H119rhTH7VAOJd8FaszKbp/S4qhai2rejWTGn4XQlluFB6vUYNIKczdAPo06HXhBVUSrki/cS172eqadg==
X-Received: by 10.107.137.226 with SMTP id t95mr33661979ioi.79.1490120338375;
 Tue, 21 Mar 2017 11:18:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 21 Mar 2017 11:18:27 -0700 (PDT)
In-Reply-To: <20170321181207.GA10699@d830.WORKGROUP>
References: <1489995561-6988-1-git-send-email-gs051095@gmail.com>
 <20170321172438.GC2793@d830.WORKGROUP> <CAOCi2DFEbuKpTFhcYiabJjkY3rAWF4LjnG1DWqLPejQLvK1heg@mail.gmail.com>
 <20170321181207.GA10699@d830.WORKGROUP>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 21 Mar 2017 23:48:27 +0530
Message-ID: <CAOCi2DF0nhFpNsWKm5oJc7v_W59GzhaEOWGhTEPDWp3jbs8F+A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ade7754: Replace mlock with
 buf_lock and refactor code
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 21, 2017 at 11:42 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Tue, Mar 21, 2017 at 11:18:23PM +0530, Gargi Sharma wrote:
>> On Tue, Mar 21, 2017 at 10:54 PM, Alison Schofield <amsfield22@gmail.com> wrote:
>> > On Mon, Mar 20, 2017 at 01:09:21PM +0530, Gargi Sharma wrote:
>> >> The IIO subsystem is redefining iio_dev->mlock to be used by
>> >> the IIO core only for protecting device operating mode changes.
>> >> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>> >>
>> >> In this driver, mlock was being used to protect hardware state
>> >> changes. Replace it with buf_lock in the devices global data.
>> >>
>> >> As buf_lock already protects operations in ade7754_write_frequency,
>> >> there isn't a need to acquire the lock inside ade7754_spi_write_reg_8
>> >> when writing to the register.
>> >
>> > Hi Gargi,
>> >
>> > Looks like something went wrong in your patch below.  It doesn't do what
>> > you say it'll do...Instead of removing the lock from _write_reg_8()
>> > it inserts a bunch of code.  Anyway, it seems that w_rite_reg_8() is used
>> > in multiple places, so removing that lock doesn't appear to be an
>> > option.
>> >
>> > See below...
>> >
>> > alisons
>> >
>> >>
>> >> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> >> ---
>> >>  drivers/staging/iio/meter/ade7754.c | 13 +++++++++++--
>> >>  1 file changed, 11 insertions(+), 2 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
>> >> index 024463a..eb03469 100644
>> >> --- a/drivers/staging/iio/meter/ade7754.c
>> >> +++ b/drivers/staging/iio/meter/ade7754.c
>> >> @@ -29,6 +29,15 @@ static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
>> >>       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> >>       struct ade7754_state *st = iio_priv(indio_dev);
>> >>
>> >> +     if (reg_address == ADE7754_WAVMODE) {
>> >> +             st->tx[0] = ADE7754_WRITE_REG(reg_address);
>> >> +             st->tx[1] = val;
>> >> +
>> >> +             ret = spi_write(st->us, st->tx, 2);
>> >> +
>> >> +             return ret;
>> >> +     }
>> >> +
>> > What's this?
>>
>> When the function ade_spi_write_reg_8() is called inside
>> ade7754_write_frequency(), we are writing to this( ADE7754_WAVMODE)
>> register. When writing to this register we don't need to hold the
>> buf_lock since ade7754_write_frequency() already takes care of that.
>
> Oh! I see it now. You created a special 'no lock needed' case
> inside of --write_reg_8 for  writing frequency.   That works,
> but it's...ummm...sneaky ;)  Let's see if there's another way.
>
> Look back at Lars suggestion on a similar patch.  Maybe that
> will apply here.
> http://marc.info/?l=linux-kernel&m=148940648615743&w=2
>

I did look at the patch you suggested for inspiration :) What I could
not understand was the part where Lars wrote about "doing a
read-modify-write cycle in a protected section." I can write a
separate function for --write_reg_8 that does not take the lock, but
do not know how to do a "read-modify-write cycle in a protected
section" :(

Gargi
> alisons
>
>
>>
>> >
>> >>       mutex_lock(&st->buf_lock);
>> >>       st->tx[0] = ADE7754_WRITE_REG(reg_address);
>> >>       st->tx[1] = val;
>> >> @@ -430,7 +439,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>> >>       if (!val)
>> >>               return -EINVAL;
>> >>
>> >> -     mutex_lock(&indio_dev->mlock);
>> >> +     mutex_lock(&st->buf_lock);
>> >>
>> >>       t = 26000 / val;
>> >>       if (t > 0)
>> >> @@ -451,7 +460,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>> >>       ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
>> >>
>> >>  out:
>> >> -     mutex_unlock(&indio_dev->mlock);
>> >> +     mutex_unlock(&st->buf_lock);
>> >>
>> >>       return ret ? ret : len;
>> >>  }
>>
>> The buf_lock inside ade7754_write_frequency() takes into account that
>> when using the function ade7754_spi_write_reg_8, lock is already held
>> and locking is no longer required inside the ade7754_spi_write_reg_8()
>> function.
>>
>> Let me know if this sounds okay, I can perhaps edit the commit log to
>> make this clearer.
>>
>> Thanks,
>> Gargi
>>
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489995561-6988-1-git-send-email-gs051095%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170321172438.GC2793%40d830.WORKGROUP.
>> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170321181207.GA10699%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

