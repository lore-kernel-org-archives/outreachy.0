X-GM-THRID: 6341446809847595008
X-Received: by 10.176.16.79 with SMTP id g15mr710077uab.25.1476537335801;
        Sat, 15 Oct 2016 06:15:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.209 with SMTP id c200ls1222954itb.2.gmail; Sat, 15 Oct
 2016 06:15:32 -0700 (PDT)
X-Received: by 10.66.174.228 with SMTP id bv4mr3842932pac.148.1476537332282;
        Sat, 15 Oct 2016 06:15:32 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id d184si196474itg.0.2016.10.15.06.15.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 06:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id o141so8290508ioe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 06:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=OpPw30a+p8bNLoueBazXEVj0RkeR1PRPOYIFGQTrpeo=;
        b=HUJ8ibruLodwQBSAFhZn2Qi9KFcRzisrJMqXl+c4pqZGtSWE9guWmSCS665uTo2Ruh
         TRs5C57KmRSB2BT9ZNN+U7VltBHwS88lnZboP6Vir8LQqgcgL2oNhBvPmU+fmekuKGiN
         45jwzhHrsnDUY2AiOgK2mAYZcrSY1hoWhG+ojZg04FXjm3D82acLnhKbaN6GlrsNzBAm
         FccbwtJtStX2bEN2fTqEsgfjxg1hDvMcVAzS4NlVPNHlE3UgRSURfxRwihp+pL3acGSL
         dOTdG4BH71mfxjyuVDhGeI4WPpDq7YtETdEHoVDOTKl5oDjLOR8/mgpBJ+2rtMx2MnSV
         wx4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=OpPw30a+p8bNLoueBazXEVj0RkeR1PRPOYIFGQTrpeo=;
        b=Y2TOTZwSEt9s1aEnuZG5g521xvdwcHQ949LoY/gG7ReYJ7UDB80UTegF/D2AGV8DUP
         m5jvKB9ONge1NcPCQ/9f9pp4o7IX0FmHv+2RJjJ/s5CbidI7XzO811ByAGNrXpFqiFww
         RoAqi6dmWCnIRE/qfS4rG819zzO28sJbe7r1btoZSc3tFyctCN8BCHoWCVdaEkG/pkHS
         BNZas4feY3EenUhW2LFO5jT6qfzTUPkRSfnyIKwaNxWPO+ZwU+Pwop+fx0uWKobySadx
         0hmggyl8BXyAhEssSw43bOd5U+5sn92kz25BtLfuJrSy31MtJStfKMraK81L3Iqp8cjE
         SgEQ==
X-Gm-Message-State: AA6/9Rk7a6n4qXQeZAv4vgFkbXJHaAezQ2YgbJVugvX41JJHnBEDJn39w0QMSDfuBVwifvBVuOQ0FeAv0rZ+Gw==
X-Received: by 10.107.44.17 with SMTP id s17mr15487803ios.212.1476537332051;
 Sat, 15 Oct 2016 06:15:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.19.131 with HTTP; Sat, 15 Oct 2016 06:15:31 -0700 (PDT)
Received: by 10.36.19.131 with HTTP; Sat, 15 Oct 2016 06:15:31 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1610151513100.9280@hadrien>
References: <20161008055753.GA24115@kheixx-VB> <20161015112905.GC11674@kroah.com>
 <CACrt6MJ_rFuv3APG8+Gi-Wef3WhpT-RYv-bkMq0hNbEO8X7D=Q@mail.gmail.com> <alpine.DEB.2.20.1610151513100.9280@hadrien>
From: keila novo <laurana5@gmail.com>
Date: Sat, 15 Oct 2016 15:15:31 +0200
Message-ID: <CACrt6MJWT-d3Q87-sfOkOHdEtia=niZy87SUeweeFjs0zbD85A@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Checkpatch.pl error fixed:"Tabstop remove".
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Marc Dietrich <marvin24@gmx.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113ee4162cb848053ee72380

--001a113ee4162cb848053ee72380
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

