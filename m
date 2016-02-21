X-GM-THRID: 6253767440848650240
X-Received: by 10.182.106.11 with SMTP id gq11mr1774337obb.45.1456069370645;
        Sun, 21 Feb 2016 07:42:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.117 with SMTP id e108ls1085210qge.77.gmail; Sun, 21 Feb
 2016 07:42:49 -0800 (PST)
X-Received: by 10.129.58.16 with SMTP id h16mr22088810ywa.56.1456069369856;
        Sun, 21 Feb 2016 07:42:49 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-oi0-x22d.google.com (mail-oi0-x22d.google.com. [2607:f8b0:4003:c06::22d])
        by gmr-mx.google.com with ESMTPS id ug8si1514008igb.3.2016.02.21.07.42.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 07:42:49 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c06::22d as permitted sender) client-ip=2607:f8b0:4003:c06::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c06::22d as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22d.google.com with SMTP id x21so40960770oix.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 07:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=mi5h/n+Arbpyx5uXJvtCBQn/VCASxpepf0y2vj+Q39I=;
        b=uvp4JTySwUN3cX1gcs9V9Jbp3VKPyCw2DObsxAzySrQanqEFt+52dGakKuu2s5qqcZ
         f6zl7o9VVn0DbkOrkk4OY0BrGumyjHr1+0TylTk8aaK1rPtZ+gR+h0psJLGRMuHwBWpH
         Z1UZsaXrbM2rVZdva1gREMr7aP7HusDByIGrw/dykZS50uiMyvFY2nEGfnZ0+Zvhp06K
         RfPIfTxI8+ReInIbGxG8w64m+G6S3Wb9x49qBKqmRbFCPDLbdbe9Gag7fFNytwSTXLEG
         bQWuATfkmkvmBYmnwL6tWTwdZEulET6exvxr63doJOesoeTbAMjx6lFIhbLDVJho6qBK
         u2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=mi5h/n+Arbpyx5uXJvtCBQn/VCASxpepf0y2vj+Q39I=;
        b=HQVyWKM1HfVd+qzGfpif2i8CAlnrSqIo3ojWWf+7OE/fd3Q3kbzUVl+skYEl7czQ94
         zHSxarwvjYn6clvP/Bz6cMl4KuBB7Ae/YAscxW602Eimh9XP3UXHUTK0IVRrk7dsjsEp
         5DiAJx6yurhzShREEzMRghk+46B81xsxfyEmOTx/QeC3v/Y5KsBu7XUE8O1ckM8t4fIg
         KK1ZkoKEb5XmRMAyunSmZDF5hsSfZdjySv5uLVptvsJURLU1R/8C9DXAr0QlN8Bg/MH5
         93vz+IMYXJlVPx+ycYPPFQFwwKOgki+Mp3dSVqxPjSkpHkqDmcki08cURwCQCnaaQYRt
         wEwQ==
X-Gm-Message-State: AG10YOSH9c0o1jwyHShfQ9knt8+8RHUrc1gzT+T/oT98t8TzofWcZrFooTGZG71gDyqRhFbS5nHiiQrJywPrVQ==
MIME-Version: 1.0
X-Received: by 10.202.93.8 with SMTP id r8mr18742526oib.111.1456069369549;
 Sun, 21 Feb 2016 07:42:49 -0800 (PST)
Received: by 10.202.200.211 with HTTP; Sun, 21 Feb 2016 07:42:49 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602211038071.4210@hadrien>
References: <20160221203050.GA30530@janani-Inspiron-3521>
	<alpine.DEB.2.10.1602211038071.4210@hadrien>
Date: Sun, 21 Feb 2016 10:42:49 -0500
Message-ID: <CANnt6XnVANqQsP-xxhd68uiAj5N1fFHaVukc0qz1Vmrz=mh2Eg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: slicoss: Eliminate commented
 out code
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113d469c8a5b17052c49911a

