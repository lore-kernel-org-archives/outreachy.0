X-GM-THRID: 6670726051308503040
X-Received: by 2002:ac2:5393:: with SMTP id g19mr111539lfh.14.1553151749929;
        Thu, 21 Mar 2019 00:02:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:82c9:: with SMTP id n9ls575414ljh.1.gmail; Thu, 21 Mar
 2019 00:02:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxRGYWo5urf7VDYNn6E8nYUi3gQhTtZyZO+riC/cExfFYEvUNDoLz3dBfoV8Z0c9xY9nbKP
X-Received: by 2002:a05:651c:152:: with SMTP id c18mr81212ljd.15.1553151748810;
        Thu, 21 Mar 2019 00:02:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553151748; cv=none;
        d=google.com; s=arc-20160816;
        b=IKjj+nP3UFRn92eYuj8Uz5K645pjE9XFrL/vgIaDhN/nk+HHEoYGG2u2N2ZT1/Ozn/
         nryW5zOuHKVk2lidN7sEgrNS1OFPgV58RvlizrjY4DtWyjOMQp+vFFg7GIg08yJjYfba
         ffgikRkwf6ORPAXGZEId0DGFeZRwgutnjlkqPTzt6lOWKBWkfLCFIIoCiwkUyyVnWCGw
         oj2j7HUmE755+DCl0t4vfI5RrlzTk/3SJr1EYqZQwUapPHmZnClhriz3mz+DepzSqrQb
         /tr7/TkGLlbUk2dx9Sc8fJ5krTT2qed64MHtCT0uMzZtWUzjbvUInnlHD8aINzK88MfM
         yp7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UMCiNWp+wPDsWkZjilZ3QelBuz0aJ9/2OaEgyg+GtFs=;
        b=ujknLfjpkNFJJmxWj5HcntdGa23MZ0ZrBNxKVauzBbPf7LkieO9sPyLEgUxEsO665s
         2npSDdvdy1rA9DT5bzKICHoO8hXPyTkEgQcBe0Hm56t9X7pjLyA0Lp7liCDViVIbhG65
         R6XtL/WjlYaGzZJZOzxyVixq3MnNBIA1qvjlX9ZERCwD6Iq+wHZ16APeK3l/862N347u
         B8beswoIftXNS448RT6ipXLL5Q+rTCxTorv3SZb7Ib0oHKk35jvn7JYv/GwOI227fQEE
         GBSAygDvRTuCPJH6TaBHEDSKcpX7ztY9YAOgIeArgeuiLgXKyryRb3UUmzLWMg1qHe06
         6Qmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qdoGUzzi;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id z15si198792lfe.5.2019.03.21.00.02.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:02:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qdoGUzzi;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id u2so3790786lfd.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 00:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UMCiNWp+wPDsWkZjilZ3QelBuz0aJ9/2OaEgyg+GtFs=;
        b=qdoGUzziDFcIk2Lw9XCjovjqQ7eLCHb4HjuCSeEFAm5+psdBC5nUQgDmUXx54VoQgR
         ytdsgTR4CYoLReDFgAdNUbL8eey+upjUJxxaheUSUs3DWJ+RpdcgGy7i7xp1+UVOqfPz
         murxu+dXRzWb1d5ZeshxMoA3MH0Bp57Fw7k2uf61oU5q3BcvKdZucj6SXbzNaOmwel9Q
         9IZz/+o1G5XbtZGqc14jqAe6wGuQ+kXUclo7xKEzk+t4Soj8bCPVSA/tpeYesvOzGjxa
         9og39XFvAVLY/qjBiajPXZptBuChqQRrRqXEuoGXoxFt6avecV26GAp18DCFdIYAhy6R
         3wXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UMCiNWp+wPDsWkZjilZ3QelBuz0aJ9/2OaEgyg+GtFs=;
        b=fJYw8ikz06484jF2TrXzmUcql+ppeUFqff44VzKPQ47gMRi0ZfFbZlwBKenuxB0q8o
         TIhaEtZ2RhkepwDNyjE4ZLo8H68uRuRT4rpzrRVSg5fpBLcoHG5WZ0pBWiVGThjx1m8G
         k4xO5BJ052g3wGDagto9RsjLqFH3iGaWOzrEttLurrBWwfwaLi1sbKzJndFEYc6jNLj+
         Pc5vhGytGC6skh/cifaYTviVW1rJIrtlFes9Bptd22uMSPURa2pViFDH5yfGlg8Vbg7b
         UaIhgEYW5kxt3ukKjg9V870OdIMNQW6jcw3Yjrvsg+qOe4wxtysqciLZodOVJMnDGumr
         ytsA==
