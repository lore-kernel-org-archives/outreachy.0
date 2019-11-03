X-GM-THRID: 6755114272133480448
X-Received: by 2002:ac8:3376:: with SMTP id u51mr9192818qta.248.1572801990021;
        Sun, 03 Nov 2019 09:26:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:58a4:: with SMTP id ea4ls1817924qvb.11.gmail; Sun, 03
 Nov 2019 09:26:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqxTNtUpIeRfDVNRHPa0idPbRrE/KpIFHRu3ZkO2eas0nXzZ9/g6LiapdsAYZoiUbX6Sr7ia
X-Received: by 2002:ad4:494b:: with SMTP id o11mr19540615qvy.82.1572801988704;
        Sun, 03 Nov 2019 09:26:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572801988; cv=none;
        d=google.com; s=arc-20160816;
        b=nriuFY2ULofIDEOYKSw4iSUL0X9OnnLeNzbtrkv6QhCW7L44r330mCWwlLKV5BR1Hr
         NiRE/7ww7b9WvBM6fuk2WF8D+2ENsAipvrWG/b6NQxSSlLnRVgtCpuwuDDKHm7TlaEcR
         s+bUOGXQQ7C+Fc6tMvZgkozbws5GcdTRQq2hJyW+9Mksg/PuJJKnQXvTdanvo2M9xX9M
         E3qZDwanznHUz1S05eLb6nFXjc1IuiedayL52XY+gS6eaT2tx6Vh1xx4j+6tiA87i+Z2
         vhstmOUbVOcsQacVgeb+Tr7qG+hIhXNaZQe51HOBgufHDA+eYRKTltA2gRsVpqKDMH0l
         ZK7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yeR0rc8eTe7u+Vev95G1ZEgTMwX6/Cr+N1k7VecI1/k=;
        b=e47f24fcBpDbPZmOwCLQvh+LPQLOxasmUj5Wegsqu6uqIjv5lVIWnJMZ2h/8ByH0UF
         n/Ws0n+UI+R8q6Et6o2hW+sXHnzwNm0MRr4zv3Cm0SZMDI2cEri/aUz7kxg3++Crkddm
         ueWD9hVNqmhh+8qmaQEYxEbvx2E4iKrNaMPkQkXk5VwM+q5Mervz5hvBQ+h9FZNYsvvy
         1RhDaHSYqqW1fCgVrgNPR3Nh5fyRug5753TU8E1YLDSgHSbJRp41gE3IzMvP/jAQzY5h
         LAt7EsHO+HKdYXJuMezmxMo9KctEsJkH7uQI/Zoal3aD1vwjgzihG/psyVm4KEBlNsMT
         Q1/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pO2LB3hD;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id z194si709897qka.5.2019.11.03.09.26.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 09:26:28 -0800 (PST)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pO2LB3hD;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id l5so9528186vsh.12
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 09:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yeR0rc8eTe7u+Vev95G1ZEgTMwX6/Cr+N1k7VecI1/k=;
        b=pO2LB3hDp1MsBKXmtvfDYv7NEMXEi94AZopg8dfAFtmF2fi2wo0thirvDoGjMjbVo3
         2Jo9xVxv2SemhfzPoineI5WQUmN423lQWiJHX6z51QaCRdMEPJablMBnGbSZxeasJ8+J
         lvvok0DQTIVMohHmAFRlLEfTRNcP+Xehw3bh8Z3o+ePTAkw6eB8e/Q6+I0/EG6ViQfsP
         /8dUEJzacfxve9+kuUPSeM9sSMjv/a8NUrfVR0W6gYs16EBanHuAsVLagz9fj0NdDa7d
         vH6nKnaDzsZZeXhmptPmYtmWJAdNhffgZ4PaKrqS8HwcRig3a97h1LS5JsAVdaZMZF1G
         1ipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yeR0rc8eTe7u+Vev95G1ZEgTMwX6/Cr+N1k7VecI1/k=;
        b=igx1A4AFBdyvZMPNWhSpUzObZXAZ1sT3qDTgC0zs83rPUSTi+F/MYrDvMTW7klaRPT
         TYmajkGrCaArF2lsrg5XJtDY907mcwssPQmgvGoSfzVcefu7yUO5/q4w2Ds8gJITtt9k
         00uuciTX545ka9opjWihcym3b/I4Mi0IqUY6cG+Y2cwucwGJJlSqSwu/q0EYmnh/eeHt
         DMR1yPqeuLEtUbO3XI9bST0sxwxUy1EkniwWultLXghS8P4DUE9goILCex9bdTkDGV+n
         Yt5HIGLcpxizKl3YidS/TklkeH018bQOCDianqyP0GOGvdp0Sn99+JJWewOHc/dbPbSD
         FwyQ==
