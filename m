X-GM-THRID: 6341446809847595008
X-Received: by 10.157.45.46 with SMTP id v43mr4298806ota.88.1476536964744;
        Sat, 15 Oct 2016 06:09:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.8 with SMTP id j8ls1210269ita.11.gmail; Sat, 15 Oct 2016
 06:09:20 -0700 (PDT)
X-Received: by 10.66.23.234 with SMTP id p10mr3839362paf.131.1476536960655;
        Sat, 15 Oct 2016 06:09:20 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id v187si178951ith.2.2016.10.15.06.09.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 06:09:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id 139so530547itm.2
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 06:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=7M3hqfxGH2k7m7E7Sc8kL5583IlTK8cuYmxOKWPBuFE=;
        b=0kjbGbpn4qWnr4eueT5Wcs77o7o3RDeCXZXdLUXV9PLawI2hivHkPC8w301cciLnQl
         mW4X+1uUbRSOci/MZaliMPp87GyYc38nLlndmIF4wniZ+Ber/HC0odsjMq/LAmV5uB7i
         c7FXLU5eTqbhlCBW9l2IKQQ7hf0IM316jqDEfW3X3l2KbzKACO5lJEI6CdyIDmN5hfQn
         4+4JjXqDZCfuW1lTBaLWixwXOmstxvgVA0dLL+Z3BKzt9nTjQWRC08wuUq7E6gmhFgQA
         L2tnjE7P+ENQwdEEouqdpfH9GZQwYWtuBW4kUwbFiJn+xu8R3h5EKwYu8qfwkRDgezMj
         JjOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=7M3hqfxGH2k7m7E7Sc8kL5583IlTK8cuYmxOKWPBuFE=;
        b=FbUQHZtgmzoBZ5kzWALhpE0CWZGIE91MB32Yq+MdyVDiHdydR18D2WBZSZphHy+XCB
         ytcvIgQdeyBoDsagfVWZAScD5pQ3ceKvDE40/kK8wyAutYhYguPbyb/genrcV2sR3nh6
         hP+lS+YsEbgzSOHbJgKJEdfUBXpxZoi6nZLi05pa9L385IE2Dl9W0dGZG1udzYaByvut
         xiZuga/sERDLu1sWE/nmfWaYCLAIfoV4qAfjUa30179EbulCV3FJF6uJGaiOzzB2/oeI
         BNaSCmHpa7Eb8IQ8GAzSpH6Ikn6duqSlwAkZg9MVFuzgDyMi6hjItm44Ywrjp143+bjU
         TeFg==
X-Gm-Message-State: AA6/9RkpTwhVnNOs8CWxr68BlG/vStdlZBpza8JfvNLhTnqjWlZ1TGLRfZ7/B/YoasyXbTza3cPNsXDgilSPDQ==
X-Received: by 10.36.5.69 with SMTP id 66mr1835448itl.11.1476536960471; Sat,
 15 Oct 2016 06:09:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.19.131 with HTTP; Sat, 15 Oct 2016 06:09:19 -0700 (PDT)
Received: by 10.36.19.131 with HTTP; Sat, 15 Oct 2016 06:09:19 -0700 (PDT)
In-Reply-To: <20161015112905.GC11674@kroah.com>
References: <20161008055753.GA24115@kheixx-VB> <20161015112905.GC11674@kroah.com>
From: keila novo <laurana5@gmail.com>
Date: Sat, 15 Oct 2016 15:09:19 +0200
Message-ID: <CACrt6MJ_rFuv3APG8+Gi-Wef3WhpT-RYv-bkMq0hNbEO8X7D=Q@mail.gmail.com>
Subject: Re: [PATCH] Checkpatch.pl error fixed:"Tabstop remove".
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Marc Dietrich <marvin24@gmx.de>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1143955806d98f053ee70dcd

--001a1143955806d98f053ee70dcd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

El 15 oct. 2016 13:28, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
escribi=C3=B3:
>
> On Sat, Oct 08, 2016 at 07:57:53AM +0200, Keila Novo wrote:
> > Checkpatch.pl error fixed:"No tabstop at the init
> > of the line"
> >
> > Signed-off-by: Keila Novo <laurana5@gmail.com>
> > ---
> >  drivers/staging/nvec/nvec_power.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/staging/nvec/nvec_power.c
b/drivers/staging/nvec/nvec_power.c
> > index b16c871..88e6c0e 100644
> > --- a/drivers/staging/nvec/nvec_power.c
> > +++ b/drivers/staging/nvec/nvec_power.c
> > @@ -441,7 +441,11 @@ static struct platform_driver nvec_power_driver =
=3D {
> >       .probe =3D nvec_power_probe,
> >       .remove =3D nvec_power_remove,
> >       .driver =3D {
> > +<<<<<<< HEAD
> >                .name =3D "nvec-power",
> > +=3D=3D=3D=3D=3D=3D=3D
> > +              .name =3D nvec_power,
> > +>>>>>>> 3dedeb1... Checkpatch.pl error fixed:"Tabstop
>
> I don't think you build the code with this patch applied :(

I checked with the checkpatch.pl when I fixed the error and it didn't show
any error.
What is my error now?Can you explain it please?

Thanks,

--001a1143955806d98f053ee70dcd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">El 15 oct. 2016 13:28, &quot;Greg Kroah-Hartman&quot; &lt;<a=
 href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&=
gt; escribi=C3=B3:<br>
&gt;<br>
&gt; On Sat, Oct 08, 2016 at 07:57:53AM +0200, Keila Novo wrote:<br>
&gt; &gt; Checkpatch.pl error fixed:&quot;No tabstop at the init<br>
&gt; &gt; of the line&quot;<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Keila Novo &lt;<a href=3D"mailto:laurana5@gmail.co=
m">laurana5@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 drivers/staging/nvec/nvec_power.c | 4 ++++<br>
&gt; &gt;=C2=A0 1 file changed, 4 insertions(+)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/staging/nvec/nvec_power.c b/drivers/staging/=
nvec/nvec_power.c<br>
&gt; &gt; index b16c871..88e6c0e 100644<br>
&gt; &gt; --- a/drivers/staging/nvec/nvec_power.c<br>
&gt; &gt; +++ b/drivers/staging/nvec/nvec_power.c<br>
&gt; &gt; @@ -441,7 +441,11 @@ static struct platform_driver nvec_power_dri=
ver =3D {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.probe =3D nvec_power_probe,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.remove =3D nvec_power_remove,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.driver =3D {<br>
&gt; &gt; +&lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .name =3D =
&quot;nvec-power&quot;,<br>
&gt; &gt; +=3D=3D=3D=3D=3D=3D=3D<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .name =3D nvec_=
power,<br>
&gt; &gt; +&gt;&gt;&gt;&gt;&gt;&gt;&gt; 3dedeb1... Checkpatch.pl error fixe=
d:&quot;Tabstop<br>
&gt;<br>
&gt; I don&#39;t think you build the code with this patch applied :(<br></p=
>
<p dir=3D"ltr">I checked with the <a href=3D"http://checkpatch.pl">checkpat=
ch.pl</a> when I fixed the error and it didn&#39;t show any error.<br>
What is my error now?Can you explain it please?</p>
<p dir=3D"ltr">Thanks,</p>

--001a1143955806d98f053ee70dcd--

