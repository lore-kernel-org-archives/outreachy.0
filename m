X-GM-THRID: 6342317350126092288
X-Received: by 10.237.59.26 with SMTP id p26mr6177431qte.89.1476690506482;
        Mon, 17 Oct 2016 00:48:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.169 with SMTP id 38ls13060053otx.46.gmail; Mon, 17 Oct
 2016 00:48:25 -0700 (PDT)
X-Received: by 10.13.232.71 with SMTP id r68mr6427585ywe.82.1476690505960;
        Mon, 17 Oct 2016 00:48:25 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id p131si4810450vkf.1.2016.10.17.00.48.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 00:48:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id 83so6410816vkd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 00:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=6zN+sx8yvSY9xcsMaSv3TsboFKGrsokBBtPb5biTXko=;
        b=i4X6YRGQHAm1bnn5YvUGUKDgc2cHebbjKDEIKXCQr2P90B/BCd7PzGrrCVIGfRJMw0
         fExMBgYjqqu91k6rJnPgiKOv2TF/OL+qERYV03iLIfUQqBchEmvsJx4SCEM3Ciuymgpt
         xKBET9ieS0jcMaWvQmztCMIYWVy88AyTAVf3qeOoiPnBZp6jhtAQFM7IcIYZhFuFmMOU
         hDa/Y9jgt/N6M7HrbIi/JZrNN1qL/TfHoQ6QmJau0akXDWHvhpMFWvHppUcxGlCOEA0L
         g36A46WGPY7jEVvwXd1szk6Q4DGDfCSd4vF8r1sX/Yan5peEMC9+BJUiJq4H6z6wj/c1
         9zOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=6zN+sx8yvSY9xcsMaSv3TsboFKGrsokBBtPb5biTXko=;
        b=kqYUYdnS2UGjmh9J3l+XHLHy0KWjGvn+Y8HsHhA0UsVfih40Z9ZYr6YlpKq2270Avv
         MMW6ceDBdVLo00CdFaazTVUTeWdomFax59rSNhzvqSlzjmHESwTimOuKV3Y+7afIbKne
         TJLY+sM8stFEko8czfa4dKi9dorNdiH2l0qfKI8kEvP3KL4Laa8/q47LUXzyTVfR1tbz
         ka7ryt447LOvSzicevbnMkH+qNtGFuRot3TuKys8/K7FnYl5OamoCoXIvYIQmwOY14yt
         86d6ELCtjUEptfpNTxf/O0edlTahy+VUdMlZFZ5BJLsWaDPJkL8fQtbuqxO6RTmGkJP6
         KS4Q==
X-Gm-Message-State: AA6/9RmnEJ9+X0yhlPYVNGhbZI/igbTXIPGntsVlwDko02H9yHcGwm2/oiL+BXbU1tAnvSofh01voPic/2Q6bg==
X-Received: by 10.31.16.231 with SMTP id 100mr16608195vkq.174.1476690505786;
 Mon, 17 Oct 2016 00:48:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.35.80 with HTTP; Mon, 17 Oct 2016 00:48:25 -0700 (PDT)
Received: by 10.103.35.80 with HTTP; Mon, 17 Oct 2016 00:48:25 -0700 (PDT)
In-Reply-To: <CANRJjP1tM-D53CpC2NjXa1-ho=P1XJ6kO43rV3VHcpcwnKXf3Q@mail.gmail.com>
References: <20161017063027.GA6200@domino-MS-16Y1> <20161017065902.GA24896@kroah.com>
 <CANRJjP1tM-D53CpC2NjXa1-ho=P1XJ6kO43rV3VHcpcwnKXf3Q@mail.gmail.com>
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
Date: Mon, 17 Oct 2016 10:48:25 +0300
Message-ID: <CANRJjP0j8T1NAXPXo+D3kQ2ARn8Teue+u3V265cR5Y0Y0rK3sg@mail.gmail.com>
Subject: Re: [PATCH] Staging: wilc1000: Replace the name of a variable
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a114363a00a6a66053f0acd89

--001a114363a00a6a66053f0acd89
Content-Type: text/plain; charset=UTF-8

