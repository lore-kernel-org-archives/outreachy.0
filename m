X-GM-THRID: 6674542859228545024
X-Received: by 2002:a2e:5d90:: with SMTP id v16mr562889lje.2.1554039097488;
        Sun, 31 Mar 2019 06:31:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5085:: with SMTP id f5ls568436lfm.13.gmail; Sun, 31 Mar
 2019 06:31:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxT4MqTjlf8+9Udb/uBMlVCxWslvoQp846td3vNlEi8xw9Vueu5C6LSWZViFo9yJ/2FZ/SG
X-Received: by 2002:a19:3809:: with SMTP id f9mr1530480lfa.1.1554039096667;
        Sun, 31 Mar 2019 06:31:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554039096; cv=none;
        d=google.com; s=arc-20160816;
        b=hOYxFnkwuH1uOhbX/wDbdtK36J/NfO+AIfsnWt+BdScy+D3fKgv+SmGZwVoMCJXoys
         Az2cuEVFE8LGvktEcZM7V7yzPIT1EL6XZE8BYmm7MdjXJjlqVSgzxWnnB+ZPxvzFb7JX
         32l0PxyHC6Za5YypXz3waqfCU3J8eER3fMvPHLlOu9QUIyrsqXQgIu9uB4Bl3EYRoR5I
         QrYMY6R6cA6nFVm9AnBehnlef/UPJqcSNjbiPM9/9gQgetYXh51GpxY2JKnkNapxS7kd
         THM68Dzmypo0MZinmkrNK+dGed692cKlrrapZg4KB2kCHUYKf+V8QNc/PYzSQbPgzrqC
         AMuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6zbvAUjWibOg7HZ3n58JT+jgcGa0ZQtWmu2IoXBdwag=;
        b=N6JcC6bKB4MCD5urY8HnKURGYeZOUKzsLu99s4O9Yvlby8Ziyc3l7XcWj8s+XL4hyS
         z4kS3IgwkAHJXG+SvOSs2F6dG+I7VM68NaSxlMZsYkjsX5HZf//cliBu/78rt20EYnZq
         DpqYAOskv7OuNJ83eb824KiQtlZ8p14avhrkJxkhzvB0KMm4U5sSsjKyY8y+XA9bjqau
         ZX+452EQOa2Lsg4q35lr/1v+3jA8Mof5yDn8SPzb+BJw1dsm8cn47WUvE4QQTUSKBB3L
         5NdqbeDwi/9vWfsNKEHdPBGLLcAzWTRAJjv4oZw3LHYjIRQmgUPHyNz7ANr51QzDV9dU
         QRFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MQQ2BOfF;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id z15si319710lfe.5.2019.03.31.06.31.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:31:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MQQ2BOfF;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x136.google.com with SMTP id r25so4348354lfn.13
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 06:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6zbvAUjWibOg7HZ3n58JT+jgcGa0ZQtWmu2IoXBdwag=;
        b=MQQ2BOfFNpsIzBYcl2ryIZhJLbPUSqI5Yad5tkPLksKJWyXaBVXyu0VHapR9wR8Mwc
         1CvdEI8vmPD+HpOxBO59j+964FuimbJRdXc/ZbUK878Tq/3ejEhFk3CCl9IkTb6ms2br
         5o3fuU2gg1jbSBl2JebGcgurA9ZybJE6qXU+Po0BEklw9SMViFkHFR4YHjlH+3hPbIXK
         UETANhR22XtK+OwYRI75dvDVJ2ZGkRNW0sqz7J2hi/sHTHsaV57wI0Z/VE+Zbfe62a/h
         5IrVlESkbUFyqn8MmmjSRIqZzt4YfmBPsgVqqUs7Ka0b8dyBVK5SDVVUnVO9/H2PXeMP
         UIgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6zbvAUjWibOg7HZ3n58JT+jgcGa0ZQtWmu2IoXBdwag=;
        b=nwF1A16/Mk8wbyxzWw3+Lz18I3Z9LPf2ZRYYDPd1Ll7N0ER+wtR/iMkrNOw4isl/UK
         Y6yR7cNtZctHZIM9M4yUjTDUM6pUodvFqG6vGvBqi7nwAZXcMS1DO7x124nl0mLPlXv7
         +Zxv6QRj7ayfW/jAZVsgo/vIN8m2cR+hx7kmG0T3KDc39QVMydPUK8qqghsXXNPtoo5s
         lMMC+vjjhXpo9o65LotA1lQJ2xNlmjx+pnpelvvEJLhzz557+YQdIigfkXDpM26+88m4
         IM3STFRT17E1Y60nvuLtYoDdL9cTwB0EMrgvT6dE9EO7Mql4bo7NYY63bTS/EQ6Y8+92
         lssQ==
