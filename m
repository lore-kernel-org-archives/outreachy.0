X-GM-THRID: 6264136808663089152
X-Received: by 10.182.250.201 with SMTP id ze9mr20370711obc.0.1458489527055;
        Sun, 20 Mar 2016 08:58:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.132 with SMTP id f4ls1533496obe.75.gmail; Sun, 20 Mar
 2016 08:58:46 -0700 (PDT)
X-Received: by 10.182.199.70 with SMTP id ji6mr19261454obc.32.1458489526658;
        Sun, 20 Mar 2016 08:58:46 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-ob0-x243.google.com (mail-ob0-x243.google.com. [2607:f8b0:4003:c01::243])
        by gmr-mx.google.com with ESMTPS id p10si7242732igh.1.2016.03.20.08.58.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 08:58:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::243 as permitted sender) client-ip=2607:f8b0:4003:c01::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x243.google.com with SMTP id e7so12606848obv.2
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 08:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:cc;
        bh=UyNGnwVUZtPXWKkAxn+764mSWxJfjSLlsIHr0zTVWlY=;
        b=sQ/r2+G34t8tg0venkhXEbaESV3REkjZzpEnXMSCDcUXWr3II4eL/NVR6On7cY3EB0
         rndCBiZy9AlK0PzJ6bkgttxTXOO1bIwi1LCK8tucaBtdTih8fbfbqXcE68uml0DhEbV/
         S/KUIL8nAIuQlh1AkjzMRkPF6E4ODNdjZPs7i4Jev7pQVfuzOSDFA7ONJt+AneXq68La
         /PPFg+9jyAGEd1leRiWP+A/8LZwwS4Lj4NAxfBDpFOok2ZF7472F4RkwEbzlV89I0abX
         JM9BcD3J+dvDIu4cgkKRSSMab74x0mRQHKhZhBz0WF4+7awjOPv1LpeBlo1mSb6wfzLb
         QHNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to:cc;
        bh=UyNGnwVUZtPXWKkAxn+764mSWxJfjSLlsIHr0zTVWlY=;
        b=XNZrUblgdos1EPLQKkg/0Buku2lPH6ItwfhcYAUzhwh8Z2lr5R2ZEPmWEw1ZrgfDMR
         NBKPg6FQRfd6nWLB/+aR/7bcEvlSG4WwaajSKF/s56lytdCMz6Zjkur8AAg+HXvW5BJY
         NRIhhq7uCWZcPal/fgElXT70oM+iR/GUKJGKK/EVbzm+E6MAdjPKSE34jQrUsCHchm66
         mbDI7/QWw2Z72z6HGJzK4WP3n13LgpUwQYnTlY45SdtwIyp49cF2f2QYs5zeyrgXxohO
         XE6cPOA6X+JrG+s0WoKS1G5db32DO7tVWEhM4deCBl35bFEwACGF60DB+kdD4sfe4OOL
         Gt5Q==
X-Gm-Message-State: AD7BkJL/3b+WjRs9JsgdVG71jC57JBr0FcjW5+tzOVCQwOvxC1HtXIFwB0TuRbZWy3BWfwwWAHOQ2DbcF6A17A==
MIME-Version: 1.0
X-Received: by 10.60.116.35 with SMTP id jt3mr16223435oeb.79.1458489526364;
 Sun, 20 Mar 2016 08:58:46 -0700 (PDT)
Received: by 10.157.63.101 with HTTP; Sun, 20 Mar 2016 08:58:46 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.10.1603201650080.2597@hadrien>
References: <cover.1458454678.git.bankarsandhya512@gmail.com>
	<ed2d6f01c194ec9700dcec61409dc30e892136ad.1458454678.git.bankarsandhya512@gmail.com>
	<alpine.DEB.2.10.1603201530520.2597@hadrien>
	<CAA3ASzk+Q7sywUpFqU6KekhHyGRZCAz63osZTGbJ5P+xYs2ifA@mail.gmail.com>
	<alpine.DEB.2.10.1603201633370.2597@hadrien>
	<CAA3ASz=HvgoiHJ4ksKN52DRTZx=WZMKQAYOSjPp0M-yPE0e_Qw@mail.gmail.com>
	<alpine.DEB.2.10.1603201650080.2597@hadrien>
