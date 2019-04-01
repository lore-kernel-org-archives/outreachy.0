X-GM-THRID: 6674586427975532544
X-Received: by 2002:a1c:2355:: with SMTP id j82mr1083954wmj.7.1554087305798;
        Sun, 31 Mar 2019 19:55:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4081:: with SMTP id o1ls372102wrp.7.gmail; Sun, 31 Mar
 2019 19:55:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxL2aVpLl459x1iETsbg/G/ONUVJ0z7/dPdzliwAMkHTACd2MhpH76TYmKVKuD8ma4+wrQf
X-Received: by 2002:a5d:4211:: with SMTP id n17mr1049243wrq.3.1554087304913;
        Sun, 31 Mar 2019 19:55:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554087304; cv=none;
        d=google.com; s=arc-20160816;
        b=RbBjpbtFRhVOyFWksPwnc6YFhkiptWA14FbY8gfShRSOehLUwh5wZsWdY9EcSbZQGW
         DKVTrdPrj+xvzmA0pdy+xRigGprITjchaXdSAyBft5kIrTsPkwJ3kw52UTHWxCVWqe+I
         RAz3DMGJdORyDlwR+M4vuwnEpq00+KZtbOLPhr3CkPlcLdXQJLYEgROwZSr8eDiimk9o
         2RwavsEfsgH+Y2QfugoGHeru6TMXpVc5VHv2RI3vAMcow9bdtbVev/BglTtid44POofi
         rsXbGwJtASJc+oGnUzodI4J368X7VW5lGmXnEbBPZZtrC/wcUvEb8XVINf81jgqoMZeI
         g78g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=L4lKNGr9+19RZDpctthih5IfFWEnlJvGhNpgZc7RhHU=;
        b=DftLRDqXDlCdDnih6d2VsAOlZ9GRqawbjrH8bQTjm2JY4Q1IjMqKzmCfq1ILSw7Fsn
         pHw84kAZcH0NF1n0jwCtA1Fhtb5Mz215ZGt0sZWTViMTYT+F324dQ6xrboPagSG+4y0Q
         2Jo3cWUj8A/7P3Zg+kRmggjqaZ77sKnc1+bODPUNx75MKieM3AsIwiFcmQS2cvblmeNB
         WJ0UhylOkB6KKEyUa/oo24QnFUhhzJiM30x7wQBlsPXtULKy/h0OMLS6qfuozes+o53L
         +Ul2YVCKm+i6wh9CniMxLXps3V35MwXRqVA+XUbqKPViS+vPFDQCYH+HNOp8kh8hKVAA
         jNDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=skPt7V+J;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 61si105509wra.0.2019.03.31.19.55.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 19:55:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=skPt7V+J;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x543.google.com with SMTP id d1so6773027edd.13
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 19:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L4lKNGr9+19RZDpctthih5IfFWEnlJvGhNpgZc7RhHU=;
        b=skPt7V+J+OJq+breDHmlQVDYIdgD4gEVx368yh9slZ4rKZlU24puml3EZ/UEY44bBK
         n0KTqnFkrWAH5os43eARHEuEgsT/89UTkotT7Ra4fZIoDsfBtigfvseaou2ToewdkexG
         3UZ2FDxHQM5Tk2nSElIkzt1yQQBBM74LUBUKDd7K3ySwzR1lNZNFJVTFrxjXtPfVHHCN
         kiGv4DuQrb0DuujxZaZosrkgZLw8pIArydzMo57qbRv6kA/gT+7tU+tXr/52s2gIgKrx
         knCHRAUo1QOJ2cXyBC1HtYBBbJl6DhPK9TkgdGGdH1JaBwKF8uDOAdzqfG3Lf6ovTriz
         S49w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L4lKNGr9+19RZDpctthih5IfFWEnlJvGhNpgZc7RhHU=;
        b=uJjeRZ5mHqN7pu1yFJlKd5flmdP5WTZNNcFqjPq4v8ekXx+4MNCVh50LOXCcRBIpO1
         6w3uZ8DHchb8f6w95BdLp8ozrUpvcsfLkNwiXzucHRNcGcK9pXDMVEkTuLxi/tZumbTd
         qcgf1ioniAOoVjOoZPA7xAYenf7IiuOuRwwjjp8jKLIt3PgIPZshge3spKQko3iLPzWK
         es4D6AuR/OQrPWGU4vqqJhg4mT4Mf9z9tXy1+KjP8fXVC96zamE78DdnmzQQYKjtHhoB
         STXg6FNkF89B2UevckWQgDA6MGM/baR1WVq6Vffp9AYUY6FcpLGipYtoCtmdVUpJLLNN
         VWDA==
X-Gm-Message-State: APjAAAUFGxzHAKslwDc3yL7V6zsWsYPPnXv6uE5JM7hbAT/JQO+ARPw7
	UZRDQ/jRSf4jZFKuW9myc7TsTYhHqGkFML79DlM=
