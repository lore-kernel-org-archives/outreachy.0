X-GM-THRID: 6670460287922995200
X-Received: by 2002:a2e:8912:: with SMTP id d18mr698692lji.26.1553088569180;
        Wed, 20 Mar 2019 06:29:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2416:: with SMTP id k22ls263873ljk.3.gmail; Wed, 20 Mar
 2019 06:29:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwOQlv5BIEZ0rGHzreEhXqE6KFt6lAwsS+FoGl9ZDFL9p4hnAMjVd7KBiQuS2TgZG+NOysT
X-Received: by 2002:a2e:975a:: with SMTP id f26mr441546ljj.5.1553088568109;
        Wed, 20 Mar 2019 06:29:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553088568; cv=none;
        d=google.com; s=arc-20160816;
        b=G04B0kNT3nkf/lUhJTq0KFgydPLi03SX/SNdtemn9zzKTUONu7yygawmtTh/s4gicb
         VMKgY45txnvq08627IwY1DngkL9PytSdBwhi4u1NjvRZun8SBfnEQ/mshrVGQfUqZkW/
         zVz7mZ8dsALWV0irrIpa9ZMfi9C+qdpp/pTf/e5ar6lMwfsnKg/Cgktr+Rk7h5nYe65T
         Q1sweIuX8Kxa2/tHvIYalgL9KtO+BqxS3l4X0Ir7ExtfBSncJNUhkX01QcQMqgwxWvR2
         0q/JMS/v2iuGp/ZX2fseNKa0KXI4oKdGViGxMLjkstnD2kBB9xnRQA5zb3q9j/iVQj12
         1u8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2MLUbP90cM+BgelDKYxBXMGNzUa5AHSuB5wjJqOcf+w=;
        b=Rfg79RtvkwXGqi0cawCSDRjGa5SvxTtO9usLACpKwv8MJGAT09w2jta3dJzC9/ftdN
         iZYiEDTjl3QP/l0T3dLGT+KzfUabQ1yY26/XGmcAJR5Q7Z6VgUqGGzQURdssHbJvh3AS
         Y94mQw/HGgzi4afK8yzToj/xKX/yx7aK6b2zZEyWR0RCk3R8qAUDHydFOdUVhAQNMPjb
         epRfwKvQuTy9IhqtouwtlnPlT16upWW3HOr5YEph2TGR5BLXmn9VnI73FzpcQQcCMW7e
         g7lJ9wYkWjfWtrtJQj+mRw2pa2IBmza3bwdK6XuoMi36ciY3C/AHczT2h14csyGe9a0C
         CWrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V3gz5AO3;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id y1si138170lfe.1.2019.03.20.06.29.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 06:29:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V3gz5AO3;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x234.google.com with SMTP id f23so2273524ljc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 06:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2MLUbP90cM+BgelDKYxBXMGNzUa5AHSuB5wjJqOcf+w=;
        b=V3gz5AO3BDuoXj5X44S0y2CV2OQsVBxh6GnnIsld2hRYxmu+bYFI879isBSWs//LIq
         IK93hmq/hIFLPSk39acEdZvFkW9fS83mJJ91F8at6pWNnPxDepm84XglsoSo8T744Nfi
         DrQAMURBmG5Xe7nvNZJ5SsTW6RtcLeASyarhW0HCTP2720I97GZQN2WvKzVCW/f56I9y
         OoSaR497OPR8vuUBjFxRQVZ4u2s93mqNBQjfmm4XRQLCWyhe6KkqXqm35nBB1WXqMql0
         gMeu7T4mjtmdJe/hrFjbnspjQAKldtE0U6rmKdt4Tje68GFYsEfJ2GyiJW+Oo3ZSvL9w
         EKAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2MLUbP90cM+BgelDKYxBXMGNzUa5AHSuB5wjJqOcf+w=;
        b=Vy0X/CfGPlIr5GJ6KC2G6Sdcme0Q93RC3AxWpXRmovQih4l/oQfs6RGlzkHz2AjNyn
         ozL62gbVJpllCxy9lx/7tZOC0XsT2BKYv5LPg5nhJhJ20OeBFSdN/NYHzkF+0NmE6nIj
         J/fuh8SlQM91BuY8wepw+Db1TzPZIG8rmsMdGqyHlqEBxcLl8b92N4ZwOYFW9oWtDVub
         /19iHTaqUobQ/hJ6xpldXcahGhMZE0WdJju1mYNOaL6ErQX5rXjxP8spCstmnCmEaX3X
         Plq8rviv6REz7eqRUe6bbnAoDMdges539InoM8tbxjM+q8hslJ3yOHzhFYrMvaKbDKII
         2ZOg==
