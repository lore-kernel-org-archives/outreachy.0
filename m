X-GM-THRID: 6669057124685840384
X-Received: by 2002:a5e:8c1a:: with SMTP id n26mr7597918ioj.16.1552795685889;
        Sat, 16 Mar 2019 21:08:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7d48:: with SMTP id d8ls706072ioq.6.gmail; Sat, 16 Mar
 2019 21:08:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzzjk0O8hx4+hA5+bG4Kp2i36Dce4XPA9llEvVxpV/DimG/SqgboJQXDT0FbG/dIpE2iavV
X-Received: by 2002:a5d:914f:: with SMTP id y15mr7465241ioq.18.1552795684933;
        Sat, 16 Mar 2019 21:08:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552795684; cv=none;
        d=google.com; s=arc-20160816;
        b=emzaepkixVrZruGzjdso4lBgu4Bxt3mTeCb8wcjVdmvtelYcN94d5hltKsXf+Xs5uX
         g1cMk8OcmOqndKD7TfUtlIrnpNRjDeSiuzy51ZgndakCdYXczHlKGqFR1uLROpjeY4OY
         4VVZcZbSKJddME17nestneoStZMBi4f6tyegGsXOiiNWamnULnTipNxTF4LaN4GB4OUE
         SUGAvzuF0pcOK779XB8PNENpFntniq4xs3N4VBVpXEzZhLtgA0KLKz7m0xJWMtOtOF5f
         tS4dZnr+gCujnmpxueyzRJCtIEMyeu07IniM2V+MM7NRGTvVpEujvsUBcnvj+xCjMMY4
         e1Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0SqCBWrWvEDP9K8cNI+BL3hX7k3G4rdHvEn0UMU1tMU=;
        b=0YpcuJ/rPlcLuTkOVes+wZyRK5HA2eG2TWyMjwz3Omuz3swHuOv6F85jHxiWi26Ure
         ptcAqiu324Iiek9SwI6OUdhMMblw0m13XLwVn+j+NzY02wg+iIVzsuEHOr2S/ZeoE6Di
         eb0/skjKyBbX5SSMzpEARgQw70iNAIlj/X7JbIriAVKOBHnb1UZA24Q7WJKZ2F99Cuvw
         Lanh4e7ecGx+Na7gfU2JnJazganOjxO9FqXjrbCl1YELMQYW78sfmEen6GnxhcFdMJmJ
         zGVC1IsDPzlXwOCH7JeQJC+/Zc6o5YvmAvwBj1Z4nD75GvKeIEmfc3j1YJFU/6P8psgi
         zBEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="oP24j/oc";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id u1si413404itb.2.2019.03.16.21.08.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 21:08:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="oP24j/oc";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id r19so11745125otn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 21:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0SqCBWrWvEDP9K8cNI+BL3hX7k3G4rdHvEn0UMU1tMU=;
        b=oP24j/ocqJSgB9rikN83yqzYwpcMW4vlp+dl+LF4IASv7Sp+TIWiezMNbfb43Gdec0
         ZOcLYuD1WVt+4IbEASmBIyLsLkG6QDQbk7Vy0fnT1NDHJAGoAN+6EXYSN/hijnbJ0RQD
         B4JG6t0+7Y4K7U8TbiopMysQUa+H2CGC/6zvhY9ZmLBGUhMKl/qgZtQ5c6Vf94+NaaTK
         2x5x0t0h1fxe/wHX+O8zLa6Ns8dyfIjglpECX3Nw3oWrKbuq2fYZmKcRteSvT8bnvqec
         4+ptRez28PrH/uJalCtKq2g5P00p6T85RrsscVikJK2vYqJw8P6NIU18tx2jwt4ReiAq
         l66Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0SqCBWrWvEDP9K8cNI+BL3hX7k3G4rdHvEn0UMU1tMU=;
        b=ZqN/55VFiV9MzetO7DVW1TA9WYXdOJPm0Ogelwb320jv/T0jbgPp8mGuk/gbciOj3R
         kCH7YMPpWVLd9ALkC7Uq+qxZaWSDnyXaV9vUBQ6leoRZHHHFoBvAXTTrFw1keuRGdJJt
         OvFiL1ONelx3jrQOt45aZqR2itNDsl2Ngwyz3BezvWPQWrxXw/HI/r6tKby5r9E/pwfr
         WUvUEWyUfLwLZKt8Ahu1F92SyUTQg2N8Lq9Fgt/njGBMF6xY0u3VcSm6/wwJDde/7+ST
         KzEcKg8crwxdMhw3NYwg5gmbewuEBCP5tSqm7kUxuL2f11TK6qWWSXaCODIOt68HFgae
         JCCw==