X-Received: by 2002:a50:ba24:: with SMTP id g33mr41152685edc.164.1554087304716;
 Sun, 31 Mar 2019 19:55:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190331160402.27940-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.21.1903311833100.2578@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903311833100.2578@hadrien>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Mon, 1 Apr 2019 08:24:52 +0530
Message-ID: <CAO-bXGC=KEM-sA3Z7mL70xDLPPUfoQ78AxyUbu-5ggBeyA5OmA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: hid: Remove print
 following unsuccessful kmalloc
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000bf667a05856f2527"

--000000000000bf667a05856f2527
Content-Type: text/plain; charset="UTF-8"

On Sun, 31 Mar 2019, 22:03 Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 31 Mar 2019, Sanjana Sanikommu wrote:
>
> > Challenge suggested by Coccinelle
> > Remove print statement following unsuccessful kmalloc when there
> > is not enough memory. Kmalloc and variants normally produce a
> > backtrace in such a case. Hence, a print statement is not necessary.
> >
> > Found using the following Coccinelle semantic patch:
> > @@
> > identifier i,print;
> > constant char [] c;
> > @@
> >
> > i = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|
> > devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\|
> > kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
> >    kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...));
> > (
> > if (i == NULL)
> > {
> > -print(...,c,...);
> > ...when any
> > }
> > |
> > if (!i)
> > {
> > -print(...,c,...);
> > ...when any
> > }
> > )
>
> No need to change, but with the pattern i == NULL, Coccinelle will match
> !i too.
>

   Shall I update the semantic patch ? Plz let me know...

 Thank you
Sanjana

>
> julia
>
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> >  drivers/staging/greybus/hid.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/hid.c
> b/drivers/staging/greybus/hid.c
> > index 0b72e1b9d325..8ab810bf5716 100644
> > --- a/drivers/staging/greybus/hid.c
> > +++ b/drivers/staging/greybus/hid.c
> > @@ -292,7 +292,6 @@ static int gb_hid_parse(struct hid_device *hid)
> >
> >       rdesc = kzalloc(rsize, GFP_KERNEL);
> >       if (!rdesc) {
> > -             dbg_hid("couldn't allocate rdesc memory\n");
> >               return -ENOMEM;
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
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190331160402.27940-1-sanjana99reddy99%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311833100.2578%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000bf667a05856f2527
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, 31 Mar 2019, 22:03 Julia Lawall, &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><br>
<br>
On Sun, 31 Mar 2019, Sanjana Sanikommu wrote:<br>
<br>
&gt; Challenge suggested by Coccinelle<br>
&gt; Remove print statement following unsuccessful kmalloc when there<br>
&gt; is not enough memory. Kmalloc and variants normally produce a<br>
&gt; backtrace in such a case. Hence, a print statement is not necessary.<b=
r>
&gt;<br>
&gt; Found using the following Coccinelle semantic patch:<br>
&gt; @@<br>
&gt; identifier i,print;<br>
&gt; constant char [] c;<br>
&gt; @@<br>
&gt;<br>
&gt; i =3D (\(kmalloc\|devm_kzalloc\|kmalloc_array\|<br>
&gt; devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\|<br>
&gt; kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|<br>
&gt;=C2=A0 =C2=A0 kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...))=
;<br>
&gt; (<br>
&gt; if (i =3D=3D NULL)<br>
&gt; {<br>
&gt; -print(...,c,...);<br>
&gt; ...when any<br>
&gt; }<br>
&gt; |<br>
&gt; if (!i)<br>
&gt; {<br>
&gt; -print(...,c,...);<br>
&gt; ...when any<br>
&gt; }<br>
&gt; )<br>
<br>
No need to change, but with the pattern i =3D=3D NULL, Coccinelle will matc=
h<br>
!i too.<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">=C2=A0 =C2=A0Shall I update the semantic patch ? Plz let me know...<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">=C2=A0Thank you</div><di=
v dir=3D"auto">Sanjana</div><div dir=3D"auto"><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">
<br>
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"mailto:sanjana99reddy9=
9@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.co=
m</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/greybus/hid.c | 1 -<br>
&gt;=C2=A0 1 file changed, 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/h=
id.c<br>
&gt; index 0b72e1b9d325..8ab810bf5716 100644<br>
&gt; --- a/drivers/staging/greybus/hid.c<br>
&gt; +++ b/drivers/staging/greybus/hid.c<br>
&gt; @@ -292,7 +292,6 @@ static int gb_hid_parse(struct hid_device *hid)<br=
>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rdesc =3D kzalloc(rsize, GFP_KERNEL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!rdesc) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dbg_hid(&quot;couldn&=
#39;t allocate rdesc memory\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<=
br>
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
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190331160402.27940-1-sanjana99reddy99%40=
gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/msgid/outreachy-kernel/20190331160402.27940-1-sanjana99reddy99%=
40gmail.com</a>.<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311833100.2578%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903311833100.2578%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--000000000000bf667a05856f2527--

