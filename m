X-GM-THRID: 6666918096348905472
X-Received: by 2002:a5d:6592:: with SMTP id q18mr597593wru.16.1552344966743;
        Mon, 11 Mar 2019 15:56:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8085:: with SMTP id b127ls100262wmd.0.canary-gmail; Mon,
 11 Mar 2019 15:56:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy91phcgWA5ou/yEz2gsjI0nVMz22Pn2FFUIHlkVqvuTk9qbKy5ntM/4X0kmaC3Weg3Z0Do
X-Received: by 2002:a1c:1a4a:: with SMTP id a71mr28399wma.21.1552344965749;
        Mon, 11 Mar 2019 15:56:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552344965; cv=none;
        d=google.com; s=arc-20160816;
        b=khlb6nYcUt+R0E132v++ouekjh2t90vydgNB4odJPrZBRfLRmEpI1wx4JhRHG+QNry
         0AsNojF68uQDSBh/GMmHiFppBpGgeBvtLQHhIrWgZbLMllUZbQOCucNxIDMP0sUYavqv
         G5i606WeYDu7tNwe1A1GztSfhAi3D9sWNDsH4PsrGfobBvqfn1K4GEBDcTvVNY1rDRDp
         QyovUvtc6AwLFigSg8c9YshGvx0IJ3G9EfSxEpMuW316JBaTM3dYMvx/jNz/n9xnvZYf
         YSTrnXG9E4jg+ItbTUL529wqbI2OmVOnSZeaX5cXisErp3HSUemCJ23v3Lqxkq4ei+Wl
         gZGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=f01Zc2m43HK7WiqiiIGEL7bHC1v6xPbRp6vXCHn37vA=;
        b=dbLKj7oTfa3C13ynvP1JsMbkkxE5jGIKjxMaFpP2ImFitDm6MNM5ZGLI+TEAmjP1D/
         W67i8GM344YvmLwxLxmAW51x34H6RDvlkQIu39C8bCUcVqqH8bDBO/awssjLMstzkk0d
         KUM11wjnfgm6i5eEplbPeihRhEGr4HfOU8CqVyI/qaYbrdw24Ok9tD5EgJ/tSBvo6iQH
         ybpB7z+C2TZa+ZpuAX/3LLj6LxTtk2Lnht/eGy1NtSgLu08aqqaFmP8anBdSYEEYfF5n
         yHxicky8arpNZYJwe7luLYoF1POysP1RubWzA12HAtpd4LBY355w+RicureaBoVRXtRC
         DMog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kisCuZS4;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id f185si37311wme.1.2019.03.11.15.56.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 15:56:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kisCuZS4;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x535.google.com with SMTP id m12so692627edv.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 15:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=f01Zc2m43HK7WiqiiIGEL7bHC1v6xPbRp6vXCHn37vA=;
        b=kisCuZS4ZRFCmHx8My9uCRXCYwXs6evDeAGLkHuoFbrpJBLuIfKupDIW0+z9gP9b/K
         +yaakxa8xT6qiWnhWwkmQwDHfaLaKqQC8meFMYF9pfY2DoctZX+99Br2sGNItJsdqheU
         9j0q8EzVq5KqG1OOHOtOKB0GZvA6kNyRgB2sTua5qyIzDHwKjIDdGlAQLNhw40BA1/a3
         cE3VKJpESkJTJNcR5ileALz0WloHHpwwpKsbUzD9c58ZYo88hMXbf+K/5+SqrlYqAcX5
         5i+4ki2/dKluuXFqG48Q74Ar5FS17Kt7ERzSipW2IG0WFfeEow3KemCYgCStXObH5WLp
         6rEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=f01Zc2m43HK7WiqiiIGEL7bHC1v6xPbRp6vXCHn37vA=;
        b=N4z8iz7bBdgNM7XjHM+TFuzj9DAeoxZhOPTtx5bDl01lDnW6eWcrEb06BZu3wgtRMd
         dizF93DedCUEb/iXSHK8ImISYj8jllwTTOHbsBvNSlL47dG/F1+qqBLi6F1tCks4OSh9
         3QgH/kKcjDtA/WuIhRxrnR01/2ZdT/KbH8m0mmbmDU/bxmdg38510sVvTpMErvx8RFi2
         wxhnp1Gv9RmUa5Rkf0FtC+CM5PJqfvKor/tambP4uMR1OxpXYi4sKl24vNDx59kSvLaJ
         ncEVsQpKZyem+ynphUlGoy2N3eQ6QU9tdqMBzW0Kyl3H0s8HOE27qpHVggTfnpyg7u8n
         RHlg==
X-Gm-Message-State: APjAAAUDRYLlex4ku+lLdD++Ko6lCyUUwLEzZtWFWzACyhrtcZtpSZZ8
	5LgH7aQDCx5FBeQE7oeEKCZyNCpnz1xBoY+NmqHO184FBQ==
X-Received: by 2002:a17:906:4bc8:: with SMTP id x8mr23094303ejv.114.1552344965267;
 Mon, 11 Mar 2019 15:56:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190311000702.12740-1-jbi.octave@gmail.com> <20190311000702.12740-2-jbi.octave@gmail.com>
 <20190311030449.GA17063@kroah.com> <CAOuULM61DXcVaTHhXvwnmS0FdREQjsFLnKxC4abGG2OcD092wQ@mail.gmail.com>
 <20190311224052.GA31563@kroah.com>
In-Reply-To: <20190311224052.GA31563@kroah.com>
From: Jules Octave <jbi.octave@gmail.com>
Date: Mon, 11 Mar 2019 22:55:28 +0000
Message-ID: <CAOuULM78J+kFWzxUuQChkOuXcMi4dijHVnAYzN4o3MMbULhwnA@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] staging: rtl8192e: add SPDX GPL-2.0+ license identifier
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000003947970583d97a0d"

