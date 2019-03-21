X-GM-THRID: 6670815133562830848
X-Received: by 2002:a24:ecc5:: with SMTP id g188mr3553938ith.97.1553188473053;
        Thu, 21 Mar 2019 10:14:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls2615894ioc.3.gmail; Thu, 21 Mar
 2019 10:14:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyzX5jIafyTE15DjLcilKgbwWcjAnHvNwNnxj4+LXhzDX1QkdnkRbA5BIZFgLQL7vxdjLKX
X-Received: by 2002:a6b:4e10:: with SMTP id c16mr3445827iob.18.1553188471998;
        Thu, 21 Mar 2019 10:14:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553188471; cv=none;
        d=google.com; s=arc-20160816;
        b=MS36SxCGktzX5arzo1tDPwWookBbVM82pCJ3MxKVWvZdDlK/bdMWk88geO9gi+Lg9H
         rAGNhSeZ5PHVercJTOE/AOCf4LX0iO8TASLBK0OL2yiuNbmLvmgd766J6sv5dMkOAWLj
         lmW/j6aFXFpfPhptRQxFzh6WouA9jxZ7OBy9PAmvgqW7g+tvMJY40756cW57xJnw+JUq
         /jn0IC6iNVNqUU2aa9AgxC6vMHV3TQ/Ku2vimlyyRNkzo5g6DA0vQPRwHqqAEsqFgcLU
         hhZ84DCCRZIytjcO6KDUAlDjSZ0GIOoO9bCFWeeRmzyW28saPzBeNUmDObTB+CjXykRu
         BFpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zhKlbJuA00hf17TLpFV2LNtMwDJRIe9njGWJJmREpz0=;
        b=PfFh/lIX5KCTknioAX8FFTjhW5iAgolEjDrejUBG3wsdDL196d0HDF1C3doE4IzZ2Z
         +RqM2dNmhjwOAnHkfKYg5c1cCTjYX78BrULVUbNfsjR2El/3hUgRLdlByscUwnaKJHp4
         0tXa66aRiO43GMZdpXyIQfYRGmb3rbFIt/OJb6jQAutupfQVWgkGOt9SXOXG+1DL89gT
         xvPG8Kecs19O3fbVbB7Lx0GkowE3erhH0ALplgeX7eBjLKinfNqmOSouP3Kb55Dw/GUH
         ynUnHn1FD8UVrdarwS6emjbMLWbUkfkMtG3t8qn+G2uMNaqqMmL+mUSRyQ8H81DXnrgr
         UGiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ah9RX8HZ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com. [2607:f8b0:4864:20::234])
        by gmr-mx.google.com with ESMTPS id j6si735709itb.0.2019.03.21.10.14.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 10:14:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) client-ip=2607:f8b0:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ah9RX8HZ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x234.google.com with SMTP id v84so5235016oif.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 10:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zhKlbJuA00hf17TLpFV2LNtMwDJRIe9njGWJJmREpz0=;
        b=Ah9RX8HZAIXbSRMXaXiaW6c1c7nhNBACjgKFDC1EwsNTNH47cbFlCW3eJThU1wFfJu
         lfT0KmDTH9gwiX+QQtMtBFnyoGMmEV/hKdj2+EwkNc4B/N0eoUQKU35Pk2KL0ZA7ANG/
         2xlyvegX29VegMTA8Lwujg+sN3brfN4osfRKZznQ8RIxn9BptjsUfbte1Ud26TA6FReE
         pzASQnxo5bXmGop3G4SyyAwF8FjXcsPedsl2kS+/xGtrjDs7m0vVSjFXNxSz/yj4LBT6
         x9K+v78YJ/Cw+J9YEWcETU6n0CKYfibyHmMOEePBtoqWVe/NXiZrOT/gZb8F9sB/Ljsp
         +SCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zhKlbJuA00hf17TLpFV2LNtMwDJRIe9njGWJJmREpz0=;
        b=baX5BoMvdKsI/mrrlSdb4Z7Ptpvz2fMFAaPHv6CCYWDqek6KZbD0nIkVCiIFyNRR6m
         LKZTIW9j1b85ZLvaSNEklclXvVN1qyi9RI/mwPCn2EMy+9eBm85u8Zru8eC7tbwO/UV5
         1EM+EiBgEyMB7PsKm2AUhnBU8XbTGfWOdlS3SupmRKJEm2r1LuvbEVh2egY7vdLHdokC
         1L9HBT3zQ4AYA2OxZ+WaPyxHMB0ZCHzFewO1ET9y/9SNBZ2hfePRRs3S+zEzxz/T+hsn
         AJFVKHW9a7yjxBgTA0abigkmIJONq5253u9Knw3o58YQULk4EiSLxjI1s8rJ9nGYVlY9
         MZTQ==
X-Gm-Message-State: APjAAAU14TqA7e2cFqwcfd06fcJEEOFkfVv4anFdvqPbVhEMKZosqfOg
	Eqc46shuPahnqUqfV3vQkjyP1tKst+hKLfd3tvyK3w==
X-Received: by 2002:aca:4a0a:: with SMTP id x10mr269225oia.82.1553188471518;
 Thu, 21 Mar 2019 10:14:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190321120908.43680-1-himadri18.07@gmail.com>
 <20190321120908.43680-2-himadri18.07@gmail.com> <alpine.DEB.2.20.1903211426570.4279@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903211426570.4279@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Thu, 21 Mar 2019 22:44:19 +0530
