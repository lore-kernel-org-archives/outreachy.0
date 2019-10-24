X-GM-THRID: 6751148085003419648
X-Received: by 2002:aca:62d5:: with SMTP id w204mr3894752oib.136.1571910847470;
        Thu, 24 Oct 2019 02:54:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5f09:: with SMTP id f9ls1902802oti.13.gmail; Thu, 24 Oct
 2019 02:54:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz5VGw2uiMWIh8eUPhbm6mSjMFjAm6r1z69M2AVeBrkiDgPnRk0fAogV4PIcIXgDgNbVuiL
X-Received: by 2002:a9d:68c8:: with SMTP id i8mr11385572oto.92.1571910845922;
        Thu, 24 Oct 2019 02:54:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571910845; cv=none;
        d=google.com; s=arc-20160816;
        b=SYLKCIJSDggc/Xv1TCr1maYRpVOLc7yPiATEHhhKY0zB80Em2NHXgdjFiJN45eKg9L
         86jECGBG1Sp2CGBhKvfeOhFDFVZt8J2g1EUUw6bhZ+3DmwL9tT7Xiij5T5nWBBuFZilH
         DEGw9glaUeDy5otIlhbrCOhciM/JsVu1LiewJFiYwB4a3A8QJ7u6vsK3FGc2siLIq5Vi
         +iEUJZk78hfEBZlseG70z7HdfeostSQp2JMnvZyQWgKHHZrYPxqRrjOAF+Sk4yWLqbkD
         6N9tSvQxD2fk2PpHV5YMbPhXwNB3GwbxHo6wMq4W5tKl0bh/FndJ4dnTU3Lodvc0MHBZ
         hX4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2J91XerDm8Nq7YEXtGnSo7vj50YjknkFNs6M27KkCYQ=;
        b=B5+ODqhJO1hpmVztVhEEPya4KhZX+3sBi7sSG2qgegWpmGCEILYHAdlqUoAFgLiQ9e
         HhwkrtsdpIf4j0eog2QB4fPOGsK40LguaCRe3C40s1dlCMIbF/6gLDBj4IWAPMCIonOE
         3nt3uqr4pr9xFtZgk6Qk2MAQt5JHPQYTN0TPIdBzFkzHTMVYp1QtkMIMUh/9bliU1zLv
         p8ADDsCEYoUU56/wKGbN9HCxkWncDz70eKnXo/GWcbKJrKuGvy7HacP85rDBe6SwKznE
         CIaR+eTCgOMOtzyVwaezx8hFupntiKMGeF+eXOscGh3cnqa8PxUzfhqxWep1oNbQju5E
         1P5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A+iFqyWG;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id c6si9588oto.5.2019.10.24.02.54.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 02:54:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A+iFqyWG;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe42.google.com with SMTP id v10so15809712vsc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 02:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2J91XerDm8Nq7YEXtGnSo7vj50YjknkFNs6M27KkCYQ=;
        b=A+iFqyWGuZNgyFGUrWs3Tyw65pUva+30U1Lrh2527Th7P7GIKlNZYBg4VgdKA6+GDT
         n/xjGyj0TnLzloxi/t92VUg4BhpoR2WgTIEfNsYSED+56YFrtSckyowyvZ+zk6WDKcUc
         RBhnguZ77EslnJwyZYgyvQ2OPZfbN+1mR356kEoOJ8zYqGMDlwjA0xCTInLRKhm+7mbC
         4dNaToI3P0SbW4y5/ww8Y1B0m+waHfYhIYEF7Ev53+hW9jKmAnEzS6x4p1B8BrZHB2x2
         ChCtvYfAhmx0DiSBqDbpLv60GKEjXO+5a1rikeL8CN84GE25S49p0OL/0N5sALFdfVBE
         1X5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2J91XerDm8Nq7YEXtGnSo7vj50YjknkFNs6M27KkCYQ=;
        b=ghog7vJJ+3l6FPKbvyVFiqJOXoWdgE5DNkdA/HGGFoksiDgIoF48RIbDK1j6Txze/n
         T4MOsLfU5ltQOAyOzwQ+g3bpDImc84vCVhUPfB/Tv3NPoPzqtTG02u2RZf4tv6uFa2cb
         96yHEH2h4kXdDA7yTypzIRhhg3/YUvsg04eh7tmfK/bHvaDD/qijxVRLaRY9xUzckcEM
         2EFEzxHAuj6Xse3iglry8/iMprxe5dIb54trFrXI+EZN9YgFh2eR5Tx9FhSbyzAqoaaU
         Pz4phrDSJretiJpiXxZNKwWOQ263YTtrUxe5nlcqMB1HBradnNWXPfccyE/SFWCmTYf4
         HI1g==
X-Gm-Message-State: APjAAAUkKyvwJzR14hzGu+qH/efXsPv51Npv4Byu2iiOmaRXRrljI9b/
	MsSIKrLcsn7pXOSCEsy0g94VqZl2Px4dZGHF9m+5MjFC
X-Received: by 2002:a67:fb0c:: with SMTP id d12mr7912099vsr.201.1571910845419;
 Thu, 24 Oct 2019 02:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191023234230.GA4485@ik-ubuntu> <b4d518c4-602a-9db3-4370-e26dfb780637@mev.co.uk>
