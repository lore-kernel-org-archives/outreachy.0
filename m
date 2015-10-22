X-GM-THRID: 6208227682236235776
X-Received: by 10.129.53.14 with SMTP id c14mr13098865ywa.16.1445532205967;
        Thu, 22 Oct 2015 09:43:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.67 with SMTP id i64ls92334ioe.41.gmail; Thu, 22 Oct
 2015 09:43:25 -0700 (PDT)
X-Received: by 10.50.62.68 with SMTP id w4mr13838115igr.13.1445532205362;
        Thu, 22 Oct 2015 09:43:25 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-io0-x22e.google.com (mail-io0-x22e.google.com. [2607:f8b0:4001:c06::22e])
        by gmr-mx.google.com with ESMTPS id lo7si762472igb.3.2015.10.22.09.43.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 09:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) client-ip=2607:f8b0:4001:c06::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22e.google.com with SMTP id 1so97344735iow.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 09:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=q/oXoi46NILzDum56/zt9Pfx0ks1p9swMrep+8As4yg=;
        b=Epf+cIFsc5tepa7q3ry050MLYeOSI28bVrG66riEYZdAmEt2b70HOruKc6YU147Dym
         RWwY66EENJIp3CIRRZpLATueovjUVs9mtdQfE4CoTf6Nj6bLYGA3+HlZ/hL96v531/Bf
         OTHYA9HUfkk0b+m/YFrpENlyNmsOeJkH10Khorhez5fr1uNp46ZWKiyb0XSxZaCNwjJV
         1MiV+VgraGHS1nhcyeHnSvfI+IQOeAPtPyhqvjcT13u7vaCnX71WaLwGUX/rUtKV6vmL
         Aa2eK1eh1bJsvwqk2Wg1rfQ2AAgOrcUdiHqUI689tMaKsSvwdrhM0G6X2E/B2W+g7F8C
         EOEg==
MIME-Version: 1.0
X-Received: by 10.107.11.24 with SMTP id v24mr18893806ioi.184.1445532205157;
 Thu, 22 Oct 2015 09:43:25 -0700 (PDT)
Received: by 10.107.171.198 with HTTP; Thu, 22 Oct 2015 09:43:25 -0700 (PDT)
In-Reply-To: <4702937.ch2QM1X5CA@wuerfel>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com>
	<8949060.7jQkPAjlGW@wuerfel>
	<CABeXuvpgNwSArZYy4LZdLg=5=9hGAXvsO5PjmZEsGo9NYCPdmg@mail.gmail.com>
	<4702937.ch2QM1X5CA@wuerfel>
Date: Thu, 22 Oct 2015 09:43:25 -0700
Message-ID: <CABeXuvqLEZb=RFKdKHsp13sYu1aa6+xfZ7Qa-ZjAjJfXQck4kg@mail.gmail.com>
Subject: [PATCH] usb: usbtest: Add new ioctl interface
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
	"y2038@lists.linaro.org" <y2038@lists.linaro.org>
Content-Type: multipart/alternative; boundary=001a113f907099936b0522b43140

