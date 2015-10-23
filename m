X-GM-THRID: 6208227682236235776
X-Received: by 10.107.7.230 with SMTP id g99mr1122252ioi.17.1445637299537;
        Fri, 23 Oct 2015 14:54:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.138 with SMTP id 10ls2618622qgz.51.gmail; Fri, 23 Oct
 2015 14:54:58 -0700 (PDT)
X-Received: by 10.129.85.80 with SMTP id j77mr19611849ywb.31.1445637298841;
        Fri, 23 Oct 2015 14:54:58 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-ig0-x229.google.com (mail-ig0-x229.google.com. [2607:f8b0:4001:c05::229])
        by gmr-mx.google.com with ESMTPS id hx4si294591igb.0.2015.10.23.14.54.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 14:54:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c05::229 as permitted sender) client-ip=2607:f8b0:4001:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c05::229 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x229.google.com with SMTP id dj2so24534898igb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 14:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=KPaodcqoFRz/jzthFYeezWj1Hd3SOPserirkVtoWwKY=;
        b=sY2D4cTq7qRCG1+/iLuS4fM2eeWM+pA2yQR5T7LeRZLvM6kySxZmEEFwezUAqC//ii
         4ajX+sPBjY7G5QgRVLca1txs2IuGZGgM0QKJmdvIQmyG1Vm0pVEyKW4rvTaZ9J+TsgNk
         BTA1nl/LCJ/iIqianqzHu2Dwu7H3DY9PKXVD01Wn2zGN/B11Vx4hV0fcFt7JEY0SlrY0
         6Ee6VozEwDsbF+UTZVD7ebhwxMFKAFlRgQ9MY55q+9ow7/jBgAEjukQw1fCucXO2aqGu
         a6BIZ67k6jI48hMv7WlLN9ocpkzzknXtKPxY7ZuyEXNZv3ShhC5jvV1/rrszEszwp18V
         XkPw==
MIME-Version: 1.0
X-Received: by 10.50.22.5 with SMTP id z5mr7299109ige.49.1445637298678; Fri,
 23 Oct 2015 14:54:58 -0700 (PDT)
Received: by 10.107.171.198 with HTTP; Fri, 23 Oct 2015 14:54:58 -0700 (PDT)
In-Reply-To: <5791416.l1G7oSbyOl@wuerfel>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com>
	<4702937.ch2QM1X5CA@wuerfel>
	<CABeXuvqLEZb=RFKdKHsp13sYu1aa6+xfZ7Qa-ZjAjJfXQck4kg@mail.gmail.com>
	<5791416.l1G7oSbyOl@wuerfel>
Date: Fri, 23 Oct 2015 14:54:58 -0700
Message-ID: <CABeXuvqm1ATS-nqq9rjWnDOa=P_a3Up3Pe=vvd1gVVxYadsoQg@mail.gmail.com>
Subject: [PATCH] usb: usbtest: Add new ioctl interface
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
	"y2038@lists.linaro.org" <y2038@lists.linaro.org>
Content-Type: multipart/alternative; boundary=047d7b10c87fa9700d0522cca935

