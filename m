X-GM-THRID: 6208227682236235776
X-Received: by 10.112.173.170 with SMTP id bl10mr3415522lbc.7.1445506610385;
        Thu, 22 Oct 2015 02:36:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.164.77 with SMTP id n74ls287840lfe.94.gmail; Thu, 22 Oct
 2015 02:36:49 -0700 (PDT)
X-Received: by 10.112.148.202 with SMTP id tu10mr3001979lbb.12.1445506609739;
        Thu, 22 Oct 2015 02:36:49 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id hs5si1074137wib.1.2015.10.22.02.36.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 02:36:49 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MaU9p-1a4vti1GTB-00K9aQ; Thu, 22 Oct
 2015 11:36:43 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Deepa Dinamani <deepa.kernel@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH] usb: usbtest: Add new ioctl interface
Date: Thu, 22 Oct 2015 11:36:42 +0200
Message-ID: <4702937.ch2QM1X5CA@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CABeXuvpgNwSArZYy4LZdLg=5=9hGAXvsO5PjmZEsGo9NYCPdmg@mail.gmail.com>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com> <8949060.7jQkPAjlGW@wuerfel> <CABeXuvpgNwSArZYy4LZdLg=5=9hGAXvsO5PjmZEsGo9NYCPdmg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:Z6zkLoVBjTi3zBnUsG/DOi4l+8z9hHbc3QHfsiYzRKFdFJHz9tX
 uzAkxb9N0uW/0RgPoT0ba7fsqbi7nVm94dCgY3vnGy2uOx0qIM3oAX7iRcyof09jSch/ms/
 c9utpeERcd7FwHyzBv/oGU1bg7ciIbPQ4gsh4xBMYCxAMvH0NpSv8sZVffZLKv6wRXqOyGZ
 Clo4r/BqQXMyXBUT6I6JA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:HyXnW/bDgvU=:5O1SSKuHYR6F4vCs0kY0O7
 N+CvLRKP2CbkA66+Cl7jcQCWt5HqYiPAHJU+0SacUvn6vc66cl4tj38JqS0e7Bul74WH5DwoV
 fpdlk8OqeHih08/Fg09cfqN1AFc442np7kAeNlvsG9E5pgFcLz2dE/tG491w9uJLgiJEo6Xbg
 Z86grx+dvYgeaKC+Kal7I2/ZCwZoW+VKnbAVCqoa4L+XRFqsd9MR9ug+i35Z4MMWNJZdbWjWP
 KNLZsQZpOVwXDOFP04jwGbiMTQf26eDXrmyWtmfWBL9EWTnclXzw1axBij9jlE0cWiiqwrDI+
 vEJeGGDJjt5+zCTKX3bVQdbwaIpwuutQOFr17fRerHdgAwe772vIMAG1OT6dgxbRWMeMC7npx
 rguZBO2UHnBU9Ap5Hur7ZrwbpQIkz/R1peQfPXUyDLFs4eeZgph7zRGI0JMQEAfuDF0DCQwg4
 lFv3jWWzgyEjPTYZoWAh/BsZviqIK8IZYX4K6Wooh5uq7fj+GN7uOhxKGIPRTZUV0Me0nteAk
 jvJozYdG/lkFGWMMJIpoy28da1JZQ1Tnf01dq/36Z/EIdExiqh+ZpFwGdGSmvl4BYaaJbExKE
 IjotYilQ/L8ZwxNEB5D6p5KGmYA+0G4fgbN+HFzG7oQb0aCjps15Bc/9fgMdl55Bs8IkQ5zeC
 o4MKvSzjZu84/Sd3k0WKzlf4vvaRTqrNJD4p3bQGq6CiNTFgmYisOTTefN9yNOtnUkrvq9WF4
 sa3n9XiFQtZJXZ9I

On Wednesday 21 October 2015 18:03:02 Deepa Dinamani wrote:
> On Wed, Oct 21, 2015 at 4:17 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Wednesday 21 October 2015 15:17:14 Deepa Dinamani wrote:
> > > Rename old ioctl and data types to COMPAT_USBTEST_REQUEST and
> > > usbtest_param_compat, respectively.
> > >
> > > The change also uses monotonic time instead of real time for both ioctls.
> > > This ensures that the time duration is always positive.  Also use ktime
> > > api's for time routines accomodating moving all of kernel to use 64 bit
> > > time eventually.
> >
> > Changing to monotonic time is good here. Using ktime_t is often
> > a good idea, but I think in this case it causes more problems
> > because we end up having to convert it back into timeval.
> >
> 
> If we are keeping timeval in the interface, then I agree we don't need
> ktime_t.
> It was my understanding from the y2038 summary that you were recommending
> eliminating timeval.

It's a little more complicated: We try to avoid breaking compilation of
user space programs if at all possible, so if they use timeval today,
it's better not to require an API change as far as user space is
concerned.

