X-GM-THRID: 6402647377988026368
X-Received: by 10.157.20.8 with SMTP id h8mr975008oth.102.1490822886425;
        Wed, 29 Mar 2017 14:28:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.55.180 with SMTP id x49ls2991125otb.23.gmail; Wed, 29 Mar
 2017 14:28:06 -0700 (PDT)
X-Received: by 10.157.82.26 with SMTP id e26mr1004766oth.123.1490822886106;
        Wed, 29 Mar 2017 14:28:06 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id u204si7734vke.5.2017.03.29.14.28.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 14:28:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id d188so4149050vka.3
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 14:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Dp+3k8Ld8i8n2zkTQfY/Rhi7ixTZS/vDNiKgxjZgOvI=;
        b=ZGHy58qn1Cnu0/zLdb8J6UpRaOUM1kWhUp8yQXGUAPsgW/7bJd1z82DUcjTv/e5iFx
         sUP3DsSm3WDoD5U97ZPJ2uuoOiGxuETI7lRT5KLnlKwKyFp4ovd2pHr286cl85gVXuxN
         XeM38t9rzLnzFYKCRI5LQv239t77CL1aEPg5xdg6v90JYdB+meuJT1+hQsmIuK7z/Vl1
         OZWsqL9F4eGifpevrO7RiceUaxXVsfyAbwDej6GQrP5fia32o2Pf8Aj5UnYB3HAar9f6
         gLXXewjCEW/3+t2fjDlk6vrhhWqeuctEwVxpKMnH36kLC4CP2STuOJo241Jl9k6ZDH1u
         V78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Dp+3k8Ld8i8n2zkTQfY/Rhi7ixTZS/vDNiKgxjZgOvI=;
        b=YIQrsL9fWoH7LgwNHGfRyPgwSMkDdwC7e/ALlW4DruzBfqY/wGobar5sv0mLTt7ZWN
         O/lK5trfx4soG7xWiTEdzMCijtrZSxn8X2ev4udLyhFKXX+m/OZ9S5JIE59cMni6PRsh
         1pJgDKAr6WYgGb2IudBj50mKaNDZLpSZAn5C065ypMF5pbdbDOhdyr5B2plCm+tUyvDg
         v9P5uZXiLU7H6NMRk1R9KIf0kQwtMTDASg2av6zIk7Vmfzl1FKA9WeSLpAGWzjJEs3w5
         X/mdIf0JWAiOzth9hFE0EXH0Af1Q4z4KzTMmSsessOyCsWlhfkxeRhf8MiIDY42V8W8y
         aXVA==
X-Gm-Message-State: AFeK/H0slVKR9xQW0+ci34IQMjRKLg98i7G0sXGoPJqtGrBe2RmsEiqz7F2pIizSQRRzqN/wijaPJ4iAQgbuIg==
X-Received: by 10.176.94.132 with SMTP id y4mr1507886uag.62.1490822885789;
 Wed, 29 Mar 2017 14:28:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Wed, 29 Mar 2017 14:28:05 -0700 (PDT)
In-Reply-To: <f6c27795-30e3-1353-92c5-5352d8727137@kernel.org>
References: <20170328202147.GA21830@singhal-Inspiron-5558> <f6c27795-30e3-1353-92c5-5352d8727137@kernel.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Thu, 30 Mar 2017 02:58:05 +0530
Message-ID: <CALrZqyOazbo32ZT26VxUH3nco1KkVgQV5zfzqQRyqoV-sUA7Mg@mail.gmail.com>
Subject: Re: [PATCH] iio: dac: ad5504: constify attribute_group structures
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 30, 2017 at 2:39 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 28/03/17 21:21, simran singhal wrote:
>> Check for attribute_group structures that are only stored in the
>> event_attrs filed of iio_info structure. As the event_attrs field of
>> iio_info structures is constant, so these attribute_group structures can
>> also be declared constant. Done using coccinelle:
>>
>> @r1 disable optional_qualifier @
>> identifier i;
>> position p;
>> @@
>> static struct attribute_group i@p = {...};
>>
>> @ok1@
>> identifier r1.i;
>> position p;
>> struct iio_info x;
>> @@
>> x.event_attrs=&i@p;
>>
>> @bad@
>> position p!={r1.p,ok1.p};
>> identifier r1.i;
>> @@
>> i@p
>>
>> @depends on !bad disable optional_qualifier@
>> identifier r1.i;
>> @@
>> static
>> +const
>> struct attribute_group i={...};
>>
>> @depends on !bad disable optional_qualifier@
>> identifier r1.i;
>> @@
>> +const
>> struct attribute_group i;
>>
>> File size before:
>>    text    data     bss     dec     hex filename
>>    3046     360       0    3406     d4e drivers/iio/dac/ad5504.o
>>
>> File size after:
>>    text          data     bss     dec     hex filename
>>    3110           296       0    3406     d4e drivers/iio/dac/ad5504.o
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> Applied to the togreg branch of iio.git and pushed out as testing
> for the autobuilders to play with it.
>
But my tree is up-to-date and I also test it before sending.

> Thanks,
>
> Jonathan
>> ---
>>  drivers/iio/dac/ad5504.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/iio/dac/ad5504.c b/drivers/iio/dac/ad5504.c
>> index 788b3d6..22a027d 100644
>> --- a/drivers/iio/dac/ad5504.c
>> +++ b/drivers/iio/dac/ad5504.c
>> @@ -212,7 +212,7 @@ static struct attribute *ad5504_ev_attributes[] = {
>>       NULL,
>>  };
>>
>> -static struct attribute_group ad5504_ev_attribute_group = {
>> +static const struct attribute_group ad5504_ev_attribute_group = {
>>       .attrs = ad5504_ev_attributes,
>>  };
>>
>>
>