X-Gm-Message-State: APjAAAXZmpT7VjcWTcuDrtDXGe5WdEoI46lJbZeiWhztxQu6XhY48oGh
	rspFYW3znh3kIBAGsLzP2nLTPgXt40IoiFYpkjqlWQ==
X-Received: by 2002:a67:304a:: with SMTP id w71mr10305179vsw.92.1572801988391;
 Sun, 03 Nov 2019 09:26:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
 <88ef5bcc4ed24721253636b8dfec74bfdea23039.1572797322.git.chime.evan.dri.devel@gmail.com>
 <20191103170703.GA686564@kroah.com>
In-Reply-To: <20191103170703.GA686564@kroah.com>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Sun, 3 Nov 2019 17:26:17 +0000
Message-ID: <CANR89jacvcBW8eRnWzHXO+Rcr3qSMi8COHiyJ2=q3oPRGmhMWw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] Staging: media: omap4iss: Add comment to memory barrier
To: Greg KH <gregkh@linuxfoundation.org>
Cc: laurent.pinchart@ideasonboard.com, mchehab@kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000d1f86f0596747fc1"

--000000000000d1f86f0596747fc1
Content-Type: text/plain; charset="UTF-8"

On Sun, 3 Nov 2019 at 17:07, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sun, Nov 03, 2019 at 04:14:31PM +0000, Evan Chime wrote:
> > Fix "WARNING: memory barrier without comment" from checkpath. Add comment
> > to memory barrier smp_wmb() on line 635
> >
> > Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> > ---
> >  drivers/staging/media/omap4iss/iss.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/omap4iss/iss.c
> b/drivers/staging/media/omap4iss/iss.c
> > index 1a966cb2f3a6..5156ad8e4b96 100644
> > --- a/drivers/staging/media/omap4iss/iss.c
> > +++ b/drivers/staging/media/omap4iss/iss.c
> > @@ -632,7 +632,7 @@ int omap4iss_module_sync_idle(struct media_entity
> *me, wait_queue_head_t *wait,
> >        * scenario. We'll call it here to avoid race conditions.
> >        */
> >       atomic_set(stopping, 1);
> > -     smp_wmb();
> > +     smp_wmb(); /* Prevents stores from being reordered across the
> barrier */
>
> We all know what smp_wmb() does, what you need to document is what
> exactly it is here for.  What is it preventing from happening to what
> data that is being touched elsewhere where?
>
> If you don't know the code, solving something like this might be very
> difficult, sorry.
>
> greg k-h


Thanks for your feedback Greg. I will have a look at the code

Kind regards
Evan



>

--000000000000d1f86f0596747fc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, 3 Nov 2019 at 17:07, Greg KH &lt;<a href=3D"mailto:=
gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">On Sun, Nov 03, 2019 at 04:14:31PM +0000=
, Evan Chime wrote:<br>
&gt; Fix &quot;WARNING: memory barrier without comment&quot; from checkpath=
. Add comment<br>
&gt; to memory barrier smp_wmb() on line 635<br>
&gt; <br>
&gt; Signed-off-by: Evan Chime &lt;<a href=3D"mailto:chime.evan.dri.devel@g=
mail.com" target=3D"_blank">chime.evan.dri.devel@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/media/omap4iss/iss.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/me=
dia/omap4iss/iss.c<br>
&gt; index 1a966cb2f3a6..5156ad8e4b96 100644<br>
&gt; --- a/drivers/staging/media/omap4iss/iss.c<br>
&gt; +++ b/drivers/staging/media/omap4iss/iss.c<br>
&gt; @@ -632,7 +632,7 @@ int omap4iss_module_sync_idle(struct media_entity =
*me, wait_queue_head_t *wait,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * scenario. We&#39;ll call it here to avoid=
 race conditions.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0atomic_set(stopping, 1);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0smp_wmb();<br>
&gt; +=C2=A0 =C2=A0 =C2=A0smp_wmb(); /* Prevents stores from being reordere=
d across the barrier */<br>
<br>
We all know what smp_wmb() does, what you need to document is what<br>
exactly it is here for.=C2=A0 What is it preventing from happening to what<=
br>
data that is being touched elsewhere where?<br>
<br>
If you don&#39;t know the code, solving something like this might be very<b=
r>
difficult, sorry.<br>
<br>
greg k-h</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks f=
or your feedback Greg. I will have a look at the code=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Kind regards=C2=A0</div><div dir=3D"a=
uto">Evan=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><br>
</blockquote></div></div>

--000000000000d1f86f0596747fc1--

