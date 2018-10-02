X-GM-THRID: 6607095314902941696
X-Received: by 2002:a65:6453:: with SMTP id s19-v6mr6262413pgv.22.1538468679234;
        Tue, 02 Oct 2018 01:24:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:bdc:: with SMTP id 89-v6ls232475pfl.8.gmail; Tue, 02 Oct
 2018 01:24:38 -0700 (PDT)
X-Google-Smtp-Source: ACcGV634aM42TIsJyVnCIQtGYbKGT+vsKJ2dFauC9LEcZTBNMgkds9CRpM5xytmELyKJROB9OsBe
X-Received: by 2002:a65:4888:: with SMTP id n8-v6mr5956474pgs.15.1538468678226;
        Tue, 02 Oct 2018 01:24:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538468678; cv=none;
        d=google.com; s=arc-20160816;
        b=kRIDclVoPhidp4QqbTBKAbmM97z2MO8rxRi1TvSdpb75uPz7CxH3l4cKHLn/bpl8QU
         cRvqx/uABZaeRiaWX2YRYxQD2S+Fc/5zr3DvI5v0kx7Wt+w6yN0S4nk85HjOiGtYkRp3
         1fMd3DdDlR82L+EZhJi42fKKmol9uJUCyvx3etEIjb6rX4ga7fLdvLK8T0hWrhdRaY3q
         fDEMv1USgSgJiupHecqEe7QDdwlKaYxEDpxQELpb7dw951uL9CmrVzE8L+VRH6mMrkmu
         Q43fPvPvFXjcTGqIbpANue/tiiQs4DpRNhSsZAn47h6twNslXvDAY6w3zqoDNCcFq58i
         sK8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=udRVIm7GXr/nSrT3NFGUlezneeu90AkBhzT27x90xTo=;
        b=1Kr6nWQT22PP2n8BNWS1Ftxz1XHd2hdYneFoM7IY8dktmNy/FlbE3ecBoz6VYRJJnI
         z7xILgV6odZ5iDdpTkItIVZk1xmOuRj7idFa4KXAPPUd8GbHRRKmn3Gw0Qw1AzsrnYB0
         3v6m5UatpM/4/qF0ufrXG1RZsvKUVn6Cyjdq7zYEEAj2T/vKNyO4S8rbWw+957jyGe5W
         l6MR+bgbSAL4wkKNwtb2sSf5tkmAVwI/8l/q2KaQ+Egut9k33GGrjRzBq6V8jkiuUl/b
         biTZ4crxUEO0HRoj//ffMv59LLRAbmGWnaSoIwakkFWZ8P4ePgHxtwVzDvy2koobPKB6
         PGWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hDID1Ch6;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com. [2607:f8b0:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id v186-v6si756420pgb.4.2018.10.02.01.24.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 01:24:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) client-ip=2607:f8b0:4864:20::32d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hDID1Ch6;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32d.google.com with SMTP id 36-v6so1034748oth.11
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Oct 2018 01:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=udRVIm7GXr/nSrT3NFGUlezneeu90AkBhzT27x90xTo=;
        b=hDID1Ch6ebWWPdEU4OIzgP+zouvu/s36KTcJddBrqSFQhVKVRjtCbTSxCvY2zORPV/
         2rSeA8N1XwDvPsNKd4uHdqxCoE7p+valJ/n8pjW0LspZZFTfwCN2sFUwVFAZHWJ3WIzh
         xhoeaZXDcSX04mAhu9pHYEfTJwh4/+7erLPx3d6T9JOfVEcKiGsMaF2A2fVhiQWXnFH1
         5xMy42JJbi70h/hq0HLB21Q5FXWFV0GAMXGlakDRq5IXmEwSehV7GpuAiun4Dr7M95nm
         3yolakTgwIQZ4YgGREOgEsKETyEPk2Iqv+cOPwBEWX7P/M6pwkigs9405vg6N5x9/G2R
         3KEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=udRVIm7GXr/nSrT3NFGUlezneeu90AkBhzT27x90xTo=;
        b=UF5pURFduoMKWXqxTqXpqtrPDibIV4DC+Var6lLpkhmgEcLieUIWPVzfdNAja8W4gV
         WvCrbG4tOS5qTobM1rHjioRhqvc7dFnJ9VgSLFgVJ8P0vIKIXQIGywYmVBos0hSwnE72
         QCrNu6vfhqAEPWZW3fGvSyVdwwSibqEm+7h3uQtXP1JYxT/024jtoxLRjMPmTzLec1RY
         UMgruJxwzVpkz/etm9p2Ql8Ivs6g3V6rF19ihIwGgIsnzH23v6zeitTBoxX6+iQh7Sjr
         cMC8CSUACbyxRAtp66gnD0XbPbW3w+/R4SfMnXK+bOkIv65BVcV62a5jHp/hCdE4E5Lo
         +Gfw==