--047d7b10c87fa9700d0522cca935
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 1:45 PM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Thursday 22 October 2015 09:43:25 Deepa Dinamani wrote:
> > On Thu, Oct 22, 2015 at 2:36 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Wednesday 21 October 2015 18:03:02 Deepa Dinamani wrote:
> > > > On Wed, Oct 21, 2015 at 4:17 PM, Arnd Bergmann <arnd@arndb.de>
> wrote:
> > > Yes, and that is the right idea. I suspect we will have to provide
> > > different definitions for kernel and user space though, in one
> > > form or another. You are right that we want to remove 'timeval'
> > > from the kernel, and in order to keep user space unchanged, this
> > > means defining the structure like
> > >
> > > struct usbtest_param_32 {
> > >         /* inputs */
> > >         __u32                test_num;       /* 0..(TEST_CASES-1) */
> > >         __u32                iterations;
> > >         ...
> > >         __s32                 duration_sec;
> > >         __s32                 duration_usec;
> > > };
> > >
> > > which is a well-defined binary version of what 32-bit user space
> > > sees today. We also need the 64-bit version of that, for both
> > > normal 64-bit tasks and future 32-bit tasks that are built with
> > > the old structure definition.
> > >
> > > Optionally, we can introduce a better interface with a new command
> > > number as your patch does, but that should be a separate patch,
> > > and we have to see if the USB maintainers want to do this or not.
> > >
> >
> > There are two problems with the original ioctl interface:
> >
> > 1. Because of the use of timeval, compatibility is broken between 32 bit
> > and 64 bit binaries.
> >
> > This has nothing to do with y2038 problem at all.
> > This is the case with all interfaces using timeval itself and has nothing
> > to do with this one
> > particular bad interface design.
>
> Right.
>
> > The struct you suggested above will work to map to two separate ioctls.
> > But, if this is a generic problem, shouldn't the above solution be in
> some
> > common file?
> > For instance we could have this:
> >
> > struct timeval_32 {
> >         __s32                 duration_sec;
> >         __s32                 duration_usec;
> > };
>
> This is essentially 'struct compat_timeval', which I intend to keep
> around in the kernel for backwards compatibility and will make available
> to 32-bit kernels that currently can't use it. The patches still need
> a few more review rounds though.
>
> > And, a similar struct for timeval_64.
> >
> > This would also mean adding api's to fill the structures defined above.
> > Basically an entire layer.
>
> We should really see how many drivers need this. I have shown that the
> core kernel does not need it with my patches, as all system calls that
> use timeval are already deprecated. I have a list of drivers that need
> to be converted at
>
>
> https://docs.google.com/spreadsheets/d/1HCYwHXxs48TsTb6IGUduNjQnmfRvMPzCN6T_0YiQwis/edit#gid=346406462
>
> on the second sheet. All the ones that have an ABI exposed to user space
> are marked 'uapi' or 'ioctl', and we could check which ones of these
> would be helped by having a generic set of helpers for timeval_64.
>

Ok. I can do this. I can get back to you early next week.

>
> > This is not necessary for this driver as the struct's are not exposed.
> > My guess is also that there aren't many applications using this because
> of
> > the way it needs redeclaring everything in the application.
>
> Agreed. My guess is that there is only one application using it at all,
> but it's hard to know for sure. If we could prove that there is only one,
> and we can change it to use a new ioctl command if that is present in some
> header file, all this could be simplified.
>

Ok. I can contact the usb linux mailing list if they know of any other or
just to fish around for their opinion.
I'll keep you in the cc. Let me know if you would prefer the whole 2038/
outreachy mailing list instead.

>
> > Since the original implementation is broken already, my first preference
> > was to fix the interface with the new interface itself.
>
> I wouldn't call the original implementation broken, except for the
> 64-bit compat problem. What makes it broken is that the ioctl data
> structure changes in user space when that changes the defintion of
> 'struct timeval', but since the data returned here is a difference
> of two times, the current 32-bit tv_sec variable is actually good
> enough.
>
>
I don't think seconds granularity is sufficient here for usb operations.
This page shows some tests which run for less than a second:
http://blackfin.uclinux.org/doku.php?id=linux-kernel:usb-gadget:zero


> > My intention was to not fix the broken interface, but to replace or
> provide
> > a new interface.
> >
> > Wouldn't the following be better?
> >
> > #ifdef CONFIG_COMPAT
> >           old ioctl(code = 100)
> >            use old timeval struct
> >           #if CONFIG_COMPAT_TIME
> >                  use compat_timeval instead of timeval
> > #else
> >           new ioctl(code = 101)
> > #endif
>
> Sorry, I'm not really following here. Doesn't this break existing
> 32-bit users that don't even care about the y2038 issue?
>

Maybe I misunderstood what CONFIG_COMPAT_TIME was doing.
What I meant was that we should keep the old interface only for older
binaries.
All new code should only use new interface.
That was the eventual goal.

