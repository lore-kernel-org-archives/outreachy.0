X-GM-THRID: 6667942778398310400
X-Received: by 2002:a63:d50:: with SMTP id 16mr18259977pgn.68.1552541648987;
        Wed, 13 Mar 2019 22:34:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6c81:: with SMTP id h123ls1715311pgc.5.gmail; Wed, 13
 Mar 2019 22:34:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxq5hlMsrPrGifkKr3xzl3Z02Tgvjf9bSNtXK1HwivHgfoyrUS2Qv50GRWWF8sMcTkoXDNi
X-Received: by 2002:aa7:8c8b:: with SMTP id p11mr17195088pfd.1.1552541648225;
        Wed, 13 Mar 2019 22:34:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552541648; cv=none;
        d=google.com; s=arc-20160816;
        b=mVhmvyZapicMbwd8IPw+T+fZjmkj2lrNAHng5nL0aAZ/9rcX0hiYRtCHJ+NE6J1CGY
         Pq4+ruQzZVYyk8tLubxifXdcTMvubVWb9tiicdpSR5S6cpaZnpnxkwDYGxptZEdt5k9k
         oG0ssY+2XDwSHrTz99OtblFD+acJWrLeQVn3Ibc4HXj5ID2AowyxawECysHXWgWKNMTj
         ZEilgKWrBFXMfDdW1trzbtqoT1PkyM5sqX8fOFKolp4dR81PYYQqWSix5c+oa0VIG6GY
         2T8uD7qbEuL/LbkYM6cFbEMIkkxCeUGNWZwxKBX/0bZmS2LDnRt8YgKu4nA2u+hLk4FA
         Bw5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CznVhNlA5nVPpn/Nsm5vDNVrkRsBWxhs/sEA7IaLIgw=;
        b=eBzSIH0GdbGDvjb0tRymWpMts8sYbG5CXo9HVftrnsd7ZGhwTnryIsfL8nFW7B7XRa
         HII2vH5WTaP9us5gnXn+6mSRx7zlWiQINKrt3qqHDftAgvB8w727ky75yk9a9EoZKmT/
         71mOFTsh8hhZhGcEQo0L/0kodUHuWwZhD6YJlN65STJxpcvXEZII7wqL8S1kNpXORbG8
         Jv8slciVsqPAOKmoagyiaRAHVsJf0Z5h8GTCTdbauVsUOtHLlFaLxhWwLRNT/6u1atJc
         PsVrSzAVjPS/DZmrZUfeln9ghcE0E+wcnMPS1sGkEU9TU9ZYQ+URRldOgDlpAS2tjsOX
         U8nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lg8iAa0l;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id p15si814825plr.4.2019.03.13.22.34.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 22:34:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lg8iAa0l;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id z39so4772674qtz.0
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 22:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CznVhNlA5nVPpn/Nsm5vDNVrkRsBWxhs/sEA7IaLIgw=;
        b=lg8iAa0laHJhQm+r9t/nmdFNc+2YtornNF8/CnLCqZCL8lg9BIS6TvmULyTUKilYOZ
         o03D1TB7CqnUe3A2vjIrC4DVzJDaaNR/RYv5tqYW2Jmw01+swPjg/kQW+PU/DeMqxuMQ
         2LTI2P2JWfDWsyAeJ6UxABythjFWy8aP+zedtD/CG3uywQkaRiFUM6IrK/QNkDFWTus6
         D0W0XsLmWXpsb7h9yOdU5LhwW3fmhd5ZYJjpE09704Vw5mvnFem+FYKBft/JZVWfTwp5
         TPax0oOn3cwW8Xnd9CSPelZPal+KWZfPEYx2tp8DmQC7IBVhSa1y15XHpZCRCt+G3dV7
         vcpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CznVhNlA5nVPpn/Nsm5vDNVrkRsBWxhs/sEA7IaLIgw=;
        b=kTWYnzO1s65aO1Fk2ObqMoE+gFj4up4qVoeN9IqC1D1RYcFMfTlFIFstqtwVFN+cly
         UxaHGQnLunkSQUlIkKdTiDU4SAXRDIIPbGbdMwimU8IlYv5KrHrZoqgmGExzkxJGsZBy
         AvK8WSOQF/BCbt5+H+SO+Wm/3o365pECDHMkhE0hloMP7uQSIuTfREZIVbsTsNayjCuU
         6+PbUiKIOu7IQZdCkYGZuYerMXaq3X7et/zzy6kll5wSHDPPW71vboGZJpw6tx3L/tsy
         Yvm5UV85UTT2JgqR2Z6kouN8abNeQx25oxcbea8IOfBOgB/r8afJ4P9ll0iFtlGyEo+k
         aA0g==
