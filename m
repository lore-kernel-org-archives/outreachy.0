X-GM-THRID: 6250932396840976384
X-Received: by 10.66.150.68 with SMTP id ug4mr11424081pab.33.1455462785969;
        Sun, 14 Feb 2016 07:13:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.158 with SMTP id 30ls1318551iop.100.gmail; Sun, 14 Feb
 2016 07:13:05 -0800 (PST)
X-Received: by 10.107.185.4 with SMTP id j4mr12854240iof.21.1455462785596;
        Sun, 14 Feb 2016 07:13:05 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x22a.google.com (mail-ob0-x22a.google.com. [2607:f8b0:4003:c01::22a])
        by gmr-mx.google.com with ESMTPS id kr4si920104igb.0.2016.02.14.07.13.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 07:13:05 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) client-ip=2607:f8b0:4003:c01::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22a.google.com with SMTP id is5so180642746obc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 07:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=3NlBSZ3xvzBVHMNTG7hg4P6kUwD48cUAKIFc6XBN6Tw=;
        b=LkOBPhyW6U8zBvResUqoiQFwl9NrVR9uxLp0fiylahFBBA/Zdag2r6uOABfmnGmgcF
         0QkU6wQSR+SeUgvI2c4YNVuvPULlwpn9ErQKTN60VVznw/3rUNWVPB9UELfx8dpfZUYC
         z2rIUx7NlJ5MlpxyEjUp53drGa3kZ376O/QF7pe/BqwNx9y3XJBWy5RNbR9+x4HhgD3q
         nYvvcV9AQR/phgCOVUg6rhcaWSB0lB2yNA+eGeU26mK+KaaQrGwfQ6R5q0eY5YbSQ/E0
         UBAVNbmHGICE6MP3Qr6AF6+e0oir9i/q03e/n8mvvkNR0MzDRlvL9gIgAxwWv4HqOCKF
         Hamw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=3NlBSZ3xvzBVHMNTG7hg4P6kUwD48cUAKIFc6XBN6Tw=;
        b=QLXUSH2oiWE/RkfamcV/aucKDkYO1vhXi8ud7UK2W9QIzB6ACvMAF+e7azJixCI0y+
         4NJFWe3BFGiEAlhsDi1uivkw/CvrmucfMYewMXBIo0MhpwVS77s+Je3z3sTsGyU4AlpR
         /jXb71xtNTjUp40IfEECb7HO7vf7jX8iQ3x+Mn04jwQlf7niKWurNw3y091yUZ63pq/2
         04LJvY6jwABLyQMdLGPffY410NdDN2nKyzfndm1xpq+swVtEv0muxyGeSORzw66Sqi6n
         CE+DO9dLwZOvli4TlXHtUzQhsYMvMLOPgQK9mc9/zmu83NNDNYgKc0kcrcdcIqk0k/q8
         JSKA==
X-Gm-Message-State: AG10YOT+3BBZQ4hnamltp9u0KeDS9OmoSS6blRJowuTWcgi10ER9TJ5PQJOUpEGcLwfm4Otkgftxk0ks2tqMeQ==
MIME-Version: 1.0
X-Received: by 10.202.170.212 with SMTP id t203mr7707812oie.92.1455462785377;
 Sun, 14 Feb 2016 07:13:05 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Sun, 14 Feb 2016 07:13:05 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602140806110.2039@localhost6.localdomain6>
References: <20160214051750.GA26350@janani-Inspiron-3521>
	<alpine.DEB.2.02.1602140806110.2039@localhost6.localdomain6>
Date: Sun, 14 Feb 2016 10:13:05 -0500
Message-ID: <CANnt6Xn2-YouvrWyL7bE_2j6o=NkGk3C0qJiV7vquy7tVqbgYg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wilc1000: Simplify code by
 eliminating else block
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113c356a4e7092052bbc5685

--001a113c356a4e7092052bbc5685
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 14, 2016 at 2:06 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
>
> You have added trailing whitespace here.
>

Sorry! V2 sent.

Janani.


> julia
>
> > +     *pu32RcvdAssocRespInfoLen = wid.size;
> >       return result;
> >  }
> >
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
> https://groups.google.com/d/msgid/outreachy-kernel/20160214051750.GA26350%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a113c356a4e7092052bbc5685
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Feb 14, 2016 at 2:06 AM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><=
br>
<br>
<br>
</span>You have added trailing whitespace here.<br></blockquote><div><br></=
div><div>Sorry! V2 sent.<br><br></div><div>Janani. <br></div><div><br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; +=C2=A0 =C2=A0 =C2=A0*pu32RcvdAssocRespInfoLen =3D wid.size;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return result;<br>
&gt;=C2=A0 }<br>
&gt;<br>
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
gle.com/d/msgid/outreachy-kernel/20160214051750.GA26350%40janani-Inspiron-3=
521" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/20160214051750.GA26350%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a113c356a4e7092052bbc5685--

