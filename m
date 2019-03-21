X-GM-THRID: 6670781063292256256
X-Received: by 2002:a25:698c:: with SMTP id e134mr525741ybc.83.1553164826754;
        Thu, 21 Mar 2019 03:40:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3414:: with SMTP id b20ls1735224yba.2.gmail; Thu, 21 Mar
 2019 03:40:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyqMNh26RewHMGNjtEsGM4JRvsNf/i5Y52PU5oJJ1QJgUXmDXQKcLNTWlMcX749HJCnvvq+
X-Received: by 2002:a25:3241:: with SMTP id y62mr535554yby.61.1553164825763;
        Thu, 21 Mar 2019 03:40:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553164825; cv=none;
        d=google.com; s=arc-20160816;
        b=0N5Vmj2foX0LTgw51dW6bFRJEVjdAq2F69l1XgJz4oHR7U2paRNPQyHsIvT6H2jTgf
         Qw7Zk5+oP7qYNjpwX/R789PNX8WwS3mgn0rNjpIvWiY3xKw4MJ7vYvhAfJ9+UF2lXOlA
         1Z7smDwP6dAbwd/ncGAN/zUP3zuVIjbL6kQKorToZLkcwnh7emKsgKsilYs0gEmviDDO
         H9acau/xFUl1J2Iwhfp9xfJQ3qe8WdH//tfexpZhEsCPnlDR0SwAOjyNL43exkX5uIFR
         sJbllaqFKnToniFYOEepwZ55h6RSfoURm5/qke7B4jBNVzlh9Qz5WISVAqBfb4tZu3ev
         2p8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/OWtZ33mIMjBkRDDlW6B7xYk5xuqQ+1aUaZvNc0tVgY=;
        b=TJBpAqyILepRudIeeUHTroVWApj2aC3jbMRXM36Hg54RxnlItxDo7/og9cNtALTmKV
         CQfitg0OgQ42aVnY3I4nZXWM4TBa1hW0lTrs2k8J09OEGGMTq1D6reGOBnh77SLFE6tU
         5pEJ65GGad+S7fQWzdqCYYpQ4xxmfibKTBLyn0KYoOWSWC7jxV/2qOuHhyIGKwe0952o
         uiwGBtb1iQSCIy46IJjXrQTTc7PIFdntsvlthFD2rTtwnOUh0wZTCBPxWfNIUau5jRKN
         cJdOZxTjpE3ppi7YAiv2DB1oguYaBjoVFhTnRSapPvv/b/0JFSfD3Bc7Ec9106flWXyA
         8P3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4hnfD9v;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com. [2607:f8b0:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id s11si302632ywg.3.2019.03.21.03.40.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 03:40:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) client-ip=2607:f8b0:4864:20::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4hnfD9v;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22c.google.com with SMTP id x188so3301182oia.13
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 03:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/OWtZ33mIMjBkRDDlW6B7xYk5xuqQ+1aUaZvNc0tVgY=;
        b=M4hnfD9vW+PXtNd2dvqPXyLE7k5VXQMw0jjyXzzShIwH6Hx8KjWzrCpLOeZFoLvIjA
         trZbU6pA61MpXkfprhoXPiT0SIfZv4fE1IddR14GtCMdKxJQcZXoWY1UBfpNRlw9cjfk
         zXEe3yrK6E2m+AW1ky/xR1GEt5NAFQfU9NmzpEgA6zUoFaFkh8c8zopbQcBSRttzISS5
         7CcjhzHOEGbOivYuaiph41ZflrtOZh4vPv29uXo5Nhe8vRarK3EQbdXSztcIp3iGfQDy
         gYkfIX383Dn8NCi0SzYXLtYK9gkMppf5XaO1eyl+JHnyVgYQYXPqeSpLiGwym96vtUNY
         y9fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/OWtZ33mIMjBkRDDlW6B7xYk5xuqQ+1aUaZvNc0tVgY=;
        b=CbJ1sDPcWExQxgPydiLi2ZplEcPAPh1TxyEEwk63T0Jnhc7NjxiSSnHSkGRNFcI76D
         04PXFKtmcwc+N2AjTKVQzj+/skiNqn5blMDdHhfEGeLOTUINQJbZfFo7nVt8qLh4VcRA
         yBWJ49gGad0zASlpcHNzWvYbNenYAoajmNgAC2oRhav1vEaWVef5yDobsggvvQUbPqNb
         2vnU0RBf5N657ExEGkt4ynQKysU5JiAHglso/FrJbN2zZgCx2UAbIgP2NE+O7A6Xu3kI
         v/31G0O0XklqCcY0tpAf2PUI96PLoivcq61XCrXxjKgJOuHPcemzfjJ4lRxk7jwzB2Gc
         iG/w==
