X-GM-THRID: 6607095314902941696
X-Received: by 2002:aca:a850:: with SMTP id r77-v6mr2375031oie.42.1538595426018;
        Wed, 03 Oct 2018 12:37:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:eb81:: with SMTP id j123-v6ls1649068oih.4.gmail; Wed, 03
 Oct 2018 12:37:05 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60R4OkUhf3vBI7Q8JlyXWJeYUX8+olxfqbT/ekgwD/JRsiMI+tiL/1yEGx1a4sujs6dw4tT
X-Received: by 2002:aca:2813:: with SMTP id 19-v6mr2217680oix.49.1538595425339;
        Wed, 03 Oct 2018 12:37:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538595425; cv=none;
        d=google.com; s=arc-20160816;
        b=MoCoSrnaBjghNTyyA9j+e5jVNu/6L9uVpIFpFtDnxQ2+mohlvsjuMuJJx5Ye9PqnBa
         sCRiB83N8sS6o3TVc/Sd8Kp2ZM708BpXt82SK8bAiUoN5A1X68tfcxo39GcQGHO3fnVw
         H+qXPsM6dz3pGtarAIRVWg2kL1iu/nWBejOotpw/Bqb8q0FkvsNyIQkUmBpiCRq7/2es
         35mmD3YXOBjwd77pcwZN8MlxWxnt/Rc3879LXmBuhKD/OyVds2p5FMkbCx/keEbiRKjD
         Lt2xNCaGanr8AlX6rhgXgiHof4kf7989pPS6AHIB97+/hDtaCFha+2rhFianJzU1MAa9
         +l1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fglGcjcT2HyEusoCU2mbWyHrn+L7E91YtVBOFkkhCEY=;
        b=BbIp/JUvwG3qwEevbyPfxrAsNbKQaEw7nuS4khM7WrU3mA7WdqJ1T210/DyUUOnO4Z
         zKeLJvneFRcm/aXihgH57feJjwAEynArIiRWX1tVxUdKfSORMf4EqbxkXlDYOW15K1rJ
         kRXVi/QCRDo3xBDUdBSc0kepuKQI2PgvEukyS2DY+YvOeDogv4+SYKWo6ohbJMiqgXHz
         vz9qQ9W9XBePCE1/L5qfULJBdP1mEyNY7gmdAB4dbqPFZUJcDWqHCDuvkhCblkZCjHnC
         OjOWrtQvYTPnrw+XVtRxX1YrSF9q34ZP3DwgRmsMsv2NdFJPiGv+xpApwEm2Uf7NZ5d8
         Xisg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=btIJvg6S;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id v207-v6si132137oia.3.2018.10.03.12.37.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 12:37:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=btIJvg6S;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x335.google.com with SMTP id w67so6759277ota.7
        for <outreachy-kernel@googlegroups.com>; Wed, 03 Oct 2018 12:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fglGcjcT2HyEusoCU2mbWyHrn+L7E91YtVBOFkkhCEY=;
        b=btIJvg6SZRkgtgBpjGh1MSUfhHRSZ9UzSARvIYnvFneVHeb+y/jc6EAP1R07hyFbz9
         wmV127ka9bwoeji3hxk6K/f4s+RHaqn+GBRDs4iIbf1IJbp+UCVCKkjngX2ivjpBB79G
         TDZhS91rIiyKZG/213Lvxxg44V0tuveZ6+5zucyulhsEd0hYRhgmkN8WINPjP3ZxHc31
         Oz7DAhJnit1daGtnYjDjt/ONiMTw5Ky60gwvIqHS8L7vqhpGZQDnsuiiGWGB4+zdT8Cx
         +HPDW7hyYE9lNS+LEdWGj8ZlbE3vpWkLUsIfh+3W4EeYRVmpcWJLrE4t85zi7IuL+PkB
         Vs9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fglGcjcT2HyEusoCU2mbWyHrn+L7E91YtVBOFkkhCEY=;
        b=Z1Bj+M794cnm2dceUtWuq0s5Jy+/PMq1HLQVkMVySUz3wM8JWLUBfFQU40MuL3FQ/5
         /LbclGf4+sbvaDdHgWV0HPWl0XjejwhJfyrkOVvfdN7x8vW8zC8+w/Yl2yZ0lK1qsE0x
         R6HDrkgE77bGHrfBSDiPFeO17xhsysLP8qfYSXvORPSNMhiWU1q6UGUs6jzEzqun1GdQ
         7wNPX6JexeDDN6thuTIRrPNotFskEPN+0qzVbZ2n3locBNrvvFGaE3nBL66e7MTdR/AZ
         l97mVsY3czMqubwTiMM0ICZv1sdV0d24fMsmLZZeEcsmNosxQPRaENf4MVe7qd/NEH+P
         x5AQ==
X-Gm-Message-State: ABuFfogbH6HLVNk8XbeqdH1O2ctnew0xrfXV0z/0aIGUQ80I13CO3nMJ
	QqP1zB43Ycfwe19k4U0rlV8hpWbuqred55kfIRLlyGNlPLjDNA==
X-Received: by 2002:a9d:3ea4:: with SMTP id b33-v6mr1643295otc.267.1538595424994;
 Wed, 03 Oct 2018 12:37:04 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
 <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien> <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com>
 <20181002092816.GA7179@himanshu-Vostro-3559> <alpine.DEB.2.20.1810021138450.3520@hadrien>
 <CAJ1myNRF+1S=epCMJxUa1YrdPK4p80CiPn2FDdqw5mnwTq+mQA@mail.gmail.com> <alpine.DEB.2.21.1810032100040.2527@hadrien>
