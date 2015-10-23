X-GM-THRID: 6208227682236235776
X-Received: by 10.28.88.135 with SMTP id m129mr141027wmb.4.1445638749976;
        Fri, 23 Oct 2015 15:19:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.170 with SMTP id dt10ls210760wib.32.gmail; Fri, 23 Oct
 2015 15:19:09 -0700 (PDT)
X-Received: by 10.180.86.227 with SMTP id s3mr1408375wiz.0.1445638749493;
        Fri, 23 Oct 2015 15:19:09 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id w9si15808wiz.1.2015.10.23.15.19.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 15:19:09 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0LsyLK-1aUu2b3eI6-012bFP; Sat, 24 Oct
 2015 00:19:07 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Deepa Dinamani <deepa.kernel@gmail.com>, "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Y2038] [PATCH] usb: usbtest: Add new ioctl interface
Date: Sat, 24 Oct 2015 00:19:06 +0200
Message-ID: <5042503.magIZkzosx@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CABeXuvqm1ATS-nqq9rjWnDOa=P_a3Up3Pe=vvd1gVVxYadsoQg@mail.gmail.com>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com> <5791416.l1G7oSbyOl@wuerfel> <CABeXuvqm1ATS-nqq9rjWnDOa=P_a3Up3Pe=vvd1gVVxYadsoQg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:LhwjQgYUbAsYwMMMgcfiOy1vkwAIjH1zr+ZcNY7nwAYxRCr18ZM
 zvxmzHrBQs8LDD61RtIZ9ZnZHO2vZUzpnqqmRyMkYYezM922wRj/RFJStzIcbeL0gjlPK8F
 5ZwqQvSUpFNUPXcfb0L6kYitF1Y3gADRFr3W97ExXc6ISb78hvjAgLlXK0FDenwB3bvR2/w
 Z3P1BssCkIUQyHJiluDvw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:XKCfXmvMbZ8=:ca3eHIsXYJBEvf9pT7xHH6
 8foOWe2ej0CsQL1IaZW4BAjlMO/QBAy8xLWOqsLJWgKYuE62DyDo0MTXruHfjGCCPNeXiAy1d
 pSqHZoczrY7+pdC6hJaAtpl0/oyQ4L/1ORCYURE8Gq9NHHwj6EkQY1djUfznUV+dPPAXM2X+k
 E8RjLK0blZ4S1TQtnv1fB9JRsSh57XjpSxzeWFcBOgEYH7jTZvDWiS2IkCM5YmXLGjTzZm3Zd
 wVmdPqciOFdH2KIWAA0Pyo1tggZADaQXty4VQSv31fh4bHTMgL3jnYIq31V9XKcapyRZvjU7b
 UjrGC1G0zwKSJ68/Rx88XN7cpwR/X6m44xAEFT88Fois5i9LO9eN4KXilvJNxdtsj2uX+gXU+
 pP4koh8uufQvnCuVmFmaxLwNY63sqXatkuFnFI417ljyXvg7szOjr/rRZsUI09zBkOYEU8pCW
 uDp1/vEJd3/eZH3GajjD3VLWtdq4JDRCEehMZeR6fbkmlMDoCnGuYPmgPkhmqf8cB4dgDGsK5
 nx+obqXjo2Ltm89CzKrvz1gS3kVVx0YBs61kvOr0eAt9Xm4cIWzUJsSMlPhPIsfCR35y+ftjU
 GNZfh4Cp3mOFvejg2I3S/FLqwDF61n6JpwB/BV1quu/K1aYb4+vMWzf40XlgGcW2DTzJjEScO
 VJUP7bU0Q6Lb8EW7afAsF7nn6yazr/I3tpBJcLJjfOmG0W+ntLjyw/PHywlTWp5qspKYy2hdr
 vpeG/zAKBMqjrik+

On Friday 23 October 2015 14:54:58 Deepa Dinamani wrote:
> >
> > > Since the original implementation is broken already, my first preference
> > > was to fix the interface with the new interface itself.
> >
> > I wouldn't call the original implementation broken, except for the
> > 64-bit compat problem. What makes it broken is that the ioctl data
> > structure changes in user space when that changes the defintion of
> > 'struct timeval', but since the data returned here is a difference
> > of two times, the current 32-bit tv_sec variable is actually good
> > enough.
> >
> >
> I don't think seconds granularity is sufficient here for usb operations.
> This page shows some tests which run for less than a second:
> http://blackfin.uclinux.org/doku.php?id=linux-kernel:usb-gadget:zero

