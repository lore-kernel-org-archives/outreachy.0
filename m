X-GM-THRID: 6673772779804819456
X-Received: by 2002:ac2:4856:: with SMTP id 22mr1262345lfy.12.1553879149986;
        Fri, 29 Mar 2019 10:05:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:98f:: with SMTP id 137ls405884ljj.9.gmail; Fri, 29 Mar
 2019 10:05:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyqTl4LMFXrI0HTLTlC/LVYgCEh2LVbpdT6pA7pvpojji/V3C+ESbNMKiqdh0vvUapue6+0
X-Received: by 2002:a2e:9995:: with SMTP id w21mr1361844lji.16.1553879149066;
        Fri, 29 Mar 2019 10:05:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553879149; cv=none;
        d=google.com; s=arc-20160816;
        b=0guGjEUd4vvqofzpUNMWipDlQpAp5cZiL8QCrq9QF/MPyrnUNdPWpcyvZ9Ta2rRfDt
         1k5TAUP2UMQd71caDJiUTQ8r5FEeoRBFXwLgNR04jMn+VkFzYfhAVWDXwEpGnJ8onIZt
         GUIkLZ/S6TiL0ZKM2NmTvvNcVhtI7c7lMNwZ4qfgEkQnDOl8E162DRzrzi1SXCrU46BW
         B5nkcXLyOnCzdez4MYYJoNMws6MeAJj8B9pmV0fUEUHupNJI9VW27OCNllMO934u1AJX
         yDkCsijYlwuyZwfnWE4XR9F3tn4vtnPe2OGbEm3Vu8wNXbu8T6nSlPH/AUbcoS24lG67
         xfZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D3yMkwV9mNccRpSN0twQLXXzCD3Da+JWEAnVVhiRcaM=;
        b=qc9nudXtrPKubBfPwlsTJuLgqM0WTCsQ9PiD/Ks9i/dis8spW2B1O8dSJAEqXpnuyC
         pHbqjFE3i4r6OBfgEiBHnQ1euFrcFvyLTxKI9HwHLb5qtQ7KSwcz+EZ4o2z0peNdZIAY
         n1jcC8XzsLfY2f+trQyy39ZspoGAWeCL96z42vWoAWfbbdJmSZ8C4EE5LYMfmzVnAGqk
         nijH4va+VeTT2/Cxt+R7rblp87TL9LZ/3j7tzFXcI/n0ZsutJViFU1XFl3DYfdsuqOUe
         EozgXiaOY6d30pM1v8faNoQBBPUJxIXRV+G4wksZCgrm2GwQrdVQqpho4hi6d6AOP45v
         gADA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J/OStigY";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id h21si122175lfm.4.2019.03.29.10.05.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 10:05:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J/OStigY";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x133.google.com with SMTP id a6so1949565lfl.5
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 10:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D3yMkwV9mNccRpSN0twQLXXzCD3Da+JWEAnVVhiRcaM=;
        b=J/OStigYvmeuMvB2QNqxPPudJG6CMeFktsHoLxQV3gI10Wl8aO3FGZ0BdKsM371cj5
         KBWtXJBKrjeoqQl4FjesmhbG6VXqfA/DEMiKAJQ/YY6X9ZEbmnGYXZrP+zoGBp05QoJ6
         8Tbd5WrPD7YYRACQgDF3mGhYts8GnPVgd+CNo4mCVNsDJQNkfHI6xIaf2Uo5FjTNRuOT
         u2v8LfNsL/Po3cMVTk36B8g6e+dExSiCoo0VaxGaJK4e0mIG0lOJftGR6JCMH+Ff9Cfo
         Qpwo8adnlaybDfBVx/7BBYsTBMS2sdl016ukB+zn/T5cnduemhYxmsKUjg0PQDZvq5bQ
         U65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D3yMkwV9mNccRpSN0twQLXXzCD3Da+JWEAnVVhiRcaM=;
        b=hybUxjQkMS3iiBEb0ZOoITcaT3fNsxiv0B1Izou9gOn393AVClG9U235DUw8o0WR0K
         MjDwMVbxioeMWMwbHb4RXOAsIH4nC/hiCIO9jMTEfFU+HP4/CcDfRQR9coTzcAa7ICXX
         A3nrdilyAqN9meblgATkFg6ERig1QZJM6Ndr6ziB6ERUF55JukMBTzQW7nqeUltZpk/E
         WDUAeWXDhjveli3zV4LyfHtiM9KSSGKWRCLFMDXGUm1vWuf7oBY5AonJ+r2yEgF32J2Q
         CNH2d0d8ieqMPnQCxfVmy9/AayGF1WS/qtG8QNLFFmP7rq5QAHlpwOV5JJNhE2oBhXzA
         r1oA==