X-Gm-Message-State: APjAAAXG+ThE2rZJvrM8TfCgvCByJwU2zNfrvxJZgl+0hT20t5VuvbQx
	P9hj/KMY4+OHDFBJibaLrsGgN8k8hKEnHf7kSJKgA7Gt
X-Received: by 2002:aed:23cf:: with SMTP id k15mr38146754qtc.180.1552541647291;
 Wed, 13 Mar 2019 22:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <1552501395-12308-1-git-send-email-digholebhagyashri@gmail.com> <20190313193157.GA28479@kroah.com>
In-Reply-To: <20190313193157.GA28479@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Thu, 14 Mar 2019 11:03:30 +0530
Message-ID: <CAOMPgjgryH=uCy-orBPHwf+qxM-yst5+QzzKn5+a1yLFQbTfUg@mail.gmail.com>
Subject: Re: [PATCH] staging: speakup: Remove unused variable.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000062c9880584074546"

--00000000000062c9880584074546
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 14, 2019 at 1:01 AM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Wed, Mar 13, 2019 at 11:53:15PM +0530, Bhagyashri Dighole wrote:
> > Remove unused variable which is used to store return value,
> > Detected by Coccinelle semantic patch ret.cocci.
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/speakup/i18n.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/i18n.c
> b/drivers/staging/speakup/i18n.c
> > index ee240d3..a748eb8 100644
> > --- a/drivers/staging/speakup/i18n.c
> > +++ b/drivers/staging/speakup/i18n.c
> > @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
> >       input++;                /* Advance over %. */
> >       input = skip_flags(input);
> >       input = skip_width(input);
> > -     input = skip_conversion(input);
> > -     return input;
> > +     return skip_conversion(input);
>
> This same patch just got rejected a few days ago :(
>
> Please see the mailing list for the details.
>

I will check the mailing list.

>
> greg k-h
>

--00000000000062c9880584074546
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Mar 14, 2019 at 1:01 AM Greg Kroah-Hartman &lt;<a h=
ref=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, Mar 13, 2019 at 11=
:53:15PM +0530, Bhagyashri Dighole wrote:<br>
&gt; Remove unused variable which is used to store return value,<br>
&gt; Detected by Coccinelle semantic patch ret.cocci.<br>
&gt; <br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/speakup/i18n.c | 3 +--<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/=
i18n.c<br>
&gt; index ee240d3..a748eb8 100644<br>
&gt; --- a/drivers/staging/speakup/i18n.c<br>
&gt; +++ b/drivers/staging/speakup/i18n.c<br>
&gt; @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0input++;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* Advance over %. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0input =3D skip_flags(input);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0input =3D skip_width(input);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0input =3D skip_conversion(input);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return input;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return skip_conversion(input);<br>
<br>
This same patch just got rejected a few days ago :(<br>
<br>
Please see the mailing list for the details.<br></blockquote><div><br></div=
><div>I will check the mailing list. <br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">
<br>
greg k-h<br>
</blockquote></div></div>

--00000000000062c9880584074546--