--0000000000003947970583d97a0d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>As the wording of the text says to refer to the LICENSE file, and that
>is GPLv2, that should be the license for this file as well.

>But if you do not understand license issues, I would stay away from this
>and work on other tasks.  It's tricky and people get upset if you get it
>wrong :)

>thanks,

>greg k-h

I am sorry about that , I will not guess next time. I will be more careful.
I will update it to v2. I have also seen in the header it's GPL-2.0 =F0=9F=
=99=88

*Jules*
*..*
BCS West Yorkshire Secretary
Positive action combined with positive thinking results in success - Shiv
Khera


On Mon, 11 Mar 2019 at 22:40, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Mon, Mar 11, 2019 at 10:15:03PM +0000, Jules Octave wrote:
> > >Why did you pick this specific license?  It does not seem to match the
> > >license text in this file at all.
> >
> > >Be _VERY_ careful when doing stuff like this.  If you get the license
> > >wrong, lawyers can get mad at you :(
> >
> > >Also, the file name "dot11d.c" should be in the subject line, as you a=
re
> > >not adding the identifer to the whole driver, only one file.
> >
> > >Please fix this up and resend the whole series.
> >
> > >thanks,
> >
> > I read online that the default license is GPL-2.0+  as it is not
> indicated
> > in the file. I think I was wrong. I would have asked the maintainer
> first.
>
> Where did you read that?  The default license for the Linux kernel is
> "GPL-2.0" no "+" at all.
>
> > Okay, I will just reset it and try to think how to deal with it . I hav=
e
> in
> > mind a GPL 1.0+ as it covers from 1 and above, I don t know if it can b=
e
> > fine. I have to ask the maintainer. I am sorry.
>
> As the wording of the text says to refer to the LICENSE file, and that
> is GPLv2, that should be the license for this file as well.
>
> But if you do not understand license issues, I would stay away from this
> and work on other tasks.  It's tricky and people get upset if you get it
> wrong :)
>
> thanks,
>
> greg k-h
>

--0000000000003947970583d97a0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">&gt;As the wording of the text says to re=
fer to the LICENSE file, and that<br>
&gt;is GPLv2, that should be the license for this file as well.<br>
<br>
&gt;But if you do not understand license issues, I would stay away from thi=
s<br>
&gt;and work on other tasks.=C2=A0 It&#39;s tricky and people get upset if =
you get it<br>
&gt;wrong :)<br>
<br>
&gt;thanks,<br>
<br>
&gt;greg k-h</div><div dir=3D"ltr"><br></div><div>I am sorry about that , I=
 will not guess next time. I will be more careful. I will update it to v2. =
I have also seen in the header it&#39;s GPL-2.0 =F0=9F=99=88<br></div><div>=
<br></div><div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"m_-41773268638189=
76694gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div><div><b><font size=3D"2" color=3D"#0078d7">Jules<=
/font></b></div></div><div><div><font size=3D"1" color=3D"#0078d7"><b>..</b=
></font></div><div><font size=3D"1" color=3D"#000000">BCS West Yorkshire Se=
cretary</font></div><div><span style=3D"color:rgb(51,51,51);font-family:&qu=
ot;helvetica neue&quot;,Helvetica,Arial,sans-serif"><font size=3D"1">Positi=
ve action combined with positive thinking results in success - Shiv Khera</=
font></span></div></div><div><b></b></div></div></div></div></div></div></d=
iv></div></div></div></div></div></div></div></div></div></div></div></div>=
</div></div></div></div></div></div></div></div></div></div></div><br></div=
><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Mon, 11 Mar 2019 at 22:40, Greg KH &lt;<a href=3D"mailto:gregkh@linuxfo=
undation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Mon, Mar 11, 2=
019 at 10:15:03PM +0000, Jules Octave wrote:<br>
&gt; &gt;Why did you pick this specific license?=C2=A0 It does not seem to =
match the<br>
&gt; &gt;license text in this file at all.<br>
&gt; <br>
&gt; &gt;Be _VERY_ careful when doing stuff like this.=C2=A0 If you get the=
 license<br>
&gt; &gt;wrong, lawyers can get mad at you :(<br>
&gt; <br>
&gt; &gt;Also, the file name &quot;dot11d.c&quot; should be in the subject =
line, as you are<br>
&gt; &gt;not adding the identifer to the whole driver, only one file.<br>
&gt; <br>
&gt; &gt;Please fix this up and resend the whole series.<br>
&gt; <br>
&gt; &gt;thanks,<br>
&gt; <br>
&gt; I read online that the default license is GPL-2.0+=C2=A0 as it is not =
indicated<br>
&gt; in the file. I think I was wrong. I would have asked the maintainer fi=
rst.<br>
<br>
Where did you read that?=C2=A0 The default license for the Linux kernel is<=
br>
&quot;GPL-2.0&quot; no &quot;+&quot; at all.<br>
<br>
&gt; Okay, I will just reset it and try to think how to deal with it . I ha=
ve in<br>
&gt; mind a GPL 1.0+ as it covers from 1 and above, I don t know if it can =
be<br>
&gt; fine. I have to ask the maintainer. I am sorry.<br>
<br>
As the wording of the text says to refer to the LICENSE file, and that<br>
is GPLv2, that should be the license for this file as well.<br>
<br>
But if you do not understand license issues, I would stay away from this<br=
>
and work on other tasks.=C2=A0 It&#39;s tricky and people get upset if you =
get it<br>
wrong :)<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--0000000000003947970583d97a0d--