That's not what I meant here. I mean using 32-bit tv_sec plus 32-bit
tv_usec is always sufficient, because no test can run for more than
68 years and overflow the 32 bit number.

> > > My intention was to not fix the broken interface, but to replace or
> > provide
> > > a new interface.
> > >
> > > Wouldn't the following be better?
> > >
> > > #ifdef CONFIG_COMPAT
> > >           old ioctl(code = 100)
> > >            use old timeval struct
> > >           #if CONFIG_COMPAT_TIME
> > >                  use compat_timeval instead of timeval
> > > #else
> > >           new ioctl(code = 101)
> > > #endif
> >
> > Sorry, I'm not really following here. Doesn't this break existing
> > 32-bit users that don't even care about the y2038 issue?
> >
> 
> Maybe I misunderstood what CONFIG_COMPAT_TIME was doing.
> What I meant was that we should keep the old interface only for older
> binaries.
> All new code should only use new interface.
> That was the eventual goal.

What I want COMPAT_TIME to mean eventually is to support old
binaries that are known to be broken in 2038. This one is not
does not suffer from the overflow, so we can leave it enabled
unconditionally.

> #ifdef CONFIG_COMPAT_TIME
>            old ioctl(code = 100)
>             support 64 bit and 32 bit timeval
> #endif
>          new ioctl(code = 101)
> 
> By the time all support for 32-bit time is removed, use of the old
> interface should be removed.
>
> Timeval was a bad struct to expose to userspace anyway.
> 
> In this regard, I was going to fix up the usbtest tool to use new interface
> also.

That would work too, and the USB maintainers might like this method.
My preference would still be to keep the existing interface as the
primary way and not force a change on the users, no matter how bad
the original decision was.

From looking at http://www.linux-usb.org/usbtest/, my impression
is that this tool was never packaged properly for distributions
and instead a simple .c file is offered for direct download.
This means we probably have lots copies of this file in random
places that are being used but never updated, even if we can change
the master copy to use another interface. The existing file will
still compile on future libc versions, but will fail to work correctly
for now apparent reason if we deprecate that ioctl command.

> > > > Ok. In my system call patch series, I introduce a new
> > CONFIG_COMPAT_TIME
> > > > symbol that specifically deals with compatibility mode for 32-bit
> > time_t
> > > > on both 32-bit and 64-bit architectures. This is the #ifdef we should
> > > > be using here as well in principle. My patches however are not merged
> > > > yet, but there is no harm in leaving that code active here, as both
> > > > versions
> > > > provide a correct API and do not overflow in 2038.
> > > >
> > > >
> > > Does it help to review a patch of this kind with a design document?
> > > Does the kernel review system allow something like this?
> > > Some of the questions that popped up are the ones I asked myself before.
> > > It might let the thought process be more evident.
> >
> > Most kernel developers work better with patches than with design documents.
> >
> 
> I was saying patches only communicate the final product.
> For instance, I did consider using .compat_ioctl, timespec64 etc.
> I cannot really tell the story as to why this is the best way to do it
> unless someone asks.

You can have a really long changelog text to describe this if you want.

> Summarizing the next steps:
> 
> 1. Figure out how many ioctl or uapi need 64-bit timeval.

Sounds good.

> 2. Should compat fix for existing usbtest ioctl be based on top of your
> COMPAT_TIME changes?

I would prefer to see a fix for the driver that does not depend on my
patches. Just do one that handles both variants of the data structure
on both 32-bit and 64-bit architectures, without any #ifdef.

> 3. Contact usb list about usbtest ioctl uses and about proposed new ioctl.

Yes, but don't make this one a priority. Adding a new ioctl is just the
icing on the cake, and that patch mainly serves to highlight the fact
that the original API was implemented poorly and how it should have
been done instead. It's more important for us to avoid making things
worse with the 64-bit time_t change.

	Arnd

