X-GM-THRID: 6666918096348905472
X-Received: by 2002:a50:ba2b:: with SMTP id g40mr97082edc.1.1552342541125;
        Mon, 11 Mar 2019 15:15:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f5a3:: with SMTP id u32ls1957916edm.2.gmail; Mon, 11 Mar
 2019 15:15:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxrPGknADDO73fL9+9rDG1UMkr694++XP8dV2aCMQksmCrChprvShrB79yxQQ+2ZbyyEPZN
X-Received: by 2002:a50:b361:: with SMTP id r30mr99877edd.8.1552342540050;
        Mon, 11 Mar 2019 15:15:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552342540; cv=none;
        d=google.com; s=arc-20160816;
        b=dHhWnFmC5A1ILa+hxaop6lEgcYQv2TNTMNWAXGWbgeOXNjw8F8q/M25RcK0hl1kq3m
         a+v4rSslMCjFbzEDz30NlLv4AATvEFQUfCTn5Eg6yvizX3JdJg79/t1tg0Vmj++hFzMd
         0UbIZamYOfdmB5E94qSoqrPFZMznNex8adJ5RCAqgFKi6pOXLcRuW65sQaj4G2JlqHp/
         oSm6R7d4qAo0pV7kDpMma+6vdbtIF/hdZcDCd1vhZgpIST/Xg9obh2pBth62X19dqPCm
         e9Mmi5UvQnAVcsT7VfihhVANO7htNCkNkB+glNL8TLoWSYyPkpiNiAQWhBnbS0dDV55Z
         nQRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=LregSY+ujeGucaYBdpJ+TTzaD6FIsQ66E4ut/gYTmUo=;
        b=slkAR0aq6BAsI/jB91Nav+Y+YeHOhs1Z+gn+uvsAN8zoQ//s6nCKtFIAlysJOjPxM+
         ZPhnlACiEQnNI1jmCrLNvNWjZ97JIudc3MuShfMOyLReO2YJF1dIybKAtEsszOKPHd8g
         cjMlz7EzknokX7Y50UV3PaE7e6yJJ3vDx/ioQwJkKgORX66zVjFT+xE9yDfud6agYbaX
         Ndk/nqlT2vJEXybF9FwqoSlIRRvHM2oYLW05P6WJ10iRkvvSjQHTYW8bhG3fKJziMtSR
         zo9Q8y4WUNsOv3OgyCQjadEzyJS1lDUNoHE6Xgea0oqXhQFEdtXy5Rmzm4+2is/rMBcf
         a7lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JhU0cUsC;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a7si895250edb.1.2019.03.11.15.15.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 15:15:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JhU0cUsC;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x544.google.com with SMTP id h58so626790edb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 15:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=LregSY+ujeGucaYBdpJ+TTzaD6FIsQ66E4ut/gYTmUo=;
        b=JhU0cUsCCbDhhG1HCF8ROI0lkFtt8hX2Gtqh6ra1lR2khSFS0AOMcdwzQYnYcUZhrI
         eHgoUvTliDeWR7I5ZN5aI0v7vXpFcDVTkrI48/RHkZZO0hS/rhEVoxlmaFOGXcfr/rlJ
         6+Wrr79YT83B2g6656dY1V3KF13Xj9JmW90CTkekZBgGTrTdda21r2azS2Mayhbs4r2e
         g5GpRrF/7wPKkaA8pqoL8pTS81zLlSbGdcZOzKPbkVN7fYO/o/+QQLqlUxSRH9p0b8cD
         rZQPfwd/0X753dTDWmhH4tRSkclbucJIo38KGqK9uSECIZdVAmK9f8d2RY0ZOxQ4wV9a
         XW+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=LregSY+ujeGucaYBdpJ+TTzaD6FIsQ66E4ut/gYTmUo=;
        b=N4ctE2c0eocWRr46pto1lkZ6lbYa5WeSXGuikCJqaOa7hyDU19VtyDPFKylXaeYQnm
         XMk3OZjuVo331L2fJ9m7seh6buiXapczzwdgRxRnnDnZUYwgjc27NPVuhxIxiAWMf7UJ
         6okOnfdZNkC2h5KJwlG8T4LQRgucTU8csACXdiLGKQRhkUevy/2YtMI0wKa65r2GNIfm
         LQTSj6cOk98OIsDJekg3V4d1inFGSgs/laf7IFCUZtlN650cfPEew3Dtdhow41X8KOfa
         EcwaUFd3wxag9gFfX6RSKmWZ+s9NpDk1yOsh40iUAruC5FTfPqM921idE82c8soRB2PG
         4i3w==
X-Gm-Message-State: APjAAAWkwnIyAKMf23U5Gdq7302Nl/32o1LS9VvYVgoCn8QYL2Roc6L4
	iA7ANn3IqkBy0ClBETaCZUn0g1MMZaDuC2wSXHaJJHV72w==
X-Received: by 2002:a50:c352:: with SMTP id q18mr708351edb.175.1552342539538;
 Mon, 11 Mar 2019 15:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190311000702.12740-1-jbi.octave@gmail.com> <20190311000702.12740-2-jbi.octave@gmail.com>
 <20190311030449.GA17063@kroah.com>
In-Reply-To: <20190311030449.GA17063@kroah.com>
From: Jules Octave <jbi.octave@gmail.com>
Date: Mon, 11 Mar 2019 22:15:03 +0000
Message-ID: <CAOuULM61DXcVaTHhXvwnmS0FdREQjsFLnKxC4abGG2OcD092wQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] staging: rtl8192e: add SPDX GPL-2.0+ license identifier
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000a3949f0583d8e9e5"

--000000000000a3949f0583d8e9e5
Content-Type: text/plain; charset="UTF-8"