X-Gm-Message-State: APjAAAWTAiLww5NIute9oFWcrxOsleggQfpFfIV0CcGH7gdZni4mzLpk
	kJoNvhxq/364/prIJ4pnJPinwToO72b2JLeOl/Y=
X-Received: by 2002:aca:62c1:: with SMTP id w184mr1611851oib.127.1553164825318;
 Thu, 21 Mar 2019 03:40:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190321095717.24155-1-himadri18.07@gmail.com> <alpine.DEB.2.20.1903211106390.5292@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903211106390.5292@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Thu, 21 Mar 2019 16:10:13 +0530
Message-ID: <CAPnhUpaXwEBMFa_ukU9uauFuEaUojMju_kG+WHnJ9SQcAXrSpA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Remove unnecessary
 error print
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000b0dbb90584985dba"

--000000000000b0dbb90584985dba
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 21, 2019 at 3:38 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 21 Mar 2019, Himadri Pandya wrote:
>
> > Kmalloc normally produces a backtrace when there is not enough memory.
> > So it is unnecessary to print an error message that provides only this
> > information. Hence, remove pr_error() from memory allocation check.
> > Issue found using Coccinelle.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> >  drivers/staging/netlogic/xlr_net.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/netlogic/xlr_net.c
> b/drivers/staging/netlogic/xlr_net.c
> > index 8554fcf4321b..afba1248e100 100644
> > --- a/drivers/staging/netlogic/xlr_net.c
> > +++ b/drivers/staging/netlogic/xlr_net.c
> > @@ -389,10 +389,8 @@ static void *xlr_config_spill(struct xlr_net_priv
> *priv, int reg_start_0,
> >       base = priv->base_addr;
> >       spill_size = size;
> >       spill = kmalloc(spill_size + SMP_CACHE_BYTES, GFP_ATOMIC);
> > -     if (!spill) {
> > -             pr_err("Unable to allocate memory for spill area!\n");
> > +     if (!spill)
> >               return ZERO_SIZE_PTR;
>
> This seems to be the only driver that uses ZERO_SIZE_PTR as the result for
> kmalloc.  It could be worth looking into what happens to this value
> afterwards.
>
> julia
>

This is interesting. Later the pointer *spill* is aligned with
*SMP_CACHE_BYTE**S (which is defined using L1_CACHE_BYTES). * As per my
understanding, *xlr_config_spill() *returns ZERO_SIZE_PTR if *kmalloc()* cannot
allocate sufficient memory(equivalent to *spill_size*) as the return value
is being used to configure network accelerator's communication interface.

Please correct me if I am mistaken.

Thank you.

- Himadri


>
> > -     }
> >
> >       spill = PTR_ALIGN(spill, SMP_CACHE_BYTES);
> >       phys_addr = virt_to_phys(spill);
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190321095717.24155-1-himadri18.07%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--000000000000b0dbb90584985dba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Mar 21, 2019 at 3:38 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawal=
l@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><br>
<br>On Thu, 21 Mar 2019, Himadri Pandya wrote:<br>
<br>&gt; Kmalloc normally produces a backtrace when there is not enough mem=
ory.<br>&gt; So it is unnecessary to print an error message that provides o=
nly this<br>&gt; information. Hence, remove pr_error() from memory allocati=
on check.<br>&gt; Issue found using Coccinelle.<br>&gt;<br>&gt; Signed-off-=
by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail.com" target=3D"=
_blank">himadri18.07@gmail.com</a>&gt;<br>&gt; ---<br>&gt;=C2=A0 drivers/st=
aging/netlogic/xlr_net.c | 4 +---<br>&gt;=C2=A0 1 file changed, 1 insertion=
(+), 3 deletions(-)<br>&gt;<br>&gt; diff --git a/drivers/staging/netlogic/x=
lr_net.c b/drivers/staging/netlogic/xlr_net.c<br>&gt; index 8554fcf4321b..a=
fba1248e100 100644<br>&gt; --- a/drivers/staging/netlogic/xlr_net.c<br>&gt;=
 +++ b/drivers/staging/netlogic/xlr_net.c<br>&gt; @@ -389,10 +389,8 @@ stat=
ic void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,<br>&g=
t;=C2=A0 =C2=A0 =C2=A0 =C2=A0base =3D priv-&gt;base_addr;<br>&gt;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0spill_size =3D size;<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spi=
ll =3D kmalloc(spill_size + SMP_CACHE_BYTES, GFP_ATOMIC);<br>&gt; -=C2=A0 =
=C2=A0 =C2=A0if (!spill) {<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pr_err(&quot;Unable to allocate memory for spill area!\n&quot;);<=
br>&gt; +=C2=A0 =C2=A0 =C2=A0if (!spill)<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ZERO_SIZE_PTR;<br>
<br>This seems to be the only driver that uses ZERO_SIZE_PTR as the result =
for<br>kmalloc.=C2=A0 It could be worth looking into what happens to this v=
alue<br>afterwards.<br>
<br>julia<br></blockquote><div><br></div><div>This is interesting. Later th=
e pointer <i>spill</i>=C2=A0is aligned with=C2=A0<i>SMP_CACHE_BYTE</i><i>S =
(which is defined using L1_CACHE_BYTES).=C2=A0</i>=C2=A0As per my understan=
ding,=C2=A0<i>xlr_config_spill() </i>returns ZERO_SIZE_PTR if <i>kmalloc()<=
/i>=C2=A0cannot allocate sufficient memory(equivalent to <i>spill_size</i>)=
 as the return value is being used to configure network accelerator&#39;s c=
ommunication interface.</div><div><br></div><div>Please correct me if I am =
mistaken.</div><div><br></div><div>Thank you.</div><div><br></div><div>- Hi=
madri</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
<br>&gt; -=C2=A0 =C2=A0 =C2=A0}<br>&gt;<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0s=
pill =3D PTR_ALIGN(spill, SMP_CACHE_BYTES);<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0phys_addr =3D virt_to_phys(spill);<br>&gt; --<br>&gt; 2.17.1<br>&gt;<br>=
&gt; --<br>&gt; You received this message because you are subscribed to the=
 Google Groups &quot;outreachy-kernel&quot; group.<br>&gt; To unsubscribe f=
rom this group and stop receiving emails from it, send an email to <a href=
=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blan=
k">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>&gt; To post to th=
is group, send email to <a href=3D"mailto:outreachy-kernel@googlegroups.com=
" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>&gt; To view =
this discussion on the web visit <a href=3D"https://groups.google.com/d/msg=
id/outreachy-kernel/20190321095717.24155-1-himadri18.07%40gmail.com" rel=3D=
"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-=
kernel/20190321095717.24155-1-himadri18.07%40gmail.com</a>.<br>&gt; For mor=
e options, visit <a href=3D"https://groups.google.com/d/optout" rel=3D"nore=
ferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<br>&gt;<b=
r>
</blockquote></div></div></div></div>

--000000000000b0dbb90584985dba--

