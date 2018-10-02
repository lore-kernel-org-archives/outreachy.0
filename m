X-GM-THRID: 6607095314902941696
X-Received: by 2002:a67:ce0c:: with SMTP id s12-v6mr15729027vsl.42.1538494296130;
        Tue, 02 Oct 2018 08:31:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2601:: with SMTP id m1-v6ls1251019vkm.0.gmail; Tue, 02
 Oct 2018 08:31:35 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62IP7f2mdYl9Euddg24mkKU7RUAqgrIGmQg8TVGaGFJo8/HGyOu3y84VTND82dwGrA8RmTe
X-Received: by 2002:a1f:4110:: with SMTP id o16-v6mr1101561vka.1.1538494295503;
        Tue, 02 Oct 2018 08:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538494295; cv=none;
        d=google.com; s=arc-20160816;
        b=n6RxU8YGa6X48c3VJhPhZDYqw+OOdR/cwnMM/8AftJMPT71Ud8mciJJzlyAEc+wn3f
         TOt1bGtI0LV8Na+NYSWpz9kGOiIgTqWGtA+ze22+sr60+xv0ZGtsdqhQpXgNOitukgOm
         7+uhlF+btOMGB2q2f5wzWzE3QFzEJxhYjOUa/wLVVpdQFUfh7CG8xjU1yDNyHpuOxAW4
         AcUh7/vT6ENTyDM5iAvsEznSnGn09cdKI40jmFW1HoT+W6E78vpHywvyJdHRbdzMD7mR
         3JR52qEvUXFebuBM3M5ZTI2Y/y5Xhm+6y3LVeS6ItZkhauwH4ws4J/3ciaSkoyaq287+
         7x6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cQGhP6CoiyrdcHJ1R3GqWaBbzW4u6C6OrWBvWl5qUXo=;
        b=jSyT9O3FnsSNvDox568lAsKq27VLuwvNUFkCZnCsFnq5SdOge7NZMDOl9mxV/g3Nv0
         PmjhPnrGbVtXWuRbLoxiTQuvb3NMCRdyHGlOtF3mfhosGYu5OOpbKT11BJbHWMhNckMl
         KbL8w209d9KG5ExQBYGRXUS0yu87R5LFsAQj4pwXlf8ugaXPclSKvvZtYUPsDyFZV+5T
         OBq7bC2SR3RFsQsKbTtN4ggKap9i1aPmxGlmkP6KuK1UmlmnGNR70TXeOzvD/EDObfIo
         SVfRwzlBYcE/0u1+GNf8tcPRMZ4uOTw5ROrZjf5a0V9+OkYhSR8cf/mguz8rJe8c5rsq
         oskA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YMH9yUW4;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 73-v6si728432vkc.3.2018.10.02.08.31.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 08:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YMH9yUW4;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id u22so2271159ota.12
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Oct 2018 08:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cQGhP6CoiyrdcHJ1R3GqWaBbzW4u6C6OrWBvWl5qUXo=;
        b=YMH9yUW4pbr/wlIoT/PBSB96C9l9/wGInsSQrNm+fMpfRakxdSuPcZVCD73kgOs6cM
         FgJcxuqbSPgBmsFN7aJ5AjXfF1DMiXGMdmRW4jSEDVKW4atpIT95i6WyHS2ZScZibuxk
         Fcx6EEQiEWv0Gmp3hDgUUjuuMByoapvbfDkZ6LAKO7GL7MDmQDBo1XtMeU8FjXZcsEM7
         tDYDKbiVSifZ8SByUpJaWGZ7bczboI+pdCJmfZJYLeODB5IUH+ALnHhkO1fVl8XMJeDn
         6HSPP2BOJygqkTlp8uLeGYGFV53QIGW0EhbqGOMLNtXlUbXJeL04IEufL3+F9vZMa/P5
         sVsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cQGhP6CoiyrdcHJ1R3GqWaBbzW4u6C6OrWBvWl5qUXo=;
        b=hs3KrJEonIDZR6+bdzYTA9+XrpPhiBVe5dEav84NsiOYmTYdLdV742nRxmubdnKJWg
         EXMrRbTcRXlt1IHTwqFYjgYm6jmjy1SVO2XlBmz8cxaaoFGrP7elWp904VtOgmTax2mw
         0txi2awdgNNab7zao+bqqlycASoDtGSYci4OUXbeNm0zzijTWDgMlJAdcp0/pS9QwFL6
         kwO7VV2xnE5jf4wDcGPsYWJcHaGU79xHciN32VjMBYvQu8zLvqDViJhOp7vJVSZU9lF+
         rn8gFMhjmz/ZbruHYpgNsJnGQuoHFeJ6j3Fyk5PTXM5di6azXTL9U44yslvNuOHnMBdz
         kBsQ==
