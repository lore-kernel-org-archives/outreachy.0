X-GM-THRID: 6250067479758897152
X-Received: by 10.67.22.2 with SMTP id ho2mr44306150pad.19.1455211219274;
        Thu, 11 Feb 2016 09:20:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.181 with SMTP id d50ls658904qgd.51.gmail; Thu, 11 Feb
 2016 09:20:18 -0800 (PST)
X-Received: by 10.129.4.201 with SMTP id 192mr43250359ywe.15.1455211218545;
        Thu, 11 Feb 2016 09:20:18 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x22e.google.com (mail-ob0-x22e.google.com. [2607:f8b0:4003:c01::22e])
        by gmr-mx.google.com with ESMTPS id hy4si870728igb.2.2016.02.11.09.20.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:20:18 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) client-ip=2607:f8b0:4003:c01::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22e.google.com with SMTP id is5so82985141obc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 09:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=buLIar0vOLiFC41E66mAlIEQSCNClPE22nvksM1rn+Q=;
        b=Ive21XFocNb5UtaUpiltxnKBNzFnLseveNHH0y37n76ZtMkfwtsGLw3SV5T7wJFcAq
         9furxYEqtBbnG6HqBOzs+Zi3sIVXEkye0YhGhzF9OQn9wJv7BarFfSfZR8k87eAu1hoi
         n73u4UcTEupe+aAig6Av/4dFpfZHfjc2Rujln27QLgxepx/cePp0REuAmXjxjzIfjPjz
         BTcXH4htqNHbKZFAjewOZOP9W6oP4BVZ+UvtNcQGxmO0AaoS0DY8b7betncgWRjPp0NZ
         3InDBnHoTYYYf2gOfZTLreEY3P4tfelsDng7tlG2HZCCW7wJAp1qrrJJc1MV7VBHJXhj
         l+bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=buLIar0vOLiFC41E66mAlIEQSCNClPE22nvksM1rn+Q=;
        b=jRAUy5CxZGigYmf8arJobpIwJH6y1X6aupZoIVbDzwazij03D9Mi0KKjoXqC1xspaU
         99WivMjB/hFTrcKeg0nh5hgT1u74BI9BznU8APV+eDKxEW5LjOGCWDmGTooLIK/TVzF1
         eARJJRglVv+H1VcSxld3HE5tGpDFAm/pEmCyE8T/7w8Q3qm8Th7owbu9apXtLUA90vPO
         7bbx7FgZcgUlDLn3+a/y5UP5fHrpDS1L79fgeGZnMM5RUt4QxiY78FGn4FjtT4HNpn4a
         0QrgvQ0jcQ1vJHLgixrrMV+kfqg3M/p/43+0ijDqFk1VNPJ8MdruWtiyiTErdVuY/tDW
         MHHw==
X-Gm-Message-State: AG10YOQ/yoBgbpZPvk6kMzBd+oaNqUxnS1Jl5FnTgfsv/H+Fyv7SAKKadUs56O5DyROP2nqzU5n+jzi5GcRSng==
MIME-Version: 1.0
X-Received: by 10.182.114.167 with SMTP id jh7mr46634428obb.70.1455211217970;
 Thu, 11 Feb 2016 09:20:17 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Thu, 11 Feb 2016 09:20:17 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602111813400.2517@hadrien>
References: <20160211211314.GA4118@janani-Inspiron-3521>
	<alpine.DEB.2.10.1602111813400.2517@hadrien>
Date: Thu, 11 Feb 2016 12:20:17 -0500
Message-ID: <CANnt6XnG2zcWRYqu=R05ttSzb54tuePPqEaZAV4Z_Kc0bvTtag@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Remove unneeded
 parentheses on the right hand side of assignment
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11c2e2e6b872d4052b81c3f7

--001a11c2e2e6b872d4052b81c3f7
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 11, 2016 at 12:14 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 11 Feb 2016, Janani Ravichandran wrote:
>
> > Remove parentheses around the right hand side of assignments as they are
> > not needed. Semantic patch used:
> >
> > @@
> > expression a, b, c;
> > @@
> >
> > (
> >   a = (b == c)
> > |
> >   a =
> > - (
> >   b
> > - )
> > )
> >
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> >  drivers/staging/unisys/visorinput/visorinput.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/unisys/visorinput/visorinput.c
> b/drivers/staging/unisys/visorinput/visorinput.c
> > index 38d4d5b..b85dc21 100644
> > --- a/drivers/staging/unisys/visorinput/visorinput.c
> > +++ b/drivers/staging/unisys/visorinput/visorinput.c
> > @@ -468,7 +468,7 @@ handle_locking_key(struct input_dev *visorinput_dev,
> >               break;
> >       }
> >       if (led >= 0) {
> > -             int old_state = (test_bit(led, visorinput_dev->led) != 0);
> > +             int old_state = test_bit(led, visorinput_dev->led) != 0;
>
> Maybe the parentheses are kind of nice in this case, due to the = on the
> right hand side.
>
> You're right. I'll leave them as they are.

Janani.

> julia
>
> >
> >               if (old_state != desired_state) {
> >                       input_report_key(visorinput_dev, keycode, 1);
> > --
> > 2.5.0
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160211211314.GA4118%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a11c2e2e6b872d4052b81c3f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Feb 11, 2016 at 12:14 PM, Julia Lawall <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.f=
r</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOE=
nZb"><div class=3D"h5"><br>
<br>
On Thu, 11 Feb 2016, Janani Ravichandran wrote:<br>
<br>
&gt; Remove parentheses around the right hand side of assignments as they a=
re<br>
&gt; not needed. Semantic patch used:<br>
&gt;<br>
&gt; @@<br>
&gt; expression a, b, c;<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt;=C2=A0 =C2=A0a =3D (b =3D=3D c)<br>
&gt; |<br>
&gt;=C2=A0 =C2=A0a =3D<br>
&gt; - (<br>
&gt;=C2=A0 =C2=A0b<br>
&gt; - )<br>
&gt; )<br>
&gt;<br>
&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchnd=
rn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/unisys/visorinput/visorinput.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/unisys/visorinput/visorinput.c b/drivers/=
staging/unisys/visorinput/visorinput.c<br>
&gt; index 38d4d5b..b85dc21 100644<br>
&gt; --- a/drivers/staging/unisys/visorinput/visorinput.c<br>
&gt; +++ b/drivers/staging/unisys/visorinput/visorinput.c<br>
&gt; @@ -468,7 +468,7 @@ handle_locking_key(struct input_dev *visorinput_de=
v,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (led &gt;=3D 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int old_state =3D (te=
st_bit(led, visorinput_dev-&gt;led) !=3D 0);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int old_state =3D tes=
t_bit(led, visorinput_dev-&gt;led) !=3D 0;<br>
<br>
</div></div>Maybe the parentheses are kind of nice in this case, due to the=
 =3D on the<br>
right hand side.<br>
<br></blockquote><div>You&#39;re right. I&#39;ll leave them as they are.<br=
><br></div><div>Janani. <br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (old_state !=
=3D desired_state) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0input_report_key(visorinput_dev, keycode, 1);<br>
&gt; --<br>
&gt; 2.5.0<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160211211314.GA4118%40janani-Inspiron-35=
21" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/=
outreachy-kernel/20160211211314.GA4118%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a11c2e2e6b872d4052b81c3f7--

