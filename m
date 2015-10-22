X-GM-THRID: 6208227682236235776
X-Received: by 10.180.221.227 with SMTP id qh3mr96430wic.2.1445546715564;
        Thu, 22 Oct 2015 13:45:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.231 with SMTP id p7ls15575wif.5.canary; Thu, 22 Oct
 2015 13:45:14 -0700 (PDT)
X-Received: by 10.28.11.65 with SMTP id 62mr3871wml.6.1445546714875;
        Thu, 22 Oct 2015 13:45:14 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id m4si24517wib.0.2015.10.22.13.45.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 13:45:14 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0LeLhV-1aIySV11Rt-00qBKK; Thu, 22 Oct
 2015 22:45:14 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, "y2038@lists.linaro.org" <y2038@lists.linaro.org>
Subject: Re: [PATCH] usb: usbtest: Add new ioctl interface
Date: Thu, 22 Oct 2015 22:45 +0200
Message-ID: <5791416.l1G7oSbyOl@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CABeXuvqLEZb=RFKdKHsp13sYu1aa6+xfZ7Qa-ZjAjJfXQck4kg@mail.gmail.com>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com> <4702937.ch2QM1X5CA@wuerfel> <CABeXuvqLEZb=RFKdKHsp13sYu1aa6+xfZ7Qa-ZjAjJfXQck4kg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:WcIGDxjENQz/F31SwDGqDhbPniecIruTjsvXrf18M7ks7o/eyBQ
 DrJgTddTytZBynRRBxhbPSm723gYS7y42e8qGvH6abt52pNlZnN0x4+iNJgmRW77hadVdKZ
 UOERJhYKGr6UdCRYxfrxHWPzd4gBi+65Az6vSOCSnk6weV2IR4790RcsC2hndEdMQZE47Im
 pgHSAS7TVmllkFa2YlhgA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:IFJGVdjTCCE=:+/OiOPbBw+BZrM0D5RuYLb
 81n//YLahHxvapAhYqHSMq0fquunhk3MBjA4rfhwv/oc1tfP+qswCiP63FosjxDJtPQGHMre0
 A/CAZ259VGwDjMAaYQbDLVzur8RmjPBFv+m0EwaXXCi1+SQrJZAM7Y/qz1mYhypspbrGBOyyi
 qCV65A3Ld/2KdBVROFO02t/RuyMPolMDXT95bYxz6rFdrzuQAUEG7br8kp4sH2Dnzf6hEGtPv
 nk9mhqIh4W3vuh4wraeeqvmePBho6OQjfpvSjjvhih3ImXs+qF8KLdAfW7ttDKpeL3p3y+q5M
 N6NgUWPaI1+GUgylA7ZtP44kR1q0ymNb8fJhp50VxVYJVfrDqYF0zOjhNQe2+250CArFhV72/
 +0uaRd77WGmHb8HazrIWUpt1saLIdd0Pkr1SJOnvrhlIUbyY4Xq9zW28jnsPN0RSK6u9HFKDx
 l5YbiSML7eTousFSVuECXt94ugp63q2qOJRIEvEVxKaDjvnDwnPKeKRvFaoU3G+UlRcs81Sxt
 Ei21iR32MoBWwuePQHoxmKH6isXvGrl/65oQvLyuHROkD8qxwZMTOVjLDk1wECbA4pq25AV6r
 EBgoB5vdUrhj9Lh2oqI6T2S0KrwCkegFOhnF1yxMhbqcFa0mPBLW/aWSnoOUXVDtajZaDI/nE
 GqThderF+riW/HPa6rrjc8T2PA6OS0W6E5ScA9IgQ/uagEAAgnsOtSRzswk8ucPUwiE+tDn3Q
 aIABAPfMapWXJTAD2RQBavO85nvfxANJmi2QWA==

On Thursday 22 October 2015 09:43:25 Deepa Dinamani wrote:
> On Thu, Oct 22, 2015 at 2:36 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Wednesday 21 October 2015 18:03:02 Deepa Dinamani wrote:
> > > On Wed, Oct 21, 2015 at 4:17 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > Yes, and that is the right idea. I suspect we will have to provide
> > different definitions for kernel and user space though, in one
> > form or another. You are right that we want to remove 'timeval'
> > from the kernel, and in order to keep user space unchanged, this
> > means defining the structure like
> >
> > struct usbtest_param_32 {
> >         /* inputs */
> >         __u32                test_num;       /* 0..(TEST_CASES-1) */
> >         __u32                iterations;
> >         ...
> >         __s32                 duration_sec;
> >         __s32                 duration_usec;
> > };
> >
> > which is a well-defined binary version of what 32-bit user space
> > sees today. We also need the 64-bit version of that, for both
> > normal 64-bit tasks and future 32-bit tasks that are built with
> > the old structure definition.
> >
> > Optionally, we can introduce a better interface with a new command
> > number as your patch does, but that should be a separate patch,
> > and we have to see if the USB maintainers want to do this or not.
> >
> 
> There are two problems with the original ioctl interface:
> 
> 1. Because of the use of timeval, compatibility is broken between 32 bit
> and 64 bit binaries.
> 
> This has nothing to do with y2038 problem at all.
> This is the case with all interfaces using timeval itself and has nothing
> to do with this one
> particular bad interface design.

