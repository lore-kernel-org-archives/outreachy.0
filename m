X-GM-THRID: 6669793876600946688
X-Received: by 2002:a19:3809:: with SMTP id f9mr1032479lfa.1.1552956810715;
        Mon, 18 Mar 2019 17:53:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3612:: with SMTP id d18ls709792lja.8.gmail; Mon, 18 Mar
 2019 17:53:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQpXHqzop3zqnIKFnZhDT9/QwgeHo5s6n4fwePwqFsKSdaavJr1mHU7Szz+oyh+SOfq1ps
X-Received: by 2002:a2e:91c4:: with SMTP id u4mr1117518ljg.29.1552956809544;
        Mon, 18 Mar 2019 17:53:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552956809; cv=none;
        d=google.com; s=arc-20160816;
        b=eqmlL+lEQ1BtsxAkqv4zWUVL/D7AUhM9wDNTwaUbZfzhh6OMAd4a5l8LAMNwwOivom
         G0g/VgRxxZEy7cHMnpPNRcmPSrpRSD0niyMMkGMILCfQk4RuuPnwMCgJQ29cVyjC+12k
         UcY9W6EuRIfafZeIKFGAQXMhN6M+tBCh65niqqo/VmUFy718lFeaZBNcSOI5ZbMNcgJ9
         /zcN8hcrbYShdNd2a04Ddcn3DNxG4+p6YFzlph3HKvxR/rFIjt0R7+pIEIGgP3FwtNC2
         WAmn3HROniF74QFVu1IqsSpPXt/5bqbdwAc3Rt4IP33GikL1uDayVauzxTEXSgFjMRBS
         ADww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ukeB9SSECtM2WyC9S/7Vx6z9wTJoUbn9o4KCuxSE2BY=;
        b=sGxCsYkya65YZtCR41rrakg36RnBHWyZEUjz4MOP4Jt7iaMYYxrxsBJwK8my6/HnYq
         l8hnRk29wYUWrvoMeVmJFtqvUzwb4Ul6in1OV3qQ6tHKEL695DiCufpjP8lTyylVa9Uh
         L6mBMcMZpoUOM7d2yAWxEbyOUMbqTONXnXGH0d9KdeTSXNqXfCgowP3vsrWqhD2pzyRj
         hTRqehhfVLoZjUGA7WrxjWX94Rum2hQtk5rc5IIXQIVjl+QbjEu2jyDdIM3g5IPwFDeb
         XOwDRv4tFmrWfNyWE8NZ3gdI8ScFz2DbPshKgWRI4G6I9dHctgRyxMWJAtGfF2Xd6Gvj
         4HkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nBhYcvAv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id h14si669871lja.2.2019.03.18.17.53.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 17:53:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nBhYcvAv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x241.google.com with SMTP id f23so1882758ljc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 17:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ukeB9SSECtM2WyC9S/7Vx6z9wTJoUbn9o4KCuxSE2BY=;
        b=nBhYcvAvT/0+NqrZr82pj5QEIHqthHhPHOiFIHfhgQ2K6tRGAA8yfKJ0VUxwsnK+Fv
         RrPOXHVUspltYqi5xt4W1rKFmApZTssU2ojoxyzYrk1KpDmEuktez8hJ3sOpMSGsvH3m
         8/tpiZJ/ZZ6fHKdROlwd7ya1srJiBVg+cgZxFlcZI6xqJkZRjTo+UsnL/KvN4dqx1C1l
         7lxlfRBSs9QIe2fxMhlJGgkO2wVr5nlSI3EMI97R1YHv85wfYi3Mwj4ZtmQP1hxCO702
         yaamUAboQZeIug3NXxdt3ZvGFuiI0Pxq2Y1xo6RFFIPYPAWvIkxQycpmRyICYqCZRNQY
         MEGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ukeB9SSECtM2WyC9S/7Vx6z9wTJoUbn9o4KCuxSE2BY=;
        b=PdTUgK7RGikaRinhO0HbnAwykQt0p2HF67b4f+27g/uxn23+CCaIc1OYBWKl/t53pb
         EnmSgWDdFRJZXs4IQoOzdYGcg613jsL5omVUimpWRC2IIBqUjyYlMHDs4g4LyTDH2hvM
         At/oxbDvaeozbDXx+LaFobID/6PNARVeQiUgXOrEWzAqs9QMkY7qKZaDWIr5Vd63DECA
         PRzm79HociB3oxz28umln2FAERJBr343SktO33Zm1O4+b1Nz86yeniFRJTWBcOzwgObA
         f2BV2Nhy9zQqrgtmFWqiOtEYOO+LaldBQp2fDoSVf6JLIS9nVErTHdHItf2D+0VP4QAZ
         jq0Q==
