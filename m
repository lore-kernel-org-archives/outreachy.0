X-GM-THRID: 6338775155629621248
X-Received: by 10.159.37.6 with SMTP id 6mr7124326uaz.15.1475997158285;
        Sun, 09 Oct 2016 00:12:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.147 with SMTP id u19ls6551026ota.0.gmail; Sun, 09 Oct
 2016 00:12:37 -0700 (PDT)
X-Received: by 10.157.5.36 with SMTP id 33mr5266523otw.120.1475997157698;
        Sun, 09 Oct 2016 00:12:37 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x241.google.com (mail-yb0-x241.google.com. [2607:f8b0:4002:c09::241])
        by gmr-mx.google.com with ESMTPS id v21si1008378ywa.7.2016.10.09.00.12.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 00:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::241 as permitted sender) client-ip=2607:f8b0:4002:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x241.google.com with SMTP id e2so1922574ybi.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 00:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=nrIBoQ3gKxv2az3nUfBO3cWTVS8tv/IKOUzW9unrFDI=;
        b=XDUqFMLmjykLM0ocCVwXPYqC4QE8JczdseRCXujZ916BuMh+hmSCVx/GSCZQ3VGBWN
         dLrxf85kFTf9kYPJqGpAk4uk0/ZCzhC9v2irCa3b4sxKupekwXljBDj3yqKRCT2zXBLb
         51GHqEZO9sCNMGgCW2jcrGxm/kGKx2zwySrSvZm22NE+fwAlX3dQXE4+f1becOhkDMQ7
         FQmVMIgd6Ndw62Wy3MWnXdRzuKod5ngShBgCJ4O6ukO8kwExbvmpFOYaTrj3/K4r7AbI
         hZ8oEbrPtl7hPKqPnXqZ7H7zwB3hkqoG/Eu5r3vOd1x1gFdvVfnbKbGZjInVdtdnnJA4
         BccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=nrIBoQ3gKxv2az3nUfBO3cWTVS8tv/IKOUzW9unrFDI=;
        b=MxtkfVYdQhOBRlJGnRWk8dRrTsRpZfhJooJdZrXxppzdgPkD/Rd2hBRd+OeoCmesMy
         Q+pU+LEbv39DnE2tWYO1PRD0POKKT7VhNpHwGvJoZlVaFjOYajsfEcdHQUPbC9fuI+pX
         FrSHH7licNXsr5siMODN0GtAclNpau9JEkMsYSfwYUUjTtzkeKoZPfFEZhypr9En4Qow
         FgeCvOBDJ/P53lm0t+lnzST8oA+u9u84tkv21D2YjQXCCkNTHrLSTICJaXkizz1UhTL8
         RBS9zgMK0Qbngc0pt2X2wwuKBvrW/ms4nZgmToQZ9tg5o3mdhDJyQziWpsMB6LF7fvfu
         zFOw==
X-Gm-Message-State: AA6/9RnmSgKBB49lN7u9b47OWxJMz494HXyh9TJ/CaAhfroZQrZ6EXgExlAIcDTYeyckiy6vQmazF3gE5B2h1g==
X-Received: by 10.37.173.159 with SMTP id z31mr19960265ybi.178.1475997157474;
 Sun, 09 Oct 2016 00:12:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Sun, 9 Oct 2016 00:11:57 -0700 (PDT)
In-Reply-To: <20161008133958.GC2116@kroah.com>
References: <20161007172431.GA4342@sayli-HP-15-Notebook-PC> <20161008133958.GC2116@kroah.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sun, 9 Oct 2016 12:41:57 +0530
Message-ID: <CAKG5xWhWjFAtLd1rL_iOAQ1igX7jryQR6EfyhHb0s+wM8h1BWQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: bmi160_core: Fix sparse warning
 due to incorrect type in assignment
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Barry Song <21cnbao@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 8, 2016 at 7:09 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Oct 07, 2016 at 10:54:31PM +0530, sayli karnik wrote:
>> There is a type mismatch between the buffer which is of type s16 and the
>> samples stored, which are declared as __le16.
>>
>> Fix the following sparse warning:
>> drivers/iio/imu/bmi160/bmi160_core.c:411:26: warning: incorrect type
>> in assignment (different base types)
>>
>> drivers/iio/imu/bmi160/bmi160_core.c:411:26: expected signed short
>> [signed] [short] [explicitly-signed] <noident>
>> drivers/iio/imu/bmi160/bmi160_core.c:411:26: got restricted __le16
>> [addressable] [usertype] sample
>>
>> This is a cosmetic-type patch since it does not alter code behaviour. The le16
>> is going into a 16bit buf element, and is labelled as IIO_LE in the channel
>> buffer definition.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
>> index e0251b8..5355507 100644
>> --- a/drivers/iio/imu/bmi160/bmi160_core.c
>> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
>> @@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>>       struct iio_poll_func *pf = p;
>>       struct iio_dev *indio_dev = pf->indio_dev;
>>       struct bmi160_data *data = iio_priv(indio_dev);
>> -     s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
>> +     __le16 buf[16];
>> +     /* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
>
> The comment doesn't make sense on the line below now does it?
>
Should I remove the comment entirely?

thanks,
sayli

