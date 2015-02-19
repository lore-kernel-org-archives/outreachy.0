X-GM-THRID: 761102598144
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,efa55286ffba0bae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr853421lae.7.1424380817407;
        Thu, 19 Feb 2015 13:20:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.26.74 with SMTP id j10ls217473lag.7.gmail; Thu, 19 Feb
 2015 13:20:16 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr844775lbb.19.1424380816914;
        Thu, 19 Feb 2015 13:20:16 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-lb0-x22b.google.com (mail-lb0-x22b.google.com. [2a00:1450:4010:c04::22b])
        by gmr-mx.google.com with ESMTPS id mv2si2749951lbc.0.2015.02.19.13.20.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 13:20:16 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:4010:c04::22b as permitted sender) client-ip=2a00:1450:4010:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:4010:c04::22b as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x22b.google.com with SMTP id b6so2570649lbj.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 13:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=T5iBqCiRPmmIp5wy9Cg819KGlP9cPRc3Xynqzl6mm50=;
        b=ClNGxR7mTBgW7pR/LdoxB5kSPWdjk4Ccq6sIGwvYXFycaS7UY1aRUuuYqTDh34sFP+
         Uc+uiPcT8AcQxSe2hzygHh3hY1sT8+vu82nRos1dB6IM+GN2vWZI4lG5sL40ZJiWWzX8
         SWqdn1KGWikJwt7AanP1eeiVxIfHknoKAX7cf7cOQwenHRJ80WUH7nmJsW/6/15gesuy
         s7bgPaUoEaYXtBGowIa7wQ5N67d2qZcy7vlSC1IeHIgX3n70fF663iXvRFcvnE10czCA
         utupZtnsiiPbj8Sl13gG/ltuH88jRZ+HISoNaSVYJroBSnlbSvDvYO2fAepy428hN/1I
         SloA==
MIME-Version: 1.0
X-Received: by 10.112.220.36 with SMTP id pt4mr5741137lbc.15.1424380816805;
 Thu, 19 Feb 2015 13:20:16 -0800 (PST)
Received: by 10.112.147.162 with HTTP; Thu, 19 Feb 2015 13:20:16 -0800 (PST)
In-Reply-To: <1721378.1oPpAp4PUY@avalon>
References: <1424371364-7277-1-git-send-email-aybuke.147@gmail.com>
	<1673936.xFr6aDYKYJ@avalon>
	<CAEAX3Joj5CRsUdNmXWmmHXiAKTXiRxyywwT0jnqsdS3QcAe=6Q@mail.gmail.com>
	<1721378.1oPpAp4PUY@avalon>
Date: Thu, 19 Feb 2015 23:20:16 +0200
Message-ID: <CAEAX3JpKgA3rd-mz94zXfvUG-du5yBnoekYUkXS8y3rXgvmSvw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: fbtft: Fix struct
 backlight_ops should normally be const
From: =?UTF-8?B?YXliw7xrZSDDtnpkZW1pcg==?= <aybuke.147@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1134b7049c54d5050f778083

--001a1134b7049c54d5050f778083
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Many thanks for clarifying, When I compile , I will consider your
description :)

2015-02-19 22:13 GMT+02:00 Laurent Pinchart <
laurent.pinchart@ideasonboard.com>:

> Hi Ayb=C3=BCke,
>
> On Thursday 19 February 2015 21:43:22 ayb=C3=BCke =C3=B6zdemir wrote:
> > Hi Laurent,
> >
> > I will pay much more attention to the commit messages and subject line.=
 I
> > use this command while compiling this file: make M=3Ddrivers/staging/fb=
tft
> I
> > didn't encounter a problem. I guess, I'm using the wrong the "make"
> > command.
>
> The command is correct, but you also need to make sure that the driver is
> selected in the kernel configuration, otherwise it won't get compiled.
>
> A good way to find out whether a .c source file has been compiled is to
> check
> that a .o file with the same base name has been created in the same
> directory.
> The kernel build system should also print
>
>   CC      drivers/staging/fbtft/fb_ssd1351.o
>
> during compilation.
>
> --
> Regards,
>
> Laurent Pinchart
>
>


--=20
Ayb=C3=BCke =C3=96zdemir
http://www.aybukeozdemir.com

--001a1134b7049c54d5050f778083
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span lang=3D"en"><span><span id=3D"result_box" class=3D""=
 lang=3D"en"><span class=3D"">Many thanks for</span> <span class=3D"">clari=
fying</span></span></span>, <span></span></span><span id=3D"result_box" cla=
ss=3D"" lang=3D"en"><span class=3D""> When</span> <span class=3D"">I</span>=
 <span class=3D"">compile </span><span class=3D"">, </span></span><span id=
=3D"result_box" class=3D"" lang=3D"en"><span class=3D"">I</span> <span clas=
s=3D"">will consider </span></span>your description :)<br></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-02-19 22:13 GMT+02:00 =
Laurent Pinchart <span dir=3D"ltr">&lt;<a href=3D"mailto:laurent.pinchart@i=
deasonboard.com" target=3D"_blank">laurent.pinchart@ideasonboard.com</a>&gt=
;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">Hi Ayb=C3=BCke,<br>
<span class=3D""><br>
On Thursday 19 February 2015 21:43:22 ayb=C3=BCke =C3=B6zdemir wrote:<br>
&gt; Hi Laurent,<br>
&gt;<br>
&gt; I will pay much more attention to the commit messages and subject line=
. I<br>
&gt; use this command while compiling this file: make M=3Ddrivers/staging/f=
btft I<br>
&gt; didn&#39;t encounter a problem. I guess, I&#39;m using the wrong the &=
quot;make&quot;<br>
&gt; command.<br>
<br>
</span>The command is correct, but you also need to make sure that the driv=
er is<br>
selected in the kernel configuration, otherwise it won&#39;t get compiled.<=
br>
<br>
A good way to find out whether a .c source file has been compiled is to che=
ck<br>
that a .o file with the same base name has been created in the same directo=
ry.<br>
The kernel build system should also print<br>
<br>
=C2=A0 CC=C2=A0 =C2=A0 =C2=A0 drivers/staging/fbtft/fb_ssd1351.o<br>
<br>
during compilation.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Regards,<br>
<br>
Laurent Pinchart<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div dir=3D"ltr"><div>Ayb=C3=BCke =C3=96zdemir<br></d=
iv><a href=3D"http://www.aybukeozdemir.com" target=3D"_blank">http://www.ay=
bukeozdemir.com</a><br></div></div>
</div>

--001a1134b7049c54d5050f778083--