--001a113f907099936b0522b43140
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 2:36 AM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Wednesday 21 October 2015 18:03:02 Deepa Dinamani wrote:
> > On Wed, Oct 21, 2015 at 4:17 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Wednesday 21 October 2015 15:17:14 Deepa Dinamani wrote:
> > > > Rename old ioctl and data types to COMPAT_USBTEST_REQUEST and
> > > > usbtest_param_compat, respectively.
> > > >
> > > > The change also uses monotonic time instead of real time for both
> ioctls.
> > > > This ensures that the time duration is always positive.  Also use
> ktime
> > > > api's for time routines accomodating moving all of kernel to use 64
> bit
> > > > time eventually.
> > >
> > > Changing to monotonic time is good here. Using ktime_t is often
> > > a good idea, but I think in this case it causes more problems
> > > because we end up having to convert it back into timeval.
> > >
> >
> > If we are keeping timeval in the interface, then I agree we don't need
> > ktime_t.
> > It was my understanding from the y2038 summary that you were recommending
> > eliminating timeval.
>
> It's a little more complicated: We try to avoid breaking compilation of
> user space programs if at all possible, so if they use timeval today,
> it's better not to require an API change as far as user space is
> concerned.
>
> On the other hand, we know that we have to do significant changes to
> glibc, and any interfaces that are between the kernel and libc (i.e.
> most system calls) should stop passing timeval. Instead the libc can
> provide its own helper functions and e.g. implement gettimeofday()
> by calling clock_gettime() and then converting the result.
> > > The most important point to notice here is that the definition is in a
> .c
> > > file, where user space cannot access it. This means that any program
> > > calling it already has a copy of this definition, and changing the
> > > definition here will not help you the way it would if the definition
> > > was in include/uapi/linux/*.h
> > >
> >
> > This was going to be in a follow on patch.
> > But, I was not sure if it should be done as part of outreachy.
> > The driver in the current state is self contained in this .c file.
> > All definitions should really be moved to a uapi header file as the
> > original fixme comment indicates.
> >
> > But the only current user program that seems to be using it is in the
> > kernel tools.
> > The structures and the ioctl are indeed redefined there.
> >
> > Also, the previous struct and IOCTL definitions have not changed because
> of
> > the above reason.
> > I kept them intact for compatibility with existing binaries.
>
> Yes, and that is the right idea. I suspect we will have to provide
> different definitions for kernel and user space though, in one
> form or another. You are right that we want to remove 'timeval'
> from the kernel, and in order to keep user space unchanged, this
> means defining the structure like
>
> struct usbtest_param_32 {
>         /* inputs */
>         __u32                test_num;       /* 0..(TEST_CASES-1) */
>         __u32                iterations;
>         ...
>         __s32                 duration_sec;
>         __s32                 duration_usec;
> };
>
> which is a well-defined binary version of what 32-bit user space
> sees today. We also need the 64-bit version of that, for both
> normal 64-bit tasks and future 32-bit tasks that are built with
> the old structure definition.
>
> Optionally, we can introduce a better interface with a new command
> number as your patch does, but that should be a separate patch,
> and we have to see if the USB maintainers want to do this or not.
>

There are two problems with the original ioctl interface:

1. Because of the use of timeval, compatibility is broken between 32 bit
and 64 bit binaries.

This has nothing to do with y2038 problem at all.
This is the case with all interfaces using timeval itself and has nothing
to do with this one
particular bad interface design.

The struct you suggested above will work to map to two separate ioctls.
But, if this is a generic problem, shouldn't the above solution be in some
common file?
For instance we could have this:

struct timeval_32 {
        __s32                 duration_sec;
        __s32                 duration_usec;
};

And, a similar struct for timeval_64.

This would also mean adding api's to fill the structures defined above.
Basically an entire layer.

This is not necessary for this driver as the struct's are not exposed.
My guess is also that there aren't many applications using this because of
the way it needs redeclaring everything in the application.

Since the original implementation is broken already, my first preference
was to fix the interface with the new interface itself.
My intention was to not fix the broken interface, but to replace or provide
a new interface.

Wouldn't the following be better?

#ifdef CONFIG_COMPAT
          old ioctl(code = 100)
           use old timeval struct
          #if CONFIG_COMPAT_TIME
                 use compat_timeval instead of timeval
#else
          new ioctl(code = 101)
#endif

The old ioctl support to be eventually removed completely.


2. The y2038 problem in the driver is quite straight forward as to picking
the right calls to fill in whatever data types we choose above.



