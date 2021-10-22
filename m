X-GM-THRID: 7021853580963348480
X-Received: by 2002:a17:902:e74a:b0:13f:3538:fca0 with SMTP id p10-20020a170902e74a00b0013f3538fca0mr10892560plf.22.1634904179718;
        Fri, 22 Oct 2021 05:02:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:1e0c:: with SMTP id pg12ls6641459pjb.0.canary-gmail;
 Fri, 22 Oct 2021 05:02:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwXTVehWEU1kuEVgWoVQf1sWALBcadu61gYqkPBY7oJvwtFdAJi1BUIFjtNht2Ji+Ex1neH
X-Received: by 2002:a17:902:8a8c:b0:13e:45bc:e9a9 with SMTP id p12-20020a1709028a8c00b0013e45bce9a9mr11096787plo.11.1634904178473;
        Fri, 22 Oct 2021 05:02:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634904178; cv=none;
        d=google.com; s=arc-20160816;
        b=fksV6cHVQecYB8EdF1IzucjivzwHyFUnyqWv6WdQAbRbRAoNLnKle25UmYBqt/nzYN
         wG7Dux/hIF86EzqL3jmkrNP14k/Vx+hZpFuMai374BmB7cTtdUQgKk8JxjsZx+iuzue6
         iavFrAmHEH929eeirOauLYkBUf1yE1zl7L4UrmlBQWR8BR/WWRuSsG5jjhc94eXGkRII
         2q/9b4NZxqnC5fIgugxHp48T1emEM/pn+2r8LWrxBeY2DHG+acnGNpxWG8kfJP8objwQ
         PuaWV/8rSBAFjH4HEaALcOwPcokQcQOxQhmCRzRf9Wh1AQkyk7T21Lkckm1j/ppg1BTs
         UJVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m+eQrxiew/+hLtu9WGKQwzl7II7x9vJ7RmqrMIkFVRw=;
        b=VRxcgjIifLOAXDHlTrbb1rQPQRpHyLEDlw39wCrtRn/MRukwAdNXp3ILwH1y9atLiS
         BzjmgjVSWy4cBV0wdzxB5ZWgPlE4jKslj3yKOBg0Px2CtdGECQNJwqVUssIOMWnirYlZ
         c01xhHwAj6Ra65+I9VKCM2nD8LTZol55Knu9sB+WFpXG0fNFWhAqdUHBQ8CXBBsEKX/K
         KGa3jrU6cPIZzb9w/DTcsUGyMTpqOVF++fD+t4unVlfdmpqVHVcZBz0+VgaKQmCNz8SO
         anIvdVdU6ZR40XZzFO3IoQzFb0ReGZKf1/r+1eG26enUMo0zCfoSH2rcFrqD/I5rNwgf
         V2Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Qdh4UqGt;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::833 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com. [2607:f8b0:4864:20::833])
        by gmr-mx.google.com with ESMTPS id x1si694713pjc.3.2021.10.22.05.02.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 05:02:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::833 as permitted sender) client-ip=2607:f8b0:4864:20::833;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Qdh4UqGt;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::833 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x833.google.com with SMTP id n2so3265485qta.2;
        Fri, 22 Oct 2021 05:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=m+eQrxiew/+hLtu9WGKQwzl7II7x9vJ7RmqrMIkFVRw=;
        b=Qdh4UqGt4XPVR4avIBC5X8N6mKacBEoocxM4YQtURxsvkAEL+aczpPRDXhCgAzUJNk
         fE7fF6gQ1i9WeFhI8o6ph/1Gxw1Pw+IhODvjG+b9WHIyC1x5881bOhT5CTvAq6MHfbHe
         3te4lvJ6cr87n22MK2TBLbGHaAjMhs8oJSUHgj/zBduRG+2f/6UBCR4bGavMpbVzWO1z
         RqG2YAixqUseo/Ipay2zUd5xtluD90uQ8n8D4x6ou4rq54yN2VRtM9CCIhMWXGXnhbbi
         SWGye1E12ytCJBlqreaK90eCfmJ5oshK5152SP5/6taq3INZwSssgf3oLuoknpcp/FeS
         5FWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=m+eQrxiew/+hLtu9WGKQwzl7II7x9vJ7RmqrMIkFVRw=;
        b=pcKOCxXhaXbvYPcfSQbNEK8jkfj2w5BICmrET0ewCJ7Dpv2Kd0vHzxbxhk5ZQeL/29
         6mz38eBejADHQMssf2Z5J2KCKgUcYrZKhPweMMFsSI8TTCUOqXefPcjRZz717+59gGA9
         wc2uvax5B5j0LLW1PZVbjjkVmeRkybwI4RxQkTsn74iQorQqut6CBQIdddAoUSW/1xn3
         caCxannkHIEWUCTzPXj5fyZzl1oU9p5htpM1UvxMylsJf6nP9QBZtzeBxkr2a3E5q7BB
         sOiGLitwtgZpStojx4EshPzR7yUwVWz81bJIigLWRxk3hgffpsXh46n+VBEkCTu+17rE
         b3yQ==
X-Gm-Message-State: AOAM532MheLuX5bxe29yJBfLslZS6TK9N9a9Rc/p0eWPEFulNpMuy00e
	4VtTt6f1puEcwHeQ2IybZWjx4mqGiUEK/85sYGI=
