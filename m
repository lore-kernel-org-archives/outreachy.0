X-GM-THRID: 6330571692278022144
X-Received: by 10.36.33.200 with SMTP id e191mr2539253ita.12.1473952100724;
        Thu, 15 Sep 2016 08:08:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.234 with SMTP id 103ls1188494iom.0.gmail; Thu, 15 Sep
 2016 08:08:18 -0700 (PDT)
X-Received: by 10.98.95.71 with SMTP id t68mr6683935pfb.7.1473952098201;
        Thu, 15 Sep 2016 08:08:18 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id l185si238209ywb.5.2016.09.15.08.08.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 08:08:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id z143so3517969qka.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 08:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=xyPpzGtg6W0VQIpZv0Ez09LGABwMNtcYTWyi3D3zAdc=;
        b=wWS86E1A33iSf7XTv9befuHg7773L9pwLkOn1LMPBmEMw8TvpNYztCjHt0fp35+SyF
         xefWOUy6/udUb/TcKl130bMV3J/0pHIiNkle3nOe1H0xtJOerlJa9Jf7BGztJr3kkSOn
         B8Oek//xI5JeIy1gmVIEun04skjUcdhY09ku65KOWfnLxRgY9hwHcu33zyR8p16kJPSR
         bqdzIwpv81rI/dgWGjfVrEJFqF2dtN3IN/tNFeHzBQ/ROICT5eiCMW/YIyHZKOMTCKRg
         Ei3MMk8xAinJ8rSiDXAErfukg3h24+n3DXfL7OLQ3hM/jdR3l3ahesWlJmSv79jKksv6
         6qwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=xyPpzGtg6W0VQIpZv0Ez09LGABwMNtcYTWyi3D3zAdc=;
        b=a8aGRYt0iQ/weR5VhSq9OTucOwIZAwiCiGRD1G7ydcO8hyWvPvzu4HP35gfhKTcekg
         SGKbjnctTZacT/+mW7ELDQ2CLp1ChTOLQhRdIVCbeiDmDRo5rpwFKPFQWEupD2tGhQd+
         ATSTHUog5hsawthdQxBLvF0cC/fc6eHxHDtruVluWHP1yRpAmocmRgZU7dxMIgwjtKQM
         46FeyCYze8cpyZi/yPRRpDmB28AfOrCl6LZFY+zgFpDy9Q4BQx/QZuUgUhPEIN+zjXVO
         vQTzOgM1J8J9ikrnpPh/dOGdq8sZoPMGr48ltDOrU2yF4BFdD//r47C+sTjbpD1TXm7c
         6T/g==
X-Gm-Message-State: AE9vXwOmbQ2e+feCwxarW8qNRCeZABe0AjwTazhkwjknbxKoO4wIatCSXj+ovxvl/owm9StEmtAcNyU+cYxxSw==
X-Received: by 10.55.41.198 with SMTP id p67mr9620688qkp.217.1473952097971;
 Thu, 15 Sep 2016 08:08:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.131.134 with HTTP; Thu, 15 Sep 2016 08:08:17 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609151656210.3045@hadrien>
References: <20160915145101.GA6064@life-desktop> <alpine.DEB.2.10.1609151656210.3045@hadrien>
From: Anchal Jain <anchalj109@gmail.com>
Date: Thu, 15 Sep 2016 20:38:17 +0530
Message-ID: <CAAbeOSt2NVAJ51RBMhoe9d2m+2rfQ_pA3AxoU8-ObBNf10LSCg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: olpc_dcon: Replace BUG/BUG_ON
 with WARN_ON
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>, 
	jon.nettleton@gmail.com
Content-Type: multipart/alternative; boundary=001a11473f2637435a053c8d372d

--001a11473f2637435a053c8d372d
Content-Type: text/plain; charset=UTF-8

>I think that this is not a good idea.  It may be essential to crash the
>kernel in these cases.  You would have to know why the kernel is able to
>continue

Because when we use BUG_ON and WARN_ON macro which will abort execution and
produce diagnostic messages, a stack trace and a list of modules.

but we prefer to use a WARN_ON because it is a less lethal mechanism,
 which will produce a backtrace without crashing the Kernel.