>
> > > > +     switch (code) {
> > > > +     case USBTEST_REQUEST_COMPAT:
> > > > +             temp.test_num = param_compat->test_num;
> > > > +             temp.iterations = param_compat->iterations;
> > > > +             temp.length = param_compat->length;
> > > > +             temp.sglen = param_compat->sglen;
> > > > +             temp.vary = param_compat->vary;
> > > > +             param = &temp;
> > > > +             break;
> > > > +
> > > > +     case USBTEST_REQUEST:
> > > > +             break;
> > >
> > > This part looks ok, you just need to adapt it to using the right
> > > structures. Basically what we want to do here is to handle both
> > > variants of 'struct timeval' that user space might see. Based on
> > > the _IOWR() macro definition, they give us two different command
> > > codes that you can test for in the same way here.
> > >
> > > It also makes sense to add support for the .compat_ioctl at the
> > > same time, because 64-bit kernels with 32-bit user space have
> > > the exact same problem in this driver that future 32-bit kernels
> > > will have with new vs old user space.
> > >
> >
> > So, you are suggesting using compat_timeval and timeval structs for the
> > IOCTL's
> > and hence maintaining the same ioctl code but use the difference in sizes
> > to get different values.
> > My understanding was that we don't want to expose any new timeval
> > interfaces to the user.
> > This is the reason I was adding the new interface.
>
> My plan is a bit different: I want to remove all references to timeval
> from the kernel, except for the bits we need for backwards compatibility.
>
> In this driver, we are actually lucky that the structure has never
> been visible to user space before, because that means nothing expects
> to find the timeval mentioned in a particular kernel header, and
> we can change it as I suggested above without breaking compilation,
> because user space still sees its own definition of the same struct.
>
> > On future 32-bit kernels however, timeval and compat_timeval would have
> the
> > same size.
> > This seems a concern at the offset.
> > Unless we define the compat ioctl under #ifdef this will not work because
> > of same size values for both ioctls.
>
> Good thinking, but this can be avoided by having two fixed-size
> structure definitions that are known to be different.
>
> > USB framework does not support .compat_ioctl in the struct usb_driver.
> > Isn't the general guideline to stay away from the .compat ioclt and
> provide
> > a single interface which works for both 32/ 64 bit versions?
>
> Ah, I wasn't aware that the USB framework didn't have that. You are
> exactly right that in general it's best to define ioctl structures to
> be compatible for both, but the problem in this driver is specifically
> that it didn't do that.
>
> > USB framework's higher level ioctl framework already supports a
> > .compat_ioctl and pointers are fixed before coming into this usbtest
> driver.
> > Are you suggesting .compat_ioctl extension to the usb_driver, or
> rewriting
> > the driver as a cdev?
>
> Once the handler is changed to handle both versions of the structure,
> we don't need a separate .compat_ioctl any more, we just need to make
> sure that the handler gets called for both. I haven't checked this but
> according to your description I expect that is what happens already/
>
> > The other ioctls take care of individual compat data types by internally
> > using #ifdef CONFIG_COMPAT.
>
> Ok. In my system call patch series, I introduce a new CONFIG_COMPAT_TIME
> symbol that specifically deals with compatibility mode for 32-bit time_t
> on both 32-bit and 64-bit architectures. This is the #ifdef we should
> be using here as well in principle. My patches however are not merged
> yet, but there is no harm in leaving that code active here, as both
> versions
> provide a correct API and do not overflow in 2038.
>
>         Arnd
>
>
Does it help to review a patch of this kind with a design document?
Does the kernel review system allow something like this?
Some of the questions that popped up are the ones I asked myself before.
It might let the thought process be more evident.


-Deepa

--001a113f907099936b0522b43140
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Oct 22, 2015 at 2:36 AM, Arnd Bergmann <span dir=3D"ltr">&lt;<a=
>arnd@arndb.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><span>On Wednesday 21 October 2015 18:03:02 Deepa Dinamani w=
rote:<br>
&gt; On Wed, Oct 21, 2015 at 4:17 PM, Arnd Bergmann &lt;<a>arnd@arndb.de</a=
>&gt; wrote:<br>
&gt; &gt; On Wednesday 21 October 2015 15:17:14 Deepa Dinamani wrote:<br>
</span><span>&gt; &gt; &gt; Rename old ioctl and data types to COMPAT_USBTE=
ST_REQUEST and<br>
&gt; &gt; &gt; usbtest_param_compat, respectively.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The change also uses monotonic time instead of real time for=
 both ioctls.<br>
&gt; &gt; &gt; This ensures that the time duration is always positive.=C2=
=A0 Also use ktime<br>
&gt; &gt; &gt; api&#39;s for time routines accomodating moving all of kerne=
l to use 64 bit<br>
&gt; &gt; &gt; time eventually.<br>
&gt; &gt;<br>
&gt; &gt; Changing to monotonic time is good here. Using ktime_t is often<b=
r>
&gt; &gt; a good idea, but I think in this case it causes more problems<br>
&gt; &gt; because we end up having to convert it back into timeval.<br>
&gt; &gt;<br>
&gt;<br>
&gt; If we are keeping timeval in the interface, then I agree we don&#39;t =
need<br>
&gt; ktime_t.<br>
&gt; It was my understanding from the y2038 summary that you were recommend=
ing<br>
&gt; eliminating timeval.<br>
<br>
</span>It&#39;s a little more complicated: We try to avoid breaking compila=
tion of<br>
user space programs if at all possible, so if they use timeval today,<br>
it&#39;s better not to require an API change as far as user space is<br>
concerned.<br>
<br>
On the other hand, we know that we have to do significant changes to<br>
glibc, and any interfaces that are between the kernel and libc (i.e.<br>
most system calls) should stop passing timeval. Instead the libc can<br>
provide its own helper functions and e.g. implement gettimeofday()<br>
by calling clock_gettime() and then converting the result.<br>
<span>&gt; &gt; The most important point to notice here is that the definit=
ion is in a .c<br>
&gt; &gt; file, where user space cannot access it. This means that any prog=
ram<br>
&gt; &gt; calling it already has a copy of this definition, and changing th=
e<br>
&gt; &gt; definition here will not help you the way it would if the definit=
ion<br>
&gt; &gt; was in include/uapi/linux/*.h<br>
&gt; &gt;<br>
&gt;<br>
&gt; This was going to be in a follow on patch.<br>
&gt; But, I was not sure if it should be done as part of outreachy.<br>
&gt; The driver in the current state is self contained in this .c file.<br>
&gt; All definitions should really be moved to a uapi header file as the<br=
>
&gt; original fixme comment indicates.<br>
&gt;<br>
&gt; But the only current user program that seems to be using it is in the<=
br>
&gt; kernel tools.<br>
&gt; The structures and the ioctl are indeed redefined there.<br>
&gt;<br>
&gt; Also, the previous struct and IOCTL definitions have not changed becau=
se of<br>
&gt; the above reason.<br>
&gt; I kept them intact for compatibility with existing binaries.<br>
<br>
</span>Yes, and that is the right idea. I suspect we will have to provide<b=
r>
different definitions for kernel and user space though, in one<br>
form or another. You are right that we want to remove &#39;timeval&#39;<br>
from the kernel, and in order to keep user space unchanged, this<br>
means defining the structure like<br>
<br>
struct usbtest_param_32 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* inputs */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 __u32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 test_num;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* 0..(TEST_CASES-1) */<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 __u32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 iterations;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 __s32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0duration_sec;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 __s32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0duration_usec;<br>
};<br>
<br>
which is a well-defined binary version of what 32-bit user space<br>
sees today. We also need the 64-bit version of that, for both<br>
normal 64-bit tasks and future 32-bit tasks that are built with<br>
the old structure definition.<br>
<br>
Optionally, we can introduce a better interface with a new command<br>
number as your patch does, but that should be a separate patch,<br>
and we have to see if the USB maintainers want to do this or not.<br></bloc=
kquote><div><br></div><div>There are two problems with the original ioctl i=
nterface:<br><br></div><div>1. Because of the use of timeval, compatibility=
 is broken between 32 bit and 64 bit binaries.<br></div></div><div>=C2=A0</=