#ifdef CONFIG_COMPAT_TIME
           old ioctl(code = 100)
            support 64 bit and 32 bit timeval
#endif
         new ioctl(code = 101)

By the time all support for 32-bit time is removed, use of the old
interface should be removed.

Timeval was a bad struct to expose to userspace anyway.

In this regard, I was going to fix up the usbtest tool to use new interface
also.


> > The old ioctl support to be eventually removed completely.
>
> We should only ever plan to break existing user space if there
> is no other option at all. Remember that most users don't care
> about the y2038 problem because they are on 64-bit systems that
> have a couple of bugs we need to fix in the next few years, or
> because they are on 32-bit systems that they will stop using
> before it becomes a problem. The implied rules that result from
> this are:
>
> - nothing we do should require changes for 64-bit tasks
>
> - all 32-bit tasks should keep working on future kernels (both 32-bit
>   and 64-bit) unless they explicitly disable CONFIG_COMPAT_TIME
>
> - CONFIG_COMPAT_TIME and all code under it will be removed in 2038
>   at the latest, but perhaps not much earlier.
>
> - if possible, source code that produces a working 32-bit binary today
>   should not need modifications to work when compiled against a libc
>   with 64-bit time_t and run on a kernel without CONFIG_COMPAT_TIME.
>
> > 2. The y2038 problem in the driver is quite straight forward as to
> picking
> > the right calls to fill in whatever data types we choose above.
>
> I would argue that it's exactly the same problem for 32-bit and 64-bit
> kernels in this driver: you can have user space binaries with different
> definitions of timeval and we want both of them to work.
>
> > > > USB framework's higher level ioctl framework already supports a
> > > > .compat_ioctl and pointers are fixed before coming into this usbtest
> > > driver.
> > > > Are you suggesting .compat_ioctl extension to the usb_driver, or
> > > rewriting
> > > > the driver as a cdev?
> > >
> > > Once the handler is changed to handle both versions of the structure,
> > > we don't need a separate .compat_ioctl any more, we just need to make
> > > sure that the handler gets called for both. I haven't checked this but
> > > according to your description I expect that is what happens already/
> > >
> > > > The other ioctls take care of individual compat data types by
> internally
> > > > using #ifdef CONFIG_COMPAT.
> > >
> > > Ok. In my system call patch series, I introduce a new
> CONFIG_COMPAT_TIME
> > > symbol that specifically deals with compatibility mode for 32-bit
> time_t
> > > on both 32-bit and 64-bit architectures. This is the #ifdef we should
> > > be using here as well in principle. My patches however are not merged
> > > yet, but there is no harm in leaving that code active here, as both
> > > versions
> > > provide a correct API and do not overflow in 2038.
> > >
> > >
> > Does it help to review a patch of this kind with a design document?
> > Does the kernel review system allow something like this?
> > Some of the questions that popped up are the ones I asked myself before.
> > It might let the thought process be more evident.
>
> Most kernel developers work better with patches than with design documents.
>

I was saying patches only communicate the final product.
For instance, I did consider using .compat_ioctl, timespec64 etc.
I cannot really tell the story as to why this is the best way to do it
unless someone asks.

Summarizing the next steps:

1. Figure out how many ioctl or uapi need 64-bit timeval.
2. Should compat fix for existing usbtest ioctl be based on top of your
COMPAT_TIME changes?
3. Contact usb list about usbtest ioctl uses and about proposed new ioctl.

>
>         Arnd
>

- Deepa

