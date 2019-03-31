X-GM-THRID: 6674542859228545024
X-Received: by 2002:a5d:4d49:: with SMTP id a9mr1748049wru.31.1554041526116;
        Sun, 31 Mar 2019 07:12:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6343:: with SMTP id x64ls358922wmb.11.canary-gmail; Sun,
 31 Mar 2019 07:12:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzAeXYBDbbHvwzBhZSBRkFnlm7trQv3uJgtEkc2fkvKQFIiIL+/oWyQD2Eq5xd7/V6rid/d
X-Received: by 2002:a7b:c0c1:: with SMTP id s1mr920047wmh.0.1554041525150;
        Sun, 31 Mar 2019 07:12:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554041525; cv=none;
        d=google.com; s=arc-20160816;
        b=Ml5JzD4YIr1tbBmrIt80FmAvgTHeWC7kT8nzaAs4OyaCl2tRapESTyFTab/BcCpT2X
         8ACIx2KhcqQhIjdWi5NFbKiC3j5WQiQc1C/d3ZJOLGAOLnlIVJ3HOiGhv3/CX73dfVRk
         KVN+9LSGuagDcJMBi+KQAAJ2ASKmOEwqLEo6vHLK9+SaO/6XOpYr3zDxTj2J66OgJ5VS
         MDjHtZeu7DLdJd0IUAJuG9rakmhxGxszPT9JqHTqUuaUYGV4r3n4pKVw0AhpYu7Du47n
         TR+aHJ5rbn5LQt/9jbSBQPNGHZxC5JnV3tZurCi81VGqaSNyk2VldmCOlp8usl9SehqF
         qOkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=glacSPdnN2Q1TTxyKIJLuDwnx0Y8qScGf/Gu8urL70Y=;
        b=untVbJORY9t8s9/1n0vt/p9NejTwLu06OB/vZDvtsa5fw6ymLZFR3L3vakRplzjQ+f
         HOqPfR7O1/PiNYezoB/pVFMYTthd9gLq+cR/ZlSvb2GlodDqEHj6e9TEQ8+fldV0pZ1c
         EeiLVjkUWVGHgTtou3zf5m9b0UCiH3fusK8dFbtIDXOCsmdEW/kr2aQKyvIvy1dE7Rqs
         aaPo597WKj64rSdmSKOHOlftBH0PW0Jy42DIdtyvC+RwugFJL2cD3vQDBL0C3eVOwrlq
         NvwalFP6PZQbw0WtzyPaxwh25RBHpBpJx8ChlZYmQaoCfWd9SEDaaP1s74P3GPrvcXNi
         ap6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cqt6rCGJ;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id v1si252063wrd.4.2019.03.31.07.12.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 07:12:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cqt6rCGJ;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id y6so5722333ljd.12
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 07:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=glacSPdnN2Q1TTxyKIJLuDwnx0Y8qScGf/Gu8urL70Y=;
        b=Cqt6rCGJylfofSLxRXlYVj9+3g7wcWZD0sfeHdf74+sMUQbS/YfRC8lUhB50xUvEqz
         GxIg2wb5X0QEtsdSRmBdCs8PqFvEDDEeIxVcikS9Z9FaOWb01Z8zKJe8fMzjx1iHIb47
         npAxws2/2BYJaOehcu+mCreRvHPmP3sg8bskrc7qCS/nfNAO5BnVQP6IYMjDPisQmK1l
         vU/sJV+rLbLuC32TBrr/reHdZjZWuPPsU7t+NWBDY+1iLo7Q19XYiSq5efeKmKlmidsQ
         4m6h6HDi+xMV6R/NZR+rGuNR294dqLmbSXdU5oJITSndNhHhoFUEHqrj2OKI7uQocYyU
         +x9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=glacSPdnN2Q1TTxyKIJLuDwnx0Y8qScGf/Gu8urL70Y=;
        b=rrgkyRvznbKK5H7nIZdsj/INS/GVCsNOUGqRrGRO5VpwFjeP1+sIutekV4kjgY4Q+i
         3Y0moYSVY9oOI7VftxMZlfSoKLMhgBP3b3sUHKEymaFHWCRd5laN9YyHBeMIXpNSsSKP
         DJ2tiDYQFZQIPSag5baieU5C1u8CEbR5+J0mYs43nWFd3K8KlvErCxCJ51KCZasdbijn
         Aqi7kfBkkEYNnERsUbJ1fTxr+9UadPgaF5Bpv90+3/yYkTM5bylzjqs0BzIN75UA2Dqa
         +9Rd4YLKmZHVdn2OgSmGha1y5F8Jtgm56HSR9WITBRkl27xmFX/iNH0LdW13p/FIvpBy
         dXMQ==