Message-ID: <CAPnhUpZQ7=2x15xtkj_Frx1qUB=csuYrMDA1LXrfeyGM0AqPgQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: rtl8723bs: include:
 remove typedef for struct pno_nlo_info
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000001d3b3a05849ddf3e"

--0000000000001d3b3a05849ddf3e
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Mar, 2019, 6:58 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 21 Mar 2019, Himadri Pandya wrote:
>
> > Remove typedef for struct pno_nlo_info as the Linux kernel coding style
> > guidelines discourage the use of typedefs for struct types.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > index e2a4c680125f..011a5685c2ff 100644
> > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > @@ -159,7 +159,7 @@ enum PS_DENY_REASON {
> >  };
> >
> >  #ifdef CONFIG_PNO_SUPPORT
> > -typedef struct pno_nlo_info
> > +struct pno_nlo_info
> >  {
> >       u32 fast_scan_period;                           /* Fast scan
> period */
> >       u32 ssid_num;                           /* number of entry */
> > @@ -168,7 +168,7 @@ typedef struct pno_nlo_info
> >       u8 ssid_length[MAX_PNO_LIST_COUNT];     /* SSID Length Array */
> >       u8 ssid_cipher_info[MAX_PNO_LIST_COUNT];        /* Cipher
> information for security */
> >       u8 ssid_channel_info[MAX_PNO_LIST_COUNT];       /* channel
> information */
> > -}pno_nlo_info_t;
> > +};
> >
> >  typedef struct pno_ssid {
> >       u32     SSID_len;
> > @@ -279,7 +279,7 @@ struct pwrctrl_priv
> >  #ifdef CONFIG_PNO_SUPPORT
> >       u8 pno_in_resume;
> >       u8 pno_inited;
> > -     pno_nlo_info_t  *pnlo_info;
> > +     struct pno_nlo_info     *pnlo_info;
>
> I don't think the big space is needed before pnlo_info.  It was to line up
> with the other fields, but it doesn't align any more.
>
> julia
>

Okay. Sending version 2.

Thank you.

- Himadri


> >       pno_scan_info_t *pscan_info;
> >       pno_ssid_list_t *pno_ssid_list;
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190321120908.43680-2-himadri18.07%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903211426570.4279%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000001d3b3a05849ddf3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, 21 Mar, 2019, 6:58 PM Julia Lawall, &lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><br>
<br>
On Thu, 21 Mar 2019, Himadri Pandya wrote:<br>
<br>
&gt; Remove typedef for struct pno_nlo_info as the Linux kernel coding styl=
e<br>
&gt; guidelines discourage the use of typedefs for struct types.<br>
&gt;<br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<b=
r>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers=
/staging/rtl8723bs/include/rtw_pwrctrl.h<br>
&gt; index e2a4c680125f..011a5685c2ff 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h<br>
&gt; +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h<br>
&gt; @@ -159,7 +159,7 @@ enum PS_DENY_REASON {<br>
&gt;=C2=A0 };<br>
&gt;<br>
&gt;=C2=A0 #ifdef CONFIG_PNO_SUPPORT<br>
&gt; -typedef struct pno_nlo_info<br>
&gt; +struct pno_nlo_info<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 fast_scan_period;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0/* Fast scan period */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 ssid_num;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* number=
 of entry */<br>
&gt; @@ -168,7 +168,7 @@ typedef struct pno_nlo_info<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 ssid_length[MAX_PNO_LIST_COUNT];=C2=A0 =
=C2=A0 =C2=A0/* SSID Length Array */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 ssid_cipher_info[MAX_PNO_LIST_COUNT];=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 /* Cipher information for security */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 ssid_channel_info[MAX_PNO_LIST_COUNT];=C2=
=A0 =C2=A0 =C2=A0 =C2=A0/* channel information */<br>
&gt; -}pno_nlo_info_t;<br>
&gt; +};<br>
&gt;<br>
&gt;=C2=A0 typedef struct pno_ssid {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32=C2=A0 =C2=A0 =C2=A0SSID_len;<br>
&gt; @@ -279,7 +279,7 @@ struct pwrctrl_priv<br>
&gt;=C2=A0 #ifdef CONFIG_PNO_SUPPORT<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 pno_in_resume;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 pno_inited;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0pno_nlo_info_t=C2=A0 *pnlo_info;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct pno_nlo_info=C2=A0 =C2=A0 =C2=A0*pnlo_info=
;<br>
<br>
I don&#39;t think the big space is needed before pnlo_info.=C2=A0 It was to=
 line up<br>
with the other fields, but it doesn&#39;t align any more.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Okay. Sending version 2.</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Thank you.</div><div dir=3D"auto"><br></div><div dir=3D"auto">- Himad=
ri</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pno_scan_info_t *pscan_info;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pno_ssid_list_t *pno_ssid_list;<br>
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
gle.com/d/msgid/outreachy-kernel/20190321120908.43680-2-himadri18.07%40gmai=
l.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.googl=
e.com/d/msgid/outreachy-kernel/20190321120908.43680-2-himadri18.07%40gmail.=
com</a>.<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903211426570.4279%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.20.1903211426570.4279%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--0000000000001d3b3a05849ddf3e--

