X-GM-THRID: 6607095314902941696
X-Received: by 2002:a24:e57:: with SMTP id 84-v6mr2148376ite.4.1538590222380;
        Wed, 03 Oct 2018 11:10:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:2fd1:: with SMTP id j200-v6ls531692itj.7.gmail; Wed, 03
 Oct 2018 11:10:21 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62Ex0e20aiNK8XPjQJvGrcpoebMbs2bqxjpAQvKU9om4Sq8Ly7IbmeOAK49tso4ZVuwXDTC
X-Received: by 2002:a24:d7:: with SMTP id 206-v6mr2276787ita.17.1538590221612;
        Wed, 03 Oct 2018 11:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538590221; cv=none;
        d=google.com; s=arc-20160816;
        b=nPfAma3UvYhichL1lCz62AUM2nllNZMlHkFUAzHUGzIpcoxUBHgjDs54BfxrHjd+Ux
         6/xDiMVaK2p20HHBdDeA8+zrrYWrDqIKuW4gcjzJArK90RqZvDCbsIDh/d+x3RNg52kr
         vddk7DsU3aqSUdrQa2RxaZ5lL1OkpfaC9ehpoZ4LK0FEKpn93VIenI74a+rt+90V8DDo
         6+gxg4ELCi3IA85qHmV+ZKrDj0bY7Clmong50ATT1LQuuREt1xHJgacevSYc8GRrmQ//
         G/zYIGwNuQqMPQH4IiIPchChBuHlfYN6vGBYzNWiD1P8LMknTT4G8B+FlvG1EYeKUz5M
         ou+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=viQ3acWers43TqQW63lx33PnAszZRAHmjMOXWHHzeJs=;
        b=h2wkL9xYQDDze1ATbMkj7s98zW/2RFz138F08r7nsy/1K8ez5uGUCP4wBZ0LyM1jFN
         FLgQESPa5i4vV3AzPCfRrAKJY6Z47sngHdtWlcQAo+rZea4HUPqQfCMPGrG8RmORaMc+
         RlvRFTL+xk1B1QPavUMMWEKsfe61rhv0ivQc3cHOKAyPwgUJDWG3dCOXpi3l8tRQDRWL
         8hMGs+SJK8gI+iq8miocoV538oLKbrk8mU8oKI2lyilqIzkD2ooFE+WAPm8qUfsI6lbM
         oXK7INYfhj++nB8KKnih6ZbbMbsybV7rHgh/FSTpHAoobtEcswVgVYz8IL+/XFgSj/R+
         EEXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EbjZmIh1;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com. [2607:f8b0:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id m189-v6si145706ita.1.2018.10.03.11.10.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 11:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) client-ip=2607:f8b0:4864:20::32b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EbjZmIh1;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32b.google.com with SMTP id q50so2350389otd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 03 Oct 2018 11:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=viQ3acWers43TqQW63lx33PnAszZRAHmjMOXWHHzeJs=;
        b=EbjZmIh15BixaYMBsn2UY5pdntrBHIz1ZkKpTzLzx2CujteCSqd5BW8tOlqJ0d8h+O
         aApjJc5N8HeaoM1mzoSOxgeb+m8Ndin7gz4mZK7Eu09Xqdylp/+FCyRQxut52nZRprLF
         we+G4ja4BETe+EJdIKGFlDtSluvGyEFE8yZU8nbc1ople1Slpx+XOhH4MglMQp/WGBQY
         2kJAiLDEBrzRsFwpRijOZ+O3cCnCqJRA1+DPD4dzVE7jMDFljpH26FWoCex8V2ldB6/O
         82+ggwmHqTJMR85c5iQkHOv/KxQlVWcFnJkVs/BQC33dehuUX+pIY3Ox2U2Z7YxLBP91
         5d8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=viQ3acWers43TqQW63lx33PnAszZRAHmjMOXWHHzeJs=;
        b=BEd6bz66d8ASBjFmEBF3Rs5DTTqCbi8TG8OrytLoH9EPANmM7FOYropUG744VXgmiM
         dc6uhA/PIxTHHdo4nA/mIrWsiY8qZ0NuhEjgmciWJb0cnD/HsIt95+P6m9HAH9hta5p4
         aUTcqrvfQmRyI9xXnoo+nJxEqdxA2JO3axm0oyiWpNY2xKEhzhZ5ymxe+5D/YUGAxUXX
         RlZwr1V1WJbjWY8g0IQSvsesOX870TedeCPGf+/OSgFqxE+tc5tSmgkCawP7r2atmiQI
         I49MOnIuFTiX7fV2Cjl0tIHDnyWakYM7FQZvO5kCcjNSKhxiwlVbLpekPTDJIh8JLBq5
         jNVA==