X-Gm-Message-State: APjAAAVn4I8z0UXX9XXQQYYp3XSpEb/YImeupoh5UdXFSBRl+MA7A2pK
	5jExABKS0b+aV5rWC1tajgvlU2Fh9uBWmQ2K8DI=
X-Received: by 2002:a2e:899a:: with SMTP id c26mr32134415lji.192.1554041524651;
 Sun, 31 Mar 2019 07:12:04 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
 <a94f301af01c055a8524ae77206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903311527480.2578@hadrien> <CANTOzWE1am3xofByCG+dFNmwgyivZwGxtZjLHWXazT5NkLP=EQ@mail.gmail.com>
 <alpine.DEB.2.21.1903311538220.2578@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903311538220.2578@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 31 Mar 2019 19:41:52 +0530
Message-ID: <CANTOzWFTsR7vmzAn-ypO+WSzJAdQ5bJ+OSFautYj0RBGqDAvzA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 6/7] staging: rtlwifi: halmac: Compress
 two lines into one line
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000000b0bed0585647d57"

--0000000000000b0bed0585647d57
Content-Type: text/plain; charset="UTF-8"

On Sun, 31 Mar 2019 at 19:09, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 31 Mar 2019, Payal Kshirsagar wrote:
>
> >
> >
> > On Sun, Mar 31, 2019, 6:58 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
> >       6 and 7 have the same subject line.
> >
> >
> > What can I do now ?
> > Should I send them again in v2 or just have to send 7th only?
>
> If you make any change in a series, you should always send the entire
> series again.
>
> The only exception is when Greg has applied some of the patches in the
> series.
>

Would I send this patchset by dropping 2nd patch of this series.
Thanks in advance,
payal


