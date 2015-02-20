X-GM-THRID: 1055341412352
X-Received: by 10.152.4.229 with SMTP id n5mr1208302lan.1.1424432916497;
        Fri, 20 Feb 2015 03:48:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.167 with SMTP id b7ls81357wiy.41.canary; Fri, 20 Feb
 2015 03:48:36 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr1207816wjb.1.1424432916135;
        Fri, 20 Feb 2015 03:48:36 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-x235.google.com (mail-la0-x235.google.com. [2a00:1450:4010:c03::235])
        by gmr-mx.google.com with ESMTPS id xl7si2876223lbb.1.2015.02.20.03.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:48:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::235 as permitted sender) client-ip=2a00:1450:4010:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::235 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x235.google.com with SMTP id s18so5523536lam.11
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 03:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=jBOEzwMxuOQxKhpYN7m5o9wP3EQd6QMDXts1wKk9sSI=;
        b=WF6KCer7pSV/YD3esRfGUOULYz2z3ior7WF9J4zNiZ9dScEmRUzx3NSNUVdj42FArA
         132nCDZe9KKjkS92gwXzfD0yhmEZMNuVqJTHx3ayYSnliWZkMo6VaPG5aGoa8pLOaCvc
         psnlsfsdrTez+7gmzi1+1fGcFlwKz3Y3/na6rwvTY2tNqo4dL7CMCUYRTgB++5eVJh4B
         dLel215PowrP9MbsoqxR/NnhKBtphYjGTUWUmtG2M/oq8IfdIGboCE0QMsQU3gfZd1GJ
         N/AQd6R1XhuXF13eIGhWWq4u19Rk0bb9xLJwQqcdaAC9R150/eUMXRyXsFlwa0PbopgA
         Jb/g==
MIME-Version: 1.0
X-Received: by 10.152.87.3 with SMTP id t3mr8200533laz.19.1424432916013; Fri,
 20 Feb 2015 03:48:36 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Fri, 20 Feb 2015 03:48:35 -0800 (PST)
In-Reply-To: <54E71C73.7090007@gmail.com>
References: <1424385500-22022-1-git-send-email-ksenija.stanojevic@gmail.com>
	<54E71C73.7090007@gmail.com>
Date: Fri, 20 Feb 2015 12:48:35 +0100
Message-ID: <CAL7P5jL4WW9Hjj7PHnLT22Oy0RFd06gPpHW1gemp_ny5ZkZ8dA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Reposition of
 return statements
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c35576f72661050f83a1dc

--001a11c35576f72661050f83a1dc
Content-Type: text/plain; charset=UTF-8

Yes, I agree.

Also these two functions are different:

reg = phy_FwRFSerialRead(dev, eRFPath, reg_addr);

reg = rtl8192_phy_RFSerialRead(dev, eRFPath, reg_addr);



On Fri, Feb 20, 2015 at 12:37 PM, Jes Sorensen <jes.sorensen@gmail.com>
wrote:

> On 02/19/15 17:38, Ksenija Stanojevic wrote:
> > This patch fixes the checkpatch.pl warning:
> > WARNING: "else is not generally useful after a break or return"
> > by placing return reg after if-else branch.
> >
> > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/r819xU_phy.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/r819xU_phy.c
> b/drivers/staging/rtl8192u/r819xU_phy.c
> > index d006602..f343735 100644
> > --- a/drivers/staging/rtl8192u/r819xU_phy.c
> > +++ b/drivers/staging/rtl8192u/r819xU_phy.c
> > @@ -355,13 +355,12 @@ u32 rtl8192_phy_QueryRFReg(struct net_device *dev,
> RF90_RADIO_PATH_E eRFPath,
> >               bitshift =  rtl8192_CalculateBitShift(bitmask);
> >               reg = (reg & bitmask) >> bitshift;
> >               udelay(200);
> > -             return reg;
> >       } else {
> >               reg = rtl8192_phy_RFSerialRead(dev, eRFPath, reg_addr);
> >               bitshift =  rtl8192_CalculateBitShift(bitmask);
> >               reg = (reg & bitmask) >> bitshift;
> > -             return reg;
> >       }
> > +     return reg;
> >  }
> >
> >
> /******************************************************************************
> >
>
> In this case the automated commit message is actually a little unclear,
> at least to me. Explaining that you are simplifying the code by not
> having two identical paths would be better.
>
> You could take this patch further as most of the code is identical
> except for the udelay() in the first case.
>
> Cheers,
> Jes
>
>

--001a11c35576f72661050f83a1dc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"padding:0px;margin-top:0px;margin-bottom:0px=
;color:rgb(0,0,0);font-size:13.3333330154419px"><code>Yes, I agree.</code><=
/pre><pre style=3D"padding:0px;margin-top:0px;margin-bottom:0px;color:rgb(0=
,0,0);font-size:13.3333330154419px"><span style=3D"font-size:13.33333301544=
19px;font-family:arial,sans-serif">Also these two functions are different:<=
/span></pre><pre style=3D"padding:0px;margin-top:0px;margin-bottom:0px;colo=
r:rgb(0,0,0);font-size:13.3333330154419px"><code>reg <span class=3D"">=3D</=
span> <span class=3D"" style=3D"color:rgb(1,1,129)">phy_FwRFSerialRead</spa=
n><span class=3D"">(</span>dev<span class=3D"">,</span> eRFPath<span class=
=3D"">,</span> reg_addr<span class=3D"">);</span></code></pre><pre style=3D=
"padding:0px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);font-size:13=
.3333330154419px"><code><span class=3D""><pre style=3D"padding:0px;margin-t=
op:0px;margin-bottom:0px;font-size:13.3333330154419px"><code>reg <span clas=
s=3D"">=3D</span> <span class=3D"" style=3D"color:rgb(1,1,129)">rtl8192_phy=
_RFSerialRead</span><span class=3D"">(</span>dev<span class=3D"">,</span> e=
RFPath<span class=3D"">,</span> reg_addr<span class=3D"">);</span></code></=
pre><pre style=3D"padding:0px;margin-top:0px;margin-bottom:0px;font-size:13=
.3333330154419px"><code><span class=3D""><br></span></code></pre></span></c=
ode></pre></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Fri, Feb 20, 2015 at 12:37 PM, Jes Sorensen <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jes.sorensen@gmail.com" target=3D"_blank">jes.sorensen@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEn=
Zb"><div class=3D"h5">On 02/19/15 17:38, Ksenija Stanojevic wrote:<br>
&gt; This patch fixes the <a href=3D"http://checkpatch.pl" target=3D"_blank=
">checkpatch.pl</a> warning:<br>
&gt; WARNING: &quot;else is not generally useful after a break or return&qu=
ot;<br>
&gt; by placing return reg after if-else branch.<br>
&gt;<br>
&gt; Signed-off-by: Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanoj=
evic@gmail.com">ksenija.stanojevic@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8192u/r819xU_phy.c | 3 +--<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/r=
tl8192u/r819xU_phy.c<br>
&gt; index d006602..f343735 100644<br>
&gt; --- a/drivers/staging/rtl8192u/r819xU_phy.c<br>
&gt; +++ b/drivers/staging/rtl8192u/r819xU_phy.c<br>
&gt; @@ -355,13 +355,12 @@ u32 rtl8192_phy_QueryRFReg(struct net_device *de=
v, RF90_RADIO_PATH_E eRFPath,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bitshift =3D=C2=
=A0 rtl8192_CalculateBitShift(bitmask);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D (reg &am=
p; bitmask) &gt;&gt; bitshift;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0udelay(200);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return reg;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D rtl8192_=
phy_RFSerialRead(dev, eRFPath, reg_addr);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bitshift =3D=C2=
=A0 rtl8192_CalculateBitShift(bitmask);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D (reg &am=
p; bitmask) &gt;&gt; bitshift;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return reg;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return reg;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 /***************************************************************=
***************<br>
&gt;<br>
<br>
</div></div>In this case the automated commit message is actually a little =
unclear,<br>
at least to me. Explaining that you are simplifying the code by not<br>
having two identical paths would be better.<br>
<br>
You could take this patch further as most of the code is identical<br>
except for the udelay() in the first case.<br>
<br>
Cheers,<br>
Jes<br>
<br>
</blockquote></div><br></div>

--001a11c35576f72661050f83a1dc--