--047d7b10c87fa9700d0522cca935
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Oct 22, 2015 at 1:45 PM, Arnd Bergmann <span dir=3D"ltr">&lt;<a=
>arnd@arndb.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><span>On Thursday 22 October 2015 09:43:25 Deepa Dinamani wr=
ote:<br>
&gt; On Thu, Oct 22, 2015 at 2:36 AM, Arnd Bergmann &lt;<a>arnd@arndb.de</a=
>&gt; wrote:<br>
&gt; &gt; On Wednesday 21 October 2015 18:03:02 Deepa Dinamani wrote:<br>
&gt; &gt; &gt; On Wed, Oct 21, 2015 at 4:17 PM, Arnd Bergmann &lt;<a>arnd@a=
rndb.de</a>&gt; wrote:<br>
</span><div><div>&gt; &gt; Yes, and that is the right idea. I suspect we wi=
ll have to provide<br>
&gt; &gt; different definitions for kernel and user space though, in one<br=
>
&gt; &gt; form or another. You are right that we want to remove &#39;timeva=
l&#39;<br>
&gt; &gt; from the kernel, and in order to keep user space unchanged, this<=
br>
&gt; &gt; means defining the structure like<br>
&gt; &gt;<br>
&gt; &gt; struct usbtest_param_32 {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* inputs */<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__u32=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 test_num;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* 0..(TES=
T_CASES-1) */<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__u32=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 iterations;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0...<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__s32=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0duration_sec;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__s32=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0duration_usec;<br>
&gt; &gt; };<br>
&gt; &gt;<br>
&gt; &gt; which is a well-defined binary version of what 32-bit user space<=
br>
&gt; &gt; sees today. We also need the 64-bit version of that, for both<br>
&gt; &gt; normal 64-bit tasks and future 32-bit tasks that are built with<b=
r>
&gt; &gt; the old structure definition.<br>
&gt; &gt;<br>
&gt; &gt; Optionally, we can introduce a better interface with a new comman=
d<br>
&gt; &gt; number as your patch does, but that should be a separate patch,<b=
r>
&gt; &gt; and we have to see if the USB maintainers want to do this or not.=
<br>
&gt; &gt;<br>
&gt;<br>
&gt; There are two problems with the original ioctl interface:<br>
&gt;<br>
&gt; 1. Because of the use of timeval, compatibility is broken between 32 b=
it<br>
&gt; and 64 bit binaries.<br>
&gt;<br>
&gt; This has nothing to do with y2038 problem at all.<br>
&gt; This is the case with all interfaces using timeval itself and has noth=
ing<br>
&gt; to do with this one<br>
&gt; particular bad interface design.<br>
<br>
</div></div>Right.<br>
<span><br>
&gt; The struct you suggested above will work to map to two separate ioctls=
.<br>
&gt; But, if this is a generic problem, shouldn&#39;t the above solution be=
 in some<br>
&gt; common file?<br>
&gt; For instance we could have this:<br>
&gt;<br>
&gt; struct timeval_32 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__s32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0duration_sec;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__s32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0duration_usec;<br>
&gt; };<br>
<br>
</span>This is essentially &#39;struct compat_timeval&#39;, which I intend =
to keep<br>
around in the kernel for backwards compatibility and will make available<br=
>
to 32-bit kernels that currently can&#39;t use it. The patches still need<b=
r>
a few more review rounds though.<br>
<span><br>
&gt; And, a similar struct for timeval_64.<br>
&gt;<br>
&gt; This would also mean adding api&#39;s to fill the structures defined a=
bove.<br>
&gt; Basically an entire layer.<br>
<br>
</span>We should really see how many drivers need this. I have shown that t=
he<br>
core kernel does not need it with my patches, as all system calls that<br>
use timeval are already deprecated. I have a list of drivers that need<br>
to be converted at<br>
<br>
<a href=3D"https://docs.google.com/spreadsheets/d/1HCYwHXxs48TsTb6IGUduNjQn=
mfRvMPzCN6T_0YiQwis/edit#gid=3D346406462" rel=3D"noreferrer" target=3D"_bla=
nk">https://docs.google.com/spreadsheets/d/1HCYwHXxs48TsTb6IGUduNjQnmfRvMPz=
CN6T_0YiQwis/edit#gid=3D346406462</a><br>
<br>
on the second sheet. All the ones that have an ABI exposed to user space<br=
>
are marked &#39;uapi&#39; or &#39;ioctl&#39;, and we could check which ones=
 of these<br>