X-Gm-Message-State: APjAAAUtnRItIOuY1Slbq0+HQoz1jYv8fG4FNzXijG+QDQDSOWRKgTam
	uq/2q9xDXsFfrjldMlvzmD6NztUrXhOCasTPMKE=
X-Received: by 2002:a19:a401:: with SMTP id q1mr5234253lfc.40.1554039096521;
 Sun, 31 Mar 2019 06:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
 <a94f301af01c055a8524ae77206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903311527480.2578@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903311527480.2578@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 31 Mar 2019 19:01:24 +0530
Message-ID: <CANTOzWE1am3xofByCG+dFNmwgyivZwGxtZjLHWXazT5NkLP=EQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 6/7] staging: rtlwifi: halmac: Compress
 two lines into one line
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000050b780058563ecd6"

--00000000000050b780058563ecd6
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 31, 2019, 6:58 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

> 6 and 7 have the same subject line.
>

What can I do now ?
Should I send them again in v2 or just have to send 7th only?
Thanking
Payal

julia
>
> On Sun, 31 Mar 2019, Payal Kshirsagar wrote:
>
> > Challenge suggested by coccinelle.
> > Compresses two lines into one line and remove unnecessary variable.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c | 5
> +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git
> a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> > index 0bd6abd..0ae0d02 100644
> > --- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> > +++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> > @@ -192,7 +192,6 @@ halmac_cfg_rx_aggregation_88xx_usb(struct
> halmac_adapter *halmac_adapter,
> >  u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter *halmac_adapter,
> >                             u32 halmac_offset)
> >  {
> > -     u8 value8;
> >       void *driver_adapter = NULL;
> >       struct halmac_api *halmac_api;
> >
> > @@ -205,9 +204,7 @@ u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter
> *halmac_adapter,
> >       driver_adapter = halmac_adapter->driver_adapter;
> >       halmac_api = (struct halmac_api *)halmac_adapter->halmac_api;
> >
> > -     value8 = PLATFORM_REG_READ_8(driver_adapter, halmac_offset);
> > -
> > -     return value8;
> > +     return PLATFORM_REG_READ_8(driver_adapter, halmac_offset);
> >  }
> >
> >  /**
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
> https://groups.google.com/d/msgid/outreachy-kernel/a94f301af01c055a8524ae77206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311527480.2578%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--00000000000050b780058563ecd6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 31, 2019, 6:58 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawa=
ll@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">6 and 7 have the same subject line.<br></blockquote></div></d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">What can I do now ?=C2=A0<=
/div><div dir=3D"auto">Should I send them again in v2 or just have to send =
7th only?</div><div dir=3D"auto">Thanking</div><div dir=3D"auto">Payal</div=
><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
julia<br>
<br>
On Sun, 31 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Compresses two lines into one line and remove unnecessary variable.<br=
>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c=
 | 5 +----<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88x=
x_usb.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c<=
br>
&gt; index 0bd6abd..0ae0d02 100644<br>
&gt; --- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c=
<br>
&gt; +++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c=
<br>
&gt; @@ -192,7 +192,6 @@ halmac_cfg_rx_aggregation_88xx_usb(struct halmac_a=
dapter *halmac_adapter,<br>
&gt;=C2=A0 u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter *halmac_adap=
ter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 halmac_offset)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u8 value8;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0void *driver_adapter =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct halmac_api *halmac_api;<br>
&gt;<br>
&gt; @@ -205,9 +204,7 @@ u8 halmac_reg_read_8_usb_88xx(struct halmac_adapte=
r *halmac_adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0driver_adapter =3D halmac_adapter-&gt;driver=
_adapter;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0halmac_api =3D (struct halmac_api *)halmac_a=
dapter-&gt;halmac_api;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0value8 =3D PLATFORM_REG_READ_8(driver_adapter, ha=
lmac_offset);<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return value8;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return PLATFORM_REG_READ_8(driver_adapter, halmac=
_offset);<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 /**<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/a94f301af01c055a8524ae77206fadd9f6e524eb.1=
554037161.git.payal.s.kshirsagar.98%40gmail.com" rel=3D"noreferrer noreferr=
er" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/a9=
4f301af01c055a8524ae77206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98=
%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311527480.2578%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903311527480.2578%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--00000000000050b780058563ecd6--