On the other hand, we know that we have to do significant changes to
glibc, and any interfaces that are between the kernel and libc (i.e.
most system calls) should stop passing timeval. Instead the libc can
provide its own helper functions and e.g. implement gettimeofday()
by calling clock_gettime() and then converting the result.
> > The most important point to notice here is that the definition is in a .c
> > file, where user space cannot access it. This means that any program
> > calling it already has a copy of this definition, and changing the
> > definition here will not help you the way it would if the definition
> > was in include/uapi/linux/*.h
> >
> 
> This was going to be in a follow on patch.
> But, I was not sure if it should be done as part of outreachy.
> The driver in the current state is self contained in this .c file.
> All definitions should really be moved to a uapi header file as the
> original fixme comment indicates.
> 
> But the only current user program that seems to be using it is in the
> kernel tools.
> The structures and the ioctl are indeed redefined there.
> 
> Also, the previous struct and IOCTL definitions have not changed because of
> the above reason.
> I kept them intact for compatibility with existing binaries.

Yes, and that is the right idea. I suspect we will have to provide
different definitions for kernel and user space though, in one
form or another. You are right that we want to remove 'timeval'
from the kernel, and in order to keep user space unchanged, this
means defining the structure like

struct usbtest_param_32 {
        /* inputs */
        __u32                test_num;       /* 0..(TEST_CASES-1) */
        __u32                iterations;
	...
        __s32		      duration_sec;
	__s32		      duration_usec;
};

which is a well-defined binary version of what 32-bit user space
sees today. We also need the 64-bit version of that, for both
normal 64-bit tasks and future 32-bit tasks that are built with
the old structure definition.

Optionally, we can introduce a better interface with a new command
number as your patch does, but that should be a separate patch,
and we have to see if the USB maintainers want to do this or not.

> > > +     switch (code) {
> > > +     case USBTEST_REQUEST_COMPAT:
> > > +             temp.test_num = param_compat->test_num;
> > > +             temp.iterations = param_compat->iterations;
> > > +             temp.length = param_compat->length;
> > > +             temp.sglen = param_compat->sglen;
> > > +             temp.vary = param_compat->vary;
> > > +             param = &temp;
> > > +             break;
> > > +
> > > +     case USBTEST_REQUEST:
> > > +             break;
> >
> > This part looks ok, you just need to adapt it to using the right
> > structures. Basically what we want to do here is to handle both
> > variants of 'struct timeval' that user space might see. Based on
> > the _IOWR() macro definition, they give us two different command
> > codes that you can test for in the same way here.
> >
> > It also makes sense to add support for the .compat_ioctl at the
> > same time, because 64-bit kernels with 32-bit user space have
> > the exact same problem in this driver that future 32-bit kernels
> > will have with new vs old user space.
> >
> 
> So, you are suggesting using compat_timeval and timeval structs for the
> IOCTL's
> and hence maintaining the same ioctl code but use the difference in sizes
> to get different values.
> My understanding was that we don't want to expose any new timeval
> interfaces to the user.
> This is the reason I was adding the new interface.

My plan is a bit different: I want to remove all references to timeval
from the kernel, except for the bits we need for backwards compatibility.

In this driver, we are actually lucky that the structure has never
been visible to user space before, because that means nothing expects
to find the timeval mentioned in a particular kernel header, and
we can change it as I suggested above without breaking compilation,
because user space still sees its own definition of the same struct.

> On future 32-bit kernels however, timeval and compat_timeval would have the
> same size.
> This seems a concern at the offset.
> Unless we define the compat ioctl under #ifdef this will not work because
> of same size values for both ioctls.

Good thinking, but this can be avoided by having two fixed-size
structure definitions that are known to be different.

> USB framework does not support .compat_ioctl in the struct usb_driver.
> Isn't the general guideline to stay away from the .compat ioclt and provide
> a single interface which works for both 32/ 64 bit versions?

Ah, I wasn't aware that the USB framework didn't have that. You are
exactly right that in general it's best to define ioctl structures to
be compatible for both, but the problem in this driver is specifically
that it didn't do that.

> USB framework's higher level ioctl framework already supports a
> .compat_ioctl and pointers are fixed before coming into this usbtest driver.
> Are you suggesting .compat_ioctl extension to the usb_driver, or rewriting
> the driver as a cdev?

Once the handler is changed to handle both versions of the structure,
we don't need a separate .compat_ioctl any more, we just need to make
sure that the handler gets called for both. I haven't checked this but
according to your description I expect that is what happens already/

> The other ioctls take care of individual compat data types by internally
> using #ifdef CONFIG_COMPAT.

Ok. In my system call patch series, I introduce a new CONFIG_COMPAT_TIME
symbol that specifically deals with compatibility mode for 32-bit time_t
on both 32-bit and 64-bit architectures. This is the #ifdef we should
be using here as well in principle. My patches however are not merged
yet, but there is no harm in leaving that code active here, as both versions
provide a correct API and do not overflow in 2038.

	Arnd