On Thu, Sep 15, 2016 at 8:26 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 15 Sep 2016, Anchal Jain wrote:
>
> > This patch fixed the warning detect by checkpatch.pl
> >
> > Avoid crashing the kernel - try using WARN_ON & recovery code rather than
> > BUG() or BUG_ON().
>
> I think that this is not a good idea.  It may be essential to crash the
> kernel in these cases.  You would have to know why the kernel is able to
> continue.
>
> julia
>
>
> >
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> > ---
> >  drivers/staging/olpc_dcon/olpc_dcon.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c
> b/drivers/staging/olpc_dcon/olpc_dcon.c
> > index f45b2ef..62e70ee 100644
> > --- a/drivers/staging/olpc_dcon/olpc_dcon.c
> > +++ b/drivers/staging/olpc_dcon/olpc_dcon.c
> > @@ -141,7 +141,7 @@ power_up:
> >       }
> >       if (x < 0) {
> >               pr_err("unable to stabilize dcon's smbus, reasserting
> power and praying.\n");
> > -             BUG_ON(olpc_board_at_least(olpc_board(0xc2)));
> > +             WAARN_ON(olpc_board_at_least(olpc_board(0xc2)));
> >               pm = 0;
> >               olpc_ec_cmd(EC_DCON_POWER_MODE, &pm, 1, NULL, 0);
> >               msleep(100);
> > @@ -369,7 +369,7 @@ static void dcon_source_switch(struct work_struct
> *work)
> >               break;
> >       }
> >       default:
> > -             BUG();
> > +             WARN_ON();
> >       }
> >
> >       dcon->curr_src = source;
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20160915145101.GA6064%40life-desktop.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a11473f2637435a053c8d372d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><span class=3D"gmail-im"><br>
</span>&gt;I think that this is not a good idea.=C2=A0 It may be essential =
to crash the<br>&gt;kernel in these cases.=C2=A0 You would have to know why=
 the kernel is able to<br>&gt;continue<br><br></div>Because when we use BUG=
_ON and WARN_ON macro which will abort execution and <br>produce diagnostic=
 messages, a stack trace and a list of modules.<br><br></div>but we prefer =
to use a WARN_ON because it is a less lethal mechanism,<br>=C2=A0which will=
 produce a backtrace without crashing the Kernel.</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Thu, Sep 15, 2016 at 8:26 PM, Juli=
a Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" targ=
et=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><span class=3D""><br>
<br>
On Thu, 15 Sep 2016, Anchal Jain wrote:<br>
<br>
&gt; This patch fixed the warning detect by <a href=3D"http://checkpatch.pl=
" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a><br>
&gt;<br>
&gt; Avoid crashing the kernel - try using WARN_ON &amp; recovery code rath=
er than<br>
&gt; BUG() or BUG_ON().<br>
<br>
</span>I think that this is not a good idea.=C2=A0 It may be essential to c=
rash the<br>
kernel in these cases.=C2=A0 You would have to know why the kernel is able =
to<br>
continue.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; Signed-off-by: Anchal Jain &lt;<a href=3D"mailto:anchalj109@gmail.com"=
>anchalj109@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/olpc_dcon/<wbr>olpc_dcon.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/olpc_dcon/<wbr>olpc_dcon.c b/drivers/stag=
ing/olpc_dcon/<wbr>olpc_dcon.c<br>
&gt; index f45b2ef..62e70ee 100644<br>
&gt; --- a/drivers/staging/olpc_dcon/<wbr>olpc_dcon.c<br>
&gt; +++ b/drivers/staging/olpc_dcon/<wbr>olpc_dcon.c<br>
&gt; @@ -141,7 +141,7 @@ power_up:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (x &lt; 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_err(&quot;una=
ble to stabilize dcon&#39;s smbus, reasserting power and praying.\n&quot;);=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BUG_ON(olpc_board_at_=
least(<wbr>olpc_board(0xc2)));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0WAARN_ON(olpc_board_a=
t_least(<wbr>olpc_board(0xc2)));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pm =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0olpc_ec_cmd(EC_D=
CON_POWER_<wbr>MODE, &amp;pm, 1, NULL, 0);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msleep(100);<br>
&gt; @@ -369,7 +369,7 @@ static void dcon_source_switch(struct work_struct =
*work)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0default:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BUG();<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0WARN_ON();<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dcon-&gt;curr_src =3D source;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160915145101.GA6064%40life-desktop" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>msgid/ou=
treachy-kernel/<wbr>20160915145101.GA6064%40life-<wbr>desktop</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a11473f2637435a053c8d372d--

