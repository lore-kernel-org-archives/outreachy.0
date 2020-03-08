X-GM-THRID: 6801839515695579136
X-Received: by 2002:a7b:c4cb:: with SMTP id g11mr16159751wmk.83.1583682082069;
        Sun, 08 Mar 2020 08:41:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls5458338wme.3.gmail; Sun, 08
 Mar 2020 08:41:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvXycEpbL7jTBTf2vaSiw56yJ7KN02AkRXJLIZtkxVRJbqYMsliiQmhD+U9cXksvkXzq8iA
X-Received: by 2002:a1c:3281:: with SMTP id y123mr15912524wmy.104.1583682080794;
        Sun, 08 Mar 2020 08:41:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583682080; cv=none;
        d=google.com; s=arc-20160816;
        b=V33xNRLdSioWaxwV6jrZ9GPqOYRK80Uu7YXyQVPk2Tw1vRbV1q173ZmxWp96rUAzAj
         ix6G0SDgWpJQn0qJ/sElzLdFTO3wynAQ5qJUntJ97m3PNaOuZNEWyd6hpDpK+fpa7i49
         1No2Iu+spX6xGtXO6/4QKxRuX9kk8EkTFOLynV54r+BVd8qP8CVCLFzzcLClFFUhOJ3a
         F20p5ZsWTgXoeuAvMooalVQNf0N2RVHBLa9zr21pc7NUX7Wk2QhdGrQ8jDerlrLTVm1n
         PYJi93ip8peZLH0aqGnCxcovss5ViEnaCqFIo8wZk6jc2K48m3y4u3EH3wvZFNZrw9Bl
         CVng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RwumeRxNkt7b0W6H4Zhl3zPiVNWYfgnAgB4H3NjCJf8=;
        b=oJa+nr2Oa2TeF2fcPdPc97PISv/BLGjAe6UiSHPtpt0ESYG7tps9T91AHwDW3vTexU
         uIqiAYgFDwqRkcsaNmUqQo4cC0R6VC1RecGxdO3C1OCkK0UmUBkNSz2au6M6yL0YfllW
         uw36IBmOBl5F0wdzsVSNarW5PkhEFB34hLRqHY4mMVffbku4pQxaKkjcDhMvEb2qvXPw
         95Tu6XyN9KQKSg2sPYu95vaMJz6pDXiC7+IVlhN+YAuIFj7L7o+PWBOFbg1bSFH8EqH3
         iqO4Rd0tKvPDD48Tel3eWMT+Zpe1YpAg0DCzPjuwbFQb9kotejtFZh+gUnmlaHBa7mJS
         2+Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K4tpJ+SO;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id m2si784550wmi.3.2020.03.08.08.41.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 08:41:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K4tpJ+SO;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42a.google.com with SMTP id v2so7957312wrp.12
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 08:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RwumeRxNkt7b0W6H4Zhl3zPiVNWYfgnAgB4H3NjCJf8=;
        b=K4tpJ+SOrcWQBzMQFF0HPytLBzKH91q3acG08QSav77It+XDwsY/8CVGoWPJb1Mb67
         8b3Z4PzS5nVc9oW6YEH9QuIUbcpkc/hBzvxj8K+r9SBjs2G3UbBiwbfCght7LAzdeanB
         LDqVh+cSBur2S/3rvbD5/mhiCiSURX37fr0Eq5eroEQY6PGrlkLkg3qR7L4tDzL9TPCv
         TB15yilhLuYKosiX7A+L3Vz5KUmIQiHK04Dtc+xT9dcOl/gt3NmQdi1cTQxXQicU4Wl7
         AgPVBUDOaM4J+deOys2mg/8hCi2Lkbsmgd7sUhQt79yl0sMtIUVJTVazh4I0ySY50hU/
         pc2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RwumeRxNkt7b0W6H4Zhl3zPiVNWYfgnAgB4H3NjCJf8=;
        b=gGTMHsy3Z2dPfzD9DdbewYhGQqFyLBA4nS4Sj0r0BGbtYCD52EmJc9irhhaFTnVeLj
         oxcT2A0YR54C8OaeKrE+kD3Lz7B/KugFNljLtPxWoIKCKaStQW5btAD0uS+zHUACa5Rq
         vwlplmy2dQXR3Mk/3AKdHKu/vMVgHct/sVyfVZk/m0gH5PqZ+vCiz97Jp+fsP00WUWpF
         vUPjiWTC8TX+9ZLNquokztaPGZBlfglWtqqOAl4c1Xm8h9a3qMFmHtOoL38pJU4Sb+OZ
         CrLjyoAhommWfOSMrC4P/z3+uPGSHK//+dQhavfbinwlTCw204EDpji22Kng4d5dEwYm
         RqDQ==