X-Gm-Message-State: ABuFfogxI4PCwy8Ea4lwrDIXReQHXtgrDzHMPrg5e1hjBC9f05WD50tR
	suElyI+g4Z8+6O2nWCeQoyf5/iVLLhg71nhQkFI=
X-Received: by 2002:a9d:6554:: with SMTP id q20-v6mr8206830otl.209.1538468677780;
 Tue, 02 Oct 2018 01:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
 <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien>
In-Reply-To: <alpine.DEB.2.20.1810011047210.3464@hadrien>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Tue, 2 Oct 2018 11:24:25 +0300
Message-ID: <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
	hdegoede@redhat.com
Content-Type: multipart/alternative; boundary="000000000000098b4905773aa79d"

--000000000000098b4905773aa79d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
Apparently, the mt7621-mmc driver is for a specific SOC based on mips,
In order to compile it I installed mips compiler:

sudo apt install gcc-mips-linux-gnu

and set:
export CROSS_COMPILE=3Dmips-linux-gnu-
export ARCH=3Dmips

Then I used an initial .config file
from arch/mips/configs/generic_defconfig.
In the menuconfig ,
under "Machine Selection" I choose "Ralink SoC selection (MT7621)"
under  "Device Drivers" I chose "MMC/SD/SDIO card support" as a module.
under "Device Drivers -> staging drivers" I chose "MTK SD/MMC"

Then when compiling, the files in  drivers/staging/mt7621-mmc/ compiled ok,
but I had compilation error in drivers/staging/mt7621-pci/pci-mt7621.c,
with the first error:

drivers/staging/mt7621-pci/pci-mt7621.c:195:11: error:
=E2=80=98pci_generic_config_read=E2=80=99 undeclared here (not in a functio=
n); did you mean
=E2=80=98pci_write_config_word=E2=80=99?
  .read  =3D pci_generic_config_read,
           ^~~~~~~~~~~~~~~~~~~~~~~
           pci_write_config_word


Then in run "make menuconfig" again and under "Device Drivers -> staging
drivers" I chose "MediaTek MT7621 PCI Controller"
Hoping it will solve it , but it didn't.

The files I prepared the patchset for did compile ok , is it important that
all files will compile?

Dafna



