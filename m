X-GM-THRID: 6669371163637972992
X-Received: by 2002:a2e:c41:: with SMTP id o1mr693268ljd.19.1552838188209;
        Sun, 17 Mar 2019 08:56:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5bc5:: with SMTP id m66ls1733546lje.7.gmail; Sun, 17 Mar
 2019 08:56:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYdULjN4MfWX2NMo+RJTmeEe9R7FihiQkNGobM3K1Sw33lJnCnuK0U3P/7Uw44ddEYUbj7
X-Received: by 2002:a2e:253:: with SMTP id 80mr668850ljc.27.1552838187325;
        Sun, 17 Mar 2019 08:56:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552838187; cv=none;
        d=google.com; s=arc-20160816;
        b=MsWUJswRHIZ7f3tm3JHNbQD6HKTwbaobYyota/+tZkuCR/AxHNZG9pP/yaARuc4vno
         0s9y12oJsQoEJvukHKk/Eg0nZEOmyJUvWhBdZ8cj5Sok2h3vsAhr3qPjOpQwfeQU+ZsP
         8CVXpif03yoO2DoYQM+XR6OpzR4/+I9H0OjYX/IgrTF4a7nYbTHJRtDUBgTeun8VY3QU
         vxNP7zCIYMWuHkTXEQfV8vgsPBdM6D6eKe8Z9pZXZGlcRhHOi2qGK9bnODFxTqtcLeNU
         4lCTjZVS74k3eT05rCtDqFip7owXznYUvdBZrJ8eVWYlgifsGmiGZpF/i9SswucAEdsd
         fvgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/+m6wpwv2w8bDVp6TWuqpupiAGi/fc6WU/zrrJHEfPU=;
        b=GU6Yg0T29LRK6N3Rhxp9pRC3QT6pMtFs8bqGgqH/Qyq5MthFL2lI9yhcZZ2hcRLpVk
         i3FXVFGFrlWOTSRMYci404kmGlQ5qkYircsSEof2N38NHKica3Md0cDpdUshDK08r4mm
         8Dc26pnmGAxNqlVr2aJ4ShdGl3dkk63tfD6RUm62hhUn/2PQMnmuDW10cpCgwR+nRItn
         w+m3OpLiaNWAkP6MAivOrIVzttLrfFcf35Ld3Ko2izzXtqmlK08SdzMXqRoYLizZ25P5
         UamaCZXTOKZZO4fIvX3QW0aXpeV+GQsSagIBmTaV3MRcYxz5W8E2/pA4VzxtqqOaky3S
         +onw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GkxROiYz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id 19si200132lje.4.2019.03.17.08.56.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:56:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GkxROiYz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x236.google.com with SMTP id x9so7826360ljc.7
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 08:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/+m6wpwv2w8bDVp6TWuqpupiAGi/fc6WU/zrrJHEfPU=;
        b=GkxROiYza1ruzUXVmC1jU0I+bF36tw/6I+nd6nHF2DbjvjxBUC8yejCbxBAklugK0d
         VadJHteh2enQKt/GxfDgH8MoweHUHl7LrlNYOUmOFai2aPkAF3NDKBVxwQJ1+IUXuclv
         4mZgka4iFk0TsIwSfJhStwMRs6ej3/L9MPiw4T1E58DQS65u8B3TJGtjbmVjluNhlhPv
         J9OQdpbVg/+TwrBw03zrTxf+8cylprEeywUWx8VBLJy5UJOnD2c07eRssHYjXM918Opa
         aYH1TnLVB5E6cn9Mam+AllPEBTz5Tj3YsI2w2jbXKSAfO8nAGSVcGOQJ6PQvjLRZMRd1
         c+Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/+m6wpwv2w8bDVp6TWuqpupiAGi/fc6WU/zrrJHEfPU=;
        b=Jt8ZmCDSdp60DzBYWoqv7rPlNAtdA8P+h5/F27C05GPNSSvPOITvuZHS4E2OLH46r5
         GaMbb52nw6EQI8s4kFe0ahjTH/TD6SZ10JxTurE+Yg6YBGGEhXwujWFzlJHYCB6ymJbn
         PchtXAQ43/Bu/NNyLWrr3K8SIAcljSm3jRiliFKydXuPovy1W1mhpYzxzFpWd6UlQIs2
         S769tMolo+hLpUMFhLYExvBV92rNqoywsSXrt8FK1fqbAVUnHp3Iojyn4AYgYqCNPMB5
         KgLX1VD0KAoieb08czy8fog07BQbieckJZgIWEj7w/velz5oASoE9A0atVHp58Jxr3Pg
         fDYg==