X-Gm-Message-State: ANhLgQ0FEiBmoyokfuIlpmnYIk4jibzFI6OdbZG1y/epODmVPgkECFua
	RZzqpUKoA+iC8s8KEeIciDRuEWzldZdvx6rAFlJRV9Re
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr16387086wro.115.1583682080302;
 Sun, 08 Mar 2020 08:41:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200308141057.5857-1-payalskshirsagar1234@gmail.com> <alpine.DEB.2.21.2003081551150.2400@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003081551150.2400@hadrien>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Sun, 8 Mar 2020 21:11:06 +0530
Message-ID: <CAJyzNh=GtCJPY9PUy1tq2j0=GpmEaDbEhsHDfhojA3AciDUziw@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: rts5208: Replace bit shifting
 with BIT macro
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000d56b8405a059b76e"

--000000000000d56b8405a059b76e
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 8, 2020, 8:23 PM Julia Lawall <julia.lawall@inria.fr> wrote:

> On Sun, 8 Mar 2020, Payal Kshirsagar wrote:
>
> > Prefer using BIT macro and replace bit shifting with the BIT(x) macro.
> >
> > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > ---
> >  drivers/staging/rts5208/rtsx_card.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rts5208/rtsx_card.h
> b/drivers/staging/rts5208/rtsx_card.h
> > index 39727371cd7a..9d2504fddb13 100644
> > --- a/drivers/staging/rts5208/rtsx_card.h
> > +++ b/drivers/staging/rts5208/rtsx_card.h
> > @@ -338,7 +338,7 @@
> >  #define DMA_DIR_FROM_CARD            0x02
> >  #define DMA_EN                               0x01
> >  #define DMA_128                              (0 << 4)
> > -#define DMA_256                              (1 << 4)
> > +#define DMA_256                              BIT(4)
> >  #define DMA_512                              (2 << 4)
> >  #define DMA_1024                     (3 << 4)
>
> It would be better to keep them all being expressed in the same way, in
> this case and the next one.


Yes, I agree.

julia
>
> >  #define DMA_PACK_SIZE_MASK           0x30
> > @@ -542,7 +542,7 @@
> >
> >  #define BLINK_EN                     0x08
> >  #define LED_GPIO0                    (0 << 4)
> > -#define LED_GPIO1                    (1 << 4)
> > +#define LED_GPIO1                    BIT(4)
> >  #define LED_GPIO2                    (2 << 4)
> >
> >  #define SDIO_BUS_CTRL                0x01
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20200308141057.5857-1-payalskshirsagar1234%40gmail.com
> .
> >
>

--000000000000d56b8405a059b76e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 8, 2020, 8:23 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawal=
l@inria.fr">julia.lawall@inria.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On Sun, 8 Mar 2020, Payal Kshirsagar wrote:<br>
<br>
&gt; Prefer using BIT macro and replace bit shifting with the BIT(x) macro.=
<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar=
1234@gmail.com" target=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@g=
mail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rts5208/rtsx_card.h | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rts5208/rtsx_card.h b/drivers/staging/rts=
5208/rtsx_card.h<br>
&gt; index 39727371cd7a..9d2504fddb13 100644<br>
&gt; --- a/drivers/staging/rts5208/rtsx_card.h<br>
&gt; +++ b/drivers/staging/rts5208/rtsx_card.h<br>
&gt; @@ -338,7 +338,7 @@<br>
&gt;=C2=A0 #define DMA_DIR_FROM_CARD=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 0x02<br>
&gt;=C2=A0 #define DMA_EN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x01<br>
&gt;=C2=A0 #define DMA_128=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (0 &lt;&lt; 4)<br>
&gt; -#define DMA_256=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (1 &lt;&lt; 4)<br>
&gt; +#define DMA_256=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(4)<br>
&gt;=C2=A0 #define DMA_512=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (2 &lt;&lt; 4)<br>
&gt;=C2=A0 #define DMA_1024=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0(3 &lt;&lt; 4)<br>
<br>
It would be better to keep them all being expressed in the same way, in<br>
this case and the next one.</blockquote></div></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Yes, I agree.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><spa=
n style=3D"font-family:sans-serif">julia</span><br>
<br>
&gt;=C2=A0 #define DMA_PACK_SIZE_MASK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00x30<br>
&gt; @@ -542,7 +542,7 @@<br>
&gt;<br>
&gt;=C2=A0 #define BLINK_EN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A00x08<br>
&gt;=C2=A0 #define LED_GPIO0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (0 &lt;&lt; 4)<br>
&gt; -#define LED_GPIO1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 (1 &lt;&lt; 4)<br>
&gt; +#define LED_GPIO1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 BIT(4)<br>
&gt;=C2=A0 #define LED_GPIO2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (2 &lt;&lt; 4)<br>
&gt;<br>
&gt;=C2=A0 #define SDIO_BUS_CTRL=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0x01<br>
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
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20200308141057.5857-1-payalskshirsagar1234=
%40gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://group=
s.google.com/d/msgid/outreachy-kernel/20200308141057.5857-1-payalskshirsaga=
r1234%40gmail.com</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--000000000000d56b8405a059b76e--

