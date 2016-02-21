X-GM-THRID: 6252325247022792704
X-Received: by 10.13.235.144 with SMTP id u138mr20262414ywe.21.1456031395185;
        Sat, 20 Feb 2016 21:09:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.228 with SMTP id c91ls1000268qgf.37.gmail; Sat, 20 Feb
 2016 21:09:54 -0800 (PST)
X-Received: by 10.129.116.214 with SMTP id p205mr21636392ywc.55.1456031394413;
        Sat, 20 Feb 2016 21:09:54 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-oi0-x230.google.com (mail-oi0-x230.google.com. [2607:f8b0:4003:c06::230])
        by gmr-mx.google.com with ESMTPS id s20si1468334igr.2.2016.02.20.21.09.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 21:09:54 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) client-ip=2607:f8b0:4003:c06::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x230.google.com with SMTP id j125so37151316oih.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 21:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ukgaQeooYe0audqxudfYhJb1SxU4tKFLLjTRx1tLXl4=;
        b=Ivg70rkEtJ+66b+sFWvAUqmCgduIEbYucoDBOCpgt6DhzTPnO2dHW/5p7C+AIDxrOF
         mcqeoKBJmX6T73Y6/f8cb4ru4Hc3x38f8HNA+R6lBZuHA2qYO9Tgsg/g89wj7KZeCPhY
         KethLX+FgincNcDb/TDJHEbON8an7LQSXP7AeAQhyNKsUBqtpUcEX/XDbc2Gclq79Mza
         GqtGOCgeMqmax+s/qbiqi1nQtr/odcC4RZ15RA0h7o/rGB/O0ikXomNFeIie9fB1OQeM
         wgZcu/+7VRAQ9KJwy6lyaXBPwKR03G5aSLmG+2vz2eo/3Q4CS9O4OO61ILs+32+YNCuY
         qcdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=ukgaQeooYe0audqxudfYhJb1SxU4tKFLLjTRx1tLXl4=;
        b=WsTwOn6hu/PjJnJS3MSWFvMQ0pdZPfVa5mcS293/B/gpQvb7NywBXdzbgCn20a1txg
         M4NKwsH3QrfFpBpR+GEMVJ9wnn+wIHRdGA1H8dJT0fYp2qeo5A+uGOzMwhTNo5KXC17I
         N+oJa1zzvl5q3hdex+RGMAPNvKcWIE/Vdz+nSHKXz+QWPS5De5gy3cpkoeCSA7nZnMTv
         NWRmJy2k/2bXYdBmCrdTfYBElhDRd5Pz2k0vOljJY1pTDONMsXoHq45WRsMF4QisUrQB
         fdRRaj9im4v+BCCtgm6zMm9ov5b5+tyHiKfuDmZKI7lzZuiUy6BVk/3D3b7okfBj1np3
         DKWg==
X-Gm-Message-State: AG10YOSqm6gzHP7mEqmtYS8fT8FmAT/91SFzcvlDvQGnvj3zM0GWNEmbUTXd8b23ObOqnY4u/OH242ebKbEmfw==
MIME-Version: 1.0
X-Received: by 10.202.193.10 with SMTP id r10mr17635904oif.126.1456031394128;
 Sat, 20 Feb 2016 21:09:54 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Sat, 20 Feb 2016 21:09:54 -0800 (PST)
In-Reply-To: <20160220232126.GA16317@kroah.com>
References: <1455732899-17222-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1602171837210.4547@hadrien>
	<CAOH+1jE2Fc=0wGkj=PjTPtY6MK41YP6LxxRKP5DfEEKMXPENtQ@mail.gmail.com>
	<CAOH+1jGB=EFPMTLiMYfem4dQ2QMR5p5PvsWz3=UJYW=8hQbYdw@mail.gmail.com>
	<alpine.DEB.2.10.1602180517010.2685@hadrien>
	<CAOH+1jHq_xXwXRQfXhjqxMw9WW2Pprese+fANi1LchRq=JSz8Q@mail.gmail.com>
	<20160220232126.GA16317@kroah.com>
Date: Sun, 21 Feb 2016 10:39:54 +0530
Message-ID: <CAOH+1jEAaSruQiVtRf+jm2fEkc+akydT-6rNsx7j1WViN5LbvA@mail.gmail.com>
Subject: Re: Fwd: [Outreachy kernel] [PATCH] Staging: comedi: drivers: Delete
 double assignment
From: Bhumika Goyal <bhumirks@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 21, 2016 at 4:51 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Thu, Feb 18, 2016 at 04:08:43PM +0530, Bhumika Goyal wrote:
>> On Thu, Feb 18, 2016 at 3:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Thu, 18 Feb 2016, Bhumika Goyal wrote:
>> >
>> >> On Thu, Feb 18, 2016 at 5:09 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> >
>> >> >
>> >> > On Wed, 17 Feb 2016, Bhumika Goyal wrote:
>> >> >
>> >> >> The two assignments here are identical so one can be removed.
>> >> >> Found using coccinelle:
>> >> >> @@
>> >> >> expression i;
>> >> >> @@
>> >> >>
>> >> >> *i = ...;
>> >> >>  i = ...;
>> >> >>
>> >> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> >> >> ---
>> >> >>  drivers/staging/comedi/drivers/dt2814.c | 1 -
>> >> >>  1 file changed, 1 deletion(-)
>> >> >>
>> >> >> diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
>> >> >> index 66705f9..e40ad56 100644
>> >> >> --- a/drivers/staging/comedi/drivers/dt2814.c
>> >> >> +++ b/drivers/staging/comedi/drivers/dt2814.c
>> >> >> @@ -249,7 +249,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
>> >> >>               return -EIO;
>> >> >>       }
>> >> >>       i = inb(dev->iobase + DT2814_DATA);
>> >> >> -     i = inb(dev->iobase + DT2814_DATA);
>> >> >
>> >> > Inb reads from the device.  The first call may have a side effect.
>> >> >
>> >> > julia
>> >> >
>> >>
>> >> Ok and here the reason might be that both calls are important because
>> >> suppose the value is not read in first call it can be read in the
>> >> second call?  Please correct me if I am wrong.
>> >
>> > I think that it is possible that reading a value from the device can cause
>> > the device to perform some activity.
>> >
>> > julia
>> >
>>
>> Ok got it.
>
> Also, sometimes hardware needs to be read multiple times in order for it
> to work.  There's lots of code in the kernel to work around hardware
> issues like this, as that's the job of the kernel.
>
> thanks,
>
> greg k-h

Thanks for explaining. Things are getting clear day by day :D.

Thanks,
Bhumika