In-Reply-To: <alpine.DEB.2.21.1810032100040.2527@hadrien>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Wed, 3 Oct 2018 22:36:53 +0300
Message-ID: <CAJ1myNRTErSd_p5KdY6VvG9qu+e9R5QcAeJsfmO_aXkqL_SOxw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Himanshu Jha <himanshujha199640@gmail.com>, gregkh@linuxfoundation.org, 
	outreachy-kernel@googlegroups.com, hdegoede@redhat.com, john@phrozen.org
Content-Type: multipart/alternative; boundary="000000000000c28be5057758294a"

--000000000000c28be5057758294a
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 3, 2018 at 10:05 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 3 Oct 2018, Dafna Hirschfeld wrote:
>
> >
> >
> > On Wed, Oct 3, 2018 at 7:06 AM Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> >       > > Then in run "make menuconfig" again and under "Device
> >       Drivers -> staging
> >       > > drivers" I chose "MediaTek MT7621 PCI Controller"
> >       > > Hoping it will solve it , but it didn't.
> >       > >
> >       > > The files I prepared the patchset for did compile ok , is it
> >       important that
> >       > > all files will compile?
> >       >
> >       > I think for these changes just use that .config supplied by
> >       the distro
> >       > at /boot/config-*
> >       >
> >       > But IIRC `make allyesconfig` should be used(not sure though..)
> >
> >       Dafna,
> >
> >       It is important that the driver continues to compile.
> >
> > Hi,
> > Fixing the compilation error in drivers/staging/mt7621-pci/pci-mt7621.c
> is
> > not triveal,
> > It is not clear what type `port` and `tmp` should be.
>
> pcie has a type.  I think it is possible to figure it out from there.  YOu
> can also see how port is used, for confirmation.
>
> julia
>
> The code is:

list_for_each_entry_safe(port, tmp, &pcie->ports, list) {
                u32 slot = port->slot;
                val = read_config(pcie, slot, 0x70c);
                dev_info(dev, "Port %d N_FTS = %x\n", (unsigned int)val,
slot);
        }

where `pcie` is of type `struct mt7621_pcie*` and `pcie->ports` is `struct
list_head`
I guess `port` should be `struct mt7621_pcie_port` but this struct does not
have a `slot` member.

Dafna

> >
> > Dafna
> >
> >       Make allyesconfig is often a good option.
> >
> >       julia
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CAJ1myNRF%2B1S%3DepCMJxU
> > a1YrdPK4p80CiPn2FDdqw5mnwTq%2BmQA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--000000000000c28be5057758294a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Oct 3=
, 2018 at 10:05 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr"=
>julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><br>
<br>
On Wed, 3 Oct 2018, Dafna Hirschfeld wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Oct 3, 2018 at 7:06 AM Julia Lawall &lt;<a href=3D"mailto:juli=
a.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; Then in run &quot;make menuconfig&=
quot; again and under &quot;Device<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Drivers -&gt; staging<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; drivers&quot; I chose &quot;MediaT=
ek MT7621 PCI Controller&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; Hoping it will solve it , but it d=
idn&#39;t.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; The files I prepared the patchset =
for did compile ok , is it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0important that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; all files will compile?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I think for these changes just use that=
 .config supplied by<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the distro<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; at /boot/config-*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; But IIRC `make allyesconfig` should be =
used(not sure though..)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Dafna,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0It is important that the driver continues to=
 compile.<br>
&gt;<br>
&gt; Hi,<br>
&gt; Fixing the compilation error in=C2=A0drivers/staging/mt7621-pci/pci-mt=
7621.c is<br>
&gt; not triveal,<br>
&gt; It is not clear what type `port` and `tmp` should be.<br>
<br>
pcie has a type.=C2=A0 I think it is possible to figure it out from there.=
=C2=A0 YOu<br>
can also see how port is used, for confirmation.<br>
<br>
julia<br>
<br></blockquote><div>The code is:</div><div><br></div><div>list_for_each_e=
ntry_safe(port, tmp, &amp;pcie-&gt;ports, list) {</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 slot =3D port-&gt;slot;</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val =3D read_c=
onfig(pcie, slot, 0x70c);</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 dev_info(dev, &quot;Port %d N_FTS =3D %x\n&quot;, (unsign=
ed int)val, slot);</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }</div><div><br></=
div><div>where `pcie` is of type `struct mt7621_pcie*` and `pcie-&gt;ports`=
 is `struct list_head`</div><div>I guess `port` should be `struct mt7621_pc=
ie_port` but this struct does not have a `slot` member.</div><div><br></div=
><div>Dafna</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; =C2=A0<br>
&gt; Dafna<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Make allyesconfig is often a good option.<br=
>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<=
br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CAJ1myNRF%2B1S%3DepCMJxU" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/CAJ1m=
yNRF%2B1S%3DepCMJxU</a><br>
&gt; a1YrdPK4p80CiPn2FDdqw5mnwTq%2BmQA%<a href=3D"http://40mail.gmail.com" =
rel=3D"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
&gt;</blockquote></div></div></div></div></div></div>

--000000000000c28be5057758294a--

