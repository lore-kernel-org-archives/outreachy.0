X-GM-THRID: 761102598144
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,efa55286ffba0bae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.88.40 with SMTP id bd8mr825752lab.0.1424375003509;
        Thu, 19 Feb 2015 11:43:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.137 with SMTP id s9ls194651las.15.gmail; Thu, 19 Feb
 2015 11:43:22 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr817104lal.3.1424375002811;
        Thu, 19 Feb 2015 11:43:22 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-la0-x234.google.com (mail-la0-x234.google.com. [2a00:1450:4010:c03::234])
        by gmr-mx.google.com with ESMTPS id xl7si2710662lbb.1.2015.02.19.11.43.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:43:22 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:4010:c03::234 as permitted sender) client-ip=2a00:1450:4010:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:4010:c03::234 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by lams18 with SMTP id s18so1738690lam.13
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LcYSj1hdKP728C61vU8rAJUynXpdRdp+4Vt4BdK0bZI=;
        b=HQGBOxwbu7LoqsWJdwdZW8+eR7k+qI25heYaVnKR1Q1Vp9ryT0OGUJNL+ExM1u3KQA
         7itCr4fTKfFc3yi7oQLGmxlJInEb1KiBO7ocBFws5p8yoJQ/FVgp9P3zHoUBlpRjNi9F
         bfCEmqp5r8cvD6uf2g+aDwd2uZOvI/wY0x/4K68TE+xjZ0zn/00pQiY4cl5CQq4XK9u3
         Eqe9Uf6r1mFgWIn2zMoN7ZxKhwA3cFVnnwLZRO1LPWevGP7p6LC3mfBxKxwEWmM0rJ0C
         lpEqULEixM95D6YX5YXzr9KulbRWhR1P+mL9k/A6sTaefSDnynEz6n2FUwNWa8ScQSvJ
         iW4w==
MIME-Version: 1.0
X-Received: by 10.112.170.100 with SMTP id al4mr5570751lbc.42.1424375002645;
 Thu, 19 Feb 2015 11:43:22 -0800 (PST)
Received: by 10.112.147.162 with HTTP; Thu, 19 Feb 2015 11:43:22 -0800 (PST)
In-Reply-To: <1673936.xFr6aDYKYJ@avalon>
References: <1424371364-7277-1-git-send-email-aybuke.147@gmail.com>
	<1424371364-7277-2-git-send-email-aybuke.147@gmail.com>
	<1673936.xFr6aDYKYJ@avalon>
Date: Thu, 19 Feb 2015 21:43:22 +0200
Message-ID: <CAEAX3Joj5CRsUdNmXWmmHXiAKTXiRxyywwT0jnqsdS3QcAe=6Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: fbtft: Fix struct
 backlight_ops should normally be const
From: =?UTF-8?B?YXliw7xrZSDDtnpkZW1pcg==?= <aybuke.147@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c236860f48a3050f7626db

--001a11c236860f48a3050f7626db
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

I will pay much more attention to the commit messages and subject line. I u=
se
this command while compiling this file: make M=3Ddrivers/staging/fbtft
I didn't encounter a problem. I guess, I'm using the wrong the "make"
command.
Thanks :)


2015-02-19 20:52 GMT+02:00 Laurent Pinchart <
laurent.pinchart@ideasonboard.com>:

> Hi Aybuke,
>
> Thank you for the patch.
>
> On Thursday 19 February 2015 20:42:44 aybuke ozdemir wrote:
> > This patch fixes following checkpatch.pl warningi in fb_ssd1351.c:
> > WARNING: struct backlight_ops should normally be const
>
> A good commit message is split in two parts:
>
> - The subject line should summarize what the commit does. In this case, y=
ou
> could say "staging: fbtft: Make struct backlight_ops const".
>
> - The commit message body should explain why the change is needed. There'=
s
> a
> reason behind checkpatch warnings, they indicate issues with the code. Yo=
u
> should try to understand why a non-const struct backlight_ops is an issue=
,
> and
> explain it. In this case the reason why struct backlight_ops is usually
> const
> would lead to a totally different fix than the one below.
>
> > Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_ssd1351.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_ssd1351.c
> > b/drivers/staging/fbtft/fb_ssd1351.c index b59120c..bc4d188 100644
> > --- a/drivers/staging/fbtft/fb_ssd1351.c
> > +++ b/drivers/staging/fbtft/fb_ssd1351.c
> > @@ -212,11 +212,11 @@ static void register_onboard_backlight(struct
> > fbtft_par *par) {
> >       struct backlight_device *bd;
> >       struct backlight_properties bl_props =3D { 0, };
> > -     struct backlight_ops *bl_ops;
> > +     const struct backlight_ops *bl_ops;
>
> This introduces a compilation error as the code later assigns bl_ops-
> >update_status. Please make sure you always at least compile the code
> before
> submitting a patch.
>
> >       fbtft_par_dbg(DEBUG_BACKLIGHT, par, "%s()\n", __func__);
> >
> > -     bl_ops =3D devm_kzalloc(par->info->device, sizeof(struct
> backlight_ops),
> > +     bl_ops =3D devm_kzalloc(par->info->device, sizeof(const struct
> > backlight_ops),
>
> The kernel coding style tends to favour sizeof(var) instead of
> sizeof(type).
> In this case this would become sizeof(*bl_ops). This ensures that the siz=
e
> stays correct if the type of the variable is changed.
>
> > GFP_KERNEL);
> >       if (!bl_ops) {
> >               dev_err(par->info->device,
>
> --
> Regards,
>
> Laurent Pinchart
>
>


--=20
Ayb=C3=BCke =C3=96zdemir
http://www.aybukeozdemir.com

--001a11c236860f48a3050f7626db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Laurent,<br><br><span lang=3D"en"><span>I will</sp=
an> <span>pay much more attention</span> <span>to the</span> </span>commit =
messages and subject line. <span lang=3D"en"><span>I</span> <span>use this =
command</span> <span>while</span> <span>compiling this file:</span></span><=
span lang=3D"en"><span> make M=3Ddrivers/staging/</span></span>fbtft<br><sp=
an lang=3D"en"><span>I didn&#39;t encounter a problem</span><span></span><s=
pan></span><span></span><span></span><span></span><span></span></span>. <sp=
an lang=3D"en"><span><span lang=3D"en"><span>I guess,</span> <span>I&#39;m =
using</span> <span>the</span> <span>wrong </span></span></span></span><span=
 lang=3D"en"><span><span lang=3D"en"><span><span lang=3D"en"><span><span la=
ng=3D"en"><span>the &quot;make&quot;</span> <span>command</span>.<br>Thanks=
 :)<br></span></span></span></span></span></span></span></div><span><br></s=
pan></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-02=
-19 20:52 GMT+02:00 Laurent Pinchart <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:laurent.pinchart@ideasonboard.com" target=3D"_blank">laurent.pinchart@ide=
asonboard.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Aybuke,<=
br>
<br>
Thank you for the patch.<br>
<span class=3D""><br>
On Thursday 19 February 2015 20:42:44 aybuke ozdemir wrote:<br>
&gt; This patch fixes following <a href=3D"http://checkpatch.pl" target=3D"=
_blank">checkpatch.pl</a> warningi in fb_ssd1351.c:<br>
&gt; WARNING: struct backlight_ops should normally be const<br>
<br>
</span>A good commit message is split in two parts:<br>
<br>
- The subject line should summarize what the commit does. In this case, you=
<br>
could say &quot;staging: fbtft: Make struct backlight_ops const&quot;.<br>
<br>
- The commit message body should explain why the change is needed. There&#3=
9;s a<br>
reason behind checkpatch warnings, they indicate issues with the code. You<=
br>
should try to understand why a non-const struct backlight_ops is an issue, =
and<br>
explain it. In this case the reason why struct backlight_ops is usually con=
st<br>
would lead to a totally different fix than the one below.<br>
<span class=3D""><br>
&gt; Signed-off-by: aybuke ozdemir &lt;<a href=3D"mailto:aybuke.147@gmail.c=
om">aybuke.147@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_ssd1351.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/fbtft/fb_ssd1351.c<br>
&gt; b/drivers/staging/fbtft/fb_ssd1351.c index b59120c..bc4d188 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_ssd1351.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_ssd1351.c<br>
&gt; @@ -212,11 +212,11 @@ static void register_onboard_backlight(struct<br=
>
&gt; fbtft_par *par) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct backlight_device *bd;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct backlight_properties bl_props =3D { 0=
, };<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct backlight_ops *bl_ops;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0const struct backlight_ops *bl_ops;<br>
<br>
</span>This introduces a compilation error as the code later assigns bl_ops=
-<br>
&gt;update_status. Please make sure you always at least compile the code be=
fore<br>
submitting a patch.<br>
<span class=3D""><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0fbtft_par_dbg(DEBUG_BACKLIGHT, par, &quot;%s=
()\n&quot;, __func__);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0bl_ops =3D devm_kzalloc(par-&gt;info-&gt;device, =
sizeof(struct backlight_ops),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0bl_ops =3D devm_kzalloc(par-&gt;info-&gt;device, =
sizeof(const struct<br>
&gt; backlight_ops),<br>
<br>
</span>The kernel coding style tends to favour sizeof(var) instead of sizeo=
f(type).<br>
In this case this would become sizeof(*bl_ops). This ensures that the size<=
br>
stays correct if the type of the variable is changed.<br>
<span class=3D""><br>
&gt; GFP_KERNEL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!bl_ops) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(par-&gt;=
info-&gt;device,<br>
<br>
--<br>
</span>Regards,<br>
<br>
Laurent Pinchart<br>
<br>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature"><div dir=3D"ltr"><div>Ayb=C3=BCke =C3=96zdemir<br></div><a href=3D"=
http://www.aybukeozdemir.com" target=3D"_blank">http://www.aybukeozdemir.co=
m</a><br></div></div>
</div>

--001a11c236860f48a3050f7626db--

