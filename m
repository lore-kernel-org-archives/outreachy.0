X-GM-THRID: 6755114272133480448
X-Received: by 2002:a6b:6909:: with SMTP id e9mr664065ioc.124.1572798204439;
        Sun, 03 Nov 2019 08:23:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7205:: with SMTP id n5ls698673ioc.7.gmail; Sun, 03 Nov
 2019 08:23:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqwQUc64QQCBWmxSsHCFi3b0xP/nLkDLej0Ty3SmDxnNsRQ7n4sXpqCDPaRPRMA9vac6a0rV
X-Received: by 2002:a5e:c308:: with SMTP id a8mr5814692iok.125.1572798203204;
        Sun, 03 Nov 2019 08:23:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572798203; cv=none;
        d=google.com; s=arc-20160816;
        b=i+gkDETU/S0oxWNmiwKytFAmF/Awr7Q+IIODx1AeotrcLYVbh94kkNIoA6koERH7mU
         HDTLbvz70gFsyWTXpYPod9QYUV5KRM4GVpgmCE8g08Qe/KV5KjDqRNWZWCjzAB13NUsQ
         Lz+jkAWyZeGcvPqcU0I45lgpjDfu/hU/zMdX5nCcWZkRHbDZgH+y2yYpQZEVUCbsL9wu
         SoJrv+yHVof8YuW6KKEJjmGp52rXykt1yQ0lGW2hFiKFQ7JFPHgmw6NEczfY8JYI/9T3
         4FT8dG9kUiGFT66eYkOce804ARaB9w71Cb4lXu7q6VxsW4aCKBv7bH5M5nqUOgFg9kQH
         1uUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GJmvw2UBBNbkX5qnRXeyJSuGWE+A8cgIhSsxSjEfSxU=;
        b=Cg/rSh0/wYa7e3vzzZufmHBcvHS2spkW/yPwkj5QNruZviItV6iCEs/kSSJyYHKqW1
         y2XU7GEpZT74zAiqmNSVhL64ICja1AsBJMuXWorEckvLS1dCi0RVi80WC32kvoUi3ffd
         c348z9NJjqFRtvJgKqz8A1s8gue3f9MnPTr+LOThO2oTOSvHO/Nn0+lJZzaQcZ2kNVi7
         6jP16pU9eC2gH4ch6VPI/bwevQXziPlGwCF5HocL1UVhWj93+IWFU5YSMvcuZ48osHA0
         4e1TK90pcC5rYT728wq4lljA4lesMqsh9pvihPMdx+sZHmZJ5vouL3EGJx+1qp6LvjRs
         mfGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jyT81FNO;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id r10si235058ioo.4.2019.11.03.08.23.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:23:23 -0800 (PST)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jyT81FNO;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa44.google.com with SMTP id o2so3246783vkc.13
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 08:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GJmvw2UBBNbkX5qnRXeyJSuGWE+A8cgIhSsxSjEfSxU=;
        b=jyT81FNO1IgiynAa6rJdv5CZ1ZZYMjO8fKRbj3zkMfdPlTskA+shmrkfzu5fphO6oJ
         G1G28v9RAxv8emegd7ue1kxWcE7Qomyq/fnQTDQZDzWyoiVwRJUgFZ5ef08PSWkaFDY7
         6gj6hfIY9y74W6uQOvDaC9xB7SkqiucPE9ifvE+5S16MiDqCIwchDCfkad0l5iWOZtQV
         pnoFrTAO8mrsMUCDk9626C0j3QK0LJPB/KzdPUV6mlmIfSqlx1z1qg41rkkZTWkgOJKU
         hkET2mGBwMR1IiE5XjF6uDuzq576Hzh7TQBQG6EFeCoxyxj1xd7P5/8ylT6A7Agrn9Zh
         g3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GJmvw2UBBNbkX5qnRXeyJSuGWE+A8cgIhSsxSjEfSxU=;
        b=h8kPmtLVEz8CBCdrIe17ZE7ipTSHoKchQFHeJHzQ82HEsJ8SntYyN7uHhiR1rIuWmo
         jI9C4u+uphBHQbLOZLrAkInfmtsOyQadSoNPWJmuEpBNdH2f92Lw/eN3vWDdg9zAIPoq
         OUjOk9V429Hu1ONOTGqnOEmhpuolvpQjsRF6WeJbAiesoibj2Wtv15Li7Z+9JXLBDUZA
         6HUArT8p1Le8C4R7DOs1pRtI+X7jJxzQdYrAEcpI4UD2MMOpXqb/6by2iPQaU50CeSRv
         NunSRv5I+35Zvuv3Sg7h9M2WUMGOQ2E5f+o2b0qEFLkjU75JOf9jDTV7nbNm9FNa9Oap
         hgnw==
