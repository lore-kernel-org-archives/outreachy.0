X-GM-THRID: 6801809120095633408
X-Received: by 2002:a37:5083:: with SMTP id e125mr10956189qkb.49.1583675784452;
        Sun, 08 Mar 2020 06:56:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls2669604qtc.6.gmail; Sun, 08 Mar
 2020 06:56:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuY99xG18VAjEoJXiflQlR5e8XRSSxNrG1tt9S4mYM3wm4Uy9BGOfu5PXaxZrlcsN7YKOM0
X-Received: by 2002:ac8:7a88:: with SMTP id x8mr10256814qtr.98.1583675783270;
        Sun, 08 Mar 2020 06:56:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583675783; cv=none;
        d=google.com; s=arc-20160816;
        b=ML6S/B2K9htxb16/QP7AngqNkVsqDlnpEKhvLCbgh+4/2FYu51KA3sAlsgxeFtCTt5
         TBinLWHrdgQ6lSulC2a/gy60SYBMWuTQAWGhNEgVfsNE50AxLPeGQIsGny3mp+IlIRGN
         6/Wth6r7JFphFzWjl5IevU5xdrfMBWPCkhoqUe+SOxDfbZYUUjYcpyYfTFODMU8aHonf
         AQ+pwgkTkBlC8DU8DVeRgN4zMIUOJP6P+CUFD1u9UsH0BWUVhvdwsGnzJk2rwf2hc/uE
         Ii4gR5k3irze0d+8ln06P4KeIbEFgOEGyu0Jj80zq5fuGfODSed/AOKt0G8X13ID408E
         SEcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6IBwXfJ4Ka4vd8zPOjx75OOIBdZMeDT1qbYSekiNUEc=;
        b=OLMmEKdubArbAU4jpsPGnSKR3u9qx+3U0E5hbda2ot56Cn861fTY7d8GWikoI+/XaO
         2IJkrKJv0LyRVCPU0HF++PdBfFfD2ZbJBKbcnQroturicAJlHoHU6Cmv3u+BBmv6jHEE
         smijPziTBL9DR3Gdf8hnzCQqujRYY/Ig7Yup5HKOx2w8/Qc8IAoQ5AUESwZWmMQnaK8O
         e5wg3UZwfosUN8cONqI8piPImqqQHexy5hS3J4Xoyn8uW8fTwaeWaZU+fsprYiT/lv+d
         CW+d6tSjw23jEXWVGz6AkBSRv/eNfQ2ob5W6qOH93bvgkD/TiBpAPWEJz22fOYjZWEiQ
         e9Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FHsisidK;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com. [2607:f8b0:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id x18si496942qtk.0.2020.03.08.06.56.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 06:56:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) client-ip=2607:f8b0:4864:20::12c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FHsisidK;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-il1-x12c.google.com with SMTP id g126so6311077ilh.2
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 06:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6IBwXfJ4Ka4vd8zPOjx75OOIBdZMeDT1qbYSekiNUEc=;
        b=FHsisidK6dg+MXuzzeUEDS79pRoJNpChj+O/ZfNZi+Xow6zaclGZWWYS5VSkkiYNnE
         oivrxSG7MsjYK8BmfZQtiSBJOsQ/yrACCbWyf8rqvarlyvsO3u8rMvmJVCTlNjEffbL0
         ayQo+eYXWog1MP79gYSeqe/WvPqHKZ4buTj6IDYt3e4mvDZ+7gwBn9JBzja5PT0+SsMe
         yPmbcO8BkPmoT3LesEHaMRfIc/q4TXSKzzvbQqFfRnfTBm4ZPJhewblx76Km2fa5Bo0q
         ROpJR1ZrEiR3Yr3HsPPnobw2bHjRrj7qu0iR9i7lRB+/yvOdvHR69ucmoDh/Vo9UyVBZ
         mRfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6IBwXfJ4Ka4vd8zPOjx75OOIBdZMeDT1qbYSekiNUEc=;
        b=RWMbdxlI23aIjQVFu+0BTEgjZqC8Tzbe/yk1tDRCSCGL4eX5M+h25ZcY+WqNyzwaqj
         VTDeHCAdJfDuvJYVnJe3ptKbJg9N8cEVzPvOqyQJdNvwEEY3t2+uObGC9c1F5oFxlPrK
         9ocAUFKiFYYlyN0vIuGbcxoWaLp4PluEpxvBVrwv6nrnyUrNzKXa7ICGNYYb5bi2+TCH
         Ptws9axOtcixuNFv21H0C3b8SJvRKucWFcJR5OeLwCY5i5OIXruo4E6wrnvPoBIq80Hu
         nqjvo2+YeFr7gInfZgDgqXuEdo9u06dMQey0UHpmUt9WpiD6xhTKXJ+ZMT9q1MMxSn0T
         phbA==
