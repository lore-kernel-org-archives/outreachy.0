X-GM-THRID: 6809557952024805376
X-Received: by 2002:a05:6512:6d4:: with SMTP id u20mr5056200lff.209.1585477413129;
        Sun, 29 Mar 2020 03:23:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5310:: with SMTP id c16ls2480134lfh.1.gmail; Sun, 29 Mar
 2020 03:23:31 -0700 (PDT)
X-Google-Smtp-Source: APiQypLnDDBwk5hlef+LE9ziWaAtYv0hVMVhpyYmA8Fhw17Q7PQkn4wcV8CHUnE7fdchTCSwZJdu
X-Received: by 2002:a05:6512:203c:: with SMTP id s28mr4815388lfs.49.1585477410924;
        Sun, 29 Mar 2020 03:23:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585477410; cv=none;
        d=google.com; s=arc-20160816;
        b=BVTv9zqEg6fj8koaYCHjOEyj/pA5+jvoLp/x2vI/0MR2Qv0cdd8njOFxGEnDGQU2+G
         9lGSV6oYdbbse+8cwdaWzjTAf2EhDhp+ttw1z9GY3enogZzBUiWhFCmY0UzQ3YXMdCXF
         tJdgeaj8D6mKnIir73tU2DHBvuqq9xFRWUoZNGfIB/2xfn8g0dSJ0yZ/dqv/+1pN0h93
         uIxW4cfXY5g+hhtszwIxTKufEFDidkyV9EQP9dM61tz93yVIG46RninIHNjiRv0fjAn4
         WDiSX2BUsiwzVIfd7Cexef9zYzYYz6aCwJny8UJ3Tpc42u6P7xdXYXTqS+RfqG567KyV
         TK/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QG6WjF+Gc8351Q4xvO7OQXCy0eIR7DfjMngeSlGVnQA=;
        b=mpQIrK7nRdUQ+HCMD4ZPpq26D0yukTS/A1okFIIG3XIgvmIK881b7g2lpFoqJG4CG1
         omGY0l1CDYlUtKDbMzK7bdYMS6KILPKRpGV0Z2L9KTo/tKjh3cJTD8wsTHiiYBWIrPsF
         hvFH1T0rujGHeUMeawn0+ifa1mCRE6gf/x+jbEbPhtGdd8y5P89L2D05j+KuBmyfy5w/
         /2AJxZO3wg+LY/uL7yOR9XwiG3TEGDvaRJtjVlsS1+nzxpa/gzHu72PxZcu+VhMOgffo
         jKTPgGImJUJgcNV3eCWFSVbRRYXvTY7b8eis98V/zZZ+Okc91GoIHFnkGgKQXJo2/mJM
         /inw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y8Xa875o;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id t17si401839lff.0.2020.03.29.03.23.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 03:23:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y8Xa875o;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id r24so14736505ljd.4
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 03:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QG6WjF+Gc8351Q4xvO7OQXCy0eIR7DfjMngeSlGVnQA=;
        b=Y8Xa875oRQcStBeMxf1xUiu1me3+nXd90ALQODc1GmSoqFp8dGBpeSRMoHFm8gRpSw
         08KVM51gQlPdjvq6gLWl67C21eLb/dihB9FJ+smN7h2U1xiUXQIhe7v6UVTZDHJF8ErZ
         c0emr2pcimAlYqWYQO3wvgVPElWHEDRZ7cCET32ASy0MnKjf5mS6dw+lt2Yt7zkOR7Xr
         CLiwpzTqn1TOon8/tvr/g1GTjhg/yM7DMPBjLlJDYJrwAZWifbUnIOryZxVuUypehXYk
         FS+lC222SMhwvCdrB3l5ZG/kiOutQNXq5NZ39ZkZToy3xcSNVaw6OsuppgCFLfQNOZ/V
         1/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QG6WjF+Gc8351Q4xvO7OQXCy0eIR7DfjMngeSlGVnQA=;
        b=lpgZiKxyTezgBqP3TdAoRLWJZa0oR98nvSvIEtAA56j6Whuc9ZIbQXJQ1JvsljcjEG
         8bMngPQfryEJXNN13acwMGvERkVPj/UtwNDELC6EOa9dZirei2V009wXTyO+ccfIhywc
         TWrlNijXao/REwARWhOLHDhXO6VIMIUICBfytSw+24DZXIhNc+7nqpANqZ4kX89GO+ob
         4OtWzmyXt6YgoJZdYDXFmqh5hQYFyqjl2xE94ubzk1ouR7QEGVX2gVU5CSJmlzGJe+lB
         3KAQ5mnP06JDciut2Ge7ERI1iHd9zQLokC0qeTa/k5XLM2WTJkHHHEeQndk1T7g+wrTj
         jQhw==
