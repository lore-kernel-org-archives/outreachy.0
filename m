X-GM-THRID: 6608456604457107456
X-Received: by 2002:a6b:920b:: with SMTP id u11-v6mr4745486iod.36.1538663881011;
        Thu, 04 Oct 2018 07:38:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6b8f:: with SMTP id v137-v6ls1265075itc.3.canary-gmail;
 Thu, 04 Oct 2018 07:38:00 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62svQ1nGMyOE/OShKYflbNDjeBcke+MFdkHuH+jFwamAOSF2g5y9p7rv9I2AnY6Itl9tiNz
X-Received: by 2002:a24:1a89:: with SMTP id 131-v6mr5235319iti.3.1538663880199;
        Thu, 04 Oct 2018 07:38:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538663880; cv=none;
        d=google.com; s=arc-20160816;
        b=GG31baBGkMbm9ejHZaj7nDmgMLIltUdwpD6xAJ/jukpNAF+LIJXgHk7653Ai82Hkd4
         ujNTCqyN7ncKdDcDmBMd79WQqABffJBrAgqBBwhILh26BK2r1aH9vsuyIlhLaeXSDlaJ
         HoiQFE4Od8VSEY7iKYqfj+JzmGgDA3FdviU+pvGpK0xXcItOxoAQWaOgmCypDNZp6Tb/
         9iyrNAB21kBCgiIs1K2eRGrMANO8oNAR+APPCD/92ypISCDcy+HrWgq45i5UTN4993AN
         Lawca6J0pdHDppU4juP3wK7cDVZsuiafk/or8OUEi60y8/cH5IQ59MunWXjECm62gsHa
         TQVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XI03PNfBklPeATYhrpN0btTtFA/+a96tnLLyJwpzx1Y=;
        b=eA+ODwfzl/KS7qCW+vIR4Kwb4ZoO+FtdtgEYvrupGGJweTab+rOgRuKi0vpJRx3f7T
         76gxjP57jFWonF7NGula9zwqGiOE6UCXRdBkIaS4MoCFhagiBVSryoXIXdzvp6ZuWDKg
         PSOdvz87xZHRjD4vEETRsN96lf2WxbYJEh0czGP6BN+BE8fa732DZf+xcr67dZPPHUCb
         71KaOTQFaf9p4alQWspB/cy0948C6kR7BpXncTB55Hm35mjrD5wrOMNbymECJZw0t0Fb
         APDkrxbIe4HucWJpIWEFJbhKWauhtLJcMbw3RsFmYMZytDYdbp5pFC+WymJMuSXo7RBt
         BjFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dyTdtC10;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-it1-x144.google.com (mail-it1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id m189-v6si312782ita.1.2018.10.04.07.38.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 07:38:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dyTdtC10;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x144.google.com with SMTP id l127-v6so2045934ith.1
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 07:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XI03PNfBklPeATYhrpN0btTtFA/+a96tnLLyJwpzx1Y=;
        b=dyTdtC10PGj57cxeWrBtW5R2W8ahjTOYt5sXPFKcFh0J+CIWnCsFSnVJtd/3jvMXh2
         sEDySX0LyyYujdr3HgYp+65kh3Xm4LMleIxpv/NtbXaZ0IRb9QJiWSg9F7ERmMn49ccW
         dw22ih8N3Yf91Ti6oTXVFpCFxGBkBBdIdECFVIUXDeN/zDV2flQ/WCLb3iYrMa8epVDJ
         O/4Q7oPPsVTlFlAtOk20EK9nE82YE2kSgYlsIixl6+1945hs4oKFxcOZ+oBzPuJBM6Zu
         MWdDIcLkDrbOgjS3npmKUw9CHCApmKG4svY2RHWzcxm/ySWOrYyoUr/ywxJQ9J2WW8va
         jZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XI03PNfBklPeATYhrpN0btTtFA/+a96tnLLyJwpzx1Y=;
        b=sHpuFJRBWlIE8YEptrm65evIEe7H9gVckBKy7aQCAX4cfweaku/Wk23PjxxJAPraD5
         gCZTYkMQPGX0d08DL0QHCASz6QbS57bdlNhl7gl3v4emOdFDhstysMvQ3PKh2ucSdnxK
         pXgQiHfc7N1szSH5giLxYdIhUg9oqH1lil160+OBVIzf+su9NMkW8MfONI1SJpB2EH4O
         eEiqkluBFoJC9Qygz7gG6qX3s8zIuuTAEJAEV8R/gODpqT/h5RAeTv9QeXeV37gofKL3
         sfRdbTNbQedbG023OquBQ3IC9zbU4bw1bIZLk3fVKrSxsLsdnG4yn3RTdW8Hq0Ip7qwF
         U99g==
X-Gm-Message-State: ABuFfoibO0y0YhkBkuPEMJzIPSf0eg4QBkIpD85IefTIpnRFWRwR3gdq
	dUydKEtOOnjko4xigkNbZo9T8V2eBaZCpYdzej8=
X-Received: by 2002:a24:9790:: with SMTP id k138-v6mr5385207ite.69.1538663879846;
 Thu, 04 Oct 2018 07:37:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538646749.git.mamtashukla555@gmail.com>
 <3a8120a36703fc377aad082f139087335dfa62d9.1538646749.git.mamtashukla555@gmail.com>
 <20181004120639.GB24641@himanshu-Vostro-3559>
In-Reply-To: <20181004120639.GB24641@himanshu-Vostro-3559>
From: Mamta Shukla <mamtashukla555@gmail.com>
Date: Thu, 4 Oct 2018 20:07:43 +0530
Message-ID: <CAMNCNOU6FgHV-Xn+txgue11tcP98CLBDPZEkrpEEmzJXzUOzfw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: mt7621-pci: spaces
 preferred around that '<<'
To: himanshujha199640@gmail.com
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary="000000000000fcc09105776819fa"

--000000000000fcc09105776819fa
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 4, 2018 at 5:36 PM Himanshu Jha <himanshujha199640@gmail.com>
wrote:

> On Thu, Oct 04, 2018 at 04:46:11PM +0530, Mamta Shukla wrote:
> > Add spaces around '<<' to fix checkpatch issue.
> > CHECK: spaces preferred around that '<<' (ctx:VxV)
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> > ---
> >  drivers/staging/mt7621-pci/pci-mt7621.c | 40
> ++++++++++++++++-----------------
> >  1 file changed, 20 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c
> b/drivers/staging/mt7621-pci/pci-mt7621.c
> > index 780ba56..31b448d 100644
> > --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> > +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> > @@ -474,12 +474,12 @@ static int mt7621_pci_probe(struct platform_device
> *pdev)
> >
> >       ASSERT_SYSRST_PCIE(RALINK_PCIE0_RST | RALINK_PCIE1_RST |
> RALINK_PCIE2_RST);
> >
> > -     *(unsigned int *)(0xbe000060) &= ~(0x3<<10 | 0x3<<3);
> > -     *(unsigned int *)(0xbe000060) |= 0x1<<10 | 0x1<<3;
> > +     *(unsigned int *)(0xbe000060) &= ~(0x3 << 10 | 0x3 << 3);
> > +     *(unsigned int *)(0xbe000060) |= 0x1 << 10 | 0x1 << 3;
> >       mdelay(100);
> > -     *(unsigned int *)(0xbe000600) |= 0x1<<19 | 0x1<<8 | 0x1<<7; // use
> GPIO19/GPIO8/GPIO7 (PERST_N/UART_RXD3/UART_TXD3)
>
> >You can use BIT() here as well.
> >Example:
>
> >+       *(unsigned int *)(0xbe000600) |= BIT(19) | BIT(8) | BIT(7); //
> use GPIO19/GPIO8/GPIO7 (PERST_N/UART_RXD3/UART_TXD3)
>
> >Check for others too.
>
> >--
> >Himanshu Jha
> >Undergraduate Student
> >Department of Electronics & Communication
> >Guru Tegh Bahadur Institute of Technology
>

Ok, I will add BIT() at possible places and submit a new patch in this
patch series.
-- 
Mamta Shukla
Pune Institute  of Computer Technology
Pune
m: 9158516957
e : mamtashukla555@gmail.com

--000000000000fcc09105776819fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">O=
n Thu, Oct 4, 2018 at 5:36 PM Himanshu Jha &lt;<a href=3D"mailto:himanshujh=
a199640@gmail.com">himanshujha199640@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">On Thu, Oct 04, 2018 at 04:46:11PM +0530, Mamta =
Shukla wrote:<br>
&gt; Add spaces around &#39;&lt;&lt;&#39; to fix checkpatch issue.<br>
&gt; CHECK: spaces preferred around that &#39;&lt;&lt;&#39; (ctx:VxV)<br>
&gt; <br>
&gt; Signed-off-by: Mamta Shukla &lt;<a href=3D"mailto:mamtashukla555@gmail=
.com" target=3D"_blank">mamtashukla555@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/mt7621-pci/pci-mt7621.c | 40 ++++++++++++++++---=
--------------<br>
&gt;=C2=A0 1 file changed, 20 insertions(+), 20 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging=
/mt7621-pci/pci-mt7621.c<br>
&gt; index 780ba56..31b448d 100644<br>
&gt; --- a/drivers/staging/mt7621-pci/pci-mt7621.c<br>
&gt; +++ b/drivers/staging/mt7621-pci/pci-mt7621.c<br>
&gt; @@ -474,12 +474,12 @@ static int mt7621_pci_probe(struct platform_devi=
ce *pdev)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ASSERT_SYSRST_PCIE(RALINK_PCIE0_RST | RALINK=
_PCIE1_RST | RALINK_PCIE2_RST);<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0*(unsigned int *)(0xbe000060) &amp;=3D ~(0x3&lt;&=
lt;10 | 0x3&lt;&lt;3);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0*(unsigned int *)(0xbe000060) |=3D 0x1&lt;&lt;10 =
| 0x1&lt;&lt;3;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0*(unsigned int *)(0xbe000060) &amp;=3D ~(0x3 &lt;=
&lt; 10 | 0x3 &lt;&lt; 3);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0*(unsigned int *)(0xbe000060) |=3D 0x1 &lt;&lt; 1=
0 | 0x1 &lt;&lt; 3;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mdelay(100);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0*(unsigned int *)(0xbe000600) |=3D 0x1&lt;&lt;19 =
| 0x1&lt;&lt;8 | 0x1&lt;&lt;7; // use GPIO19/GPIO8/GPIO7 (PERST_N/UART_RXD3=
/UART_TXD3)<br>
<br>
&gt;You can use BIT() here as well.<br>
&gt;Example:<br>
<br>
&gt;+=C2=A0 =C2=A0 =C2=A0 =C2=A0*(unsigned int *)(0xbe000600) |=3D BIT(19) =
| BIT(8) | BIT(7); // use GPIO19/GPIO8/GPIO7 (PERST_N/UART_RXD3/UART_TXD3)<=
br>
<br>
&gt;Check for others too.<br>
<br>
&gt;-- <br>
&gt;Himanshu Jha<br>
&gt;Undergraduate Student<br>
&gt;Department of Electronics &amp; Communication<br>
&gt;Guru Tegh Bahadur Institute of Technology<br>
</blockquote></div><br clear=3D"all"></div>Ok, I will add BIT() at possible=
 places and submit a new patch in this patch series.<br><div>-- <br><div di=
r=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div=
 dir=3D"ltr"><font face=3D"arial, helvetica, sans-serif">Mamta Shukla</font=
><div><font face=3D"arial, helvetica, sans-serif">Pune Institute=C2=A0 of C=
omputer Technology</font></div><div><font face=3D"arial, helvetica, sans-se=
rif">Pune</font></div><div><font face=3D"arial, helvetica, sans-serif">m: 9=
158516957</font></div><div><font face=3D"arial, helvetica, sans-serif">e :=
=C2=A0<a href=3D"mailto:mamtashukla555@gmail.com" target=3D"_blank">mamtash=
ukla555@gmail.com</a></font></div></div></div></div></div>

--000000000000fcc09105776819fa--