X-Gm-Message-State: ABuFfojcq1LMan0RsoDe7b0IsZkN23ViLMXiZYdbworpbbUtEGehynbk
	fVHpzDlISfz14k6MKT9C3zKFliDjaoyYV7j+WLg=
X-Received: by 2002:a9d:6554:: with SMTP id q20-v6mr1447221otl.209.1538590221186;
 Wed, 03 Oct 2018 11:10:21 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
 <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien> <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com>
 <20181002092816.GA7179@himanshu-Vostro-3559> <alpine.DEB.2.20.1810021138450.3520@hadrien>
In-Reply-To: <alpine.DEB.2.20.1810021138450.3520@hadrien>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Wed, 3 Oct 2018 21:10:09 +0300
Message-ID: <CAJ1myNRF+1S=epCMJxUa1YrdPK4p80CiPn2FDdqw5mnwTq+mQA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Himanshu Jha <himanshujha199640@gmail.com>, gregkh@linuxfoundation.org, 
	outreachy-kernel@googlegroups.com, hdegoede@redhat.com, john@phrozen.org
Content-Type: multipart/alternative; boundary="00000000000096bae8057756f325"

--00000000000096bae8057756f325
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 3, 2018 at 7:06 AM Julia Lawall <julia.lawall@lip6.fr> wrote:

> > > Then in run "make menuconfig" again and under "Device Drivers ->
> staging
> > > drivers" I chose "MediaTek MT7621 PCI Controller"
> > > Hoping it will solve it , but it didn't.
> > >
> > > The files I prepared the patchset for did compile ok , is it important
> that
> > > all files will compile?
> >
> > I think for these changes just use that .config supplied by the distro
> > at /boot/config-*
> >
> > But IIRC `make allyesconfig` should be used(not sure though..)
>
> Dafna,
>
> It is important that the driver continues to compile.
>
> Hi,
Fixing the compilation error in drivers/staging/mt7621-pci/pci-mt7621.c is
not triveal,
It is not clear what type `port` and `tmp` should be.

Dafna

Make allyesconfig is often a good option.
>
> julia
>

--00000000000096bae8057756f325
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">On Wed, Oct 3, 2018 at 7:06 AM Julia Lawall &lt;<a href=3D"mailt=
o:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">&gt; &gt; Then in run &quot;mak=
e menuconfig&quot; again and under &quot;Device Drivers -&gt; staging<br>
&gt; &gt; drivers&quot; I chose &quot;MediaTek MT7621 PCI Controller&quot;<=
br>
&gt; &gt; Hoping it will solve it , but it didn&#39;t.<br>
&gt; &gt;<br>
&gt; &gt; The files I prepared the patchset for did compile ok , is it impo=
rtant that<br>
&gt; &gt; all files will compile?<br>
&gt;<br>
&gt; I think for these changes just use that .config supplied by the distro=
<br>
&gt; at /boot/config-*<br>
&gt;<br>
&gt; But IIRC `make allyesconfig` should be used(not sure though..)<br>
<br>
Dafna,<br>
<br>
It is important that the driver continues to compile.<br>
<br></blockquote><div>Hi,</div><div>Fixing the compilation error in=C2=A0dr=
ivers/staging/mt7621-pci/pci-mt7621.c is not triveal,</div><div>It is not c=
lear what type `port` and `tmp` should be.</div><div>=C2=A0</div><div>Dafna=
</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Make allyesconfig is often a good option.<br>
<br>
julia<br>
</blockquote></div></div></div>

--00000000000096bae8057756f325--