>Why did you pick this specific license?  It does not seem to match the
>license text in this file at all.

>Be _VERY_ careful when doing stuff like this.  If you get the license
>wrong, lawyers can get mad at you :(

>Also, the file name "dot11d.c" should be in the subject line, as you are
>not adding the identifer to the whole driver, only one file.

>Please fix this up and resend the whole series.

>thanks,

I read online that the default license is GPL-2.0+  as it is not indicated
in the file. I think I was wrong. I would have asked the maintainer first.
Okay, I will just reset it and try to think how to deal with it . I have in
mind a GPL 1.0+ as it covers from 1 and above, I don t know if it can be
fine. I have to ask the maintainer. I am sorry.

*Kind regards*


*Jules*
*..*
BCS West Yorkshire Secretary
Positive action combined with positive thinking results in success - Shiv
Khera


On Mon, 11 Mar 2019 at 03:04, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Mon, Mar 11, 2019 at 12:07:00AM +0000, Jules Irenge wrote:
> > Add the SPDX GPL-2.0+ license identifier to fix checkpatch.pl warning
> > Issue found by checkpatch.pl warning:
> > "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> >
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/rtl8192e/dot11d.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/rtl8192e/dot11d.c
> b/drivers/staging/rtl8192e/dot11d.c
> > index 68f53013cb95..74adb45efe73 100644
> > --- a/drivers/staging/rtl8192e/dot11d.c
> > +++ b/drivers/staging/rtl8192e/dot11d.c
> > @@ -1,3 +1,4 @@
> > +// SPDX-License-Identifier: GPL-2.0+
>
> Why did you pick this specific license?  It does not seem to match the
> license text in this file at all.
>
> Be _VERY_ careful when doing stuff like this.  If you get the license
> wrong, lawyers can get mad at you :(
>
> Also, the file name "dot11d.c" should be in the subject line, as you are
> not adding the identifer to the whole driver, only one file.
>
> Please fix this up and resend the whole series.
>
> thanks,
>
> greg k-h
>

--000000000000a3949f0583d8e9e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt;Why did you pick this specific license?=C2=A0 It does =
not seem to match the<br>&gt;license text in this file at all.<br><br>&gt;B=
e _VERY_ careful when doing stuff like this.=C2=A0 If you get the license<b=
r>&gt;wrong, lawyers can get mad at you :(<br><br>&gt;Also, the file name &=
quot;dot11d.c&quot; should be in the subject line, as you are<br>&gt;not ad=
ding the identifer to the whole driver, only one file.<br><br>&gt;Please fi=
x this up and resend the whole series.<br><br>&gt;thanks,<div><br></div><di=
v>I read online that the default license is GPL-2.0+=C2=A0 as it is not ind=
icated in the file. I think I was wrong. I would have asked the maintainer =
first.</div><div>Okay, I will just reset it and try to think how to deal wi=
th it . I have in mind a GPL 1.0+ as it covers from 1 and above, I don t kn=
ow if it can be fine. I have to ask the maintainer. I am sorry.<br><div><di=
v dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><div><=
b><font color=3D"#0078d7" size=3D"2"><br></font></b></div><div><b><font col=
or=3D"#0078d7" size=3D"2">Kind regards</font></b></div><div><br></div><div>=
<b><font color=3D"#0078d7" size=3D"2"><br></font></b></div><div><b><font co=
lor=3D"#0078d7" size=3D"2">Jules</font></b></div></div><div><div><font colo=
r=3D"#0078d7" size=3D"1"><b>..</b></font></div><div><font color=3D"#000000"=
 size=3D"1">BCS West Yorkshire Secretary</font></div><div><span style=3D"co=
lor:rgb(51,51,51);font-family:&quot;helvetica neue&quot;,Helvetica,Arial,sa=
ns-serif"><font size=3D"1">Positive action combined with positive thinking =
results in success - Shiv Khera</font></span></div></div><div><b></b></div>=
</div></div></div></div></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div></div><br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 11 Mar 2019 at 03:=
04, Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxf=
oundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">On Mon, Mar 11, 2019 at 12:07:00AM +0000, Jules Irenge wrote:<=
br>
&gt; Add the SPDX GPL-2.0+ license identifier to fix <a href=3D"http://chec=
kpatch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> warning<b=
r>
&gt; Issue found by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" tar=
get=3D"_blank">checkpatch.pl</a> warning:<br>
&gt; &quot;WARNING: Missing or malformed SPDX-License-Identifier tag in lin=
e 1&quot;<br>
&gt; <br>
&gt; Signed-off-by: Jules Irenge &lt;<a href=3D"mailto:jbi.octave@gmail.com=
" target=3D"_blank">jbi.octave@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8192e/dot11d.c | 1 +<br>
&gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl81=
92e/dot11d.c<br>
&gt; index 68f53013cb95..74adb45efe73 100644<br>
&gt; --- a/drivers/staging/rtl8192e/dot11d.c<br>
&gt; +++ b/drivers/staging/rtl8192e/dot11d.c<br>
&gt; @@ -1,3 +1,4 @@<br>
&gt; +// SPDX-License-Identifier: GPL-2.0+<br>
<br>
Why did you pick this specific license?=C2=A0 It does not seem to match the=
<br>
license text in this file at all.<br>
<br>
Be _VERY_ careful when doing stuff like this.=C2=A0 If you get the license<=
br>
wrong, lawyers can get mad at you :(<br>
<br>
Also, the file name &quot;dot11d.c&quot; should be in the subject line, as =
you are<br>
not adding the identifer to the whole driver, only one file.<br>
<br>
Please fix this up and resend the whole series.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--000000000000a3949f0583d8e9e5--