Date: Sun, 20 Mar 2016 21:28:46 +0530
Message-ID: <CAA3ASz=ikYRNqukru+-3DPRJuf+zuEN6DNWmitJVE0y8oEBY1Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: lustre: o2iblnd: Correct
 the argument of sizeof().
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0117704920b2d8052e7d0eff

--089e0117704920b2d8052e7d0eff
Content-Type: text/plain; charset=UTF-8

Thanks..!! I got it.I will send patch v2.

On Sun, Mar 20, 2016 at 9:21 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 20 Mar 2016, sandhya bankar wrote:
>
> > To prepare this patch i have used following cocci file.
> > Description mentioned below:
> >
> > @disable sizeof_type_expr@
> > type T;
> > T **x;
> > @@
> >
> >   x =
> >   <+...sizeof(
> > - T
> > + *x
> >   )...+>
> >
> > whose description is as below:
> >
> > badty/badty.cocci -  Correct the size argument to kzalloc
> >
> >     obj has type struct snmp_object **, not struct snmp_object *.  But
> > indeed
> >     it is not even clear why kmalloc is needed.  The memory is freed by
> the
> > end
> >     of the function, so the local variable of pointer type should be
> > sufficient.
> >
> > that's why i have used "Correct" word in heading.
> > Please let me know if patch v2 is required with different heading?
>
> You need to understand what the semantic patch is doing, and explain what
> the transformed code does and why it is wrong.  I guess that this
> semantic patch comes from coccinellery.  The descriptions there are
> autogenerated from a patch that uses the given semantic patch.  In this
> case, the coccinellery description is not useful.
>
> julia

--089e0117704920b2d8052e7d0eff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks..!! I got it.I will send patch v2.<br></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Mar 20, 2016 at =
9:21 PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@=
lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><span class=3D""><br>
<br>
On Sun, 20 Mar 2016, sandhya bankar wrote:<br>
<br>
</span><span class=3D"">&gt; To prepare this patch i have used following co=
cci file.<br>
&gt; Description mentioned below:<br>
&gt;<br>
&gt; @disable sizeof_type_expr@<br>
&gt; type T;<br>
&gt; T **x;<br>
&gt; @@<br>
&gt;<br>
&gt; =C2=A0 x =3D<br>
&gt; =C2=A0 &lt;+...sizeof(<br>
&gt; - T=C2=A0<br>
&gt; + *x<br>
&gt; =C2=A0 )...+&gt;<br>
&gt;<br>
&gt; whose description is as below:<br>
&gt; =C2=A0<br>
&gt; badty/badty.cocci -=C2=A0 Correct the size argument to kzalloc<br>
&gt;<br>
&gt; =C2=A0=C2=A0=C2=A0 obj has type struct snmp_object **, not struct snmp=
_object *.=C2=A0 But<br>
&gt; indeed<br>
&gt; =C2=A0=C2=A0=C2=A0 it is not even clear why kmalloc is needed.=C2=A0 T=
he memory is freed by the<br>
&gt; end<br>
&gt; =C2=A0=C2=A0=C2=A0 of the function, so the local variable of pointer t=
ype should be<br>
&gt; sufficient.<br>
&gt;<br>
&gt; that&#39;s why i have used &quot;Correct&quot; word in heading.<br>
&gt; Please let me know if patch v2 is required with different heading?<br>
<br>
</span>You need to understand what the semantic patch is doing, and explain=
 what<br>
the transformed code does and why it is wrong.=C2=A0 I guess that this<br>
semantic patch comes from coccinellery.=C2=A0 The descriptions there are<br=
>
autogenerated from a patch that uses the given semantic patch.=C2=A0 In thi=
s<br>
case, the coccinellery description is not useful.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
julia</font></span></blockquote></div><br></div>

--089e0117704920b2d8052e7d0eff--