X-Gm-Message-State: APjAAAVp+W8b8Mf1PJdWhJL3dbihNDSEv6wV6+ufmwriclPX3WsDNx70
	2dSCuqzLxMZlmglT8Ziogz6wut1eC8iiBAFHMs/qOQ==
X-Received: by 2002:a2e:91c8:: with SMTP id u8mr7951256ljg.185.1552838187197;
 Sun, 17 Mar 2019 08:56:27 -0700 (PDT)
MIME-Version: 1.0
References: <1552833963-14600-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <20190317153210.GD25814@kroah.com>
In-Reply-To: <20190317153210.GD25814@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 17 Mar 2019 21:26:15 +0530
Message-ID: <CANTOzWHUoUcCCXEKcGF3Wp99A0u=dQ0icQYwBt6YwGe3iSWCQA@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel]staging: greybus: dt compatible string
 "google,arche-platform" documented
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000008ab5ac05844c5010"

--0000000000008ab5ac05844c5010
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Okay .

Payal

On Sun, Mar 17, 2019, 9:02 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sun, Mar 17, 2019 at 08:16:03PM +0530, Payal Kshirsagar wrote:
> > DT compatible string =E2=80=98{ .compatible =3D "google,arche-platform"=
, }=E2=80=99
> > appears in drivers/staging/greybus/arche-platform.c file at line no. 62=
4
> > and 630 documented in file named as
> > ./Documentation/devicetree/bindings/vendor-prefixes.txt
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.txt
> b/Documentation/devicetree/bindings/vendor-prefixes.txt
> > index 62f0b03..110028b 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.txt
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
> > @@ -157,6 +157,7 @@ globalscale       Globalscale Technologies, Inc.
> >  globaltop    GlobalTop Technology, Inc.
> >  gmt  Global Mixed-mode Technology, Inc.
> >  goodix       Shenzhen Huiding Technology Co., Ltd.
> > +google,arche-platform
> >  google       Google, Inc.
>
> No this is not correct at all.
>
> Please read up on what device tree strings are and how they work if you
> wish to fix up stuff like this.
>
> Blindly trying to make checkpatch.pl not complain about things is not
> good.
>
> thanks,
>
> greg k-h
>

--0000000000008ab5ac05844c5010
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Okay .<div dir=3D"auto"><br></div><div dir=3D"auto">Payal=
=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, M=
ar 17, 2019, 9:02 PM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.o=
rg" target=3D"_blank" rel=3D"noreferrer">gregkh@linuxfoundation.org</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">On Sun, Mar 17, 2019 at 08:=
16:03PM +0530, Payal Kshirsagar wrote:<br>
&gt; DT compatible string =E2=80=98{ .compatible =3D &quot;google,arche-pla=
tform&quot;, }=E2=80=99<br>
&gt; appears in drivers/staging/greybus/arche-platform.c file at line no. 6=
24<br>
&gt; and 630 documented in file named as<br>
&gt; ./Documentation/devicetree/bindings/vendor-prefixes.txt<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">payal.s.ks=
hirsagar.98@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +<br>
&gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt; <br>
&gt; diff --git a/Documentation/devicetree/bindings/vendor-prefixes.txt b/D=
ocumentation/devicetree/bindings/vendor-prefixes.txt<br>
&gt; index 62f0b03..110028b 100644<br>
&gt; --- a/Documentation/devicetree/bindings/vendor-prefixes.txt<br>
&gt; +++ b/Documentation/devicetree/bindings/vendor-prefixes.txt<br>
&gt; @@ -157,6 +157,7 @@ globalscale=C2=A0 =C2=A0 =C2=A0 =C2=A0Globalscale =
Technologies, Inc.<br>
&gt;=C2=A0 globaltop=C2=A0 =C2=A0 GlobalTop Technology, Inc.<br>
&gt;=C2=A0 gmt=C2=A0 Global Mixed-mode Technology, Inc.<br>
&gt;=C2=A0 goodix=C2=A0 =C2=A0 =C2=A0 =C2=A0Shenzhen Huiding Technology Co.=
, Ltd.<br>
&gt; +google,arche-platform<br>
&gt;=C2=A0 google=C2=A0 =C2=A0 =C2=A0 =C2=A0Google, Inc.<br>
<br>
No this is not correct at all.<br>
<br>
Please read up on what device tree strings are and how they work if you<br>
wish to fix up stuff like this.<br>
<br>
Blindly trying to make <a href=3D"http://checkpatch.pl" rel=3D"noreferrer n=
oreferrer noreferrer" target=3D"_blank">checkpatch.pl</a> not complain abou=
t things is not<br>
good.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--0000000000008ab5ac05844c5010--