X-Gm-Message-State: AGi0PuYOgTxENsEr6EBLGLs/myc1sY/bCWIf8wg7gyCYSEu4eH85zCSF
	ZKHw/H6+bbQdhDWk9OdcV1g0YE+eTPiMjMhF42M=
X-Received: by 2002:a05:651c:92:: with SMTP id 18mr1161306ljq.141.1585477410565;
 Sun, 29 Mar 2020 03:23:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200329092204.770405-1-jbwyatt4@gmail.com> <alpine.DEB.2.21.2003291127230.2990@hadrien>
 <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com> <alpine.DEB.2.21.2003291144460.2990@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003291144460.2990@hadrien>
From: Soumyajit Deb <debsoumyajit100@gmail.com>
Date: Sun, 29 Mar 2020 15:53:18 +0530
Message-ID: <CAMS7mKBEhqFat8fWi=QiFwfLV9+skwi1hE-swg=XxU48zk=_tQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
To: Julia Lawall <julia.lawall@inria.fr>
Cc: John Wyatt <jbwyatt4@gmail.com>, outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>, dri-devel@lists.freedesktop.org, 
	linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary="000000000000db326305a1fbb995"

--000000000000db326305a1fbb995
Content-Type: text/plain; charset="UTF-8"

I had the same doubt the other day about the replacement of udelay() with
usleep_range(). The corresponding range for the single argument value of
udelay() is quite confusing as I couldn't decide the range.
But as much as I noticed checkpatch.pl gives warning for replacing udelay()
with usleep_range() by checking the argument value of udelay(). In the
documentation, it is written udelay() should be used for a sleep time of at
most 10 microseconds but between 10 microseconds and 20 milliseconds,
usleep_range() should be used.
I think the range is code specific and will depend on what range is
acceptable and doesn't break the code.
 Please correct me if I am wrong.

More clarification on this issue will be helpful.

On Sun, 29 Mar 2020, 15:17 Julia Lawall, <julia.lawall@inria.fr> wrote:

>
>
> On Sun, 29 Mar 2020, John Wyatt wrote:
>
> > On Sun, 2020-03-29 at 11:28 +0200, Julia Lawall wrote:
> > >
> > > On Sun, 29 Mar 2020, John B. Wyatt IV wrote:
> > >
> > > > Fix style issue with usleep_range being reported as preferred over
> > > > udelay.
> > > >
> > > > Issue reported by checkpatch.
> > > >
> > > > Please review.
> > > >
> > > > As written in Documentation/timers/timers-howto.rst udelay is the
> > > > generally preferred API. hrtimers, as noted in the docs, may be too
> > > > expensive for this short timer.
> > > >
> > > > Are the docs out of date, or, is this a checkpatch issue?
> > > >
> > > > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > > > ---
> > > >  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > > b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > > index eeeeec97ad27..019c8cce6bab 100644
> > > > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > > @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
> > > >   dev_dbg(par->info->device, "%s()\n", __func__);
> > > >
> > > >   gpiod_set_value(par->gpio.reset, 0);
> > > > - udelay(20);
> > > > + usleep_range(20, 20);
> > >
> > > usleep_range should have a range, eg usleep_range(50, 100);.  But it
> > > is
> > > hard to know a priori what the range should be.  So it is probably
> > > better
> > > to leave the code alone.
> >
> > Understood.
> >
> > With the question I wrote in the commit message:
> >
> > "As written in Documentation/timers/timers-howto.rst udelay is the
> > generally preferred API. hrtimers, as noted in the docs, may be too
> > expensive for this short timer.
> >
> > Are the docs out of date, or, is this a checkpatch issue?"
> >
> > Is usleep_range too expensive for this operation?
> >
> > Why does checkpatch favor usleep_range while the docs favor udelay?
>
> I don't know the answer in detail, but it is quite possible that
> checkpatch doesn't pay any attention to the delay argument.  Checkpatch is
> a perl script that highlights things that may be of concern.  It is not a
> precise static analsis tool.
>
> As a matter of form, all of your Please review comments should have been
> put below the ---.  Currently, if someone had wanted to apply the patch,
> you would make them do extra work to remove this information.
>
> julia
>
> >
> > >
> > > julia
> > >
> > > >   gpiod_set_value(par->gpio.reset, 1);
> > > >   mdelay(120);
> > > >  }
> > > > --
> > > > 2.25.1
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google
> > > > Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it,
> > > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit
> > > >
> https://groups.google.com/d/msgid/outreachy-kernel/20200329092204.770405-1-jbwyatt4%40gmail.com
> > > > .
> > > >
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.2003291144460.2990%40hadrien
> .
>

--000000000000db326305a1fbb995
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I had the same doubt the other day about the replacement =
of udelay() with usleep_range(). The corresponding range for the single arg=
ument value of udelay() is quite confusing as I couldn&#39;t decide the ran=
ge.=C2=A0<div dir=3D"auto">But as much as I noticed <a href=3D"http://check=
patch.pl" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_bl=
ank">checkpatch.pl</a> gives warning for replacing udelay() with usleep_ran=
ge() by checking the argument value of udelay(). In the documentation, it i=
s written udelay() should be used for a sleep time of at most 10 microsecon=
ds but between 10 microseconds and 20 milliseconds, usleep_range() should b=
e used.=C2=A0</div><div dir=3D"auto">I think the range is code specific and=
 will depend on what range is acceptable and doesn&#39;t break the code.</d=
iv><div dir=3D"auto">=C2=A0Please correct me if I am wrong.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">More clarification on this issue will=
 be helpful.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sun, 29 Mar 2020, 15:17 Julia Lawall, &lt;<a href=3D"m=
ailto:julia.lawall@inria.fr" rel=3D"noreferrer noreferrer noreferrer norefe=
rrer noreferrer" target=3D"_blank">julia.lawall@inria.fr</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><br>
<br>
On Sun, 29 Mar 2020, John Wyatt wrote:<br>
<br>
&gt; On Sun, 2020-03-29 at 11:28 +0200, Julia Lawall wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Sun, 29 Mar 2020, John B. Wyatt IV wrote:<br>
&gt; &gt;<br>
&gt; &gt; &gt; Fix style issue with usleep_range being reported as preferre=
d over<br>
&gt; &gt; &gt; udelay.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Issue reported by checkpatch.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Please review.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; As written in Documentation/timers/timers-howto.rst udelay i=
s the<br>
&gt; &gt; &gt; generally preferred API. hrtimers, as noted in the docs, may=
 be too<br>
&gt; &gt; &gt; expensive for this short timer.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Are the docs out of date, or, is this a checkpatch issue?<br=
>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: John B. Wyatt IV &lt;<a href=3D"mailto:jbwyat=
t4@gmail.com" rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer=
 noreferrer" target=3D"_blank">jbwyatt4@gmail.com</a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;=C2=A0 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-<br>
