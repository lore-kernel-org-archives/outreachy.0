X-GM-THRID: 6208227682236235776
X-Received: by 10.182.102.194 with SMTP id fq2mr10299749obb.43.1445475783660;
        Wed, 21 Oct 2015 18:03:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.36 with SMTP id 33ls982494qgi.28.gmail; Wed, 21 Oct
 2015 18:03:02 -0700 (PDT)
X-Received: by 10.140.202.202 with SMTP id x193mr10433538qha.12.1445475782801;
        Wed, 21 Oct 2015 18:03:02 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-ig0-x230.google.com (mail-ig0-x230.google.com. [2607:f8b0:4001:c05::230])
        by gmr-mx.google.com with ESMTPS id fs10si1651368igb.3.2015.10.21.18.03.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 18:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) client-ip=2607:f8b0:4001:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x230.google.com with SMTP id g1so99206789igd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 18:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=jGQPZy0pRWicEWDFXzmL39P3H6LGqquZ7pTxOyr7bu0=;
        b=J1/0ZO4tms/IoFK+ec4Gj2f3WKc3umt5SzDUUufzhLnTTm95Tje5Sgz56kC31Ra9Ku
         5FBAB//iY8Yxk0IHQ99DKEBb4UBEdpZW7CDrnvxUmt42sbzO4FflCItYR81qYbWwq8sR
         mAHEAktrP1rCl83vxgLAvV/8+guVDOlTRHdUCtEk498BrV+0X6w+rjusRu9r0dj9IVl5
         8ypUEz2tjBXlE12/S51vwuoUmcQjcxcEaK4CCsfYKAcLh/+VGD9i1n2O1z+l3EkNsn4C
         cIgbdq1Cw+TsvF5ClSl9cDA4oUWKR+5R3MqQsvHbK6d99kQGIQZhwKV80VBALAM+9mke
         w0Bw==
MIME-Version: 1.0
X-Received: by 10.50.73.137 with SMTP id l9mr14139387igv.85.1445475782645;
 Wed, 21 Oct 2015 18:03:02 -0700 (PDT)
Received: by 10.107.171.198 with HTTP; Wed, 21 Oct 2015 18:03:02 -0700 (PDT)
In-Reply-To: <8949060.7jQkPAjlGW@wuerfel>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com>
	<8949060.7jQkPAjlGW@wuerfel>
Date: Wed, 21 Oct 2015 18:03:02 -0700
Message-ID: <CABeXuvpgNwSArZYy4LZdLg=5=9hGAXvsO5PjmZEsGo9NYCPdmg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] usb: usbtest: Add new ioctl interface
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Content-Type: multipart/alternative; boundary=089e013a22688e6f5b0522a70e1e

--089e013a22688e6f5b0522a70e1e
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 4:17 PM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Wednesday 21 October 2015 15:17:14 Deepa Dinamani wrote:
> > The new USBTEST_REQUEST ioctl is intended to eventually replace
> > the old timeval exposing interface.  struct timeval can have different
> > sizes based on whether the kernel/ userspace are compiled in 32 bit/
> > 64 bit mode.  The new ioctl exposes the duration the tests run as a
> > scalar nanosecond value.
>
> Hi Deepa,
>
> This is an interesting approach, but you are going in a slightly
> wrong direction. The new ioctl definition is indeed safe for y2038
> and gets it all right, but it is not compatible at source level,
> so existing user space programs will require source changes in
> order to use it. I think this can be avoided, and we also don't
> really need the new command to solve the y2038 problem.
>

I was trying to address the problem that the old interface was not right to
begin with.
And, thought maybe replacing the whole interface would be a good idea.
I explain more below.


> > Rename old ioctl and data types to COMPAT_USBTEST_REQUEST and
> > usbtest_param_compat, respectively.
> >
> > The change also uses monotonic time instead of real time for both ioctls.
> > This ensures that the time duration is always positive.  Also use ktime
> > api's for time routines accomodating moving all of kernel to use 64 bit
> > time eventually.
>
> Changing to monotonic time is good here. Using ktime_t is often
> a good idea, but I think in this case it causes more problems
> because we end up having to convert it back into timeval.
>

If we are keeping timeval in the interface, then I agree we don't need
ktime_t.
It was my understanding from the y2038 summary that you were recommending
eliminating timeval.