> julia
>
> > Thanking
> > Payal
> >
> >       julia
> >
> >       On Sun, 31 Mar 2019, Payal Kshirsagar wrote:
> >
> >       > Challenge suggested by coccinelle.
> >       > Compresses two lines into one line and remove unnecessary
> >       variable.
> >       >
> >       > Signed-off-by: Payal Kshirsagar
> >       <payal.s.kshirsagar.98@gmail.com>
> >       > ---
> >       >
> >       drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> >       | 5 +----
> >       >  1 file changed, 1 insertion(+), 4 deletions(-)
> >       >
> >       > diff --git
> >       a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> >       b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> >       > index 0bd6abd..0ae0d02 100644
> >       > ---
> >       a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> >       > +++
> >       b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> >       > @@ -192,7 +192,6 @@ halmac_cfg_rx_aggregation_88xx_usb(struct
> >       halmac_adapter *halmac_adapter,
> >       >  u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter
> >       *halmac_adapter,
> >       >                             u32 halmac_offset)
> >       >  {
> >       > -     u8 value8;
> >       >       void *driver_adapter = NULL;
> >       >       struct halmac_api *halmac_api;
> >       >
> >       > @@ -205,9 +204,7 @@ u8 halmac_reg_read_8_usb_88xx(struct
> >       halmac_adapter *halmac_adapter,
> >       >       driver_adapter = halmac_adapter->driver_adapter;
> >       >       halmac_api = (struct halmac_api
> >       *)halmac_adapter->halmac_api;
> >       >
> >       > -     value8 = PLATFORM_REG_READ_8(driver_adapter,
> >       halmac_offset);
> >       > -
> >       > -     return value8;
> >       > +     return PLATFORM_REG_READ_8(driver_adapter,
> >       halmac_offset);
> >       >  }
> >       >
> >       >  /**
> >       > --
> >       > 2.7.4
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       > To post to this group, send email to
> >       outreachy-kernel@googlegroups.com.
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/a94f301af01c055a8524ae77
> >       206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98%40gmail.com.
> >       > For more options, visit https://groups.google.com/d/optout.
> >       >
> >
> >       --
> >       You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       To post to this group, send email to
> >       outreachy-kernel@googlegroups.com.
> >       To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19033115
> >       27480.2578%40hadrien.
> >       For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CANTOzWE1am3xofByCG%2BdF
> > NmwgyivZwGxtZjLHWXazT5NkLP%3DEQ%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311538220.2578%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000000b0bed0585647d57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sun, 31 Mar 2019 at 19:09, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sun, 31 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Sun, Mar 31, 2019, 6:58 PM Julia Lawall &lt;<a href=3D"mailto:julia=
.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A06 and 7 have the same subject line.<br>
&gt;<br>
&gt;<br>
&gt; What can I do now ?=C2=A0<br>
&gt; Should I send them again in v2 or just have to send 7th only?<br>
<br>
If you make any change in a series, you should always send the entire<br>
series again.<br>
<br>
The only exception is when Greg has applied some of the patches in the<br>
series.<br></blockquote><div><br></div><div>Would I send this patchset by d=
ropping 2nd patch of this series.</div><div>Thanks in advance,</div><div>pa=
yal<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
julia<br>
<br>
&gt; Thanking<br>
&gt; Payal<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, 31 Mar 2019, Payal Kshirsagar wrote:=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Challenge suggested by coccinelle.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Compresses two lines into one line and =
remove unnecessary<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0variable.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Payal Kshirsagar<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:payal.s.kshirsagar.98@=
gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0drivers/staging/rtlwifi/halmac/halmac_88xx/h=
almac_api_88xx_usb.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0| 5 +----<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 1 insertion(+), 4=
 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0a/drivers/staging/rtlwifi/halmac/halmac_88xx=
/halmac_api_88xx_usb.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/rtlwifi/halmac/halmac_88xx=
/halmac_api_88xx_usb.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 0bd6abd..0ae0d02 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0a/drivers/staging/rtlwifi/halmac/halmac_88xx=
/halmac_api_88xx_usb.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/rtlwifi/halmac/halmac_88xx=
/halmac_api_88xx_usb.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -192,7 +192,6 @@ halmac_cfg_rx_aggre=
gation_88xx_usb(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0halmac_adapter *halmac_adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 u8 halmac_reg_read_8_usb_88xx(str=
uct halmac_adapter<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*halmac_adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 halma=
c_offset)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0u8 value8;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0void *driver_=
adapter =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct halmac=
_api *halmac_api;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -205,9 +204,7 @@ u8 halmac_reg_read_=
8_usb_88xx(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0halmac_adapter *halmac_adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0driver_adapte=
r =3D halmac_adapter-&gt;driver_adapter;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0halmac_api =
=3D (struct halmac_api<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*)halmac_adapter-&gt;halmac_api;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0value8 =3D PLATFOR=
M_REG_READ_8(driver_adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0halmac_offset);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0return value8;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0return PLATFORM_RE=
G_READ_8(driver_adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0halmac_offset);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 /**<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.7.4<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsubscribe@googl=
egroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
thttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/a94f3=
01af01c055a8524ae77" rel=3D"noreferrer" target=3D"_blank">groups.google.com=
/d/msgid/outreachy-kernel/a94f301af01c055a8524ae77</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0206fadd9f6e524eb.1554037161.git.payal.s.kshi=
rsagar.98%<a href=3D"http://40gmail.com" rel=3D"noreferrer" target=3D"_blan=
k">40gmail.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https:=
//groups.google.com/d/optout</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You received this message because you are su=
bscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To unsubscribe from this group and stop rece=
iving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsubscribe@googl=
egroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To post to this group, send email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To view this discussion on the web visithttp=
s://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB=
.2.21.19033115" rel=3D"noreferrer" target=3D"_blank">groups.google.com/d/ms=
gid/outreachy-kernel/alpine.DEB.2.21.19033115</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A027480.2578%40hadrien.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0For more options, visit <a href=3D"https://g=
roups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https://gro=
ups.google.com/d/optout</a>.<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<=
br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CANTOzWE1am3xofByCG%2BdF" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/CANTO=
zWE1am3xofByCG%2BdF</a><br>
&gt; NmwgyivZwGxtZjLHWXazT5NkLP%3DEQ%<a href=3D"http://40mail.gmail.com" re=
l=3D"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311538220.2578%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1903311538220.2578%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--0000000000000b0bed0585647d57--

