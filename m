X-GM-THRID: 6336577206052978688
X-Received: by 10.46.32.230 with SMTP id g99mr98592lji.9.1475559412510;
        Mon, 03 Oct 2016 22:36:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.196 with SMTP id u187ls951792lja.30.gmail; Mon, 03 Oct
 2016 22:36:51 -0700 (PDT)
X-Received: by 10.25.198.67 with SMTP id w64mr95031lff.26.1475559411574;
        Mon, 03 Oct 2016 22:36:51 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id w16si1161236wmd.0.2016.10.03.22.36.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 22:36:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id p80so1923009lfp.1
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 22:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=TmoPhHJNx3keXLOex+tvJlsVho3nYdj5q7MT9TiZ+e8=;
        b=oeVf/qrP3fRtphJfLEuXB2s6o0gJCKDPtL/GG5L6JS/6IdBxgM75ipcQDee32dNuKz
         JEfiN3QeTZQIPKeBAxGXREtQXu9HL6G6rqthRQC2uvPIW6GEik9VYCL61EC+d6x8x4vR
         +gkEHWuz1zS/lzOx3WtGGXix7bNGmARMGqxbGHAbGn/1yYWzzmjGTEP8mygpGZlSYSlK
         heH8bROk8Ak06Q7+zaSgeimE+KXxGcZh41ksk92UcaK/jhLj+2MZRAYFKvTxqn0znXc4
         z/xM/gT3qEZIGY9l/DeXX7D8YEogSyvaYhIAPxCwBs9SuRTmenbRdKnK5vnHSFuFSLSb
         r4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=TmoPhHJNx3keXLOex+tvJlsVho3nYdj5q7MT9TiZ+e8=;
        b=fTtiQn/Ko7gSm9kP3YJ/pxpdK+ZS11slA4eTXeujhMpZOjxw8FOuaoFr9u/iighvnY
         KeeZmfakTo412/sUTsyEoOsmuwqblTDzw9L8joPt6LU3mRPiDRXoUDNXToghyYlwWhfD
         Y1NRErZAPQNpXhoVKphEAynCzU/I+NszKs7O3Doib2UKGIvnq7DoklpN0p5SE7H6b9YP
         f2RoRQ+MNIsSnHcf5rJCoXwhcOfoz7WDyN94QCLtYHsOM3AvjxODNF48fDwaWTlhbVCd
         UghINESRVDzayoFTYWNRr9jBsoasNk0CfpyoYRun9Y6O7Pzu+2W5vFIlpwn5OUu2/Frx
         acdw==
X-Gm-Message-State: AA6/9RmnAWJRLvVYg76BPILvA8Tg0I0hNZmajmFmXC8abiVUUg7arWCiubYJjKBWZ8OyTwXarDYeVRrrs41UtA==
X-Received: by 10.25.66.11 with SMTP id p11mr527671lfa.154.1475559410978; Mon,
 03 Oct 2016 22:36:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Mon, 3 Oct 2016 22:36:50 -0700 (PDT)
In-Reply-To: <ea6bdd16-9e97-0752-c5be-5c2393201117@kernel.org>
References: <1475349315-6155-1-git-send-email-bhumirks@gmail.com>
 <1475349315-6155-2-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1610012129420.3445@hadrien>
 <ea6bdd16-9e97-0752-c5be-5c2393201117@kernel.org>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Tue, 4 Oct 2016 11:06:50 +0530
Message-ID: <CAOH+1jE9YvvUzbZOwoy2hZ9e5nC1+9uosz8H9VUgN+z4CQmeVg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] Staging: iio: sca3000_core:
 constify attribute_group structures
To: Jonathan Cameron <jic23@kernel.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, 
	knaack.h@gmx.de, Lars-Peter Clausen <lars@metafoo.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, Joe Perches <joe@perches.com>, 
	Robo Bot <apw@canonical.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 4, 2016 at 1:29 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 01/10/16 20:30, Julia Lawall wrote:
>>
>>
>> On Sun, 2 Oct 2016, Bhumika Goyal wrote:
>>
>>> Check for attribute_group structures that are only stored in the
>>> event_attrs filed of iio_info structure. As the event_attrs field
>>> of iio_info structures is constant, so these attribute_group
>>> structures can also be declared constant.
>>> Done using coccinelle:
>>>
>>> @r1 disable optional_qualifier @
>>> identifier i;
>>> position p;
>>> @@
>>> static struct attribute_group i@p = {...};
>>>
>>> @ok1@
>>> identifier r1.i;
>>> position p;
>>> struct iio_info x;
>>> @@
>>> x.event_attrs=&i@p;
>>>
>>> @bad@
>>> position p!={r1.p,ok1.p};
>>> identifier r1.i;
>>> @@
>>> i@p
>>>
>>> @depends on !bad disable optional_qualifier@
>>> identifier r1.i;
>>> @@
>>> static
>>> +const
>>> struct attribute_group i={...};
>>>
>>> @depends on !bad disable optional_qualifier@
>>> identifier r1.i;
>>> @@
>>> +const
>>> struct attribute_group i;
>>>
>>> File size before:
>>>    text         data     bss     dec     hex filename
>>>    7745          864       8    8617    21a9
>>> drivers/staging/iio/accel/sca3000_core.o
>>>
>>> File size after:
>>>    text         data     bss     dec     hex filename
>>>    7809          800       8    8617    21a9
>>> drivers/staging/iio/accel/sca3000_core.o
>>>
>>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>>
>> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> Sorry, I'm not going to apply this one for the simple reason I just posted
> a patch that actually gets rid of these attrs in this driver entirely.
>
> My fault, I should have noticed this was one of the ones you were
> going to be looking at and mentioned I was just polishing up that
> series so not to bother with this particular case!
>

It's not a problem.

> Good patch though and well described!
>

Thanks.

Thanks,
Bhumika
> Jonathan
>>
>>> ---
>>>  drivers/staging/iio/accel/sca3000_core.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
>>> index d626125..774a8bf 100644
>>> --- a/drivers/staging/iio/accel/sca3000_core.c
>>> +++ b/drivers/staging/iio/accel/sca3000_core.c
>>> @@ -1010,7 +1010,7 @@ static struct attribute *sca3000_event_attributes[] = {
>>>      NULL,
>>>  };
>>>
>>> -static struct attribute_group sca3000_event_attribute_group = {
>>> +static const struct attribute_group sca3000_event_attribute_group = {
>>>      .attrs = sca3000_event_attributes,
>>>      .name = "events",
>>>  };
>>> --
>>> 1.9.1
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475349315-6155-2-git-send-email-bhumirks%40gmail.com.
>>> For more options, visit https://groups.google.com/d/optout.
>>>
>

