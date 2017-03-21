X-GM-THRID: 6399483181164134400
X-Received: by 10.99.112.77 with SMTP id a13mr18293371pgn.168.1490125957000;
        Tue, 21 Mar 2017 12:52:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.36 with SMTP id 33ls39610ota.46.gmail; Tue, 21 Mar 2017
 12:52:36 -0700 (PDT)
X-Received: by 10.157.52.129 with SMTP id g1mr17105021otc.126.1490125956510;
        Tue, 21 Mar 2017 12:52:36 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id 125si1690975ite.0.2017.03.21.12.52.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 12:52:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id 190so2667446itm.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 12:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=wXRCIjK8Kn6Zg8CoDq2XjHtl8R2Qq4sRy/PahTQigCY=;
        b=I5R/bcEH7+b0JB0b7OJnzUAPjmBq7Ng83vbKTYdHpD6p9YYXA6bRv4NvzSeBSZWIc2
         nLwE36XK8BJ/6ZRq0gpioWQDY6kTKVRNXB21RW1BzEsm2bjktGLLdtXxD3ttuWNgyy9o
         vpIp+yAmp5Uh4M+3UfGz0fXihSP34Eg1/Pq85ce9HNkFrHzIuc95fCHyRAz8MbXgjqEQ
         I6KelCeCuO00LNfHCcly4LMO2ZT9okFYPgHPw2eSB+jMMjOA6wz9bsIJ3GxhPpMOmWWZ
         UVWzn8HfmLW1B26vzEawY8k9ZL/0WVFX1lHIw6AsTCEw30L63rBwR1mdA7eAcDrK5KUP
         CmjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wXRCIjK8Kn6Zg8CoDq2XjHtl8R2Qq4sRy/PahTQigCY=;
        b=KiRZlbkmvJn4RbwFCsfoW8GhPvGp+bLoy0c9yLgKLCAVnKT3W5nU363D4xMrfyW10w
         Wx4he93l2rEJsLpHlCsQ8aTItza9dzk3GrrovE0PRTD4xh6ZfNY0sR78h0JagvadE8or
         9Tl4n8VKpIF2xUK26fXJqs1Ky+Ueg1ZMD3529sArtvwjQ8sNM+nD11CIKirGKJdEeNG2
         XU3RrONIGs0YuzazQZkEm7Dk2KZXfOMcl8toKSr/+URIsd+c2PHpyAEqOwnDVF3KaMR6
         GalIhOebpnG6k7OeOG3dHVpeTkTXUPYpREAeJH/aSn8F+MuTpdpdtnVKDm/4hyoweBkY
         agqw==
X-Gm-Message-State: AFeK/H3YVYN10JhXp0JtM4/HOjY8AJ5gTVELo67fW0nzgC24AN5McPgepmq35ug9D0WWdbV+P23VZzcMnhpobg==
X-Received: by 10.36.129.133 with SMTP id q127mr4560684itd.89.1490125956197;
 Tue, 21 Mar 2017 12:52:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 21 Mar 2017 12:52:05 -0700 (PDT)
In-Reply-To: <087b03c7-9480-67b8-4c95-4248a1381500@kernel.org>
References: <1489995561-6988-1-git-send-email-gs051095@gmail.com> <087b03c7-9480-67b8-4c95-4248a1381500@kernel.org>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 22 Mar 2017 01:22:05 +0530
Message-ID: <CAOCi2DGWWBNNqtE8+C1tAuXLct_5EJcjpx64WEmn1d-3qaw0zQ@mail.gmail.com>
Subject: Re: [PATCH] staging: ade7754: Replace mlock with buf_lock and
 refactor code
To: Jonathan Cameron <jic23@kernel.org>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 22, 2017 at 1:15 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 20/03/17 07:39, Gargi Sharma wrote:
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
>>
>> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> Question inline.
>> ---
>>  drivers/staging/iio/meter/ade7754.c | 13 +++++++++++--
>>  1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/m=
eter/ade7754.c
>> index 024463a..eb03469 100644
>> --- a/drivers/staging/iio/meter/ade7754.c
>> +++ b/drivers/staging/iio/meter/ade7754.c
>> @@ -29,6 +29,15 @@ static int ade7754_spi_write_reg_8(struct device *dev=
, u8 reg_address, u8 val)
>>       struct iio_dev *indio_dev =3D dev_to_iio_dev(dev);
>>       struct ade7754_state *st =3D iio_priv(indio_dev);
>>
>> +     if (reg_address =3D=3D ADE7754_WAVMODE) {
>> +             st->tx[0] =3D ADE7754_WRITE_REG(reg_address);
>> +             st->tx[1] =3D val;
>> +
>> +             ret =3D spi_write(st->us, st->tx, 2);
>> +
>> +             return ret;
>> +     }

> This block doesn't fit with the description.  What's going on here?

When the function ade_spi_write_reg_8() is called inside
ade7754_write_frequency(), we are writing to this( ADE7754_WAVMODE)
register. When writing to this register we don=E2=80=99t need to hold the
buf_lock since ade7754_write_frequency() already takes care of that.
This block of code does not use the buf_lock since that is taken care
of by ade7754_write_frequency().

Gargi
>> +
>>       mutex_lock(&st->buf_lock);
>>       st->tx[0] =3D ADE7754_WRITE_REG(reg_address);
>>       st->tx[1] =3D val;
>> @@ -430,7 +439,7 @@ static ssize_t ade7754_write_frequency(struct device=
 *dev,
>>       if (!val)
>>               return -EINVAL;
>>
>> -     mutex_lock(&indio_dev->mlock);
>> +     mutex_lock(&st->buf_lock);
>>
>>       t =3D 26000 / val;
>>       if (t > 0)
>> @@ -451,7 +460,7 @@ static ssize_t ade7754_write_frequency(struct device=
 *dev,
>>       ret =3D ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
>>
>>  out:
>> -     mutex_unlock(&indio_dev->mlock);
>> +     mutex_unlock(&st->buf_lock);
>>
>>       return ret ? ret : len;
>>  }
>>
>