X-Gm-Message-State: APjAAAUD+x90rcbMFhjpJdVZq9yLTlBEKoFMdoWrDk0jb6M28qxbe83h
	k+VTXnKYFfwNRgZfH32bTW/3/EiI9OT9jfH6rpuamQ==
X-Received: by 2002:a19:f809:: with SMTP id a9mr1728089lff.8.1553879148928;
 Fri, 29 Mar 2019 10:05:48 -0700 (PDT)
MIME-Version: 1.0
References: <1553858792-4632-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190329162250.GA27406@kroah.com>
In-Reply-To: <20190329162250.GA27406@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Fri, 29 Mar 2019 22:35:37 +0530
Message-ID: <CANTOzWE8FU1EDXV5A-uFhSbqM+wodbX6eYp4EJ0WYQ5mCYySYg@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: fbtft: line over 80 characters
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000b224e505853eae38"

--000000000000b224e505853eae38
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 29, 2019, 9:52 PM Greg KH <greg@kroah.com> wrote:

> On Fri, Mar 29, 2019 at 04:56:32PM +0530, Payal Kshirsagar wrote:
> > Fix style issue - line over 80 characters.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_ssd1331.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_ssd1331.c
> b/drivers/staging/fbtft/fb_ssd1331.c
> > index 9f54fe2..4cfe9f8 100644
> > --- a/drivers/staging/fbtft/fb_ssd1331.c
> > +++ b/drivers/staging/fbtft/fb_ssd1331.c
> > @@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int
> len, ...)
> >               for (i = 0; i < len; i++)
> >                       buf[i] = (u8)va_arg(args, unsigned int);
> >               va_end(args);
> > -             fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par,
> par->info->device, u8, buf, len, "%s: ", __func__);
> > +             fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par,
> par->info->device,
> > +                               u8, buf, len, "%s: ", __func__);
> >       }
> >
> >       va_start(args, len);
>
> This patch does not apply to my tree because someone else did it long
> ago.  Be sure you are always working off of the correct development tree
> so you do not duplicate work already done.
>
Okay, I will take care of it.
Thanks,
Payal

> thanks,
>
> greg k-h
>

--000000000000b224e505853eae38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Fri, Mar 29, 2019, 9:52 PM Greg KH &lt;<a href=3D"mailto:greg@kroah.com"=
>greg@kroah.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On F=
ri, Mar 29, 2019 at 04:56:32PM +0530, Payal Kshirsagar wrote:<br>
&gt; Fix style issue - line over 80 characters.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_ssd1331.c | 3 ++-<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtf=
t/fb_ssd1331.c<br>
&gt; index 9f54fe2..4cfe9f8 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_ssd1331.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_ssd1331.c<br>
&gt; @@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, i=
nt len, ...)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i =
&lt; len; i++)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0buf[i] =3D (u8)va_arg(args, unsigned int);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0va_end(args);<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fbtft_par_dbg_hex(DEB=
UG_WRITE_REGISTER, par, par-&gt;info-&gt;device, u8, buf, len, &quot;%s: &q=
uot;, __func__);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fbtft_par_dbg_hex(DEB=
UG_WRITE_REGISTER, par, par-&gt;info-&gt;device,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8, buf, len, &quot;%s: &quot;, _=
_func__);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0va_start(args, len);<br>
<br>
This patch does not apply to my tree because someone else did it long<br>
ago.=C2=A0 Be sure you are always working off of the correct development tr=
ee<br>
so you do not duplicate work already done.<br></blockquote></div></div><div=
 dir=3D"auto">Okay, I will take care of it.</div><div dir=3D"auto">Thanks,<=
/div><div dir=3D"auto">Payal</div><div dir=3D"auto"><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--000000000000b224e505853eae38--

