X-GM-THRID: 6948915129226362880
X-Received: by 2002:a63:6a05:: with SMTP id f5mr14266321pgc.433.1617987626535;
        Fri, 09 Apr 2021 10:00:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:2cc5:: with SMTP id s188ls3545503pfs.5.gmail; Fri, 09
 Apr 2021 10:00:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxzy3JuVC/Bi8NW9yNExtdslIQSGYEjFf5PudhgqWmwiPSH6KFGmeJ/Btmebm2Ft29mUclE
X-Received: by 2002:a62:14c6:0:b029:244:781f:f997 with SMTP id 189-20020a6214c60000b0290244781ff997mr8565900pfu.6.1617987625275;
        Fri, 09 Apr 2021 10:00:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617987625; cv=none;
        d=google.com; s=arc-20160816;
        b=NCv/UMoIIRavJK/4gY7GYZjFHbBdAUTa1TEXStzzluwobnYP4Wj+2Uqp12IoUasj1O
         gScWzAfx91ZVH6njKYywc0CPJA/UAvX3826Gv6KEG+r13f77jzNPhbh0vGyBGDB22qAA
         EebVOVA1KIXXAEWN/Fnwa64LNtptmZJqY6DrolnN3p6I4UbfrlmO7d8BRXbjsO3exygo
         F35G+mnKEfENe9jjQfq6/v0Siplwsj127VCz8Q1GDlM5EE7Ht+WL4/yg/vp2kx/vdQTx
         cS022LDOD/4qy2jFzCKfyEJoQAKHGQAxO5QfHj1KGYOrrfb1PIlVyGa5pBuEI34gt+IO
         VsWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zxpR200F/u+LvQagudCz1lW7ThpSNQv3j+CD1fu+P+A=;
        b=cAMAfQy1iYGjmYU5+9d6cHC+pftY7D4GmMdpqBGVp7fF4daNuULA9iyBPewopG8p+T
         ljzTE2mII2OiqzFqGp6lkiqEjRW14r8vcnL31pDp7Ge+T96l1IPZADEQGtqOCZfD2t7/
         BFEtLGJ72L910XZY4S8jOILmebYqxF43JdEgkMey+fjzIH6roA4gshzy/NlDUbEfLdK0
         AlYfCP72JXcr1eAHaI9pOvSAqzUfOnQ0hqbyXoUVK40mWXQ8PBQsTFkaqhG7YV3DCd3t
         NcxNqmTA3aGNWuIUXAX3t8BRTeOAJy/ajaME/jvyyvdoAhfSU+F110YucLwbqvY/qjZa
         1YqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B2HbYeAU;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com. [2607:f8b0:4864:20::e29])
        by gmr-mx.google.com with ESMTPS id r141si276343pgr.5.2021.04.09.10.00.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 10:00:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) client-ip=2607:f8b0:4864:20::e29;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B2HbYeAU;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe29.google.com with SMTP id d65so3264112vsd.6
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 10:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zxpR200F/u+LvQagudCz1lW7ThpSNQv3j+CD1fu+P+A=;
        b=B2HbYeAUObE5y78qwiEbrPhKjREfL0tU2MhOxkz3+jpslps2zBAsXI3FmaQrJPwPmm
         Fi2fwK29Fut91D5eWd2e+8J0i4dOTcITyPVHfDNusA+8zj2uzx1CxM0IXOm/CDkOSknm
         ZnghephbcJGLBJQ9+FNiceLTBDbriBnrcD7AXeRIeYAsPUx8Zunh4BTZJ5znwn+TNA6q
         wPEAqGcKeVTqYM8KjtFgVn0J5uAXs3Mrjusvs3UK42Ys5tq0nVX5tl5slELft+5dryN4
         bvg9ycl/0Fef3JEq3tSLWEohnHy8mbfNXnawgsi6Vzj8AQqicWDc5RLlJNhaLkgRauYP
         vJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zxpR200F/u+LvQagudCz1lW7ThpSNQv3j+CD1fu+P+A=;
        b=CYGHQ1egoND35vqVBTguCum58rbeezBtRT++IyM7fSLYJj1dum16j/830Eim2KKsfv
         gvr87MRN3MMW+yfiJPs9wUmlVfZvB4ba2B93MAghjD4Guq4Nb2AxikKIrUTNi1Ms1BjR
         wNppINMjoSsIst43L48uCuRdBRJJMLsYzGdOFYluKPO1RcDSQ/7uuAk4LtqOLeA+8YJd
         yWLSSqfgv0dhyOZ+viBSZ2AmceHrkSrXYsJdWg8CuWd6FNLANdLkph1VnFQQHwDxMkNt
         mW21rJM9Cwk7G/2A8EdBPZU3bq8cnFmlQfMhD0zu56CW9Bf/dsMXiI3KIp8251oWv/05
         ZIIA==