Right.

> The struct you suggested above will work to map to two separate ioctls.
> But, if this is a generic problem, shouldn't the above solution be in some
> common file?
> For instance we could have this:
> 
> struct timeval_32 {
>         __s32                 duration_sec;
>         __s32                 duration_usec;
> };

This is essentially 'struct compat_timeval', which I intend to keep
around in the kernel for backwards compatibility and will make available
to 32-bit kernels that currently can't use it. The patches still need
a few more review rounds though.

> And, a similar struct for timeval_64.
>
> This would also mean adding api's to fill the structures defined above.
> Basically an entire layer.

We should really see how many drivers need this. I have shown that the
core kernel does not need it with my patches, as all system calls that
use timeval are already deprecated. I have a list of drivers that need
to be converted at

https://docs.google.com/spreadsheets/d/1HCYwHXxs48TsTb6IGUduNjQnmfRvMPzCN6T_0YiQwis/edit#gid=346406462

on the second sheet. All the ones that have an ABI exposed to user space
are marked 'uapi' or 'ioctl', and we could check which ones of these
would be helped by having a generic set of helpers for timeval_64.
 
> This is not necessary for this driver as the struct's are not exposed.
> My guess is also that there aren't many applications using this because of
> the way it needs redeclaring everything in the application.

Agreed. My guess is that there is only one application using it at all,
but it's hard to know for sure. If we could prove that there is only one,
and we can change it to use a new ioctl command if that is present in some
header file, all this could be simplified.
 
> Since the original implementation is broken already, my first preference
> was to fix the interface with the new interface itself.

I wouldn't call the original implementation broken, except for the
64-bit compat problem. What makes it broken is that the ioctl data
structure changes in user space when that changes the defintion of
'struct timeval', but since the data returned here is a difference
of two times, the current 32-bit tv_sec variable is actually good
enough.

> My intention was to not fix the broken interface, but to replace or provide
> a new interface.
> 
> Wouldn't the following be better?
> 
> #ifdef CONFIG_COMPAT
>           old ioctl(code = 100)
>            use old timeval struct
>           #if CONFIG_COMPAT_TIME
>                  use compat_timeval instead of timeval
> #else
>           new ioctl(code = 101)
> #endif

Sorry, I'm not really following here. Doesn't this break existing
32-bit users that don't even care about the y2038 issue?
 
> The old ioctl support to be eventually removed completely.

We should only ever plan to break existing user space if there
is no other option at all. Remember that most users don't care
about the y2038 problem because they are on 64-bit systems that
have a couple of bugs we need to fix in the next few years, or
because they are on 32-bit systems that they will stop using
before it becomes a problem. The implied rules that result from
this are:

- nothing we do should require changes for 64-bit tasks

- all 32-bit tasks should keep working on future kernels (both 32-bit
  and 64-bit) unless they explicitly disable CONFIG_COMPAT_TIME

- CONFIG_COMPAT_TIME and all code under it will be removed in 2038
  at the latest, but perhaps not much earlier.

- if possible, source code that produces a working 32-bit binary today
  should not need modifications to work when compiled against a libc
  with 64-bit time_t and run on a kernel without CONFIG_COMPAT_TIME.

> 2. The y2038 problem in the driver is quite straight forward as to picking
> the right calls to fill in whatever data types we choose above.

I would argue that it's exactly the same problem for 32-bit and 64-bit
kernels in this driver: you can have user space binaries with different
definitions of timeval and we want both of them to work.

> > > USB framework's higher level ioctl framework already supports a
> > > .compat_ioctl and pointers are fixed before coming into this usbtest
> > driver.
> > > Are you suggesting .compat_ioctl extension to the usb_driver, or
> > rewriting
> > > the driver as a cdev?
> >
> > Once the handler is changed to handle both versions of the structure,
> > we don't need a separate .compat_ioctl any more, we just need to make
> > sure that the handler gets called for both. I haven't checked this but
> > according to your description I expect that is what happens already/
> >
> > > The other ioctls take care of individual compat data types by internally
> > > using #ifdef CONFIG_COMPAT.
> >
> > Ok. In my system call patch series, I introduce a new CONFIG_COMPAT_TIME
> > symbol that specifically deals with compatibility mode for 32-bit time_t
> > on both 32-bit and 64-bit architectures. This is the #ifdef we should
> > be using here as well in principle. My patches however are not merged
> > yet, but there is no harm in leaving that code active here, as both
> > versions
> > provide a correct API and do not overflow in 2038.
> >
> >
> Does it help to review a patch of this kind with a design document?
> Does the kernel review system allow something like this?
> Some of the questions that popped up are the ones I asked myself before.
> It might let the thought process be more evident.

Most kernel developers work better with patches than with design documents.

	Arnd