X-Received: by 2002:ac8:58c6:: with SMTP id u6mr12521169qta.230.1634904178076;
 Fri, 22 Oct 2021 05:02:58 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1634899405.git.kushalkothari285@gmail.com> <7977747.61zFHCMloo@localhost.localdomain>
In-Reply-To: <7977747.61zFHCMloo@localhost.localdomain>
From: kushal kothari <kushalkothari285@gmail.com>
Date: Fri, 22 Oct 2021 17:32:46 +0530
Message-ID: <CALtHPQt5jzcn4Obw8UCmz2XZK0FFZbEt6ebXEaTa5rwbAyHVOQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] v2 staging: rtl8723bs: core: Cleanup patchset for
 style issues in rtw_cmd.c
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kush19992810@gmail.com, 
	outreachy-kernel@googlegroups.com, fabioaiuto83@gmail.com, 
	ross.schm.dev@gmail.com, marcocesati@gmail.com, straube.linux@gmail.com, 
	philippesdixon@gmail.com, manuelpalenzuelamerino@gmail.com, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	Mike Rapoport <mike.rapoport@gmail.com>, kushalkotharitest@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c6afba05ceefcac9"

--000000000000c6afba05ceefcac9
Content-Type: text/plain; charset="UTF-8"

>Hi Kushal,

>Version numbers ("v2" in this case) must be enclosed in square brackets,
>between "PATCH" and "n/N".

>Thanks,

>Fabio

Hi Fabio,
Err, I made a mistake. :(
So should I correct it now as v3?

On Fri, Oct 22, 2021 at 5:17 PM Fabio M. De Francesco <
fmdefrancesco@gmail.com> wrote:

> On Friday, October 22, 2021 1:37:34 PM CEST Kushal Kothari wrote:
> > Kushal Kothari (4):
> >   v2 staging: rtl8723bs: core: Remove true and false comparison
> >   v2 staging: rtl8723bs: core: Remove unnecessary parentheses
> >   v2 staging: rtl8723bs: core: Remove unnecessary space after a cast
> >   v2 staging: rtl8723bs: core: Remove unnecessary blank lines
> >
> > Changes from v1:
> >   [PATCH 1/4]: Moved unnecessary parentheses change in PATCH 2/4
> >   [PATCH 2/4]: Added the extra parentheses change from PATCH 1/4 here.
> >   [PATCH 3/4]: No Changes
> >   [PATCH 4/4]: Fix whitespace error.
> >
> >
> >
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 94 +++++++++---------------
> >  1 file changed, 34 insertions(+), 60 deletions(-)
> >
> > --
> > 2.25.1
> >
> Hi Kushal,
>
> Version numbers ("v2" in this case) must be enclosed in square brackets,
> between "PATCH" and "n/N".
>
> Thanks,
>
> Fabio
>
>
>
>

--000000000000c6afba05ceefcac9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt;Hi Kushal,<br>
<br>
&gt;Version numbers (&quot;v2&quot; in this case) must be enclosed in squar=
e brackets, <br>
&gt;between &quot;PATCH&quot; and &quot;n/N&quot;.<br>
<br>
&gt;Thanks,<br>
<br><div>
&gt;Fabio</div><div><br></div>Hi Fabio,<br>Err, I made a mistake. :(<br>So =
should I correct it now as v3?</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Oct 22, 2021 at 5:17 PM Fabio M. De F=
rancesco &lt;<a href=3D"mailto:fmdefrancesco@gmail.com" target=3D"_blank">f=
mdefrancesco@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On Friday, October 22, 2021 1:37:34 PM CEST Kushal Ko=
thari wrote:<br>
&gt; Kushal Kothari (4):<br>
&gt;=C2=A0 =C2=A0v2 staging: rtl8723bs: core: Remove true and false compari=
son<br>
&gt;=C2=A0 =C2=A0v2 staging: rtl8723bs: core: Remove unnecessary parenthese=
s<br>
&gt;=C2=A0 =C2=A0v2 staging: rtl8723bs: core: Remove unnecessary space afte=
r a cast<br>
&gt;=C2=A0 =C2=A0v2 staging: rtl8723bs: core: Remove unnecessary blank line=
s<br>
&gt; <br>
&gt; Changes from v1:<br>
&gt;=C2=A0 =C2=A0[PATCH 1/4]: Moved unnecessary parentheses change in PATCH=
 2/4<br>
&gt;=C2=A0 =C2=A0[PATCH 2/4]: Added the extra parentheses change from PATCH=
 1/4 here.<br>
&gt;=C2=A0 =C2=A0[PATCH 3/4]: No Changes<br>
&gt;=C2=A0 =C2=A0[PATCH 4/4]: Fix whitespace error.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 drivers/staging/rtl8723bs/core/rtw_cmd.c | 94 +++++++++---------=
------<br>
&gt;=C2=A0 1 file changed, 34 insertions(+), 60 deletions(-)<br>
&gt; <br>
&gt; -- <br>
&gt; 2.25.1<br>
&gt; <br>
Hi Kushal,<br>
<br>
Version numbers (&quot;v2&quot; in this case) must be enclosed in square br=
ackets, <br>
between &quot;PATCH&quot; and &quot;n/N&quot;.<br>
<br>
Thanks,<br>
<br>
Fabio<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000c6afba05ceefcac9--