On 17 Oct 2016 10:34, "Muraru Mihaela" <mihaela.muraru21@gmail.com> wrote:
>
> On 17 Oct 2016 09:58, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
wrote:
> >
> > On Mon, Oct 17, 2016 at 09:30:27AM +0300, Mihaela Muraru wrote:
> > > This patch replace the name '*Error' variable with 'err'.
> >
> > This says what you are doing, but I don't understand why you want to
> > replace a variable name like this.
>
Julia asked my  to replace it.
>
> > Also you have an odd extra space in your subject line :(
I will resend it later, I don't have acces to my computer now.
> >
> > >
> > > Found and solve with Coccinelle:
> > > @r1@
> > > type s;
> > > identifier sn =~ "Error";
> > > identifier f;
> > > type p;
> > > expression c;
> > > @@
> > >
> > > f(...) {
> > >
> > > <...
> > > (
> > > -p sn = c;
> > > +p err = c;
> > > |
> > > -sn
> > > +err
> > > )
> > > ...>
> > > }
> > >
> > > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > > ---
> > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 138
+++++++++++-----------
> > >  1 file changed, 69 insertions(+), 69 deletions(-)
> > >
> > > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > index 483a6b6..8c47558 100644
> > > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > @@ -603,7 +603,7 @@ static int scan(struct wiphy *wiphy, struct
cfg80211_scan_request *request)
> > >  {
> > >       struct wilc_priv *priv;
> > >       u32 i;
> > > -     s32 s32Error = 0;
> > > +     s32 err = 0;
> >
> > Also, shouldn't this just be 'int'?
No.
I just modify the name, not the type.
>
> > thanks,
> >
> > greg k-h

--001a114363a00a6a66053f0acd89
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On 17 Oct 2016 10:34, &quot;Muraru Mihaela&quot; &lt;<a href=
=3D"mailto:mihaela.muraru21@gmail.com">mihaela.muraru21@gmail.com</a>&gt; w=
rote:<br>
&gt;<br>
&gt; On 17 Oct 2016 09:58, &quot;Greg Kroah-Hartman&quot; &lt;<a href=3D"ma=
ilto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<=
br>
&gt; &gt;<br>
&gt; &gt; On Mon, Oct 17, 2016 at 09:30:27AM +0300, Mihaela Muraru wrote:<b=
r>
&gt; &gt; &gt; This patch replace the name &#39;*Error&#39; variable with &=
#39;err&#39;.<br>
&gt; &gt;<br>
&gt; &gt; This says what you are doing, but I don&#39;t understand why you =
want to<br>
&gt; &gt; replace a variable name like this.<br>
&gt;<br>
 Julia asked my=C2=A0 to replace it.<br>
&gt;<br>
&gt; &gt; Also you have an odd extra space in your subject line :(<br>
 I will resend it later, I don&#39;t have acces to my computer now. <br>
&gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Found and solve with Coccinelle:<br>
&gt; &gt; &gt; @r1@<br>
&gt; &gt; &gt; type s;<br>
&gt; &gt; &gt; identifier sn =3D~ &quot;Error&quot;;<br>
&gt; &gt; &gt; identifier f;<br>
&gt; &gt; &gt; type p;<br>
&gt; &gt; &gt; expression c;<br>
&gt; &gt; &gt; @@<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; f(...) {<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &lt;...<br>
&gt; &gt; &gt; (<br>
&gt; &gt; &gt; -p sn =3D c;<br>
&gt; &gt; &gt; +p err =3D c;<br>
&gt; &gt; &gt; |<br>
&gt; &gt; &gt; -sn<br>
&gt; &gt; &gt; +err<br>
&gt; &gt; &gt; )<br>
&gt; &gt; &gt; ...&gt;<br>
&gt; &gt; &gt; }<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Mihaela Muraru &lt;<a href=3D"mailto:mihaela.=
muraru21@gmail.com">mihaela.muraru21@gmail.com</a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;=C2=A0 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 13=
8 +++++++++++-----------<br>
&gt; &gt; &gt;=C2=A0 1 file changed, 69 insertions(+), 69 deletions(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations=
.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c<br>
&gt; &gt; &gt; index 483a6b6..8c47558 100644<br>
&gt; &gt; &gt; --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c<br>
&gt; &gt; &gt; +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c<br>
&gt; &gt; &gt; @@ -603,7 +603,7 @@ static int scan(struct wiphy *wiphy, str=
uct cfg80211_scan_request *request)<br>
&gt; &gt; &gt;=C2=A0 {<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct wilc_priv *priv;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 i;<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0s32 s32Error =3D 0;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0s32 err =3D 0;<br>
&gt; &gt;<br>
&gt; &gt; Also, shouldn&#39;t this just be &#39;int&#39;?<br>
No.<br>
I just modify the name, not the type.<br>
&gt;<br>
&gt; &gt; thanks,<br>
&gt; &gt;<br>
&gt; &gt; greg k-h<br></p>

--001a114363a00a6a66053f0acd89--