X-Gm-Message-State: APjAAAUpI7cCwDjP6S8c2cFa6eYOwKEGQsonv1EBLReiN6YiERrOOYB/
	9TkCZbZYVe1B562cGNyzRIPTOZlhqbyWD7hx1tw=
X-Received: by 2002:a2e:9b4e:: with SMTP id o14mr7716747ljj.189.1553088567936;
 Wed, 20 Mar 2019 06:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <1553087541-4396-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.20.1903201423520.3627@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903201423520.3627@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Wed, 20 Mar 2019 18:59:14 +0530
Message-ID: <CANTOzWH0d--sjruSqZYRyNG6SiigJGyff95No=Gkp_WeUq8=OA@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: greybus: alignment should
 match open parenthesis
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000658a570584869c09"

--000000000000658a570584869c09
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Mar 2019 at 18:55, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 20 Mar 2019, Payal Kshirsagar wrote:
>
> > Aligning to open parenthesis
>
> The log message should be in the imperatie, so Align rather than Aligning.
> Also a sentence should have a period at the end.
>

Okay, I will take care from next time and will drop this patch.
Thanks
payal

>
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/greybus/audio_codec.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/greybus/audio_codec.c
> b/drivers/staging/greybus/audio_codec.c
> > index 08746c8..d62f91f 100644
> > --- a/drivers/staging/greybus/audio_codec.c
> > +++ b/drivers/staging/greybus/audio_codec.c
> > @@ -70,7 +70,7 @@ static int gbaudio_module_enable_tx(struct
> gbaudio_codec_info *codec,
> >               i2s_port = 0;   /* fixed for now */
> >               cportid = data->connection->hd_cport_id;
> >               ret = gb_audio_apbridgea_register_cport(data->connection,
> > -                                             i2s_port, cportid,
> > +                                                     i2s_port, cportid,
> >
>  AUDIO_APBRIDGEA_DIRECTION_TX);
>
> It's not really an advantage, because the final argument can't be moved.
> It's better to keep the arguments lined up, as they were.
>
> julia
>
> >               if (ret) {
> >                       dev_err_ratelimited(module->dev,
> > @@ -160,7 +160,7 @@ static int gbaudio_module_disable_tx(struct
> gbaudio_module_info *module, int id)
> >               i2s_port = 0;   /* fixed for now */
> >               cportid = data->connection->hd_cport_id;
> >               ret = gb_audio_apbridgea_unregister_cport(data->connection,
> > -                                             i2s_port, cportid,
> > +                                                       i2s_port,
> cportid,
> >
>  AUDIO_APBRIDGEA_DIRECTION_TX);
> >               if (ret) {
> >                       dev_err_ratelimited(module->dev,
> > @@ -205,7 +205,7 @@ static int gbaudio_module_enable_rx(struct
> gbaudio_codec_info *codec,
> >               i2s_port = 0;   /* fixed for now */
> >               cportid = data->connection->hd_cport_id;
> >               ret = gb_audio_apbridgea_register_cport(data->connection,
> > -                                             i2s_port, cportid,
> > +                                                     i2s_port, cportid,
> >
>  AUDIO_APBRIDGEA_DIRECTION_RX);
> >               if (ret) {
> >                       dev_err_ratelimited(module->dev,
> > @@ -295,7 +295,7 @@ static int gbaudio_module_disable_rx(struct
> gbaudio_module_info *module, int id)
> >               i2s_port = 0;   /* fixed for now */
> >               cportid = data->connection->hd_cport_id;
> >               ret = gb_audio_apbridgea_unregister_cport(data->connection,
> > -                                             i2s_port, cportid,
> > +                                                       i2s_port,
> cportid,
> >
>  AUDIO_APBRIDGEA_DIRECTION_RX);
> >               if (ret) {
> >                       dev_err_ratelimited(module->dev,
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
> https://groups.google.com/d/msgid/outreachy-kernel/1553087541-4396-1-git-send-email-payal.s.kshirsagar.98%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903201423520.3627%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000658a570584869c09
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 20 Mar 2019 at 18:55, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Wed, 20 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Aligning to open parenthesis<br>
<br>
The log message should be in the imperatie, so Align rather than Aligning.<=
br>
Also a sentence should have a period at the end.<br></blockquote><div><br><=
/div><div>Okay, I will take care from next time and will drop this patch.</=
div><div>Thanks</div><div>payal<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/greybus/audio_codec.c | 8 ++++----<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/g=
reybus/audio_codec.c<br>
&gt; index 08746c8..d62f91f 100644<br>
&gt; --- a/drivers/staging/greybus/audio_codec.c<br>
&gt; +++ b/drivers/staging/greybus/audio_codec.c<br>
&gt; @@ -70,7 +70,7 @@ static int gbaudio_module_enable_tx(struct gbaudio_c=
odec_info *codec,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i2s_port =3D 0;=
=C2=A0 =C2=A0/* fixed for now */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cportid =3D data=
-&gt;connection-&gt;hd_cport_id;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D gb_audio=
_apbridgea_register_cport(data-&gt;connection,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0i2s_port, cportid,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i2s_port, cportid,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0AUDIO_APBRIDGEA_DIRECTION_TX);<br>
<br>
It&#39;s not really an advantage, because the final argument can&#39;t be m=
oved.<br>
It&#39;s better to keep the arguments lined up, as they were.<br>
<br>
julia<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dev_err_ratelimited(module-&gt;dev,<br>
&gt; @@ -160,7 +160,7 @@ static int gbaudio_module_disable_tx(struct gbaudi=
o_module_info *module, int id)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i2s_port =3D 0;=
=C2=A0 =C2=A0/* fixed for now */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cportid =3D data=
-&gt;connection-&gt;hd_cport_id;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D gb_audio=
_apbridgea_unregister_cport(data-&gt;connection,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0i2s_port, cportid,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i2s_port, cportid,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0AUDIO_APBRIDGEA_DIRECTION_TX);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dev_err_ratelimited(module-&gt;dev,<br>
&gt; @@ -205,7 +205,7 @@ static int gbaudio_module_enable_rx(struct gbaudio=
_codec_info *codec,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i2s_port =3D 0;=
=C2=A0 =C2=A0/* fixed for now */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cportid =3D data=
-&gt;connection-&gt;hd_cport_id;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D gb_audio=
_apbridgea_register_cport(data-&gt;connection,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0i2s_port, cportid,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i2s_port, cportid,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0AUDIO_APBRIDGEA_DIRECTION_RX);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dev_err_ratelimited(module-&gt;dev,<br>
&gt; @@ -295,7 +295,7 @@ static int gbaudio_module_disable_rx(struct gbaudi=
o_module_info *module, int id)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i2s_port =3D 0;=
=C2=A0 =C2=A0/* fixed for now */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cportid =3D data=
-&gt;connection-&gt;hd_cport_id;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D gb_audio=
_apbridgea_unregister_cport(data-&gt;connection,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0i2s_port, cportid,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i2s_port, cportid,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0AUDIO_APBRIDGEA_DIRECTION_RX);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dev_err_ratelimited(module-&gt;dev,<br>
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
gle.com/d/msgid/outreachy-kernel/1553087541-4396-1-git-send-email-payal.s.k=
shirsagar.98%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://grou=
ps.google.com/d/msgid/outreachy-kernel/1553087541-4396-1-git-send-email-pay=
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903201423520.3627%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.20.1903201423520.3627%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--000000000000658a570584869c09--