div><div class=3D"gmail_quote"><div>This has nothing to do with y2038 probl=
em at all.<br>This is the case with all interfaces using timeval itself and=
 has nothing to do with this one<br></div><div>particular bad interface des=
ign.<br></div><div><br></div><div>The struct you suggested above will work =
to map to two separate ioctls.<br></div><div>But, if this is a generic prob=
lem, shouldn&#39;t the above solution be in some common file?<br></div><div=
>For instance we could have this:<br><br></div><div>struct timeval_32 {<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __s32=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0duration_sec;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 __s32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0duration_usec;<br>};<br><br></div><div>And, a similar s=
truct for timeval_64.<br><br></div><div>This would also mean adding api&#39=
;s to fill the structures defined above.<br></div><div>Basically an entire =
layer.<br><br></div><div>This is not necessary for this driver as the struc=
t&#39;s are not exposed.<br></div><div>My guess is also that there aren&#39=
;t many applications using this because of the way it needs redeclaring=C2=
=A0everything in the application.<br><br></div><div>Since the original impl=
ementation is broken already, my first preference was to fix the interface =
with the new interface itself.<br></div><div>My intention was to not fix th=
e broken interface, but to replace or provide a new interface.<br><br></div=
><div>Wouldn&#39;t the following be better?<br><br></div><div>#ifdef CONFIG=
_COMPAT<br></div><div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 old ioctl(code =3D 100)<br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 use old timeval struct =C2=A0=C2=A0 <br></di=
v><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #if CONFIG_COMPAT_TIME <br></div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 use comp=
at_timeval instead of timeval<br></div>#else<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 new ioctl(code =3D 101)</div>#endif<br><div><br=
></div><div>The old ioctl support to be eventually removed completely.<br><=
/div><div><br></div><div><br></div><div>2. The y2038 problem in the driver =
is quite straight forward as to picking the right calls to fill in whatever=
 data types we choose above.<br><br></div></div><div>=C2=A0</div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div><div><br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0switch (code) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0case USBTEST_REQUEST_COMPAT:<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp.test_n=
um =3D param_compat-&gt;test_num;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp.iterat=
ions =3D param_compat-&gt;iterations;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp.length=
 =3D param_compat-&gt;length;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp.sglen =
