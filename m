X-GM-THRID: 6333608176063086592
X-Received: by 10.25.199.147 with SMTP id x141mr467153lff.12.1474659835413;
        Fri, 23 Sep 2016 12:43:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.158.208 with SMTP id h199ls461697wme.23.gmail; Fri, 23 Sep
 2016 12:43:54 -0700 (PDT)
X-Received: by 10.28.127.210 with SMTP id a201mr262301wmd.23.1474659834671;
        Fri, 23 Sep 2016 12:43:54 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id e21si323043wmc.2.2016.09.23.12.43.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 12:43:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id s64so6184191lfs.2
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Sep 2016 12:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=OTbPQ3kh/O8JCD32fNb0YEkrY5cGWHawVYsBMV2lco4=;
        b=aS1S+GVKl83LKzrovNET7egoDsFVyXlOVmwd4dt34ulvMq4wpxI0I6w+0whnoO2Ucq
         E9vw9EJ6U9LNXXJghYfQVQKeV0Jj7bhtXBFXCcq15uYFfkALJyI7ZAmm7gdhKzGZ7bHp
         8DRlgsNDHVBdRl79hOg7Xy0njgsqNCOC5PTgYQnVBmJOqSx+tPk35zLztexilewT07Dr
         YSO5ayMGo1vR75lV3yshHEfxGyrBVKHwCciDseh9143IS1FLO/pZzBmNl+Pr4qEdymPa
         +g3BCUQadFOGaYfJOdxYXOihJ8qGFslAtgiHqqaL9nV0TKc6iWcNkrs8/f39WVI3VcUL
         lfCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=OTbPQ3kh/O8JCD32fNb0YEkrY5cGWHawVYsBMV2lco4=;
        b=SM0idMbZwefvuUqtaBJRjz6VZLg9Y39tIsOIWMR0tvjYXrzDFiYLr4ePgwRcZkrwTt
         mf044B21I358O8e0dQfjDmpIKDJbSW2lY1DLHQRMgDvQ9mQQzM8pVRZt0UTrmJ0yHNAG
         0ugp3DNbo61Zopb5SciXiJiI+HrC1nePlKmrFcI8Rlir3JvqggQW/notC62o4+Bnpbpa
         ubKXOp4bTlKrySSiDA1cclErUU22DqYWFgYXWdIvJ/Djk7dNrSuXvFrSz6RzrIW36edg
         2hc/CEVZzoKzitg+XCsCvT0BaCRJ9MOBAFrMaHe4tyjmsiAhRZXQkOsl8gGNBUjW/VuG
         2NZA==
X-Gm-Message-State: AE9vXwPQq89QHFdEAOFNbYiZHW1VUlFXYfeIafNjjTRKIg6P51MwbcS19flvcBoG93g/LejELexB8Iszm8LYJQ==
X-Received: by 10.46.5.203 with SMTP id 194mr3690312ljf.9.1474659834052; Fri,
 23 Sep 2016 12:43:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.59.103 with HTTP; Fri, 23 Sep 2016 12:43:53 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609232125300.3463@hadrien>
References: <20160923191425.GA6587@fireworks> <alpine.DEB.2.10.1609232125300.3463@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Fri, 23 Sep 2016 22:43:53 +0300
Message-ID: <CALta04wss9ZvixEmrTHSq4goM958hcGYSgUh6d3YrcOWc8arRg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: ks_wlan_net: Remove
 unnecessary variable used to store return value
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=001a114a6eb892c582053d31fffc

--001a114a6eb892c582053d31fffc
Content-Type: text/plain; charset=UTF-8

I think you are perfectly right, thank you. I will submit the second
version right now.

Georgiana

On 23 September 2016 at 22:27, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 23 Sep 2016, Georgiana Rodica Chelu wrote:
>
> > Remove unneeded variable used to store return values.
> > The reason is to reduce the memory usage.
>
> I don't think that it would have any impact on the memory usage.  The
> compiler should be clever enough to produce the same code in both cases,
> since ret isn't used anywhere else in the function.
>
> But the change makes the function shorter, so there is less noise to look
> at, and it makes it completely obvious that the only possible return value
> is 0 (success).
>
> julia
>
> > Done using returnvar.cocci script.
> >
> > Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> > ---
> >  drivers/staging/ks7010/ks_wlan_net.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/ks7010/ks_wlan_net.c
> b/drivers/staging/ks7010/ks_wlan_net.c
> > index f1cd90e..d13a06b 100644
> > --- a/drivers/staging/ks7010/ks_wlan_net.c
> > +++ b/drivers/staging/ks7010/ks_wlan_net.c
> > @@ -3507,12 +3507,11 @@ int ks_wlan_net_stop(struct net_device *dev)
> >  {
> >       struct ks_wlan_private *priv = netdev_priv(dev);
> >
> > -     int ret = 0;
> >       priv->device_open_status = 0;
> >       del_timer_sync(&update_phyinfo_timer);
> >
> >       if (netif_running(dev))
> >               netif_stop_queue(dev);
> >
> > -     return ret;
> > +     return 0;
> >  }
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20160923191425.GA6587%40fireworks.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a114a6eb892c582053d31fffc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think you are perfectly right, thank you. I will su=
bmit the second version right now.<br><br></div>Georgiana<br></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On 23 September 2016 at 2=
2:27, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip=
6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><span class=3D""><br>
<br>
On Fri, 23 Sep 2016, Georgiana Rodica Chelu wrote:<br>
<br>
&gt; Remove unneeded variable used to store return values.<br>
&gt; The reason is to reduce the memory usage.<br>
<br>
</span>I don&#39;t think that it would have any impact on the memory usage.=
=C2=A0 The<br>
compiler should be clever enough to produce the same code in both cases,<br=
>
since ret isn&#39;t used anywhere else in the function.<br>
<br>
But the change makes the function shorter, so there is less noise to look<b=
r>
at, and it makes it completely obvious that the only possible return value<=
br>
is 0 (success).<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; Done using returnvar.cocci script.<br>
&gt;<br>
&gt; Signed-off-by: Georgiana Rodica Chelu &lt;<a href=3D"mailto:georgiana.=
chelu93@gmail.com">georgiana.chelu93@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/ks7010/ks_<wbr>wlan_net.c | 3 +--<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/ks7010/ks_<wbr>wlan_net.c b/drivers/stagi=
ng/ks7010/ks_<wbr>wlan_net.c<br>
&gt; index f1cd90e..d13a06b 100644<br>
&gt; --- a/drivers/staging/ks7010/ks_<wbr>wlan_net.c<br>
&gt; +++ b/drivers/staging/ks7010/ks_<wbr>wlan_net.c<br>
&gt; @@ -3507,12 +3507,11 @@ int ks_wlan_net_stop(struct net_device *dev)<b=
r>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ks_wlan_private *priv =3D netdev_priv=
(dev);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int ret =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;device_open_status =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0del_timer_sync(&amp;update_<wbr>phyinfo_time=
r);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (netif_running(dev))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netif_stop_queue=
(dev);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt; --<br>
&gt; 2.7.4<br>
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
gle.com/d/msgid/outreachy-kernel/20160923191425.GA6587%40fireworks" rel=3D"=
noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>msgid/outrea=
chy-kernel/<wbr>20160923191425.GA6587%<wbr>40fireworks</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a114a6eb892c582053d31fffc--