> > Refactor usbtest_ioctl for readability to clarify that the only
> > difference is in how delta time is returned.
> >
> > Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> > ---
> > Resending due to incorrect recipient list
> >
> > This patch is intended for the next branch of the usb tree:
> > git://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git
> >
> >  drivers/usb/misc/usbtest.c | 208
> +++++++++++++++++++++++++++++----------------
> >  1 file changed, 134 insertions(+), 74 deletions(-)
> >
> > diff --git a/drivers/usb/misc/usbtest.c b/drivers/usb/misc/usbtest.c
> > index 637f3f7..00daff3 100644
> > --- a/drivers/usb/misc/usbtest.c
> > +++ b/drivers/usb/misc/usbtest.c
> > @@ -22,7 +22,11 @@ static void complicated_callback(struct urb *urb);
> >
> /*-------------------------------------------------------------------------*/
> >
> >  /* FIXME make these public somewhere; usbdevfs.h? */
> > -struct usbtest_param {
> > +
> > +/* Compat parameter for the compat interface.
> > + * This is deprecated due to the timeval output parameter.
> > + */
> > +struct usbtest_param_compat {
> >       /* inputs */
> >       unsigned                test_num;       /* 0..(TEST_CASES-1) */
> >       unsigned                iterations;
> > @@ -33,7 +37,27 @@ struct usbtest_param {
> >       /* outputs */
> >       struct timeval          duration;
> >  };
> > -#define USBTEST_REQUEST      _IOWR('U', 100, struct usbtest_param)
> > +
>
> The most important point to notice here is that the definition is in a .c
> file, where user space cannot access it. This means that any program
> calling it already has a copy of this definition, and changing the
> definition here will not help you the way it would if the definition
> was in include/uapi/linux/*.h
>

This was going to be in a follow on patch.
But, I was not sure if it should be done as part of outreachy.
The driver in the current state is self contained in this .c file.
All definitions should really be moved to a uapi header file as the
original fixme comment indicates.

But the only current user program that seems to be using it is in the
kernel tools.
The structures and the ioctl are indeed redefined there.

Also, the previous struct and IOCTL definitions have not changed because of
the above reason.
I kept them intact for compatibility with existing binaries.


>
> > +     switch (code) {
> > +     case USBTEST_REQUEST_COMPAT:
> > +             temp.test_num = param_compat->test_num;
> > +             temp.iterations = param_compat->iterations;
> > +             temp.length = param_compat->length;
> > +             temp.sglen = param_compat->sglen;
> > +             temp.vary = param_compat->vary;
> > +             param = &temp;
> > +             break;
> > +
> > +     case USBTEST_REQUEST:
> > +             break;
>
> This part looks ok, you just need to adapt it to using the right
> structures. Basically what we want to do here is to handle both
> variants of 'struct timeval' that user space might see. Based on
> the _IOWR() macro definition, they give us two different command
> codes that you can test for in the same way here.
>
> It also makes sense to add support for the .compat_ioctl at the
> same time, because 64-bit kernels with 32-bit user space have
> the exact same problem in this driver that future 32-bit kernels
> will have with new vs old user space.
>

So, you are suggesting using compat_timeval and timeval structs for the
IOCTL's
and hence maintaining the same ioctl code but use the difference in sizes
to get different values.
My understanding was that we don't want to expose any new timeval
interfaces to the user.
This is the reason I was adding the new interface.

On future 32-bit kernels however, timeval and compat_timeval would have the
same size.
This seems a concern at the offset.
Unless we define the compat ioctl under #ifdef this will not work because
of same size values for both ioctls.

USB framework does not support .compat_ioctl in the struct usb_driver.
Isn't the general guideline to stay away from the .compat ioclt and provide
a single interface which works for both 32/ 64 bit versions?

USB framework's higher level ioctl framework already supports a
.compat_ioctl and pointers are fixed before coming into this usbtest driver.
Are you suggesting .compat_ioctl extension to the usb_driver, or rewriting
the driver as a cdev?

The other ioctls take care of individual compat data types by internally
using #ifdef CONFIG_COMPAT.


> >
> /*-------------------------------------------------------------------------*/
> >
> >  static unsigned force_interrupt;
> > @@ -2891,4 +2952,3 @@ module_exit(usbtest_exit);
> >
> >  MODULE_DESCRIPTION("USB Core/HCD Testing Driver");
> >  MODULE_LICENSE("GPL");
> > -
> >
>
> These two changes should not be here, as they are unrelated to what  you
> are doing.
>

These whitespace changes got added by mistake. Will remove these.

>
>         Arnd
>

- Deepa

--089e013a22688e6f5b0522a70e1e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Oct 21, 2015 at 4:17 PM, Arnd Bergmann <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:arnd@arndb.de" target=3D"_blank">arnd@arndb.de</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span>On Wed=
nesday 21 October 2015 15:17:14 Deepa Dinamani wrote:<br>
&gt; The new USBTEST_REQUEST ioctl is intended to eventually replace<br>
&gt; the old timeval exposing interface.=C2=A0 struct timeval can have diff=
erent<br>
&gt; sizes based on whether the kernel/ userspace are compiled in 32 bit/<b=
r>
&gt; 64 bit mode.=C2=A0 The new ioctl exposes the duration the tests run as=
 a<br>
&gt; scalar nanosecond value.<br>
<br>
</span>Hi Deepa,<br>
<br>
This is an interesting approach, but you are going in a slightly<br>
wrong direction. The new ioctl definition is indeed safe for y2038<br>
and gets it all right, but it is not compatible at source level,<br>
so existing user space programs will require source changes in<br>
order to use it. I think this can be avoided, and we also don&#39;t<br>
really need the new command to solve the y2038 problem.<br></blockquote><di=
v><br></div><div>I was trying to address the problem that the old interface=
 was not right to begin with.<br></div><div>And, thought maybe replacing th=
e whole interface would be a good idea.<br></div><div>I explain more below.=
<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<span><br>
&gt; Rename old ioctl and data types to COMPAT_USBTEST_REQUEST and<br>
&gt; usbtest_param_compat, respectively.<br>
&gt;<br>
&gt; The change also uses monotonic time instead of real time for both ioct=
ls.<br>
&gt; This ensures that the time duration is always positive.=C2=A0 Also use=
 ktime<br>
&gt; api&#39;s for time routines accomodating moving all of kernel to use 6=
4 bit<br>
&gt; time eventually.<br>
<br>
</span>Changing to monotonic time is good here. Using ktime_t is often<br>
a good idea, but I think in this case it causes more problems<br>
because we end up having to convert it back into timeval.<br></blockquote><=
div><br></div><div>If we are keeping timeval in the interface, then I agree=
 we don&#39;t need ktime_t.<br></div><div>It was my understanding from the =
y2038 summary that you were recommending eliminating timeval.<br>=C2=A0<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
<div><div>
&gt; Refactor usbtest_ioctl for readability to clarify that the only<br>
&gt; difference is in how delta time is returned.<br>
&gt;<br>
&gt; Signed-off-by: Deepa Dinamani &lt;<a href=3D"mailto:deepa.kernel@gmail=
.com" target=3D"_blank">deepa.kernel@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Resending due to incorrect recipient list<br>
&gt;<br>
&gt; This patch is intended for the next branch of the usb tree:<br>
&gt; git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/balbi/=
usb.git" rel=3D"noreferrer" target=3D"_blank">git.kernel.org/pub/scm/linux/=
kernel/git/balbi/usb.git</a><br>
&gt;<br>
&gt;=C2=A0 drivers/usb/misc/usbtest.c | 208 +++++++++++++++++++++++++++++--=
--------------<br>
&gt;=C2=A0 1 file changed, 134 insertions(+), 74 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/usb/misc/usbtest.c b/drivers/usb/misc/usbtest.c<b=
r>
&gt; index 637f3f7..00daff3 100644<br>
&gt; --- a/drivers/usb/misc/usbtest.c<br>
&gt; +++ b/drivers/usb/misc/usbtest.c<br>
&gt; @@ -22,7 +22,11 @@ static void complicated_callback(struct urb *urb);<=
br>
&gt;=C2=A0 /*--------------------------------------------------------------=
-----------*/<br>
&gt;<br>
&gt;=C2=A0 /* FIXME make these public somewhere; usbdevfs.h? */<br>
&gt; -struct usbtest_param {<br>
&gt; +<br>
&gt; +/* Compat parameter for the compat interface.<br>
&gt; + * This is deprecated due to the timeval output parameter.<br>
&gt; + */<br>
&gt; +struct usbtest_param_compat {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* inputs */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 test_num;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* 0..(TEST_CASES-=
1) */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 iterations;<br>
&gt; @@ -33,7 +37,27 @@ struct usbtest_param {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* outputs */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct timeval=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 duration;<br>
&gt;=C2=A0 };<br>
&gt; -#define USBTEST_REQUEST=C2=A0 =C2=A0 =C2=A0 _IOWR(&#39;U&#39;, 100, s=
truct usbtest_param)<br>
&gt; +<br>
<br>
</div></div>The most important point to notice here is that the definition =
is in a .c<br>
file, where user space cannot access it. This means that any program<br>
calling it already has a copy of this definition, and changing the<br>
definition here will not help you the way it would if the definition<br>
was in include/uapi/linux/*.h<br></blockquote><div><br></div><div>This was =
going to be in a follow on patch.<br></div><div>But, I was not sure if it s=
hould be done as part of outreachy.<br></div><div>The driver in the current=
 state is self contained in this .c file.<br></div><div>All definitions sho=
uld really be moved to a uapi header file as the original fixme comment ind=
icates.<br><br></div><div>But the only current user program that seems to b=
e using it is in the kernel tools.<br></div><div>The structures and the ioc=
tl are indeed redefined there.<br><br></div><div>Also, the previous struct =
and IOCTL definitions have not changed because of the above reason.<br></di=
v><div>I kept them intact for compatibility with existing binaries.<br></di=
v><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<span><br>
&gt; +=C2=A0 =C2=A0 =C2=A0switch (code) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0case USBTEST_REQUEST_COMPAT:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp.test_num =3D par=
am_compat-&gt;test_num;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp.iterations =3D p=
aram_compat-&gt;iterations;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp.length =3D param=
_compat-&gt;length;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp.sglen =3D param_=
compat-&gt;sglen;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0temp.vary =3D param_c=
ompat-&gt;vary;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param =3D &amp;temp;<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0case USBTEST_REQUEST:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
<br>
</span>This part looks ok, you just need to adapt it to using the right<br>
structures. Basically what we want to do here is to handle both<br>
variants of &#39;struct timeval&#39; that user space might see. Based on<br=
>
the _IOWR() macro definition, they give us two different command<br>
codes that you can test for in the same way here.<br>
<br>
It also makes sense to add support for the .compat_ioctl at the<br>
same time, because 64-bit kernels with 32-bit user space have<br>
the exact same problem in this driver that future 32-bit kernels<br>
will have with new vs old user space.<br></blockquote><div><br></div><div>S=
o, you are suggesting using compat_timeval and timeval structs for the IOCT=
L&#39;s<br></div><div>and hence maintaining the same ioctl code but use the=
 difference in sizes to get different values.<br></div><div>My understandin=
g was that we don&#39;t want to expose any new timeval interfaces to the us=
er.<br>This is the reason I was adding the new interface.<br></div><div><br=
></div><div></div><div>On future 32-bit kernels however, timeval and compat=
_timeval would have the same size.<br></div><div>This seems a concern at th=
e offset.<br></div><div>Unless we define the compat ioctl under #ifdef this=
 will not work because of same size values for both ioctls.<br></div><div><=
br></div><div>USB framework does not support .compat_ioctl in the struct us=
b_driver.<br></div><div>Isn&#39;t the general guideline to stay away from t=
he .compat ioclt and provide a single interface which works for both 32/ 64=
 bit versions?<br><br></div><div>USB framework&#39;s higher level ioctl fra=
mework already supports a .compat_ioctl and pointers are fixed before comin=
g into this usbtest driver.<br><div>Are you suggesting .compat_ioctl extens=
ion to the usb_driver, or rewriting the driver as a cdev?<br></div><div><br=
></div></div><div>The other ioctls take care of individual compat data type=
s by internally using #ifdef CONFIG_COMPAT.<br></div><br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<span><br>
&gt;=C2=A0 /*--------------------------------------------------------------=
-----------*/<br>
&gt;<br>
&gt;=C2=A0 static unsigned force_interrupt;<br>
&gt; @@ -2891,4 +2952,3 @@ module_exit(usbtest_exit);<br>
&gt;<br>
&gt;=C2=A0 MODULE_DESCRIPTION(&quot;USB Core/HCD Testing Driver&quot;);<br>
&gt;=C2=A0 MODULE_LICENSE(&quot;GPL&quot;);<br>
&gt; -<br>
&gt;<br>
<br>
</span>These two changes should not be here, as they are unrelated to what=
=C2=A0 you<br>
are doing.<br></blockquote><div><br></div><div>These whitespace changes got=
 added by mistake. Will remove these. <br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
<span><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<br></font></span></blockquote><div><br></d=
iv><div>- Deepa <br></div></div><br></div></div>

--089e013a22688e6f5b0522a70e1e--