X-Gm-Message-State: ABuFfoii6A/kl050KnZJAeI8jJQ8oTiJfDb9lLEYaw/VqwimcfUPMBMK
	FlIJ8Tur+h88B6afUYisvY+jKjJtMKV/49Hm1PjvJVBXpKk=
X-Received: by 2002:a9d:3ea4:: with SMTP id b33-v6mr4824386otc.267.1538494294868;
 Tue, 02 Oct 2018 08:31:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
 <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien> <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com>
 <20181002092816.GA7179@himanshu-Vostro-3559>
In-Reply-To: <20181002092816.GA7179@himanshu-Vostro-3559>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Tue, 2 Oct 2018 18:31:22 +0300
Message-ID: <CAJ1myNQrZqex6nFfq9Uh1qYK94PVOE_mxUZf7wK0chDXtP74iQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
To: himanshujha199640@gmail.com
Cc: Julia Lawall <julia.lawall@lip6.fr>, gregkh@linuxfoundation.org, 
	outreachy-kernel@googlegroups.com, hdegoede@redhat.com
Content-Type: multipart/alternative; boundary="000000000000ef462c0577409df9"

--000000000000ef462c0577409df9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 2, 2018 at 12:28 PM Himanshu Jha <himanshujha199640@gmail.com>
wrote:

> Hi Dafna,
>
> On Tue, Oct 02, 2018 at 11:24:25AM +0300, Dafna Hirschfeld wrote:
> > Hi,
> > Apparently, the mt7621-mmc driver is for a specific SOC based on mips,
> > In order to compile it I installed mips compiler:
> >
> > sudo apt install gcc-mips-linux-gnu
> >
> > and set:
> > export CROSS_COMPILE=3Dmips-linux-gnu-
> > export ARCH=3Dmips
> >
> > Then I used an initial .config file
> > from arch/mips/configs/generic_defconfig.
> > In the menuconfig ,
> > under "Machine Selection" I choose "Ralink SoC selection (MT7621)"
> > under  "Device Drivers" I chose "MMC/SD/SDIO card support" as a module.
> > under "Device Drivers -> staging drivers" I chose "MTK SD/MMC"
> >
> > Then when compiling, the files in  drivers/staging/mt7621-mmc/ compiled
> ok,
> > but I had compilation error in drivers/staging/mt7621-pci/pci-mt7621.c,
> > with the first error:
> >
> > drivers/staging/mt7621-pci/pci-mt7621.c:195:11: error:
> > =E2=80=98pci_generic_config_read=E2=80=99 undeclared here (not in a fun=
ction); did you
> mean
> > =E2=80=98pci_write_config_word=E2=80=99?
> >   .read  =3D pci_generic_config_read,
> >            ^~~~~~~~~~~~~~~~~~~~~~~
> >            pci_write_config_word
>
> Note that pci_generic_config_read is an exported symbol at
> drivers/pci/access.c
>
> <snip>
>
>   int pci_generic_config_read(struct pci_bus *bus, unsigned int devfn,
>                               int where, int size, u32 *val)
>   {
>           void __iomem *addr;
>
>           addr =3D bus->ops->map_bus(bus, devfn, where);
>           if (!addr) {
>                   *val =3D ~0;
>                   return PCIBIOS_DEVICE_NOT_FOUND;
>           }
>
>           if (size =3D=3D 1)
>                   *val =3D readb(addr);
>           else if (size =3D=3D 2)
>                   *val =3D readw(addr);
>           else
>                   *val =3D readl(addr);
>
>           return PCIBIOS_SUCCESSFUL;
>   }
>   EXPORT_SYMBOL_GPL(pci_generic_config_read);
>
> </snip>
>
> And then looking at drivers/pci/Makefile
>
>    obj-$(CONFIG_PCI)               +=3D access.o bus.o probe.o host-bridg=
e.o
> \
>                                       remove.o pci.o pci-driver.o search.=
o
> \
>                                       pci-sysfs.o rom.o setup-res.o irq.o
> vpd.o \
>                                       setup-bus.o vc.o mmap.o setup-irq.o
>
> and grepping for CONFIG_PCI in your chosen .config
>
> himanshu@himanshu-Vostro-3559:~/linux-next$ git grep -w "CONFIG_PCI"
> arch/mips/configs/generic_defconfig
> himanshu@himanshu-Vostro-3559:~/linux-next$
>
> So, you need to select CONFIG_PCI in order to export that symbol to be
> used by pci-mt7621.c and then there will be no warnings.
>
> Check it once yourself...
>
> Hi, I choose the CONFIG_PCI option, it did solve the undefined symbols,
but the file still does not compile starting with the error:

