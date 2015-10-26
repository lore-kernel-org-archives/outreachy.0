X-GM-THRID: 6208227682236235776
X-Received: by 10.182.102.194 with SMTP id fq2mr27419400obb.43.1445828325189;
        Sun, 25 Oct 2015 19:58:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.7 with SMTP id b7ls1340982ioe.48.gmail; Sun, 25 Oct
 2015 19:58:44 -0700 (PDT)
X-Received: by 10.66.154.170 with SMTP id vp10mr11924803pab.29.1445828324583;
        Sun, 25 Oct 2015 19:58:44 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-ig0-x230.google.com (mail-ig0-x230.google.com. [2607:f8b0:4001:c05::230])
        by gmr-mx.google.com with ESMTPS id mh4si678086igb.0.2015.10.25.19.58.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 19:58:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) client-ip=2607:f8b0:4001:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x230.google.com with SMTP id kq10so49731843igb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 19:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=R7wBMQ0yraUQfGadsaNC+V1HW7XF27U8bTf9VS9rrPo=;
        b=nb61ViMzvkyxHgLfvTDm2dhpQdsXzZoDOqPDSu0wxci10miLLCADcgRj3Aaw+sb5jO
         ZI9RHtPyUTUujrl3K3oPspGE1MpfxNnOY8s0i8lo1OkbkESuWz7lyxJGBOT2e9oFvAtk
         gmh12kMDUlPdY3+S7JRHeXBN74AOGeK3Qa1RnTGdymP4/9A52toJPUxXTQsaq1EfZZsT
         Q1ghOLp8VYfGr0+3sJenfwbcQnREA4ofteMGTWRr5Z2aWrCMxIcQZ+IZhhQ1mfgh+Tcq
         C3Jf2kr+dzjPkNMZCY/dBBy6jd0nftCxiMX6HkCT1hBJ7Pc3RUHS5OuWshaRSZfFQR2u
         Ft5g==
MIME-Version: 1.0
X-Received: by 10.50.20.38 with SMTP id k6mr14745842ige.97.1445828324440; Sun,
 25 Oct 2015 19:58:44 -0700 (PDT)
Received: by 10.107.171.198 with HTTP; Sun, 25 Oct 2015 19:58:44 -0700 (PDT)
In-Reply-To: <7242161.l7i2pe44H0@wuerfel>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com>
	<CABeXuvqm1ATS-nqq9rjWnDOa=P_a3Up3Pe=vvd1gVVxYadsoQg@mail.gmail.com>
	<5042503.magIZkzosx@wuerfel>
	<7242161.l7i2pe44H0@wuerfel>
Date: Sun, 25 Oct 2015 19:58:44 -0700
Message-ID: <CABeXuvrS6bRH0cxP8Uan35vtWZxZLJvcut2ZWvrM=1bYKrjoPQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] usb: usbtest: Add new
 ioctl interface
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Content-Type: multipart/alternative; boundary=047d7bd7598aaf4dcb0522f923de

--047d7bd7598aaf4dcb0522f923de
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 24, 2015 at 1:38 AM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Saturday 24 October 2015 00:19:06 Arnd Bergmann wrote:
> > > 3. Contact usb list about usbtest ioctl uses and about proposed new
> ioctl.
> >
> > Yes, but don't make this one a priority. Adding a new ioctl is just the
> > icing on the cake, and that patch mainly serves to highlight the fact
> > that the original API was implemented poorly and how it should have
> > been done instead. It's more important for us to avoid making things
> > worse with the 64-bit time_t change.
> >
>
> I've given this a little more thought now: I think we should support both
> variations of the current interface in both the kernel and in the official
> copy of the user space tool, for maximum compatibility.
>

If timeval remains as is, I don't see how user space needs to change.
Agree that kernel module can support both so that either binary would work.



> If we add another ioctl, that means we have to support all three variants
> in both kernel and user space for the foreseeable future, that's only
> worth it if we can add some real value in the new interface. Instead of
> a new ioctl, we could also choose to add a debugfs interface that might
> be easier to use. Still, that is only a mild improvement to a rarely used
> driver and a lot of work, so don't spend too much time on that one.
>

Ok. will let this one be for now.

>
>         Arnd
>

-Deepa

--047d7bd7598aaf4dcb0522f923de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sat, Oct 24, 2015 at 1:38 AM, Arnd Bergmann <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:arnd@arndb.de" target=3D"_blank">arnd@arndb.de</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Saturday 24=
 October 2015 00:19:06 Arnd Bergmann wrote:<br>
&gt; &gt; 3. Contact usb list about usbtest ioctl uses and about proposed n=
ew ioctl.<br>
&gt;<br>
&gt; Yes, but don&#39;t make this one a priority. Adding a new ioctl is jus=
t the<br>
&gt; icing on the cake, and that patch mainly serves to highlight the fact<=
br>
&gt; that the original API was implemented poorly and how it should have<br=
>
&gt; been done instead. It&#39;s more important for us to avoid making thin=
gs<br>
&gt; worse with the 64-bit time_t change.<br>
&gt;<br>
<br>
</span>I&#39;ve given this a little more thought now: I think we should sup=
port both<br>
variations of the current interface in both the kernel and in the official<=
br>
copy of the user space tool, for maximum compatibility.<br></blockquote><di=
v><br></div><div>If timeval remains as is, I don&#39;t see how user space n=
eeds to change.<br></div><div>Agree that kernel module can support both so =
that either binary would work.<br><br></div><div>=C2=A0<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">
If we add another ioctl, that means we have to support all three variants<b=
r>
in both kernel and user space for the foreseeable future, that&#39;s only<b=
r>
worth it if we can add some real value in the new interface. Instead of<br>
a new ioctl, we could also choose to add a debugfs interface that might<br>
be easier to use. Still, that is only a mild improvement to a rarely used<b=
r>
driver and a lot of work, so don&#39;t spend too much time on that one.<br>=
</blockquote><div><br></div><div>Ok. will let this one be for now. <br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra">-Deep=
a<br></div></div>

--047d7bd7598aaf4dcb0522f923de--