X-Gm-Message-State: ANhLgQ3fc4fTGICAdHeLMaGyRcsjAKw2vy5XGZ92MNZXXJhiqlCLAaF+
	DIW7KoJhbkET/NJF087qfb6uIUBysAdR6qyD4e9jLw==
X-Received: by 2002:a92:640e:: with SMTP id y14mr9687034ilb.228.1583675782690;
 Sun, 08 Mar 2020 06:56:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200308132643.4256-1-payalskshirsagar1234@gmail.com>
 <alpine.DEB.2.21.2003081437400.2400@hadrien> <20200308145100.7e07abf5@elisabeth>
In-Reply-To: <20200308145100.7e07abf5@elisabeth>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 8 Mar 2020 19:26:10 +0530
Message-ID: <CANTOzWHRQJXFJwCPHDiU7JkMSPsvn3Wai2zKksSDx29AX-h8Sw@mail.gmail.com>
Subject: Re: [PATCH v2] [Outreachy kernel] staging: greybus: remove line over
 80 characters
To: Stefano Brivio <sbrivio@redhat.com>
Cc: payalskshirsagar1234@gmail.com, Julia Lawall <julia.lawall@inria.fr>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000777ccc05a0584064"

--000000000000777ccc05a0584064
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 8, 2020, 7:21 PM Stefano Brivio <sbrivio@redhat.com> wrote:

> On Sun, 8 Mar 2020 14:41:03 +0100 (CET)
> Julia Lawall <julia.lawall@inria.fr> wrote:
>
> > On Sun, 8 Mar 2020, Payal Kshirsagar wrote:
> >
> > > Remove line over 80 characters.
> > > In this version-2, comment and field are grouped together.
> > > A whitespace is added after "bi-dir,".
> >
> > This is not the correct way to present the revision of a patch.  Put a
> log
> > message that would be appropriate if there were no version 1.  The patch
> > will ultimately go in the git history where there is no trace of version
> > 1.
> >
> > Then under the --- write v2: and then describe what you have changed.
> >
> > See https://kernelnewbies.org/Outreachyfirstpatch and search for v2.
>
> On top of what Julia said, while this is the case in general, and
> surely for these patches, in case you ever have to submit networking
> patches (trees: net.git, net-next.git), it's preferred to keep the
> revision log before the "---". This is the only difference there.
>

Thanks for the information.
I will keep it in mind.