would be helped by having a generic set of helpers for timeval_64.<br></blo=
ckquote><div><br></div><div>Ok. I can do this. I can get back to you early =
next week.<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<span><br>
&gt; This is not necessary for this driver as the struct&#39;s are not expo=
sed.<br>
&gt; My guess is also that there aren&#39;t many applications using this be=
cause of<br>
&gt; the way it needs redeclaring everything in the application.<br>
<br>
</span>Agreed. My guess is that there is only one application using it at a=
ll,<br>
but it&#39;s hard to know for sure. If we could prove that there is only on=
e,<br>
and we can change it to use a new ioctl command if that is present in some<=
br>
header file, all this could be simplified.<br></blockquote><div><br></div><=
div>Ok. I can contact the usb linux mailing list if they know of any other =
or just to fish around for their opinion.<br></div><div>I&#39;ll keep you i=
n the cc. Let me know if you would prefer the whole 2038/ outreachy mailing=
 list instead. <br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<span><br>
&gt; Since the original implementation is broken already, my first preferen=
ce<br>
&gt; was to fix the interface with the new interface itself.<br>
<br>
</span>I wouldn&#39;t call the original implementation broken, except for t=
he<br>
64-bit compat problem. What makes it broken is that the ioctl data<br>
structure changes in user space when that changes the defintion of<br>
&#39;struct timeval&#39;, but since the data returned here is a difference<=
br>
of two times, the current 32-bit tv_sec variable is actually good<br>
enough.<br>
<span><br></span></blockquote><div><br></div><div>I don&#39;t think seconds=
 granularity is sufficient here for usb operations.<br></div><div>This page=
 shows some tests which run for less than a second:<br><a href=3D"http://bl=
ackfin.uclinux.org/doku.php?id=3Dlinux-kernel:usb-gadget:zero" target=3D"_b=
lank">http://blackfin.uclinux.org/doku.php?id=3Dlinux-kernel:usb-gadget:zer=
o</a><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><span>
&gt; My intention was to not fix the broken interface, but to replace or pr=
ovide<br>
&gt; a new interface.<br>
&gt;<br>
&gt; Wouldn&#39;t the following be better?<br>
&gt;<br>
&gt; #ifdef CONFIG_COMPAT<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0old ioctl(code =3D 100)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 use old timeval struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#if CONFIG_COMPAT_TIME<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 use comp=
at_timeval instead of timeval<br>
&gt; #else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new ioctl(code =3D 101)<br>
&gt; #endif<br>
<br>
</span>Sorry, I&#39;m not really following here. Doesn&#39;t this break exi=
sting<br>
32-bit users that don&#39;t even care about the y2038 issue?<span><br></spa=
n></blockquote><div><br>Maybe I misunderstood what CONFIG_COMPAT_TIME was d=
oing.<br>What I meant was that we should keep the old interface only for ol=
der binaries.<br></div><div>All new code should only use new interface.<br>=
</div><div>That was the eventual goal.<br><br><span>#ifdef CONFIG_COMPAT_TI=
ME<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 old ioctl(code =3D 100)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 support 64 bit and 32 bit timeval=
<br></span><span><span>#endif</span>=C2=A0 <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0 new ioctl(code =3D 101)<br>=C2=A0<br></span></div><div><span>By the =
time all support for 32-bit time is removed, use of the old interface shoul=
d be removed.<br><br></span></div><div>Timeval was a bad struct to expose t=
o userspace anyway.<br></div><div></div><div><br></div><div>In this regard,=
 I was going to fix up the usbtest tool to use new interface also.<br></div=