=3D param_compat-&gt;sglen;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp.vary =
=3D param_compat-&gt;vary;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param =3D &=
amp;temp;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0case USBTEST_REQUEST:<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; &gt;<br>
&gt; &gt; This part looks ok, you just need to adapt it to using the right<=
br>
&gt; &gt; structures. Basically what we want to do here is to handle both<b=
r>
&gt; &gt; variants of &#39;struct timeval&#39; that user space might see. B=
ased on<br>
&gt; &gt; the _IOWR() macro definition, they give us two different command<=
br>
&gt; &gt; codes that you can test for in the same way here.<br>
&gt; &gt;<br>
&gt; &gt; It also makes sense to add support for the .compat_ioctl at the<b=
r>
&gt; &gt; same time, because 64-bit kernels with 32-bit user space have<br>
&gt; &gt; the exact same problem in this driver that future 32-bit kernels<=
br>
&gt; &gt; will have with new vs old user space.<br>
&gt; &gt;<br>
&gt;<br>
&gt; So, you are suggesting using compat_timeval and timeval structs for th=
e<br>
&gt; IOCTL&#39;s<br>
&gt; and hence maintaining the same ioctl code but use the difference in si=
zes<br>
&gt; to get different values.<br>
&gt; My understanding was that we don&#39;t want to expose any new timeval<=
br>
&gt; interfaces to the user.<br>
&gt; This is the reason I was adding the new interface.<br>
<br>
</div></div>My plan is a bit different: I want to remove all references to =
timeval<br>
from the kernel, except for the bits we need for backwards compatibility.<b=
r>
<br>
In this driver, we are actually lucky that the structure has never<br>
been visible to user space before, because that means nothing expects<br>
to find the timeval mentioned in a particular kernel header, and<br>
we can change it as I suggested above without breaking compilation,<br>
because user space still sees its own definition of the same struct.<br>
<span><br>
&gt; On future 32-bit kernels however, timeval and compat_timeval would hav=
e the<br>
&gt; same size.<br>
&gt; This seems a concern at the offset.<br>
&gt; Unless we define the compat ioctl under #ifdef this will not work beca=
use<br>
&gt; of same size values for both ioctls.<br>
<br>
</span>Good thinking, but this can be avoided by having two fixed-size<br>
structure definitions that are known to be different.<br>
<span><br>
&gt; USB framework does not support .compat_ioctl in the struct usb_driver.=
<br>
&gt; Isn&#39;t the general guideline to stay away from the .compat ioclt an=
d provide<br>
&gt; a single interface which works for both 32/ 64 bit versions?<br>
<br>
</span>Ah, I wasn&#39;t aware that the USB framework didn&#39;t have that. =
You are<br>
exactly right that in general it&#39;s best to define ioctl structures to<b=
r>
be compatible for both, but the problem in this driver is specifically<br>
that it didn&#39;t do that.<br>
<span><br>
&gt; USB framework&#39;s higher level ioctl framework already supports a<br=
>
&gt; .compat_ioctl and pointers are fixed before coming into this usbtest d=
river.<br>
&gt; Are you suggesting .compat_ioctl extension to the usb_driver, or rewri=
ting<br>
&gt; the driver as a cdev?<br>
<br>
</span>Once the handler is changed to handle both versions of the structure=
,<br>
we don&#39;t need a separate .compat_ioctl any more, we just need to make<b=
r>
sure that the handler gets called for both. I haven&#39;t checked this but<=
br>
according to your description I expect that is what happens already/<br>
<span><br>
&gt; The other ioctls take care of individual compat data types by internal=
ly<br>
&gt; using #ifdef CONFIG_COMPAT.<br>
<br>
</span>Ok. In my system call patch series, I introduce a new CONFIG_COMPAT_=
TIME<br>
symbol that specifically deals with compatibility mode for 32-bit time_t<br=
>
on both 32-bit and 64-bit architectures. This is the #ifdef we should<br>
be using here as well in principle. My patches however are not merged<br>
yet, but there is no harm in leaving that code active here, as both version=
s<br>
provide a correct API and do not overflow in 2038.<br>
<span><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd</font></span>=C2=A0=C2=A0<br><br></blockqu=
ote></div><div class=3D"gmail_quote"><br><div></div><div>Does it help to re=
view a patch of this kind with a design document?<br></div><div>Does the ke=
rnel review system allow something like this?<br></div><div>Some of the que=
stions that popped up are the ones I asked myself before.<br></div><div>It =
might let the thought process be more evident.<br><br><br></div><div>-Deepa=
<br></div></div><br></div></div>

--001a113f907099936b0522b43140--