In-Reply-To: <b4d518c4-602a-9db3-4370-e26dfb780637@mev.co.uk>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Thu, 24 Oct 2019 10:53:54 +0100
Message-ID: <CANR89jYTpnXXZXBkmYwox-i+ZF_0bSWWCCTLOpjaYKJpXJkEZw@mail.gmail.com>
Subject: Re: [PATCH 1/7] Staging: comedi: Remove wrapper function declarartion
To: Ian Abbott <abbotti@mev.co.uk>
Cc: gregkh@linuxfoundation.org, hsweeten@visionengravers.com, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000008f57b50595a503fa"

--0000000000008f57b50595a503fa
Content-Type: text/plain; charset="UTF-8"

Hello Ian

Thanks for the reply. Got it

Kind Regards
Evan

On Thu, 24 Oct 2019 at 10:38, Ian Abbott <abbotti@mev.co.uk> wrote:

> On 24/10/2019 00:42, Evan Chime wrote:
> > Remove wrapper function "comedi_buf_map_get" declaration
> > as part of remove all wrappers in drivers/staging/comedi/TODO
> >
> > Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> > ---
> >   drivers/staging/comedi/comedi_internal.h | 1 -
> >   1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/staging/comedi/comedi_internal.h
> b/drivers/staging/comedi/comedi_internal.h
> > index 515f293a5d26..df3b1af109f7 100644
> > --- a/drivers/staging/comedi/comedi_internal.h
> > +++ b/drivers/staging/comedi/comedi_internal.h
> > @@ -28,7 +28,6 @@ int comedi_buf_alloc(struct comedi_device *dev, struct
> comedi_subdevice *s,
> >                    unsigned long new_size);
> >   void comedi_buf_reset(struct comedi_subdevice *s);
> >   bool comedi_buf_is_mmapped(struct comedi_subdevice *s);
> > -void comedi_buf_map_get(struct comedi_buf_map *bm);
> >   int comedi_buf_map_put(struct comedi_buf_map *bm);
> >   int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned long
> offset,
> >                         void *buf, int len, int write);
> >
>
> Sorry, I don't really see the point of this patch series.  For a start,
> the comedi_buf_map functions were added a long time after the TODO file
> was written.  I can't even remember what the "remove all wrappers" line
> in the TODO file is referring to.
>
> Besides that, as pointed out by Julia, the patches have been ordered in
> such a way as to break the build between the patches.
>
> --
> -=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
> -=( MEV Ltd. is a company registered in England & Wales. )=-
> -=( Registered number: 02862268.  Registered address:    )=-
> -=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
>

--0000000000008f57b50595a503fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hello=C2=A0Ian</div></div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Thanks for the reply. Got it</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Kind=C2=A0Regards</div><div dir=3D"auto">Evan=C2=
=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, 24 Oct 2019 at 10:38, Ian Abbott &lt;<a href=3D"mailto:abbo=
tti@mev.co.uk">abbotti@mev.co.uk</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On 24/10/2019 00:42, Evan Chime wrote:<br>
&gt; Remove wrapper function &quot;comedi_buf_map_get&quot; declaration<br>
&gt; as part of remove all wrappers in drivers/staging/comedi/TODO<br>
&gt; <br>
&gt; Signed-off-by: Evan Chime &lt;<a href=3D"mailto:chime.evan.dri.devel@g=
mail.com" target=3D"_blank">chime.evan.dri.devel@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/staging/comedi/comedi_internal.h | 1 -<br>
&gt;=C2=A0 =C2=A01 file changed, 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/comedi/comedi_internal.h b/drivers/stagin=
g/comedi/comedi_internal.h<br>
&gt; index 515f293a5d26..df3b1af109f7 100644<br>
&gt; --- a/drivers/staging/comedi/comedi_internal.h<br>
&gt; +++ b/drivers/staging/comedi/comedi_internal.h<br>
&gt; @@ -28,7 +28,6 @@ int comedi_buf_alloc(struct comedi_device *dev, stru=
ct comedi_subdevice *s,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u=
nsigned long new_size);<br>
&gt;=C2=A0 =C2=A0void comedi_buf_reset(struct comedi_subdevice *s);<br>
&gt;=C2=A0 =C2=A0bool comedi_buf_is_mmapped(struct comedi_subdevice *s);<br=
>
&gt; -void comedi_buf_map_get(struct comedi_buf_map *bm);<br>
&gt;=C2=A0 =C2=A0int comedi_buf_map_put(struct comedi_buf_map *bm);<br>
&gt;=C2=A0 =C2=A0int comedi_buf_map_access(struct comedi_buf_map *bm, unsig=
ned long offset,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0void *buf, int len, int write);<br>
&gt; <br>
<br>
Sorry, I don&#39;t really see the point of this patch series.=C2=A0 For a s=
tart, <br>
the comedi_buf_map functions were added a long time after the TODO file <br=
>
was written.=C2=A0 I can&#39;t even remember what the &quot;remove all wrap=
pers&quot; line <br>
in the TODO file is referring to.<br>
<br>
Besides that, as pointed out by Julia, the patches have been ordered in <br=
>
such a way as to break the build between the patches.<br>
<br>
-- <br>
-=3D( Ian Abbott &lt;<a href=3D"mailto:abbotti@mev.co.uk" target=3D"_blank"=
>abbotti@mev.co.uk</a>&gt; || Web: <a href=3D"http://www.mev.co.uk" rel=3D"=
noreferrer" target=3D"_blank">www.mev.co.uk</a> )=3D-<br>
-=3D( MEV Ltd. is a company registered in England &amp; Wales. )=3D-<br>
-=3D( Registered number: 02862268.=C2=A0 Registered address:=C2=A0 =C2=A0 )=
=3D-<br>
-=3D( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=3D-<br>
</blockquote></div></div>

--0000000000008f57b50595a503fa--