--001a113d469c8a5b17052c49911a
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 21, 2016 at 10:39 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Sun, 21 Feb 2016, Janani Ravichandran wrote:
>
> > Remove commented out code to reduce code clutter.
> >
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> >  drivers/staging/slicoss/slicoss.c | 17 +----------------
> >  1 file changed, 1 insertion(+), 16 deletions(-)
> >
> > diff --git a/drivers/staging/slicoss/slicoss.c
> b/drivers/staging/slicoss/slicoss.c
> > index a91c60a..59f829e 100644
> > --- a/drivers/staging/slicoss/slicoss.c
> > +++ b/drivers/staging/slicoss/slicoss.c
> > @@ -546,13 +546,6 @@ static int slic_card_download(struct adapter
> *adapter)
> >                       index += 4;
> >
> >                       /* Check SRAM location zero. If it is non-zero.
> Abort.*/
>
> Is the above comment needed?  It seems that the code that it describes is
> comented/removed.
>
Probably not. Will resend.

Janani.

>
> julia
>
> > -                  /*
> > -                   * failure = readl((u32 __iomem
> *)&slic_regs->slic_reset);
> > -                   * if (failure) {
> > -                   * release_firmware(fw);
> > -                   * return -EIO;
> > -                   * }
> > -                   */
> >               }
> >       }
> >       release_firmware(fw);
> > @@ -907,11 +900,6 @@ static void slic_upr_start(struct adapter *adapter)
> >  {
> >       struct slic_upr *upr;
> >       __iomem struct slic_regs *slic_regs = adapter->slic_regs;
> > -/*
> > - *  char * ptr1;
> > - *  char * ptr2;
> > - *  uint cmdoffset;
> > - */
> >       upr = adapter->upr_list;
> >       if (!upr)
> >               return;
> > @@ -2914,7 +2902,6 @@ static void slic_init_adapter(struct net_device
> *netdev,
> >       struct slic_handle *pslic_handle;
> >       struct adapter *adapter = netdev_priv(netdev);
> >
> > -/*   adapter->pcidev = pcidev;*/
> >       adapter->vendid = pci_tbl_entry->vendor;
> >       adapter->devid = pci_tbl_entry->device;
> >       adapter->subsysid = pci_tbl_entry->subdevice;
> > @@ -2923,9 +2910,8 @@ static void slic_init_adapter(struct net_device
> *netdev,
> >       adapter->functionnumber = (pcidev->devfn & 0x7);
> >       adapter->slic_regs = memaddr;
> >       adapter->irq = pcidev->irq;
> > -/*   adapter->netdev = netdev;*/
> >       adapter->chipid = chip_idx;
> > -     adapter->port = 0;      /*adapter->functionnumber;*/
> > +     adapter->port = 0;
> >       adapter->cardindex = adapter->port;
> >       spin_lock_init(&adapter->upr_lock);
> >       spin_lock_init(&adapter->bit64reglock);
> > @@ -3140,7 +3126,6 @@ static int slic_entry_probe(struct pci_dev *pcidev,
> >       mmio_start = pci_resource_start(pcidev, 0);
> >       mmio_len = pci_resource_len(pcidev, 0);
> >
> > -/*   memmapped_ioaddr =  (u32)ioremap_nocache(mmio_start, mmio_len);*/
> >       memmapped_ioaddr = ioremap(mmio_start, mmio_len);
> >       if (!memmapped_ioaddr) {
> >               dev_err(&pcidev->dev, "cannot remap MMIO region %lx @
> %lx\n",
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
> https://groups.google.com/d/msgid/outreachy-kernel/20160221203050.GA30530%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a113d469c8a5b17052c49911a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Feb 21, 2016 at 10:39 AM, Julia Lawall <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.f=
r</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
On Sun, 21 Feb 2016, Janani Ravichandran wrote:<br>
<br>
&gt; Remove commented out code to reduce code clutter.<br>
&gt;<br>
&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchnd=
rn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/slicoss/slicoss.c | 17 +----------------<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 16 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slico=
ss/slicoss.c<br>
&gt; index a91c60a..59f829e 100644<br>
&gt; --- a/drivers/staging/slicoss/slicoss.c<br>
&gt; +++ b/drivers/staging/slicoss/slicoss.c<br>
&gt; @@ -546,13 +546,6 @@ static int slic_card_download(struct adapter *ada=
pter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0index +=3D 4;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* Check SRAM location zero. If it is non-zero. Abort.*/<br>
<br>
</span>Is the above comment needed?=C2=A0 It seems that the code that it de=
scribes is<br>
comented/removed.<br></blockquote><div>Probably not. Will resend.=C2=A0</di=
v><div><br></div><div>Janani.</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
* failure =3D readl((u32 __iomem *)&amp;slic_regs-&gt;slic_reset);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
* if (failure) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
* release_firmware(fw);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
* return -EIO;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
* }<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0release_firmware(fw);<br>
&gt; @@ -907,11 +900,6 @@ static void slic_upr_start(struct adapter *adapte=
r)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct slic_upr *upr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__iomem struct slic_regs *slic_regs =3D adap=
ter-&gt;slic_regs;<br>
&gt; -/*<br>
&gt; - *=C2=A0 char * ptr1;<br>
&gt; - *=C2=A0 char * ptr2;<br>
&gt; - *=C2=A0 uint cmdoffset;<br>
&gt; - */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0upr =3D adapter-&gt;upr_list;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!upr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; @@ -2914,7 +2902,6 @@ static void slic_init_adapter(struct net_device =
*netdev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct slic_handle *pslic_handle;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct adapter *adapter =3D netdev_priv(netd=
ev);<br>
&gt;<br>
&gt; -/*=C2=A0 =C2=A0adapter-&gt;pcidev =3D pcidev;*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;vendid =3D pci_tbl_entry-&gt;ven=
dor;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;devid =3D pci_tbl_entry-&gt;devi=
ce;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;subsysid =3D pci_tbl_entry-&gt;s=
ubdevice;<br>
&gt; @@ -2923,9 +2910,8 @@ static void slic_init_adapter(struct net_device =
*netdev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;functionnumber =3D (pcidev-&gt;d=
evfn &amp; 0x7);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;slic_regs =3D memaddr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;irq =3D pcidev-&gt;irq;<br>
&gt; -/*=C2=A0 =C2=A0adapter-&gt;netdev =3D netdev;*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;chipid =3D chip_idx;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0adapter-&gt;port =3D 0;=C2=A0 =C2=A0 =C2=A0 /*ada=
pter-&gt;functionnumber;*/<br>
&gt; +=C2=A0 =C2=A0 =C2=A0adapter-&gt;port =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;cardindex =3D adapter-&gt;port;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_init(&amp;adapter-&gt;upr_lock);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_init(&amp;adapter-&gt;bit64reglock=
);<br>
&gt; @@ -3140,7 +3126,6 @@ static int slic_entry_probe(struct pci_dev *pcid=
ev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mmio_start =3D pci_resource_start(pcidev, 0)=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mmio_len =3D pci_resource_len(pcidev, 0);<br=
>
&gt;<br>
&gt; -/*=C2=A0 =C2=A0memmapped_ioaddr =3D=C2=A0 (u32)ioremap_nocache(mmio_s=
tart, mmio_len);*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memmapped_ioaddr =3D ioremap(mmio_start, mmi=
o_len);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!memmapped_ioaddr) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(&amp;pci=
dev-&gt;dev, &quot;cannot remap MMIO region %lx @ %lx\n&quot;,<br>
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
gle.com/d/msgid/outreachy-kernel/20160221203050.GA30530%40janani-Inspiron-3=
521" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/20160221203050.GA30530%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a113d469c8a5b17052c49911a--

