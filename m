X-GM-THRID: 6670463759889203200
X-Received: by 2002:adf:ce07:: with SMTP id p7mr1551327wrn.24.1553090152465;
        Wed, 20 Mar 2019 06:55:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:ca1a:: with SMTP id a26ls405555wmg.8.gmail; Wed, 20 Mar
 2019 06:55:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyO8pdvgo4K5rPdSPqZ89QSXhzNkqlinD6VeK/WpoSFCuPQNMRydfidTGIoWa5WE34YQNus
X-Received: by 2002:a1c:234c:: with SMTP id j73mr737908wmj.19.1553090151450;
        Wed, 20 Mar 2019 06:55:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553090151; cv=none;
        d=google.com; s=arc-20160816;
        b=S1EGU8vJQka7rCTSCCGeUOA7qYNd0lzw/sTxIJ8imlJZeb/ojxHagQALnlrJhSRdgy
         uAFSS5z933bRrIxOPVLoEV6TInMaFjjhfcjW2qXCBy+U2vVwlz7qRydMwyCtoT5u4dNh
         M5il1i+4b/W+Ixo2ty8oU+0wST1eyovzyUOd3FhFQZ3uA3vXwEBLpmjVLBUVC6+0+4nt
         LT3Uh42twOyaLCM19oDFuyuWkOFh3/yu5K/FBLG6162RNrH56syycbTMLjcSGBczJLy5
         R7i2ePUQXM8LCh9gIqi8K9zqqkgEDu9ynLqXA/LioPQw4qftyzWnIvYhu1rLFGgIi86E
         WMkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VTMvkNo01/itvDOj71nDyHLAkDypsmxhM5SoMo9b8/U=;
        b=iZ4EH7FNnl7K056dFc3ALFKkGWDu9qPIH7+SH66WSTt9cdVPcHZm/HSbeYQI8wLwb6
         zpsgWuCnbFqXs+zLJQ+R/RWNArjhT2beTBVhIvl6ovQjEzTxgwZGERh2+ikEdEkt+FeC
         rAmNZu2dYeZ7AsOh1OhofS8fWrS3/2fFielgbefLTL5ImBGLZ+/5O82HmIu3mMT3tNCn
         E0UEpVNj2p7ywXwSUqOPMsjoFgo5sgXV2aTGxE40q8HfkR+dYud++a6ieVLeaidGcefm
         k8YoehRVbBK6vhDMUl99RetnrnpIdRVp9l7uP7AYUJp0DMS94w4r5ctNeX4bzWD0Ymcm
         9UgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CWlPMi9D;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id m1si86182wrj.4.2019.03.20.06.55.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 06:55:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CWlPMi9D;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22f.google.com with SMTP id v10so2339191lji.3
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 06:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VTMvkNo01/itvDOj71nDyHLAkDypsmxhM5SoMo9b8/U=;
        b=CWlPMi9Dlb6G1NrJTxpKpda4Zcd0IEX6suIr8IL0Oef3OujlNyxiS4KOrljiAvr/ZF
         8WFgLcSkwD7H4xwUT11ugIiqaWL5eCdtpSjtHw5QPWbig6TAxSS4RRy8uYR2hulGSV1S
         iIHQksj5lSx/YeHDfzBbMR3A4E4TXiP+6rgZfz5c+3yU1XLJ3i1RonPc7chICjdJ3DsJ
         4AWhl/H7XtAjtDO6XIRPGtDDLWRp2OrHSXVdV8yc0V3RDnjKJSz6QCPm1bBlzJGGN5og
         ex4p/lRue3nK0rU+gTEap4zS3Vu4Faf8NDbRJngA9HHCeePrlAGYRW5i4ENmYKZd5FHv
         yA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VTMvkNo01/itvDOj71nDyHLAkDypsmxhM5SoMo9b8/U=;
        b=jos4QsKSIv/hV8vL9MdXuTw629Rh1F0qxPGuAI0YdQUgQDvpnUPCJ6cNgKJFhPVZok
         Q6Sn3Pv8+Tz+ZVb8Q0JsoEirwQHtFJn1N7JF3MXsF7VaUN3ypMnfdDUne00xwyZGydzM
         xOcqMyqnXCI/cr8iBYbcpiWixHHfP5Pi+coKmJJYcoJDCm8AW0gM8BpLQIGlwWkWpy6e
         Wh27rIC3UhcaI85fNrbWaViwLLMQRq34w92k2GOMpp/+5h6JB+hWafY0rKMRqIyqkgSz
         lOmxVv4YMnR3t8WkL6s/jtjHIOqiv685Mi1B5SnTDGZ/Uw/kPexBoDI+M5UbqgYMJ3uh
         nEfQ==