drivers/staging/mt7621-pci/pci-mt7621.c:496:27: error: =E2=80=98port=E2=80=
=99 undeclared
(first use in this function); did you mean =E2=80=98ror8=E2=80=99?
  list_for_each_entry_safe(port, tmp, &pcie->ports, list) {

I saw that in other usages of list_for_each_entry_safe, the first parameter
is a local variable.


>
> > Then in run "make menuconfig" again and under "Device Drivers -> stagin=
g
> > drivers" I chose "MediaTek MT7621 PCI Controller"
> > Hoping it will solve it , but it didn't.
> >
> > The files I prepared the patchset for did compile ok , is it important
> that
> > all files will compile?
>
> I think for these changes just use that .config supplied by the distro
> at /boot/config-*
>
> But IIRC `make allyesconfig` should be used(not sure though..)
>

But I compile on ubuntu on x86 and I want to compile to a specific mips SoC=
.
I tried it anyway and it did not compile the file  I prepared the patch for
(drivers/staging/mt7621-mmc/sd.c)

Lastly, please avoid "top posting" :)
>

Won't happen again :)
Dafna

>
>
Hope that helps,
>
> Thanks
> --
> Himanshu Jha
> Undergraduate Student
> Department of Electronics & Communication
> Guru Tegh Bahadur Institute of Technology
>