El 15 oct. 2016 15:13, "Julia Lawall" <julia.lawall@lip6.fr> escribi=C3=B3:
>
>
>
> On Sat, 15 Oct 2016, keila novo wrote:
>
> >
> > El 15 oct. 2016 13:28, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org=
>
> > escribi=C3=B3:
> > >
> > > On Sat, Oct 08, 2016 at 07:57:53AM +0200, Keila Novo wrote:
> > > > Checkpatch.pl error fixed:"No tabstop at the init
> > > > of the line"
> > > >
> > > > Signed-off-by: Keila Novo <laurana5@gmail.com>
> > > > ---
> > > >  drivers/staging/nvec/nvec_power.c | 4 ++++
> > > >  1 file changed, 4 insertions(+)
> > > >
> > > > diff --git a/drivers/staging/nvec/nvec_power.c
> > b/drivers/staging/nvec/nvec_power.c
> > > > index b16c871..88e6c0e 100644
> > > > --- a/drivers/staging/nvec/nvec_power.c
> > > > +++ b/drivers/staging/nvec/nvec_power.c
> > > > @@ -441,7 +441,11 @@ static struct platform_driver nvec_power_drive=
r
> > =3D {
> > > >       .probe =3D nvec_power_probe,
> > > >       .remove =3D nvec_power_remove,
> > > >       .driver =3D {
> > > > +<<<<<<< HEAD
> > > >                .name =3D "nvec-power",
> > > > +=3D=3D=3D=3D=3D=3D=3D
> > > > +              .name =3D nvec_power,
> > > > +>>>>>>> 3dedeb1... Checkpatch.pl error fixed:"Tabstop
> > >
> > > I don't think you build the code with this patch applied :(
> >
> > I checked with the checkpatch.pl when I fixed the error and it didn't
> > show any error.
> > What is my error now?Can you explain it please?
>
> Your patch, as sent, has git conflict annotations.  The <<<< HEAD, etc.
>
> julia
>
> >
> > Thanks,
> >
> > --
> > You received this message because you are subscribed to the Google
Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/CACrt6MJ_rFuv3APG8%2B
> > Gi-Wef3WhpT-RYv-bkMq0hNbEO8X7D%3DQ%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

Ok, I will fix it.

Thanks for your time

--001a113ee4162cb848053ee72380
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">El 15 oct. 2016 15:13, &quot;Julia Lawall&quot; &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; escribi=C3=B3=
:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Sat, 15 Oct 2016, keila novo wrote:<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; El 15 oct. 2016 13:28, &quot;Greg Kroah-Hartman&quot; &lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt;<b=
r>
&gt; &gt; escribi=C3=B3:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Sat, Oct 08, 2016 at 07:57:53AM +0200, Keila Novo wrote:<=
br>
&gt; &gt; &gt; &gt; Checkpatch.pl error fixed:&quot;No tabstop at the init<=
br>
&gt; &gt; &gt; &gt; of the line&quot;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Signed-off-by: Keila Novo &lt;<a href=3D"mailto:laurana=
5@gmail.com">laurana5@gmail.com</a>&gt;<br>
&gt; &gt; &gt; &gt; ---<br>
&gt; &gt; &gt; &gt;=C2=A0 drivers/staging/nvec/nvec_power.c | 4 ++++<br>
&gt; &gt; &gt; &gt;=C2=A0 1 file changed, 4 insertions(+)<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; diff --git a/drivers/staging/nvec/nvec_power.c<br>
&gt; &gt; b/drivers/staging/nvec/nvec_power.c<br>
&gt; &gt; &gt; &gt; index b16c871..88e6c0e 100644<br>
&gt; &gt; &gt; &gt; --- a/drivers/staging/nvec/nvec_power.c<br>
&gt; &gt; &gt; &gt; +++ b/drivers/staging/nvec/nvec_power.c<br>
&gt; &gt; &gt; &gt; @@ -441,7 +441,11 @@ static struct platform_driver nvec=
_power_driver<br>
&gt; &gt; =3D {<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.probe =3D nvec_power_probe,<=
br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.remove =3D nvec_power_remove=
,<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.driver =3D {<br>
&gt; &gt; &gt; &gt; +&lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
.name =3D &quot;nvec-power&quot;,<br>
&gt; &gt; &gt; &gt; +=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .name=
 =3D nvec_power,<br>
&gt; &gt; &gt; &gt; +&gt;&gt;&gt;&gt;&gt;&gt;&gt; 3dedeb1... Checkpatch.pl =
error fixed:&quot;Tabstop<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I don&#39;t think you build the code with this patch applied=
 :(<br>
&gt; &gt;<br>
&gt; &gt; I checked with the <a href=3D"http://checkpatch.pl">checkpatch.pl=
</a> when I fixed the error and it didn&#39;t<br>
&gt; &gt; show any error.<br>
&gt; &gt; What is my error now?Can you explain it please?<br>
&gt;<br>
&gt; Your patch, as sent, has git conflict annotations.=C2=A0 The &lt;&lt;&=
lt;&lt; HEAD, etc.<br>
&gt;<br>
&gt; julia<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Thanks,<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e Groups<br>
&gt; &gt; &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
 send an<br>
&gt; &gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googleg=
roups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; &gt; To post to this group, send email to <a href=3D"mailto:outreachy-=
kernel@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visithttps://<a href=3D"http:/=
/groups.google.com/d/msgid/outreachy-kernel/CACrt6MJ_rFuv3APG8%2B">groups.g=
oogle.com/d/msgid/outreachy-kernel/CACrt6MJ_rFuv3APG8%2B</a><br>
&gt; &gt; Gi-Wef3WhpT-RYv-bkMq0hNbEO8X7D%3DQ%<a href=3D"http://40mail.gmail=
.com">40mail.gmail.com</a>.<br>
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout">https://groups.google.com/d/optout</a>.<br>
&gt; &gt;<br>
&gt; &gt;</p>
<p dir=3D"ltr">Ok, I will fix it.</p>
<p dir=3D"ltr">Thanks for your time<br>
</p>

--001a113ee4162cb848053ee72380--