X-Gm-Message-State: AOAM530rt+v7mvvb89GNRSa0uwGVIUT4CrckbhJk6pGC8T0IFIhxkaUo
	X39/ePFFx9OsuCzFoRoFqHmFpSYRQ9iVszyj2OJaLcZHJSpCzQ==
X-Received: by 2002:a67:1004:: with SMTP id 4mr1164431vsq.37.1617987624357;
 Fri, 09 Apr 2021 10:00:24 -0700 (PDT)
MIME-Version: 1.0
References: <YG+Bcqxetfj98l6V@kali> <479be6a4-2e6f-98a6-045f-d7c2132137c4@xs4all.nl>
 <05802da66d3751611b85eb63d566220e09ef4bb7.camel@perches.com>
In-Reply-To: <05802da66d3751611b85eb63d566220e09ef4bb7.camel@perches.com>
From: Mitali Borkar <mitaliborkar810@gmail.com>
Date: Fri, 9 Apr 2021 22:30:09 +0530
Message-ID: <CAHWmKdgj67+T=tWKPMDRt1fbLm7_VLiOmgKcrzBj6oCd5Xv8sw@mail.gmail.com>
Subject: Re: [PATCH] staging: media: meson: vdec: matched alignment with parenthesis
To: Joe Perches <joe@perches.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, narmstrong@baylibre.com, mchehab@kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>, khilman@baylibre.com, jbrunet@baylibre.com, 
	martin.blumenstingl@googlemail.com, linux-media@vger.kernel.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com, MITALI SUNIL <mitali_s@me.iitr.ac.in>
Content-Type: multipart/alternative; boundary="00000000000099d13f05bf8d19c8"

--00000000000099d13f05bf8d19c8
Content-Type: text/plain; charset="UTF-8"

Looks good, will try this.

On Fri, 9 Apr, 2021, 14:10 Joe Perches, <joe@perches.com> wrote:

> On Fri, 2021-04-09 at 09:30 +0200, Hans Verkuil wrote:
> > On 09/04/2021 00:19, Mitali Borkar wrote:
> > > Matched alignment with open parenthesis to meet linux kernel coding
> > > style.
> > > Reported by checkpatch
> > >
> > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > ---
> > >  drivers/staging/media/meson/vdec/codec_mpeg12.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c
> b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> > > index 48869cc3d973..21e93a13356c 100644
> > > --- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
> > > +++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> > > @@ -81,7 +81,7 @@ static int codec_mpeg12_start(struct amvdec_session
> *sess)
> > >     }
> > >
> > >
> > >     ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
> > > -                                   (u32[]){ 8, 0 });
> > > +                             (u32[]){ 8, 0 });
> >
> > The alignment here is because the 2nd and 3rd arguments belong together,
> so
> > the alignment indicates that. In order to keep that I would add a newline
> > after 'sess,' as well. Same as is done in meson/vdec/codec_h264.c.
>
> Perhaps better as:
>
> ---
>  drivers/staging/media/meson/vdec/codec_mpeg12.c | 5 +++--
>  drivers/staging/media/meson/vdec/vdec_helpers.c | 2 +-
>  drivers/staging/media/meson/vdec/vdec_helpers.h | 2 +-
>  3 files changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c
> b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> index 48869cc3d973..933f1cd16ce1 100644
> --- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
> +++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> @@ -65,6 +65,8 @@ static int codec_mpeg12_start(struct amvdec_session
> *sess)
>         struct amvdec_core *core = sess->core;
>         struct codec_mpeg12 *mpeg12;
>         int ret;
> +       static const u32 canvas1[] = { AV_SCRATCH_0, 0 };
> +       static const u32 canvas2[] = { 8, 0 };
>
>         mpeg12 = kzalloc(sizeof(*mpeg12), GFP_KERNEL);
>         if (!mpeg12)
> @@ -80,8 +82,7 @@ static int codec_mpeg12_start(struct amvdec_session
> *sess)
>                 goto free_mpeg12;
>         }
>
> -       ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
> -                                       (u32[]){ 8, 0 });
> +       ret = amvdec_set_canvases(sess, canvas1, canvas2);
>         if (ret)
>                 goto free_workspace;
>
> diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c
> b/drivers/staging/media/meson/vdec/vdec_helpers.c
> index 7f07a9175815..df5c27266c44 100644
> --- a/drivers/staging/media/meson/vdec/vdec_helpers.c
> +++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
> @@ -177,7 +177,7 @@ static int set_canvas_nv12m(struct amvdec_session
> *sess,
>  }
>
>  int amvdec_set_canvases(struct amvdec_session *sess,
> -                       u32 reg_base[], u32 reg_num[])
> +                       const u32 reg_base[], const u32 reg_num[])
>  {
>         struct v4l2_m2m_buffer *buf;
>         u32 pixfmt = sess->pixfmt_cap;
> diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.h
> b/drivers/staging/media/meson/vdec/vdec_helpers.h
> index cfaed52ab526..ace8897c34fe 100644
> --- a/drivers/staging/media/meson/vdec/vdec_helpers.h
> +++ b/drivers/staging/media/meson/vdec/vdec_helpers.h
> @@ -17,7 +17,7 @@
>   * @reg_num: number of contiguous registers after each reg_base
> (including it)
>   */
>  int amvdec_set_canvases(struct amvdec_session *sess,
> -                       u32 reg_base[], u32 reg_num[]);
> +                       const u32 reg_base[], const u32 reg_num[]);
>
>  /* Helpers to read/write to the various IPs (DOS, PARSER) */
>  u32 amvdec_read_dos(struct amvdec_core *core, u32 reg);
>
>

--00000000000099d13f05bf8d19c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Looks=C2=A0good, will try this.</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 9 Apr, 2021, 14:10=
 Joe Perches, &lt;<a href=3D"mailto:joe@perches.com">joe@perches.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri, 2021-04-09 at 09:3=
0 +0200, Hans Verkuil wrote:<br>
&gt; On 09/04/2021 00:19, Mitali Borkar wrote:<br>
&gt; &gt; Matched alignment with open parenthesis to meet linux kernel codi=
ng<br>
&gt; &gt; style.<br>
&gt; &gt; Reported by checkpatch<br>
&gt; &gt; <br>
&gt; &gt; Signed-off-by: Mitali Borkar &lt;<a href=3D"mailto:mitaliborkar81=
0@gmail.com" target=3D"_blank" rel=3D"noreferrer">mitaliborkar810@gmail.com=
</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; =C2=A0drivers/staging/media/meson/vdec/codec_mpeg12.c | 2 +-<br>
&gt; &gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; &gt; <br>
&gt; &gt; diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/dr=
ivers/staging/media/meson/vdec/codec_mpeg12.c<br>
&gt; &gt; index 48869cc3d973..21e93a13356c 100644<br>
&gt; &gt; --- a/drivers/staging/media/meson/vdec/codec_mpeg12.c<br>
&gt; &gt; +++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c<br>
&gt; &gt; @@ -81,7 +81,7 @@ static int codec_mpeg12_start(struct amvdec_ses=
sion *sess)<br>
&gt; &gt; =C2=A0=C2=A0 =C2=A0}<br>
&gt; &gt; =C2=A0<br>
&gt; &gt; <br>
&gt; &gt; =C2=A0=C2=A0 =C2=A0ret =3D amvdec_set_canvases(sess, (u32[]){ AV_=
SCRATCH_0, 0 },<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(u32[]){ 8, 0=
 });<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(u32[]){ 8, 0 });<br>