Again, this doesn't apply to this patch.
>
> One further comment about the patch itself:
>
> > julia
> >
> > >
> > > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > > ---
> > >  drivers/staging/greybus/arche-platform.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/greybus/arche-platform.c
> b/drivers/staging/greybus/arche-platform.c
> > > index eebf0deb39f5..cc5a52fc926f 100644
> > > --- a/drivers/staging/greybus/arche-platform.c
> > > +++ b/drivers/staging/greybus/arche-platform.c
> > > @@ -47,7 +47,8 @@ struct arche_platform_drvdata {
> > >     struct gpio_desc *svc_reset;
> > >     bool is_reset_act_hi;
> > >     struct gpio_desc *svc_sysboot;
> > > -   struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD &
> WAKE_FRAME signals */
> > > +   /* bi-dir, maps to WAKE_MOD & WAKE_FRAME signals */
> > > +   struct gpio_desc *wake_detect;
>
> By grouping, I really meant that you should add a line *before* the
> comment you are moving -- it's clearer that way.
>

Okay, my bad

> >
> > >     enum arche_platform_state state;
> > >
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20200308132643.4256-1-payalskshirsagar1234%40gmail.com
> .
> > >
> >
>
> --
> Stefano
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20200308145100.7e07abf5%40elisabeth
> .
>

Payal

>

--000000000000777ccc05a0584064
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 8, 2020, 7:21 PM Stefano Brivio &lt;<a href=3D"mailto:sbrivio@r=
edhat.com">sbrivio@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">On Sun, 8 Mar 2020 14:41:03 +0100 (CET)<br>
Julia Lawall &lt;<a href=3D"mailto:julia.lawall@inria.fr" target=3D"_blank"=
 rel=3D"noreferrer">julia.lawall@inria.fr</a>&gt; wrote:<br>
<br>
&gt; On Sun, 8 Mar 2020, Payal Kshirsagar wrote:<br>
&gt; <br>
&gt; &gt; Remove line over 80 characters.<br>
&gt; &gt; In this version-2, comment and field are grouped together.<br>
&gt; &gt; A whitespace is added after &quot;bi-dir,&quot;.=C2=A0 <br>
&gt; <br>
&gt; This is not the correct way to present the revision of a patch.=C2=A0 =
Put a log<br>
&gt; message that would be appropriate if there were no version 1.=C2=A0 Th=
e patch<br>
&gt; will ultimately go in the git history where there is no trace of versi=
on<br>
&gt; 1.<br>
&gt; <br>
&gt; Then under the --- write v2: and then describe what you have changed.<=
br>
&gt; <br>
&gt; See <a href=3D"https://kernelnewbies.org/Outreachyfirstpatch" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">https://kernelnewbies.org/Outreachy=
firstpatch</a> and search for v2.<br>
<br>
On top of what Julia said, while this is the case in general, and<br>
surely for these patches, in case you ever have to submit networking<br>
patches (trees: net.git, net-next.git), it&#39;s preferred to keep the<br>
revision log before the &quot;---&quot;. This is the only difference there.=
<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Thanks for the information.</div><div dir=3D"auto">I will keep it in mind.<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
Again, this doesn&#39;t apply to this patch.<br>
<br>
One further comment about the patch itself:<br>
<br>
&gt; julia<br>
&gt; <br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payalskshir=
sagar1234@gmail.com" target=3D"_blank" rel=3D"noreferrer">payalskshirsagar1=
234@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 drivers/staging/greybus/arche-platform.c | 3 ++-<br>
&gt; &gt;=C2=A0 1 file changed, 2 insertions(+), 1 deletion(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/s=
taging/greybus/arche-platform.c<br>
&gt; &gt; index eebf0deb39f5..cc5a52fc926f 100644<br>
&gt; &gt; --- a/drivers/staging/greybus/arche-platform.c<br>
&gt; &gt; +++ b/drivers/staging/greybus/arche-platform.c<br>
&gt; &gt; @@ -47,7 +47,8 @@ struct arche_platform_drvdata {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0struct gpio_desc *svc_reset;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0bool is_reset_act_hi;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0struct gpio_desc *svc_sysboot;<br>
&gt; &gt; -=C2=A0 =C2=A0struct gpio_desc *wake_detect; /* bi-dir,maps to WA=
KE_MOD &amp; WAKE_FRAME signals */<br>
&gt; &gt; +=C2=A0 =C2=A0/* bi-dir, maps to WAKE_MOD &amp; WAKE_FRAME signal=
s */<br>
&gt; &gt; +=C2=A0 =C2=A0struct gpio_desc *wake_detect;<br>
<br>
By grouping, I really meant that you should add a line *before* the<br>
comment you are moving -- it&#39;s clearer that way.<br></blockquote></div>=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">Okay, my bad</div><div =
dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0enum arche_platform_state state;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; 2.17.1<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
 send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegr=
oups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe=
@googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visit <a href=3D"https://group=
s.google.com/d/msgid/outreachy-kernel/20200308132643.4256-1-payalskshirsaga=
r1234%40gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://=
groups.google.com/d/msgid/outreachy-kernel/20200308132643.4256-1-payalskshi=
rsagar1234%40gmail.com</a>.<br>
&gt; &gt;=C2=A0 <br>
&gt; <br>
<br>
-- <br>
Stefano<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/20200308145100.7e07abf5%40elisabeth" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/out=
reachy-kernel/20200308145100.7e07abf5%40elisabeth</a>.<br></blockquote></di=
v></div><div dir=3D"auto"><br></div><div dir=3D"auto">Payal</div><div dir=
=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--000000000000777ccc05a0584064--

