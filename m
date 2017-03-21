X-GM-THRID: 6399483181164134400
X-Received: by 10.129.51.208 with SMTP id z199mr17651484ywz.92.1490118534229;
        Tue, 21 Mar 2017 10:48:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls597984otg.40.gmail; Tue, 21 Mar
 2017 10:48:53 -0700 (PDT)
X-Received: by 10.157.13.229 with SMTP id 92mr16565563ots.69.1490118533870;
        Tue, 21 Mar 2017 10:48:53 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id z191si1367628itc.0.2017.03.21.10.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 10:48:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id 190so2337286itm.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 10:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=o4ToMKlie3dKaQqZWwjN5f5MLRnkaObUq+E5o8rAlsU=;
        b=StKY9MdLAOZFBoYwRIj823for7O098yeSqUYg+l3eWe6cEC/xIXKCxGIm2q8i2/gQK
         KsB64XOWu5rgO66KLbrMMYrFYh3Nuoqj6k1DpBbqgfq4N/zSqLjLFa158MjCDb9+gUQq
         rdsLw2LNw1KiuN2wcXYRzwIgnQit9SPdjfmZyD/RbU7/W2R7WEtjnDzxv97nHkit/j5r
         YsEX/whlzn24EvnFs4BZMI/1lLIYbA+ZbKfg8x8aSoY6iqVwioylDpeRV8cn7bEcELfX
         y/Opx70o6sWL+qIf7ZU4WChJZxqZGk6mr7qZgS3sMy60gktf82ejJrv4F84h2qb3Z828
         S95Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=o4ToMKlie3dKaQqZWwjN5f5MLRnkaObUq+E5o8rAlsU=;
        b=s8+XpBtmkfuL2ZlH/aMfwhwAoJOWTXt6I2R1ILCRbRzmWMgS1RKD7+WPKoH5h3cocT
         lL3eb6f2hYOvhsdO04I7gF6Hh+CMlLK/hP9RDrUX0w55+lTn0VHpfsATclgp+8ppl9uS
         Pf+fJAwaIdRAP3kysfKxRtZYLmtPbe7PuAGuW6gEL1VTcAULAbDeDkZqEU+chs3+sHjK
         UQng3W9N22gXr8BTBEQbtM1niCejs0XCnrfzvg2OY4b9jDs0/EBVDazc/3byjIK2n6Ze
         bciiH/9oO7slRnLF7cncRNWWpxt+UETmxm6HjEdoVwiCrsNLDGpPXha0A0AhUoMfF9s3
         HSAw==
X-Gm-Message-State: AFeK/H0ryK5r40ebN4oYD4qRyKip3zdkcJawUqrcurx3rNgYt7Y2bEMdjWjPKmDHWs3/dyPdeK2/Yk4kt/28gQ==
X-Received: by 10.36.129.133 with SMTP id q127mr3998000itd.89.1490118533575;
 Tue, 21 Mar 2017 10:48:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 21 Mar 2017 10:48:23 -0700 (PDT)
In-Reply-To: <20170321172438.GC2793@d830.WORKGROUP>
References: <1489995561-6988-1-git-send-email-gs051095@gmail.com> <20170321172438.GC2793@d830.WORKGROUP>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 21 Mar 2017 23:18:23 +0530
Message-ID: <CAOCi2DFEbuKpTFhcYiabJjkY3rAWF4LjnG1DWqLPejQLvK1heg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ade7754: Replace mlock with
 buf_lock and refactor code
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 21, 2017 at 10:54 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Mon, Mar 20, 2017 at 01:09:21PM +0530, Gargi Sharma wrote:
>> The IIO subsystem is redefining iio_dev->mlock to be used by
>> the IIO core only for protecting device operating mode changes.
>> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>>
>> In this driver, mlock was being used to protect hardware state
>> changes. Replace it with buf_lock in the devices global data.
>>
>> As buf_lock already protects operations in ade7754_write_frequency,
>> there isn't a need to acquire the lock inside ade7754_spi_write_reg_8
>> when writing to the register.
>
> Hi Gargi,
>
> Looks like something went wrong in your patch below.  It doesn't do what
> you say it'll do...Instead of removing the lock from _write_reg_8()
> it inserts a bunch of code.  Anyway, it seems that w_rite_reg_8() is used
> in multiple places, so removing that lock doesn't appear to be an
> option.
>
> See below...
>
> alisons
>
>>
>> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> ---
>>  drivers/staging/iio/meter/ade7754.c | 13 +++++++++++--
>>  1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
>> index 024463a..eb03469 100644
>> --- a/drivers/staging/iio/meter/ade7754.c
>> +++ b/drivers/staging/iio/meter/ade7754.c
>> @@ -29,6 +29,15 @@ static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
>>       struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>>       struct ade7754_state *st = iio_priv(indio_dev);
>>
>> +     if (reg_address == ADE7754_WAVMODE) {
>> +             st->tx[0] = ADE7754_WRITE_REG(reg_address);
>> +             st->tx[1] = val;
>> +
>> +             ret = spi_write(st->us, st->tx, 2);
>> +
>> +             return ret;
>> +     }
>> +
> What's this?

When the function ade_spi_write_reg_8() is called inside
ade7754_write_frequency(), we are writing to this( ADE7754_WAVMODE)
register. When writing to this register we don't need to hold the
buf_lock since ade7754_write_frequency() already takes care of that.

>
>>       mutex_lock(&st->buf_lock);
>>       st->tx[0] = ADE7754_WRITE_REG(reg_address);
>>       st->tx[1] = val;
>> @@ -430,7 +439,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>>       if (!val)
>>               return -EINVAL;
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->buf_lock);
>>
>>       t = 26000 / val;
>>       if (t > 0)
>> @@ -451,7 +460,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
>>       ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
>>
>>  out:
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->buf_lock);
>>
>>       return ret ? ret : len;
>>  }

The buf_lock inside ade7754_write_frequency() takes into account that
when using the function ade7754_spi_write_reg_8, lock is already held
and locking is no longer required inside the ade7754_spi_write_reg_8()
function.

Let me know if this sounds okay, I can perhaps edit the commit log to
make this clearer.

Thanks,
Gargi

>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489995561-6988-1-git-send-email-gs051095%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170321172438.GC2793%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