X-Gm-Message-State: APjAAAU3D6dm9js8wpzPqbBagcVfH4dpnHunYnAFf5NuFrMeFhY92jO9
	iqDTjYxThXFTVjgTVAmFTkgFsHOpOWKYNbs5p34=
X-Received: by 2002:a1f:2556:: with SMTP id l83mr9719250vkl.77.1572798202642;
 Sun, 03 Nov 2019 08:23:22 -0800 (PST)
MIME-Version: 1.0
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
 <62b034d416bc0b0f2fc2a10c225bcf1441b4eecc.1572797322.git.chime.evan.dri.devel@gmail.com>
 <alpine.DEB.2.21.1911031716020.2557@hadrien>
In-Reply-To: <alpine.DEB.2.21.1911031716020.2557@hadrien>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Sun, 3 Nov 2019 16:23:09 +0000
Message-ID: <CANR89jYOCcJdhaWV9fvcTvZw1P=9uoq56rpUZo+ry03=HdV_Bg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: media: omap4iss: Add
 comment to memory barrier
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, laurent.pinchart@ideasonboard.com, 
	mchehab@kernel.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000002c07e10596739ed7"

--0000000000002c07e10596739ed7
Content-Type: text/plain; charset="UTF-8"

On Sun, 3 Nov 2019 at 16:16, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 3 Nov 2019, Evan Chime wrote:
>
> > Fix "WARNING: memory barrier without comment" from checkpath. Add comment
> > to memory barrier smp_wmb() on line 660
> >
> > Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> > ---
> >  drivers/staging/media/omap4iss/iss.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/omap4iss/iss.c
> b/drivers/staging/media/omap4iss/iss.c
> > index ce34c19874c7..85b0d9cbaa14 100644
> > --- a/drivers/staging/media/omap4iss/iss.c
> > +++ b/drivers/staging/media/omap4iss/iss.c
> > @@ -657,7 +657,7 @@ int omap4iss_module_sync_idle(struct media_entity
> *me, wait_queue_head_t *wait,
> >       if (!wait_event_timeout(*wait, !atomic_read(stopping),
> >                               msecs_to_jiffies(1000))) {
> >               atomic_set(stopping, 0);
> > -             smp_wmb();
> > +             smp_wmb(); /* Prevent stores reordering across the barrier
> */
>
> Which stores?
>
> julia
>

Memory writes

Kind regards
Evan



> >               return -ETIMEDOUT;
> >       }
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/62b034d416bc0b0f2fc2a10c225bcf1441b4eecc.1572797322.git.chime.evan.dri.devel%40gmail.com
> .
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1911031716020.2557%40hadrien
> .
>

--0000000000002c07e10596739ed7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, 3 Nov 2019 at 16:16, Julia Lawall &lt;<a href=3D"ma=
ilto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><br>
<br>
On Sun, 3 Nov 2019, Evan Chime wrote:<br>
<br>
&gt; Fix &quot;WARNING: memory barrier without comment&quot; from checkpath=
. Add comment<br>
&gt; to memory barrier smp_wmb() on line 660<br>
&gt;<br>
&gt; Signed-off-by: Evan Chime &lt;<a href=3D"mailto:chime.evan.dri.devel@g=
mail.com" target=3D"_blank">chime.evan.dri.devel@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/media/omap4iss/iss.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/me=
dia/omap4iss/iss.c<br>
&gt; index ce34c19874c7..85b0d9cbaa14 100644<br>
&gt; --- a/drivers/staging/media/omap4iss/iss.c<br>
&gt; +++ b/drivers/staging/media/omap4iss/iss.c<br>
&gt; @@ -657,7 +657,7 @@ int omap4iss_module_sync_idle(struct media_entity =
*me, wait_queue_head_t *wait,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!wait_event_timeout(*wait, !atomic_read(=
stopping),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(1000))) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0atomic_set(stopp=
ing, 0);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0smp_wmb();<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0smp_wmb(); /* Prevent=
 stores reordering across the barrier */<br>
<br>
Which stores?<br>
<br>
julia<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Memory writes</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">Kind regards=C2=A0</div><d=
iv dir=3D"auto">Evan=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ETIMEDOU=
T;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/62b034d416bc0b0f2fc2a10c225bcf1441b4eecc.1=
572797322.git.chime.evan.dri.devel%40gmail.com" rel=3D"noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/62b034d416bc=
0b0f2fc2a10c225bcf1441b4eecc.1572797322.git.chime.evan.dri.devel%40gmail.co=
m</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1911031716020.2557%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1911031716020.2557%40hadrien</a>.<br>
</blockquote></div></div>

--0000000000002c07e10596739ed7--