On Mon, Oct 1, 2018 at 11:47 AM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 1 Oct 2018, Dafna Hirschfeld wrote:
>
> >
> >
> > On Mon, Oct 1, 2018 at 12:55 AM Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> >
> >
> >       On Sun, 30 Sep 2018, Dafna Hirschfeld wrote:
> >
> >       > Remove unnecessary braces from one line 'if' statements.
> >       > Issues found with checkpatch.pl
> >       >
> >       > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> >       > ---
> >       >  drivers/staging/mt7621-mmc/sd.c | 9 +++------
> >       >  1 file changed, 3 insertions(+), 6 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/mt7621-mmc/sd.c
> >       b/drivers/staging/mt7621-mmc/sd.c
> >       > index e3c1546373ba..8c32cec5950a 100644
> >       > --- a/drivers/staging/mt7621-mmc/sd.c
> >       > +++ b/drivers/staging/mt7621-mmc/sd.c
> >       > @@ -520,9 +520,8 @@ static void msdc_pm(pm_message_t state,
> >       void *data)
> >       >               host->pm_state =3D state;  /* default PMSG_RESUME
> >       */
> >       >
> >       >       } else if (evt =3D=3D PM_EVENT_RESUME || evt =3D=3D
> >       PM_EVENT_USER_RESUME) {
> >       > -             if (!host->suspend) {
> >       > +             if (!host->suspend)
> >       >                       return;
> >       > -             }
> >       >
> >       >               /* No PM resume when USR suspend */
> >       >               if (evt =3D=3D PM_EVENT_RESUME &&
> >       host->pm_state.event =3D=3D PM_EVENT_USER_SUSPEND) {
> >       > @@ -967,16 +966,14 @@ static int msdc_do_request(struct
> >       mmc_host *mmc, struct mmc_request *mrq)
> >       >       //if(host->id=3D=3D1) {
> >       >       if (send_type =3D=3D SND_CMD) {
> >       >               if (cmd->opcode =3D=3D MMC_SEND_STATUS) {
> >       > -                     if ((cmd->resp[0] & CARD_READY_FOR_DATA)
> >       || (CARD_CURRENT_STATE(cmd->resp[0]) !=3D 7)) {
> >       > +                     if ((cmd->resp[0] & CARD_READY_FOR_DATA)
> >       || (CARD_CURRENT_STATE(cmd->resp[0]) !=3D 7))
> >
> >       This line is really long.  Since you have sent a series on this
> >       code,
> >       maybe you can add in another patch to clean this up.
> >
> >       julia
> >
> >
> > So add it as a 4th patch in the patchset ?
>
> That would be fine.
>
> julia
>
> > Dafna
> >
> >       >                               msdc_gate_clock(host->id);
> >       > -                     }
> >       >               } else {
> >       >                       msdc_gate_clock(host->id);
> >       >               }
> >       >       } else {
> >       > -             if (read) {
> >       > +             if (read)
> >       >                       msdc_gate_clock(host->id);
> >       > -             }
> >       >       }
> >       >       //}
> >       >  #else
> >       > --
> >       > 2.17.1
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       > To post to this group, send email to
> >       outreachy-kernel@googlegroups.com.
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/bf3ba7a38f000d4359c4c56f
> >       ac98f17ae3ef6a2b.1538333858.git.dafna3%40gmail.com.
> >       > For more options, visit https://groups.google.com/d/optout.
> >       >
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CAJ1myNR7951qEF6hpN8DRJ-
> > hmckXMOzZWnzBJWrYqdaRoPLb2g%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--000000000000098b4905773aa79d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r">Hi,<div>Apparently, the mt7621-mmc driver is for a specific SOC based on=
 mips,</div><div>In order to compile it I installed mips compiler:</div><di=
v><br></div><div>sudo apt install gcc-mips-linux-gnu</div><div><br></div><d=
iv>and set:</div><div><div>export CROSS_COMPILE=3Dmips-linux-gnu-</div></di=
v><div><div>export ARCH=3Dmips</div></div><div><br></div><div>Then I used a=
n initial .config file from=C2=A0arch/mips/configs/generic_defconfig.</div>=
<div>In the menuconfig ,</div><div>under &quot;Machine Selection&quot; I ch=
oose &quot;Ralink SoC selection (MT7621)&quot;</div><div>under=C2=A0 &quot;=
Device Drivers&quot; I chose &quot;MMC/SD/SDIO card support&quot; as a modu=
le.</div><div>under &quot;Device Drivers -&gt; staging drivers&quot; I chos=
e &quot;MTK SD/MMC&quot;</div><div><br></div><div>Then when compiling, the =
files in=C2=A0=C2=A0drivers/staging/mt7621-mmc/ compiled ok,</div><div>but =
I had compilation error in=C2=A0drivers/staging/mt7621-pci/pci-mt7621.c, wi=
th the first error:</div><div><br></div><div><div>drivers/staging/mt7621-pc=
i/pci-mt7621.c:195:11: error: =E2=80=98pci_generic_config_read=E2=80=99 und=
eclared here (not in a function); did you mean =E2=80=98pci_write_config_wo=
rd=E2=80=99?</div><div>=C2=A0 .read=C2=A0 =3D pci_generic_config_read,</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~~~~~</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pci_write_config_word</div><=
div><br></div><div><br></div><div>Then in run &quot;make menuconfig&quot; a=
gain and under &quot;Device Drivers -&gt; staging drivers&quot; I chose &qu=
ot;MediaTek MT7621 PCI Controller&quot;</div><div>Hoping it will solve it ,=
 but it didn&#39;t.</div><div><br></div><div>The files I prepared the patch=
set for did compile ok , is it important that all files will compile?</div>=
<div><br></div><div>Dafna</div><div><br></div><div><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Mon, Oct 1, 2018 at 11:47 AM Julia Law=
all &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Mon, 1 Oct 2018, Dafna Hirschfeld wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Oct 1, 2018 at 12:55 AM Julia Lawall &lt;<a href=3D"mailto:jul=
ia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt; wrote:<br=
>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, 30 Sep 2018, Dafna Hirschfeld wrote:=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Remove unnecessary braces from one line=
 &#39;if&#39; statements.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Issues found with <a href=3D"http://che=
ckpatch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Dafna Hirschfeld &lt;<a =
href=3D"mailto:dafna3@gmail.com" target=3D"_blank">dafna3@gmail.com</a>&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/mt7621-mmc/sd.c |=
 9 +++------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 3 insertions(+), =
6 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/mt7621-mmc=
/sd.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/mt7621-mmc/sd.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index e3c1546373ba..8c32cec5950a 100644=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/mt7621-mmc/sd.c<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/mt7621-mmc/sd.c<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -520,9 +520,8 @@ static void msdc_pm=
(pm_message_t state,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0void *data)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0host-&gt;pm_state =3D state;=C2=A0 /* default PMSG_RESUME<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (ev=
t =3D=3D PM_EVENT_RESUME || evt =3D=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0PM_EVENT_USER_RESUME) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (!host-&gt;suspend) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (!host-&gt;suspend)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* No PM resume when USR suspend */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (evt =3D=3D PM_EVENT_RESUME &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0host-&gt;pm_state.event =3D=3D PM_EVENT_USER=
_SUSPEND) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -967,16 +966,14 @@ static int msdc_d=
o_request(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mmc_host *mmc, struct mmc_request *mrq)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0//if(host-&gt=
;id=3D=3D1) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (send_type=
 =3D=3D SND_CMD) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (cmd-&gt;opcode =3D=3D MMC_SEND_STATUS) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((cmd-&gt;resp[0] &amp; CARD_READY=
_FOR_DATA)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|| (CARD_CURRENT_STATE(cmd-&gt;resp[0]) !=3D=
 7)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((cmd-&gt;resp[0] &amp; CARD_READY=
_FOR_DATA)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|| (CARD_CURRENT_STATE(cmd-&gt;resp[0]) !=3D=
 7))<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0This line is really long.=C2=A0 Since you ha=
ve sent a series on this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0code,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0maybe you can add in another patch to clean =
this up.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;<br>
&gt; So add it as a 4th patch in the patchset ?<br>
<br>
That would be fine.<br>
<br>
julia<br>
<br>
&gt; Dafna<br>
&gt; =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ms=
dc_gate_clock(host-&gt;id);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msdc_gate_clock(host-&gt;id);<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (read) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (read)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msdc_gate_clock(host-&gt;id);<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0//}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 #else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.17.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsubscribe@googl=
egroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
thttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/bf3ba=
7a38f000d4359c4c56f" rel=3D"noreferrer" target=3D"_blank">groups.google.com=
/d/msgid/outreachy-kernel/bf3ba7a38f000d4359c4c56f</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ac98f17ae3ef6a2b.1538333858.git.dafna3%<a hr=
ef=3D"http://40gmail.com" rel=3D"noreferrer" target=3D"_blank">40gmail.com<=
/a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https:=
//groups.google.com/d/optout</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
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
ps.google.com/d/msgid/outreachy-kernel/CAJ1myNR7951qEF6hpN8DRJ-" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/CAJ1m=
yNR7951qEF6hpN8DRJ-</a><br>
&gt; hmckXMOzZWnzBJWrYqdaRoPLb2g%<a href=3D"http://40mail.gmail.com" rel=3D=
"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
&gt;</blockquote></div></div></div></div></div></div></div></div></div></di=
v></div>

--000000000000098b4905773aa79d--