X-Gm-Message-State: APjAAAWS1dRzhDQ5qde+fgSpMZOy/QlsFXUqm9nVK3kJkDQh2uSs6bf8
	nmNuIdm6Z3pzaktvcWqmTW+Yjq2ghckE+Qh8UlY=
X-Received: by 2002:a2e:924c:: with SMTP id v12mr7154347ljg.185.1553090151241;
 Wed, 20 Mar 2019 06:55:51 -0700 (PDT)
MIME-Version: 1.0
References: <1553088353-5599-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.20.1903201439330.3627@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903201439330.3627@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Wed, 20 Mar 2019 19:25:38 +0530
Message-ID: <CANTOzWHwAQsbmfKTwJZSWPnDJrRDaMGEQjtjDiQvjjnoc+QAfQ@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: greybus: align to open parenthesis
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c4e00c058486fa8f"

--000000000000c4e00c058486fa8f
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Mar 2019 at 19:11, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 20 Mar 2019, Payal Kshirsagar wrote:
>
> > Aligning to open parenthesis
> > In file drivers/staging/greybus/arche-platform.c
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/greybus/arche-platform.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/arche-platform.c
> b/drivers/staging/greybus/arche-platform.c
> > index 307ff51..6bdb5d9 100644
> > --- a/drivers/staging/greybus/arche-platform.c
> > +++ b/drivers/staging/greybus/arche-platform.c
> > @@ -170,7 +170,7 @@ static irqreturn_t arche_platform_wd_irq(int irq,
> void *devid)
> >                */
> >               if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
> >                       if (time_before(jiffies,
> > -                             arche_pdata->wake_detect_start +
> > +                                     arche_pdata->wake_detect_start +
> >
>  msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
>
> You can't have the second argument of + to the left of th first argument
> of +.  Pease look more carefully at the code you ar producing by these
> changes and see if you really think that the resulting code looks better.
>
> julia
>
> Okay, I understood.
Thanks!
payal

>
>
> >
>  arche_platform_set_wake_detect_state(arche_pdata
> >                                                           ,
> WD_STATE_IDLE);
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1553088353-5599-1-git-send-email-payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903201439330.3627%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000c4e00c058486fa8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 20 Mar 2019 at 19:11, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Wed, 20 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Aligning to open parenthesis<br>
&gt; In file drivers/staging/greybus/arche-platform.c<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/greybus/arche-platform.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/stagin=
g/greybus/arche-platform.c<br>
&gt; index 307ff51..6bdb5d9 100644<br>
&gt; --- a/drivers/staging/greybus/arche-platform.c<br>
&gt; +++ b/drivers/staging/greybus/arche-platform.c<br>
&gt; @@ -170,7 +170,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, =
void *devid)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (arche_pdata-=
&gt;wake_detect_state =3D=3D WD_STATE_BOOT_INIT) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (time_before(jiffies,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0arche_pdata-&gt;wake_detect_start +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0arche_pdata-=
&gt;wake_detect_start +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(WD_COLDBOOT_PULSE=
_WIDTH_MS))) {<br>
<br>
You can&#39;t have the second argument of + to the left of th first argumen=
t<br>
of +.=C2=A0 Pease look more carefully at the code you ar producing by these=
<br>
changes and see if you really think that the resulting code looks better.<b=
r>
<br>
julia<br>
<br></blockquote><div>Okay, I understood.</div><div>Thanks!</div><div>payal=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0arche_platform_set_wake_detect_sta=
te(arche_pdata<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0, WD_STAT=
E_IDLE);<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1553088353-5599-1-git-send-email-payal.s.k=
shirsagar.98%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://grou=
ps.google.com/d/msgid/outreachy-kernel/1553088353-5599-1-git-send-email-pay=
al.s.kshirsagar.98%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903201439330.3627%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.20.1903201439330.3627%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--000000000000c4e00c058486fa8f--