X-Gm-Message-State: APjAAAVMHGso2dfDYVS5hZ3pqspLi6EP9yHo8N+aYRSu6EWmlJWdqdPV
	aTSgnfLym0j4xSfsZQqia2nZBRv7xAKhaHkfuVo=
X-Received: by 2002:a9d:6a1a:: with SMTP id g26mr7016261otn.299.1552795684416;
 Sat, 16 Mar 2019 21:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190316174543.36254-1-himadri18.07@gmail.com>
 <20190316174543.36254-6-himadri18.07@gmail.com> <alpine.DEB.2.21.1903161945220.2487@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903161945220.2487@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sun, 17 Mar 2019 09:37:52 +0530
Message-ID: <CAPnhUpYJNNJ-h=gr8a_v1kTKb4k1Rh47AiZKNU4Z8EgQoLJSQQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 5/9] staging: rtl8723bs: hal: Modify
 comparisons in rtl8723bs_xmit.c
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000002dbb290584426bb5"

--0000000000002dbb290584426bb5
Content-Type: text/plain; charset="UTF-8"

On Sun, 17 Mar, 2019, 12:17 AM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 16 Mar 2019, Himadri Pandya wrote:
>
> > - Remove comparison to NULL in file rtl8723bs_xmit.c. Suggested by
> Coccinelle.
> > - Modify comparison to true in order to follow kernel coding style of
> > keeping constant to the right side.
>
> These are different things.  They don't affect the same code, so they
> shouldn't be in the same patch.
>
> julia
>

Okay. Sending a revision taking care of it.

- Himadri


> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> > Changes in V2:
> >       - Change subject line
> >
> > Changes in V3:
> >       - Break changes into changes per file
> >       - Include modification to comparision to true
> > ---
> >  drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> > index 69c4db5b5b0c..7b06aab04ee6 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> > @@ -58,12 +58,12 @@ static s32 rtl8723_dequeue_writeport(struct adapter
> *padapter)
> >
> >       ret = ret || check_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
> >
> > -     if (true == ret)
> > +     if (ret == true)
> >               pxmitbuf = dequeue_pending_xmitbuf_under_survey(pxmitpriv);
> >       else
> >               pxmitbuf = dequeue_pending_xmitbuf(pxmitpriv);
> >
> > -     if (pxmitbuf == NULL)
> > +     if (!pxmitbuf)
> >               return true;
> >
> >       deviceId = ffaddr2deviceId(pdvobjpriv, pxmitbuf->ff_hwaddr);
> > @@ -283,8 +283,7 @@ static s32 xmit_xmitframes(struct adapter *padapter,
> struct xmit_priv *pxmitpriv
> >
> >                               /*  check xmit_buf size enough or not */
> >                               txlen = txdesc_size +
> rtw_wlan_pkt_size(pxmitframe);
> > -                             if (
> > -                                     (NULL == pxmitbuf) ||
> > +                             if(     !pxmitbuf ||
> >                                       ((_RND(pxmitbuf->len, 8) + txlen)
> > max_xmit_len) ||
> >                                       (k >=
> (rtw_hal_sdio_max_txoqt_free_space(padapter)-1))
> >                               ) {
> > @@ -307,7 +306,7 @@ static s32 xmit_xmitframes(struct adapter *padapter,
> struct xmit_priv *pxmitpriv
> >                                       }
> >
> >                                       pxmitbuf =
> rtw_alloc_xmitbuf(pxmitpriv);
> > -                                     if (pxmitbuf == NULL) {
> > +                                     if (!pxmitbuf) {
> >  #ifdef DBG_XMIT_BUF
> >                                               DBG_871X_LEVEL(_drv_err_,
> "%s: xmit_buf is not enough!\n", __func__);
> >  #endif
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190316174543.36254-6-himadri18.07%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--0000000000002dbb290584426bb5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, 17 Mar, 2019, 12:17 AM Julia Lawall, &lt;<a hr=
ef=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><br>
<br>
On Sat, 16 Mar 2019, Himadri Pandya wrote:<br>
<br>
&gt; - Remove comparison to NULL in file rtl8723bs_xmit.c. Suggested by Coc=
cinelle.<br>
&gt; - Modify comparison to true in order to follow kernel coding style of<=
br>
&gt; keeping constant to the right side.<br>
<br>
These are different things.=C2=A0 They don&#39;t affect the same code, so t=
hey<br>
shouldn&#39;t be in the same patch.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Okay. Sending a revision taking care of it.=C2=A0</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">- Himadri</div><div dir=3D"auto"><br></div><=
div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<b=
r>
&gt; ---<br>
&gt; Changes in V2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- Change subject line<br>
&gt;<br>
&gt; Changes in V3:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- Break changes into changes per file<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- Include modification to comparision to tru=
e<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 9 ++++-----<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 5 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/=
staging/rtl8723bs/hal/rtl8723bs_xmit.c<br>
&gt; index 69c4db5b5b0c..7b06aab04ee6 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c<br>
&gt; @@ -58,12 +58,12 @@ static s32 rtl8723_dequeue_writeport(struct adapte=
r *padapter)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D ret || check_fwstate(pmlmepriv, _FW_=
UNDER_SURVEY);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (true =3D=3D ret)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (ret =3D=3D true)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pxmitbuf =3D deq=
ueue_pending_xmitbuf_under_survey(pxmitpriv);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pxmitbuf =3D deq=
ueue_pending_xmitbuf(pxmitpriv);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pxmitbuf =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pxmitbuf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return true;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0deviceId =3D ffaddr2deviceId(pdvobjpriv, pxm=
itbuf-&gt;ff_hwaddr);<br>
&gt; @@ -283,8 +283,7 @@ static s32 xmit_xmitframes(struct adapter *padapte=
r, struct xmit_priv *pxmitpriv<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 check xmit_buf size enoug=
h or not */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0txlen =3D txdesc_size + rtw_wlan_p=
kt_size(pxmitframe);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(NULL =3D=3D=
 pxmitbuf) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if(=C2=A0 =C2=A0 =C2=A0!pxmitbuf ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((_RND=
(pxmitbuf-&gt;len, 8) + txlen) &gt; max_xmit_len) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(k &gt=
;=3D (rtw_hal_sdio_max_txoqt_free_space(padapter)-1))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0) {<br>
&gt; @@ -307,7 +306,7 @@ static s32 xmit_xmitframes(struct adapter *padapte=
r, struct xmit_priv *pxmitpriv<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pxmitb=
uf =3D rtw_alloc_xmitbuf(pxmitpriv);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pxmitbuf=
 =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!pxmitbu=
f) {<br>
&gt;=C2=A0 #ifdef DBG_XMIT_BUF<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X_LEVEL(_drv_err_, &quot;%s: xmit_buf is not=
 enough!\n&quot;, __func__);<br>
&gt;=C2=A0 #endif<br>
&gt; --<br>
&gt; 2.17.1<br>
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
gle.com/d/msgid/outreachy-kernel/20190316174543.36254-6-himadri18.07%40gmai=
l.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.googl=
e.com/d/msgid/outreachy-kernel/20190316174543.36254-6-himadri18.07%40gmail.=
com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--0000000000002dbb290584426bb5--