X-Gm-Message-State: APjAAAX22i+1dIlGRAEyhumMcOJHXXpE8mUKSApMreiQtDUXiEDvdd6T
	8KY60WxprpwjRHtrdomm3lmsZMXbfKtA9U/PtZRfjg==
X-Received: by 2002:a2e:86ca:: with SMTP id n10mr3329113ljj.135.1552956809398;
 Mon, 18 Mar 2019 17:53:29 -0700 (PDT)
MIME-Version: 1.0
References: <1552932384-11028-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <20190318184539.GA11680@kroah.com>
In-Reply-To: <20190318184539.GA11680@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Tue, 19 Mar 2019 06:23:17 +0530
Message-ID: <CANTOzWEfLXN9E=X_TzHd4PRnCY2eSSzYn0y_sU14tzfpFP-dVw@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: speakup: prefer usleep_range
 over udelay
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000f9ceb8058467ee4b"

--000000000000f9ceb8058467ee4b
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 19, 2019, 12:15 AM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Mon, Mar 18, 2019 at 11:36:24PM +0530, Payal Kshirsagar wrote:
> > Since usleep_range is built on top of hrtimers, the
> > wakeup will be very precise (ish), thus a simple
> > usleep function would likely introduce a large number
> > of undesired interrupts.
> > Thus udelay replaced with usleep_range.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/speakup/speakup_decpc.c | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/speakup_decpc.c
> b/drivers/staging/speakup/speakup_decpc.c
> > index 798c42d..10ca19b 100644
> > --- a/drivers/staging/speakup/speakup_decpc.c
> > +++ b/drivers/staging/speakup/speakup_decpc.c
> > @@ -251,7 +251,7 @@ static int dt_waitbit(int bit)
> >       while (--timeout > 0) {
> >               if ((dt_getstatus() & bit) == bit)
> >                       return 1;
> > -             udelay(50);
> > +             usleep_range(50, 50 + 10);
>
> I've said this in the past, only do this type of change if you can
> actually test it, and know it will be ok.  For some stuff like this, it
> _might_ be ok, but you just expanded the timeout range potentially a lot
> longer than before, and do we know that is ok?
>
> I sure do not :)
>
> So just leave these things alone unless you know the hardware will keep
> working properly.
>
> thanks,
>
> greg k-h
>


Okay I'll drop this patch .
Regards,
Payal

>

--000000000000f9ceb8058467ee4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Tue, Mar 19, 2019, 12:15 AM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfo=
undation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">On Mon, Mar 18, 2019 at 11:36:24PM +0530, Payal Kshirs=
agar wrote:<br>
&gt; Since usleep_range is built on top of hrtimers, the<br>
&gt; wakeup will be very precise (ish), thus a simple<br>
&gt; usleep function would likely introduce a large number<br>
&gt; of undesired interrupts.<br>
&gt; Thus udelay replaced with usleep_range.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/speakup/speakup_decpc.c | 14 +++++++-------<br>
&gt;=C2=A0 1 file changed, 7 insertions(+), 7 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging=
/speakup/speakup_decpc.c<br>
&gt; index 798c42d..10ca19b 100644<br>
&gt; --- a/drivers/staging/speakup/speakup_decpc.c<br>
&gt; +++ b/drivers/staging/speakup/speakup_decpc.c<br>
&gt; @@ -251,7 +251,7 @@ static int dt_waitbit(int bit)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (--timeout &gt; 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((dt_getstatu=
s() &amp; bit) =3D=3D bit)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return 1;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0udelay(50);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_range(50, 50 +=
 10);<br>
<br>
I&#39;ve said this in the past, only do this type of change if you can<br>
actually test it, and know it will be ok.=C2=A0 For some stuff like this, i=
t<br>
_might_ be ok, but you just expanded the timeout range potentially a lot<br=
>
longer than before, and do we know that is ok?<br>
<br>
I sure do not :)<br>
<br>
So just leave these things alone unless you know the hardware will keep<br>
working properly.<br>
<br>
thanks,<br>
<br>
greg k-h<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Okay I&#39;ll drop this patch .</div>=
<div dir=3D"auto">Regards,</div><div dir=3D"auto">Payal</div><div dir=3D"au=
to"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--000000000000f9ceb8058467ee4b--