&gt; <br>
&gt; The alignment here is because the 2nd and 3rd arguments belong togethe=
r, so<br>
&gt; the alignment indicates that. In order to keep that I would add a newl=
ine<br>
&gt; after &#39;sess,&#39; as well. Same as is done in meson/vdec/codec_h26=
4.c.<br>
<br>
Perhaps better as:<br>
<br>
---<br>
=C2=A0drivers/staging/media/meson/vdec/codec_mpeg12.c | 5 +++--<br>
=C2=A0drivers/staging/media/meson/vdec/vdec_helpers.c | 2 +-<br>
=C2=A0drivers/staging/media/meson/vdec/vdec_helpers.h | 2 +-<br>
=C2=A03 files changed, 5 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/stag=
ing/media/meson/vdec/codec_mpeg12.c<br>
index 48869cc3d973..933f1cd16ce1 100644<br>
--- a/drivers/staging/media/meson/vdec/codec_mpeg12.c<br>
+++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c<br>
@@ -65,6 +65,8 @@ static int codec_mpeg12_start(struct amvdec_session *sess=
)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct amvdec_core *core =3D sess-&gt;core;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct codec_mpeg12 *mpeg12;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int ret;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0static const u32 canvas1[] =3D { AV_SCRATCH_0, =
0 };<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0static const u32 canvas2[] =3D { 8, 0 };<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mpeg12 =3D kzalloc(sizeof(*mpeg12), GFP_KERNEL)=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!mpeg12)<br>
@@ -80,8 +82,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess=
)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto free_mpeg12;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D amvdec_set_canvases(sess, (u32[]){ AV_S=
CRATCH_0, 0 },<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(u32[]){ =
8, 0 });<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D amvdec_set_canvases(sess, canvas1, canv=
as2);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto free_workspace=
;<br>
<br>
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/stag=
ing/media/meson/vdec/vdec_helpers.c<br>
index 7f07a9175815..df5c27266c44 100644<br>
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c<br>
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c<br>
@@ -177,7 +177,7 @@ static int set_canvas_nv12m(struct amvdec_session *sess=
,<br>
=C2=A0}<br>
<br>
=C2=A0int amvdec_set_canvases(struct amvdec_session *sess,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0u32 reg_base[], u32 reg_num[])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0const u32 reg_base[], const u32 reg_num[])<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct v4l2_m2m_buffer *buf;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 pixfmt =3D sess-&gt;pixfmt_cap;<br>
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.h b/drivers/stag=
ing/media/meson/vdec/vdec_helpers.h<br>
index cfaed52ab526..ace8897c34fe 100644<br>
--- a/drivers/staging/media/meson/vdec/vdec_helpers.h<br>
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.h<br>
@@ -17,7 +17,7 @@<br>
=C2=A0 * @reg_num: number of contiguous registers after each reg_base (incl=
uding it)<br>
=C2=A0 */<br>
=C2=A0int amvdec_set_canvases(struct amvdec_session *sess,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0u32 reg_base[], u32 reg_num[]);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0const u32 reg_base[], const u32 reg_num[]);<br>
<br>
=C2=A0/* Helpers to read/write to the various IPs (DOS, PARSER) */<br>
=C2=A0u32 amvdec_read_dos(struct amvdec_core *core, u32 reg);<br>
<br>
</blockquote></div>

--00000000000099d13f05bf8d19c8--