><div><span></span></div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><span>
&gt; The old ioctl support to be eventually removed completely.<br>
<br>
</span>We should only ever plan to break existing user space if there<br>
is no other option at all. Remember that most users don&#39;t care<br>
about the y2038 problem because they are on 64-bit systems that<br>
have a couple of bugs we need to fix in the next few years, or<br>
because they are on 32-bit systems that they will stop using<br>
before it becomes a problem. The implied rules that result from<br>
this are:<br>
<br>
- nothing we do should require changes for 64-bit tasks<br>
<br>
- all 32-bit tasks should keep working on future kernels (both 32-bit<br>
=C2=A0 and 64-bit) unless they explicitly disable CONFIG_COMPAT_TIME<br>
<br>
- CONFIG_COMPAT_TIME and all code under it will be removed in 2038<br>
=C2=A0 at the latest, but perhaps not much earlier.<br>
<br>
- if possible, source code that produces a working 32-bit binary today<br>
=C2=A0 should not need modifications to work when compiled against a libc<b=
r>
=C2=A0 with 64-bit time_t and run on a kernel without CONFIG_COMPAT_TIME.<b=
r>
<span><br>
&gt; 2. The y2038 problem in the driver is quite straight forward as to pic=
king<br>
&gt; the right calls to fill in whatever data types we choose above.<br>
<br>
</span>I would argue that it&#39;s exactly the same problem for 32-bit and =
64-bit<br>
kernels in this driver: you can have user space binaries with different<br>
definitions of timeval and we want both of them to work.<br>
<span><br>
&gt; &gt; &gt; USB framework&#39;s higher level ioctl framework already sup=
ports a<br>
&gt; &gt; &gt; .compat_ioctl and pointers are fixed before coming into this=
 usbtest<br>
&gt; &gt; driver.<br>
&gt; &gt; &gt; Are you suggesting .compat_ioctl extension to the usb_driver=
, or<br>
&gt; &gt; rewriting<br>
&gt; &gt; &gt; the driver as a cdev?<br>
&gt; &gt;<br>
&gt; &gt; Once the handler is changed to handle both versions of the struct=
ure,<br>
&gt; &gt; we don&#39;t need a separate .compat_ioctl any more, we just need=
 to make<br>
&gt; &gt; sure that the handler gets called for both. I haven&#39;t checked=
 this but<br>
&gt; &gt; according to your description I expect that is what happens alrea=
dy/<br>
&gt; &gt;<br>
&gt; &gt; &gt; The other ioctls take care of individual compat data types b=
y internally<br>
&gt; &gt; &gt; using #ifdef CONFIG_COMPAT.<br>
&gt; &gt;<br>
&gt; &gt; Ok. In my system call patch series, I introduce a new CONFIG_COMP=
AT_TIME<br>
&gt; &gt; symbol that specifically deals with compatibility mode for 32-bit=
 time_t<br>
&gt; &gt; on both 32-bit and 64-bit architectures. This is the #ifdef we sh=
ould<br>
&gt; &gt; be using here as well in principle. My patches however are not me=
rged<br>
&gt; &gt; yet, but there is no harm in leaving that code active here, as bo=
th<br>
&gt; &gt; versions<br>
&gt; &gt; provide a correct API and do not overflow in 2038.<br>
&gt; &gt;<br>
&gt; &gt;<br>
</span><span>&gt; Does it help to review a patch of this kind with a design=
 document?<br>
&gt; Does the kernel review system allow something like this?<br>
&gt; Some of the questions that popped up are the ones I asked myself befor=
e.<br>
&gt; It might let the thought process be more evident.<br>
<br>
</span>Most kernel developers work better with patches than with design doc=
uments.<br></blockquote><div>=C2=A0</div><div>I was saying patches only com=
municate the final product.<br></div><div>For instance, I did consider usin=
g .compat_ioctl, timespec64 etc.<br></div><div>I cannot really tell the sto=
ry as to why this is the best way to do it unless someone asks.<br><br></di=
v><div>Summarizing the next steps:<br><br></div><div>1. Figure out how many=
 ioctl or uapi need 64-bit timeval.<br></div><div>2. Should compat fix for =
existing usbtest ioctl be based on top of your COMPAT_TIME changes?<br></di=
v><div>3. Contact usb list about usbtest ioctl uses and about proposed new =
ioctl.<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<span><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra">- Dee=
pa<br></div></div>

--047d7b10c87fa9700d0522cca935--