X-Gm-Message-State: APjAAAWREP5kmPbZ5S5/BZPSyLCHjlgeeTR/nCnWHO9MY0toegAW061+
	2y9yeavv2oJV4Acx4KaoVEP8HQLWoFLb86p94gdTUA==
X-Received: by 2002:a19:c314:: with SMTP id t20mr1060438lff.114.1553151748647;
 Thu, 21 Mar 2019 00:02:28 -0700 (PDT)
MIME-Version: 1.0
References: <1553149424-7694-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.21.1903210732200.2622@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903210732200.2622@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Thu, 21 Mar 2019 12:32:15 +0530
Message-ID: <CANTOzWFHY4umoAAO40gngMr3R32pysEe7FYZ8Sq5V4izyOytTQ@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: vt6655: spaces around operators
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000042aed705849552d7"

--00000000000042aed705849552d7
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Mar 2019 at 12:02, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 21 Mar 2019, Payal Kshirsagar wrote:
>
> > Prefer spaces around operators
>
> Prefer -> Add
>
> Add would say what you actually did.
>
> julia
>
Okay, I will resend it.
payal

>
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/vt6655/device_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vt6655/device_main.c
> b/drivers/staging/vt6655/device_main.c
> > index b370985..866d794 100644
> > --- a/drivers/staging/vt6655/device_main.c
> > +++ b/drivers/staging/vt6655/device_main.c
> > @@ -592,7 +592,7 @@ static int device_init_rd1_ring(struct vnt_private
> *priv)
> >                       goto err_free_rd;
> >               }
> >
> > -             desc->next = &priv->aRD1Ring[(i+1) % priv->opts.rx_descs1];
> > +             desc->next = &priv->aRD1Ring[(i + 1) %
> priv->opts.rx_descs1];
> >               desc->next_desc = cpu_to_le32(curr + sizeof(struct
> vnt_rx_desc));
> >       }
> >
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
> https://groups.google.com/d/msgid/outreachy-kernel/1553149424-7694-1-git-send-email-payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--00000000000042aed705849552d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 21 Mar 2019 at 12:02, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Thu, 21 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Prefer spaces around operators<br>
<br>
Prefer -&gt; Add<br>
<br>
Add would say what you actually did.<br>
<br>
julia<br></blockquote><div>Okay, I will resend it.</div><div> payal<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/vt6655/device_main.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt=
6655/device_main.c<br>
&gt; index b370985..866d794 100644<br>
&gt; --- a/drivers/staging/vt6655/device_main.c<br>
&gt; +++ b/drivers/staging/vt6655/device_main.c<br>
&gt; @@ -592,7 +592,7 @@ static int device_init_rd1_ring(struct vnt_private=
 *priv)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0goto err_free_rd;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0desc-&gt;next =3D &am=
p;priv-&gt;aRD1Ring[(i+1) % priv-&gt;opts.rx_descs1];<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0desc-&gt;next =3D &am=
p;priv-&gt;aRD1Ring[(i + 1) % priv-&gt;opts.rx_descs1];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0desc-&gt;next_de=
sc =3D cpu_to_le32(curr + sizeof(struct vnt_rx_desc));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
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
gle.com/d/msgid/outreachy-kernel/1553149424-7694-1-git-send-email-payal.s.k=
shirsagar.98%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://grou=
ps.google.com/d/msgid/outreachy-kernel/1553149424-7694-1-git-send-email-pay=
al.s.kshirsagar.98%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div></div>

--00000000000042aed705849552d7--

