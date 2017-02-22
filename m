X-GM-THRID: 6389612389434654720
X-Received: by 10.25.18.219 with SMTP id 88mr138158lfs.11.1487736995304;
        Tue, 21 Feb 2017 20:16:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.56.76 with SMTP id d12ls955lfj.49.gmail; Tue, 21 Feb 2017
 20:16:34 -0800 (PST)
X-Received: by 10.46.9.81 with SMTP id 78mr3237322ljj.30.1487736994262;
        Tue, 21 Feb 2017 20:16:34 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id p185si56051wme.1.2017.02.21.20.16.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 20:16:34 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id p197so229854lfp.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 20:16:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=nQU4/xTwQ3nSRF7wgTK9pMZSiKh1lttwc4FWZA8hrQU=;
        b=CZog2woorfJhkik4PEvIapqxMEP0Dlv1eXWUOQvrRJvrWW3ILCwlAbWh8F+LgfFWBK
         gCqhgx0H06nWIyjlojw1Fww9Lwn5+5AU23sxFY378ahRy2zbtdNn+ibUuRqCz1gV1cfs
         IUJ89fs0+RHZRCQr69X1cnzEVJkdbD//8F2VoPFPQ/eJnxi/qoqW5ejeGzhQKIzVADaf
         5Gn9gUTfXufv4GYxtyQ5CvmBUhd8jPIdhJ55M0YTjMSy/PV/eddrsT4/F+RUvWiq5QF6
         Lx8LGFs+VBHN6eN00pOPTd2LebjfgLi4tChygrRhGQpd8dyPoZ3+VI88+8IVZNB1JdxF
         TEQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=nQU4/xTwQ3nSRF7wgTK9pMZSiKh1lttwc4FWZA8hrQU=;
        b=pTkO7e8k1l/jqc5aNpvA1ql/6NHuZZ9o6a2lOxbpXC5q/ZrT+J+UkDfXpIdCytZ8PP
         RxkcjplQ0bQfta7a5yt4Q6M4XdVKZOIcSNXP5bOqy6jxguxrrzv963m4cAx+6SqpJ1of
         OFifvOHnzDNRP0brHQFWwfKdXv13kS0jLmO+U6+2o5bFh/fhItREPDq1rBw+Ll7XNXn5
         OWuqsyooKfqTk4GivU/rqsJv3301zeY3LYwK7M4B5iCCI/bXLagEUEBNkGkXIOsl5HkE
         emsSm/6n6TOqXrYwkxUVXXhnkZP4jhW+Efyd3Tyj/f6HheTJ1k0enk5nmIqh7qkcsk8p
         v/RQ==
X-Gm-Message-State: AMke39nf8SwDo3qDOBQih5r9Ha0HPV4+mB4WUaha+m2tSooYEqPbJWE66zVKIBNX0MeuKHS6gqx6B5hKzJRtsw==
X-Received: by 10.46.87.70 with SMTP id r6mr94417ljd.108.1487736993961; Tue,
 21 Feb 2017 20:16:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.142 with HTTP; Tue, 21 Feb 2017 20:16:33 -0800 (PST)
In-Reply-To: <1487702533.2853.23.camel@perches.com>
References: <20170221171920.GA18917@arushi-HP-Pavilion-Notebook>
 <alpine.DEB.2.20.1702211840010.3448@hadrien> <1487702533.2853.23.camel@perches.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Wed, 22 Feb 2017 09:46:33 +0530
Message-ID: <CA+XqjF-bsKnXFkFN_SGToYTvMdWHX_CCas_BvdtT9UOb04hkCQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: correct the multiple
 line dereference to fix coding stye errors
To: Joe Perches <joe@perches.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, arnaud.patard@rtp-net.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=f403045f89100b644e054916c317

--f403045f89100b644e054916c317
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 22, 2017 at 12:12 AM, Joe Perches <joe@perches.com> wrote:

> On Tue, 2017-02-21 at 18:40 +0100, Julia Lawall wrote:
> >
> > On Tue, 21 Feb 2017, Arushi Singhal wrote:
> >
> > > Error was reported by checkpatch.pl as
> > > WARNING: Avoid multiple line dereference...
> > > if there is boolean operator then it is fixed by Splitting line at
> > > boolean operator.
> >
> > This is massively execeeding the 80 character boundary, and not for
> > something trivial like a string.  Maybe the code can be reorganized in
> > some other way.
>
> The easiest way to do that is to change the test above it
> to reduce indentation from
>
>         if (xgifb_info->display2 == XGIFB_DISP_TV &&
>             xgifb_info->hasVB == HASVB_301) {
>                 [code...];
>         }
> }
>
> to
>
>         if (xgifb_info->display2 != XGIFB_DISP_TV ||
>             xgifb_in
> fo->hasVB != HASVB_301)
>                 return;
>
>         [code...];
> }
>
>
Hi
So basically you are saying that cut one word and put the other part of the
word in the next line.

Thanks
Arushi

--f403045f89100b644e054916c317
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Feb 22, 2017 at 12:12 AM, Joe Perches <span dir=3D"ltr">&lt;<a =
href=3D"mailto:joe@perches.com" target=3D"_blank">joe@perches.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Tue, 201=
7-02-21 at 18:40 +0100, Julia Lawall wrote:<br>
&gt;<br>
&gt; On Tue, 21 Feb 2017, Arushi Singhal wrote:<br>
&gt;<br>
&gt; &gt; Error was reported by <a href=3D"http://checkpatch.pl" rel=3D"nor=
eferrer" target=3D"_blank">checkpatch.pl</a> as<br>
&gt; &gt; WARNING: Avoid multiple line dereference...<br>
&gt; &gt; if there is boolean operator then it is fixed by Splitting line a=
t<br>
&gt; &gt; boolean operator.<br>
&gt;<br>
&gt; This is massively execeeding the 80 character boundary, and not for<br=
>
&gt; something trivial like a string.=C2=A0 Maybe the code can be reorganiz=
ed in<br>
&gt; some other way.<br>
<br>
</span>The easiest way to do that is to change the test above it<br>
to reduce indentation from<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (xgifb_info-&gt;display2 =3D=3D XGIFB_DISP_T=
V &amp;&amp;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0xgifb_info-&gt;hasVB =
=3D=3D HASVB_301) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [code...];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
}<br>
<br>
to<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (xgifb_info-&gt;display2 !=3D XGIFB_DISP_TV =
||<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0xgifb_in<br>
fo-&gt;hasVB !=3D HASVB_301)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [code...];<br>
}<br>
<br>
</blockquote></div><br></div><div class=3D"gmail_extra">Hi<br></div><div cl=
ass=3D"gmail_extra">So basically you are saying that cut one word and put t=
he other part of the word in the next line.<br><br></div><div class=3D"gmai=
l_extra">Thanks <br></div><div class=3D"gmail_extra">Arushi <br></div><div =
class=3D"gmail_extra"><br><br></div></div>

--f403045f89100b644e054916c317--