--000000000000ef462c0577409df9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">On Tue, Oct 2, 2018 at 12:28 PM Himanshu Jha &l=
t;<a href=3D"mailto:himanshujha199640@gmail.com" target=3D"_blank">himanshu=
jha199640@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Hi Dafna,<br>
<br>
On Tue, Oct 02, 2018 at 11:24:25AM +0300, Dafna Hirschfeld wrote:<br>
&gt; Hi,<br>
&gt; Apparently, the mt7621-mmc driver is for a specific SOC based on mips,=
<br>
&gt; In order to compile it I installed mips compiler:<br>
&gt; <br>
&gt; sudo apt install gcc-mips-linux-gnu<br>
&gt; <br>
&gt; and set:<br>
&gt; export CROSS_COMPILE=3Dmips-linux-gnu-<br>
&gt; export ARCH=3Dmips<br>
&gt; <br>
&gt; Then I used an initial .config file<br>
&gt; from arch/mips/configs/generic_defconfig.<br>
&gt; In the menuconfig ,<br>
&gt; under &quot;Machine Selection&quot; I choose &quot;Ralink SoC selectio=
n (MT7621)&quot;<br>
&gt; under=C2=A0 &quot;Device Drivers&quot; I chose &quot;MMC/SD/SDIO card =
support&quot; as a module.<br>
&gt; under &quot;Device Drivers -&gt; staging drivers&quot; I chose &quot;M=
TK SD/MMC&quot;<br>
&gt; <br>
&gt; Then when compiling, the files in=C2=A0 drivers/staging/mt7621-mmc/ co=
mpiled ok,<br>
&gt; but I had compilation error in drivers/staging/mt7621-pci/pci-mt7621.c=
,<br>
&gt; with the first error:<br>
&gt; <br>
&gt; drivers/staging/mt7621-pci/pci-mt7621.c:195:11: error:<br>
&gt; =E2=80=98pci_generic_config_read=E2=80=99 undeclared here (not in a fu=
nction); did you mean<br>
&gt; =E2=80=98pci_write_config_word=E2=80=99?<br>
&gt;=C2=A0 =C2=A0.read=C2=A0 =3D pci_generic_config_read,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~~~~~~~<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pci_write_config_word<br>
<br>
Note that pci_generic_config_read is an exported symbol at drivers/pci/acce=
ss.c<br>
<br>
&lt;snip&gt;<br>
<br>
=C2=A0 int pci_generic_config_read(struct pci_bus *bus, unsigned int devfn,=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int where, int size, u32 *val)<br>
=C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 void __iomem *addr;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 addr =3D bus-&gt;ops-&gt;map_bus(bus, de=
vfn, where);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!addr) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *val =3D ~0;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return PCIBI=
OS_DEVICE_NOT_FOUND;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (size =3D=3D 1)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *val =3D rea=
db(addr);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (size =3D=3D 2)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *val =3D rea=
dw(addr);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *val =3D rea=
dl(addr);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return PCIBIOS_SUCCESSFUL;<br>
=C2=A0 }<br>
=C2=A0 EXPORT_SYMBOL_GPL(pci_generic_config_read);<br>
<br>
&lt;/snip&gt;<br>
<br>
And then looking at drivers/pci/Makefile<br>
<br>
=C2=A0 =C2=A0obj-$(CONFIG_PCI)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0+=3D access.o bus.o probe.o host-bridge.o \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 remove.o pci.o =
pci-driver.o search.o \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pci-sysfs.o rom=
.o setup-res.o irq.o vpd.o \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 setup-bus.o vc.=
o mmap.o setup-irq.o<br>
<br>
and grepping for CONFIG_PCI in your chosen .config<br>
<br>
himanshu@himanshu-Vostro-3559:~/linux-next$ git grep -w &quot;CONFIG_PCI&qu=
ot; arch/mips/configs/generic_defconfig<br>
himanshu@himanshu-Vostro-3559:~/linux-next$<br>
<br>
So, you need to select CONFIG_PCI in order to export that symbol to be<br>
used by pci-mt7621.c and then there will be no warnings.<br>
<br>
Check it once yourself...<br>
<br></blockquote><div>Hi, I choose the CONFIG_PCI option, it did solve the =
undefined symbols,</div><div>but the file still does not compile starting w=
ith the error:</div><div><br></div><div>drivers/staging/mt7621-pci/pci-mt76=
21.c:496:27: error: =E2=80=98port=E2=80=99 undeclared (first use in this fu=
nction); did you mean =E2=80=98ror8=E2=80=99?</div><div>=C2=A0 list_for_eac=
h_entry_safe(port, tmp, &amp;pcie-&gt;ports, list) {</div><div><br></div><d=
iv>I saw that in other usages of list_for_each_entry_safe, the first parame=
ter is a local variable.</div><div>=C2=A0</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">
<br>
&gt; Then in run &quot;make menuconfig&quot; again and under &quot;Device D=
rivers -&gt; staging<br>
&gt; drivers&quot; I chose &quot;MediaTek MT7621 PCI Controller&quot;<br>
&gt; Hoping it will solve it , but it didn&#39;t.<br>
&gt; <br>
&gt; The files I prepared the patchset for did compile ok , is it important=
 that<br>
&gt; all files will compile?<br>
<br>
I think for these changes just use that .config supplied by the distro<br>
at /boot/config-*<br>
<br>
But IIRC `make allyesconfig` should be used(not sure though..)<br></blockqu=
ote><div><br></div><div>But I compile on ubuntu on x86 and I want to compil=
e to a specific mips SoC.</div><div>I tried it anyway and it did not compil=
e the file=C2=A0 I prepared the patch for (drivers/staging/mt7621-mmc/sd.c)=
</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Lastly, please avoid &quot;top posting&quot; :)<br>=C2=A0</blockquote><div>=
Won&#39;t happen again :)</div><div>Dafna=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">=C2=A0<br></blockquote><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
Hope that helps,<br>
<br>
Thanks<br>
-- <br>
Himanshu Jha<br>
Undergraduate Student<br>
Department of Electronics &amp; Communication<br>
Guru Tegh Bahadur Institute of Technology<br>
</blockquote></div></div></div></div>

--000000000000ef462c0577409df9--