&gt; &gt; &gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c<br>
&gt; &gt; &gt; b/drivers/staging/fbtft/fb_agm1264k-fl.c<br>
&gt; &gt; &gt; index eeeeec97ad27..019c8cce6bab 100644<br>
&gt; &gt; &gt; --- a/drivers/staging/fbtft/fb_agm1264k-fl.c<br>
&gt; &gt; &gt; +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c<br>
&gt; &gt; &gt; @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)<b=
r>
&gt; &gt; &gt;=C2=A0 =C2=A0dev_dbg(par-&gt;info-&gt;device, &quot;%s()\n&qu=
ot;, __func__);<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0gpiod_set_value(par-&gt;gpio.reset, 0);<br>
&gt; &gt; &gt; - udelay(20);<br>
&gt; &gt; &gt; + usleep_range(20, 20);<br>
&gt; &gt;<br>
&gt; &gt; usleep_range should have a range, eg usleep_range(50, 100);.=C2=
=A0 But it<br>
&gt; &gt; is<br>
&gt; &gt; hard to know a priori what the range should be.=C2=A0 So it is pr=
obably<br>
&gt; &gt; better<br>
&gt; &gt; to leave the code alone.<br>
&gt;<br>
&gt; Understood.<br>
&gt;<br>
&gt; With the question I wrote in the commit message:<br>
&gt;<br>
&gt; &quot;As written in Documentation/timers/timers-howto.rst udelay is th=
e<br>
&gt; generally preferred API. hrtimers, as noted in the docs, may be too<br=
>
&gt; expensive for this short timer.<br>
&gt;<br>
&gt; Are the docs out of date, or, is this a checkpatch issue?&quot;<br>
&gt;<br>
&gt; Is usleep_range too expensive for this operation?<br>
&gt;<br>
&gt; Why does checkpatch favor usleep_range while the docs favor udelay?<br=
>
<br>
I don&#39;t know the answer in detail, but it is quite possible that<br>
checkpatch doesn&#39;t pay any attention to the delay argument.=C2=A0 Check=
patch is<br>
a perl script that highlights things that may be of concern.=C2=A0 It is no=
t a<br>
precise static analsis tool.<br>
<br>
As a matter of form, all of your Please review comments should have been<br=
>
put below the ---.=C2=A0 Currently, if someone had wanted to apply the patc=
h,<br>
you would make them do extra work to remove this information.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; julia<br>
&gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0gpiod_set_value(par-&gt;gpio.reset, 1);<br>
&gt; &gt; &gt;=C2=A0 =C2=A0mdelay(120);<br>
&gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; 2.25.1<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; You received this message because you are subscribed to the =
Google<br>
&gt; &gt; &gt; Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; &gt; To unsubscribe from this group and stop receiving emails fro=
m it,<br>
&gt; &gt; &gt; send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubs=
cribe@googlegroups.com" rel=3D"noreferrer noreferrer noreferrer noreferrer =
noreferrer noreferrer" target=3D"_blank">outreachy-kernel+unsubscribe@googl=
egroups.com</a>.<br>
&gt; &gt; &gt; To view this discussion on the web visit<br>
&gt; &gt; &gt; <a href=3D"https://groups.google.com/d/msgid/outreachy-kerne=
l/20200329092204.770405-1-jbwyatt4%40gmail.com" rel=3D"noreferrer noreferre=
r noreferrer noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"=
>https://groups.google.com/d/msgid/outreachy-kernel/20200329092204.770405-1=
-jbwyatt4%40gmail.com</a><br>
&gt; &gt; &gt; .<br>
&gt; &gt; &gt;<br>
&gt;<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer noreferrer" t=
arget=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.2003291144460.2990%40hadrien" r=
el=3D"noreferrer noreferrer noreferrer noreferrer noreferrer noreferrer nor=
eferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kern=
el/alpine.DEB.2.21.2003291144460.2990%40hadrien</a>.<br>
</blockquote></div>

--000000000000db326305a1fbb995--

