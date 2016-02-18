X-GM-THRID: 6252325247022792704
X-Received: by 10.66.146.193 with SMTP id te1mr6113509pab.17.1455791924588;
        Thu, 18 Feb 2016 02:38:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.36 with SMTP id c33ls4327944qge.30.gmail; Thu, 18 Feb
 2016 02:38:43 -0800 (PST)
X-Received: by 10.31.15.11 with SMTP id 11mr6181483vkp.3.1455791923878;
        Thu, 18 Feb 2016 02:38:43 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-ob0-x22e.google.com (mail-ob0-x22e.google.com. [2607:f8b0:4003:c01::22e])
        by gmr-mx.google.com with ESMTPS id iq8si154085igb.0.2016.02.18.02.38.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 02:38:43 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) client-ip=2607:f8b0:4003:c01::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22e.google.com with SMTP id gc3so58927888obb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 02:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=CoTAKGh7sER3hKnjv2qnhdyTA8skpw28Oa6RfXPZwQI=;
        b=uWnNr7jnFvELEGbzKqKT/9x862RFiV7hBGxazpaBbzosZ8D3SBpb/Z2jUVSnhpciry
         Km0LVhh9vA+JcSScm2u9UvuhHzVYaUdP/PlfLiikaH0K6gufBihOYx+7hc5+piccqDI1
         PzSk+e+9p+dV82LImvAV9fWa5jO30+g67tfvd/YC5UT63s/o8XIVEXnF7Sv3vWd6WCs6
         dbwCuI9trwnZC+DmAa73g5CjJ/3R22mzaQOrIyg0rwJ4PCteKh5kXVy58OaahM2hx+kv
         asiTVEF9+6m8dOmjQHM5NV+trNBPrBlbykLhGT5YFTNegVbmfqk9iytIgMQUGR558nth
         Vc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=CoTAKGh7sER3hKnjv2qnhdyTA8skpw28Oa6RfXPZwQI=;
        b=WU/9gzrAYZoF4ZoQUtagBrCyTqHAR6/Yz1sx9vr6Hz69Xz0pzfOIgHY9cvWmt6terE
         df4LdfF8Nu1lD97lENATLR68i1amNVgKBiG2Y1AlwOPNkwl9lgFlwIhJrcHHqXPwa7vU
         enJwPpGPBftWI1Yqw1/2jhqD4ubgXNCEBaXhsD62TJcf3regmX45ZEUjXBMT61O3w58U
         xPcoduWngvjdCrV1TI8Rsx8SkxaRWkJMyKXOOIMPybkpxW9hKiRb2uNXPhurpQf0msya
         Il/2trabf4Lf4ez/j8N56Pv0xXc6i/LRN+oINkN/F5FbnU2sjEVWARgYP9ENrJZGGp28
         b8Qw==
X-Gm-Message-State: AG10YOSagSIORXNW4BwfDTu7OwuGlle6yjJR8xVseDJBp/kS7dZxjQzmub3VnzA0ECmholQ0m1X6/oXwVTlHpA==
MIME-Version: 1.0
X-Received: by 10.202.193.10 with SMTP id r10mr5606494oif.126.1455791923711;
 Thu, 18 Feb 2016 02:38:43 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Thu, 18 Feb 2016 02:38:43 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602180517010.2685@hadrien>
References: <1455732899-17222-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1602171837210.4547@hadrien>
	<CAOH+1jE2Fc=0wGkj=PjTPtY6MK41YP6LxxRKP5DfEEKMXPENtQ@mail.gmail.com>
	<CAOH+1jGB=EFPMTLiMYfem4dQ2QMR5p5PvsWz3=UJYW=8hQbYdw@mail.gmail.com>
	<alpine.DEB.2.10.1602180517010.2685@hadrien>
Date: Thu, 18 Feb 2016 16:08:43 +0530
Message-ID: <CAOH+1jHq_xXwXRQfXhjqxMw9WW2Pprese+fANi1LchRq=JSz8Q@mail.gmail.com>
Subject: Re: Fwd: [Outreachy kernel] [PATCH] Staging: comedi: drivers: Delete
 double assignment
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 18, 2016 at 3:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 18 Feb 2016, Bhumika Goyal wrote:
>
>> On Thu, Feb 18, 2016 at 5:09 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Wed, 17 Feb 2016, Bhumika Goyal wrote:
>> >
>> >> The two assignments here are identical so one can be removed.
>> >> Found using coccinelle:
>> >> @@
>> >> expression i;
>> >> @@
>> >>
>> >> *i = ...;
>> >>  i = ...;
>> >>
>> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> >> ---
>> >>  drivers/staging/comedi/drivers/dt2814.c | 1 -
>> >>  1 file changed, 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
>> >> index 66705f9..e40ad56 100644
>> >> --- a/drivers/staging/comedi/drivers/dt2814.c
>> >> +++ b/drivers/staging/comedi/drivers/dt2814.c
>> >> @@ -249,7 +249,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
>> >>               return -EIO;
>> >>       }
>> >>       i = inb(dev->iobase + DT2814_DATA);
>> >> -     i = inb(dev->iobase + DT2814_DATA);
>> >
>> > Inb reads from the device.  The first call may have a side effect.
>> >
>> > julia
>> >
>>
>> Ok and here the reason might be that both calls are important because
>> suppose the value is not read in first call it can be read in the
>> second call?  Please correct me if I am wrong.
>
> I think that it is possible that reading a value from the device can cause
> the device to perform some activity.
>
> julia
>

Ok got it.

Thanks,
Bhumika

>>
>> Thanks,
>> Bhumika
>> >>       if (it->options[1]) {
>> >>               ret = request_irq(it->options[1], dt2814_interrupt, 0,
>> >> --
>> >> 1.9.1
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455732899-17222-1-git-send-email-bhumirks%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jGB%3DEFPMTLiMYfem4dQ2QMR5p5PvsWz3%3DUJYW%3D8hQbYdw%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

