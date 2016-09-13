X-GM-THRID: 6329788419736076288
X-Received: by 10.46.69.10 with SMTP id s10mr3674359lja.1.1473777053197;
        Tue, 13 Sep 2016 07:30:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.209 with SMTP id h78ls68643lji.13.gmail; Tue, 13 Sep
 2016 07:30:52 -0700 (PDT)
X-Received: by 10.25.141.85 with SMTP id p82mr3698189lfd.10.1473777052575;
        Tue, 13 Sep 2016 07:30:52 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id w134si338304wmf.3.2016.09.13.07.30.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 07:30:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id k12so7205749lfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 07:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=XdozcI5S22yd5nrPVVMqx3DPZcDNQXE2u3GwO2t5OLo=;
        b=q9eVP8C01EAHeXYAU3oqG/JSjixjzXktTUvzoodlC8D6kfyY0RefZ2+U68WrmYFcSL
         5Ll9FrmrYETw81GPheOk0fZKgtFUoeeg4/nUuKXRJaXMjJ7n/oTzwBrrizMpSMRhdq3X
         0tdgWbihmn50lq6Xca4/1NxvheaGs1Qt0ME6zPQVxyzG7KYdAjVZjTbmqB59AOED8BLa
         9wgHfILyE93vIYplCamz9lP8vjadZhjffDcO2dWq+adxYMMeIlDVVWCz/hry0L4vB4gq
         C8CmIm/eCug9CL2cyqRe+s7AMBRi7D990MxLM3h33D5OfWevbz1ELkoA2xr6+P/VaBNi
         bTtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=XdozcI5S22yd5nrPVVMqx3DPZcDNQXE2u3GwO2t5OLo=;
        b=kSjMSWSJASt+pKTj7WvCV3Sw1dcvQYWM7n+BFxGU3ROseN3LToWdkA+L95tC304iFt
         BTGhPf21ReED4Tz/Q+fp2NrFQbZBR/9pmeQJR8bL+k3qly89aoAd3OHCRyJT0Ku5sEjc
         NPAoy0EnUPNDGDftfzYAt98QONc8ido8iI2YyBgWzEazHCDEgqJiaDFfjCtFPNT1OGNk
         7wxAph1TWt5YlZRujaIuam4I7zPhV3iU4dV8esRQmCraFSdD60AfV8jy6bVuCAp8jkIy
         CEetM8iiTw99MBwIIEuEC8+nK46CngixZF/0LA2HECObFx8CPe7plCTahhQGwViihQW1
         uuIA==
X-Gm-Message-State: AE9vXwPbeiLmU2JgO0AFjP5LA1mXtEUgqmJjGUtUIVj5qZ81IdQxTwmguEeYpq+2x522p0rKTl3tfhDUZMj7OQ==
X-Received: by 10.46.33.8 with SMTP id h8mr7742376ljh.36.1473777051971; Tue,
 13 Sep 2016 07:30:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Tue, 13 Sep 2016 07:30:51 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609131603270.3355@hadrien>
References: <1473768686-2025-1-git-send-email-bhumirks@gmail.com>
 <CAOH+1jExFn-UUq3xudSiwdm=Rm4PP5oa19w675Dx8dMB3+VCoQ@mail.gmail.com> <alpine.DEB.2.10.1609131603270.3355@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Tue, 13 Sep 2016 20:00:51 +0530
Message-ID: <CAOH+1jFBDjQHRptTDvBONVHH4cMvdVdYhMwMx7V=paCHrkh6yg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: wilc1000: Remove struct typedef
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
	ganesh.krishna@microchip.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 13, 2016 at 7:34 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 13 Sep 2016, Bhumika Goyal wrote:
>
>> On Tue, Sep 13, 2016 at 5:41 PM, Bhumika Goyal <bhumirks@gmail.com> wrote:
>> > Remove typedef from structure tstrRSSI as using typedef for
>> > structures is not preferred.
>> > Found using coccinelle:
>> >
>> > @r1@
>> > type T;
>> > @@
>> >
>> > typedef struct { ... } T;
>> >
>> > @script:python c1@
>> > T2;
>> > T << r1.T;
>> > @@
>> > if T[-2:] =="_t":
>> >   coccinelle.T2 = T[:-2];
>> >   print T
>> > else:
>> >   coccinelle.T2=T;
>> >
>> > @r2@
>> > type r1.T;
>> > identifier c1.T2;
>> > @@
>> > -typedef
>> > struct
>> > + T2
>> > { ... }
>> > -T
>> > ;
>> >
>> > @r3@
>> > type r1.T;
>> > identifier c1.T2;
>> > @@
>> > - T
>> > + struct T2
>> >
>>
>> I would like to add a note here: The above script also removes '_t'
>> from typedefs if any occurrence found.
>> Also, for running the script I used --all-includes for getting
>> information from header files as structure definition and its object
>> declaration  might be in different files.
>> So this option removes typedefs from both places.
>
> Good job.  I assume you did a grep to be double sure that the name
> tstrRSSI doesn't occur anywhere else?  And a compile of course.
>
Yes, I do it always to double check the things :D

Thanks,
Bhumika

> julia
>
>> > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> > ---
>> >  drivers/staging/wilc1000/coreconfigurator.h | 6 +++---
>> >  1 file changed, 3 insertions(+), 3 deletions(-)
>> >
>> > diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
>> > index 076e06a..cff1698 100644
>> > --- a/drivers/staging/wilc1000/coreconfigurator.h
>> > +++ b/drivers/staging/wilc1000/coreconfigurator.h
>> > @@ -70,11 +70,11 @@ enum connect_status {
>> >         CONNECT_STS_FORCE_16_BIT = 0xFFFF
>> >  };
>> >
>> > -typedef struct {
>> > +struct tstrRSSI {
>> >         u8 u8Full;
>> >         u8 u8Index;
>> >         s8 as8RSSI[NUM_RSSI];
>> > -} tstrRSSI;
>> > +};
>> >
>> >  struct network_info {
>> >         s8 rssi;
>> > @@ -93,7 +93,7 @@ struct network_info {
>> >         u8 *ies;
>> >         u16 ies_len;
>> >         void *join_params;
>> > -       tstrRSSI str_rssi;
>> > +       struct tstrRSSI str_rssi;
>> >         u64 tsf_hi;
>> >  };
>> >
>> > --
>> > 1.9.1
>> >
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jExFn-UUq3xudSiwdm%3DRm4PP5oa19w675Dx8dMB3%2BVCoQ%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

