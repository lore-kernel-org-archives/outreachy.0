X-GM-THRID: 6396623308648873984
X-Received: by 10.157.2.226 with SMTP id 89mr11867536otl.72.1489331863314;
        Sun, 12 Mar 2017 08:17:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls903970otd.20.gmail; Sun, 12 Mar
 2017 08:17:43 -0700 (PDT)
X-Received: by 10.13.235.74 with SMTP id u71mr13558962ywe.115.1489331862995;
        Sun, 12 Mar 2017 08:17:42 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id r6si1875226ywb.6.2017.03.12.08.17.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:17:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id o4so7572874ywd.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=LHcc6yUfKoo0AIz8IS8dnMnK8OfymZppVbRI7k+jWdE=;
        b=hWjur5uUTi4W+P54DY0o4r7QjQlQuHhwYbDeRrBxSfRUx6m7Lmkp0lQ6suY977odFz
         zRev3bqjLmkhlE/YJtOg/I0vZm2dAG3MfUvmY2C8e/p3SacXW8tiy4EngeGWH8HO2/jT
         AcoFgReYXMSj7dipCR4hJ0ITxv2ZMyMzMpJqFxQeUmOL5THQ8zqAb2VWw9vrWQM/XksK
         98xNBQp5ckHuV0Ozt2CrVXOxsiligCwmDfhnZqw9yMCTObyN8KAqfMftF6IomqMUPRhF
         R3VxEoX5TblvW4CgBdJtiMtBoqt6ttFwUYbRc3FfG88Dp9u+iCgNWGe7h5+F5EJUTSLG
         lJwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=LHcc6yUfKoo0AIz8IS8dnMnK8OfymZppVbRI7k+jWdE=;
        b=oHKJrPEJWiBtSXOcOECdRRpwC/JxFEpbIGq1oHyBq0Y/JC3TAyBSprf8MyBtLxIqNM
         OWeCPmfgkiXfLiQ4rsCp530r0pg9otyvRgrdch2KuAerLWQEsUWFVB7On1nq/1gSaXw/
         3Gz8bfhMthYugWEkDOd9eOmsw7GVbMnqLJXwRHGPAivBzNCxHc5V/4p7cCBVaaPlmJvq
         NFmMplDNRuBF5tQjJFCTaQYzFo3Ou8ejfcWVdoVHL5DkYy+nU9qlGRJeZ5imes8cOtRM
         97sMdRH35Uucrk8Kc1ihyxpT7XuvC/78Rbqo30+WgoDXp/rD5+AfzbCzxGBTrF/P+cBY
         v2zQ==
X-Gm-Message-State: AMke39lEpu0yGtcHhRXte6zPSaCvNldGQn2V0qQGccNyY/IV0M4r0aqsfgCjqxnIOGi5LkC16xJsyBJJEalKWg==
X-Received: by 10.129.99.198 with SMTP id x189mr14118452ywb.242.1489331862666;
 Sun, 12 Mar 2017 08:17:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Sun, 12 Mar 2017 08:17:02 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1703121554350.2174@hadrien>
References: <cover.1489329182.git.karniksayli1995@gmail.com>
 <alpine.DEB.2.20.1703121546590.2174@hadrien> <CAKG5xWhTjVxD1+3mhpm1JE-rWoW5mLkOAj3dbGuOvyomDjQEDA@mail.gmail.com>
 <alpine.DEB.2.20.1703121554350.2174@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sun, 12 Mar 2017 20:47:02 +0530
Message-ID: <CAKG5xWhC6psFK0o9Rx2NpL39B1WCNo7as-MkgQQ2rq8dkyujwg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Use true/false instead of 1/0 for
 bool initialisations
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 12, 2017 at 8:25 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 12 Mar 2017, sayli karnik wrote:
>
>> On Sun, Mar 12, 2017 at 8:17 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sun, 12 Mar 2017, sayli karnik wrote:
>> >
>> >> The patch series uses true and false instead of 1 and 0 as bool variable
>> >> values. Detected by coccinelle/misc/boolinit.cocci.
>> >>
>> >> sayli karnik (2):
>> >>   staging: media: mt9m114: Use true/false instead of 1/0 for bool
>> >>     initialisations
>> >>   staging: media: mt9m114: Use true/false instead of 1/0 for bool
>> >>     initialisations
>> >
>> > The two lines are identical?
>> >
>> Actually one is for mt9m114.c and the other for mt9m114.h
>> Had sent 2 separate patches initially, but re-sent them as a series as
>> suggested by Greg.
>
> OK, I haven't see the actual series yet for some reason, but every patch
> has to have a different subject line.
>
> Maybe it would make sense to just merge them into one.
>
Umm..okay I'll send one patch merging the two.

> julia
>
>> > julia
>> >
>> >>
>> >>  drivers/staging/media/atomisp/i2c/mt9m114.c | 4 ++--
>> >>  drivers/staging/media/atomisp/i2c/mt9m114.h | 6 +++---
>> >>  2 files changed, 5 insertions(+), 5 deletions(-)
>> >>
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1489329182.git.karniksayli1995%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703121554350.2174%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

