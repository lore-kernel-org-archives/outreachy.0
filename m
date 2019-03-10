X-GM-THRID: 6666827183901638656
X-Received: by 2002:ac8:1aea:: with SMTP id h39mr16115350qtk.7.1552243504150;
        Sun, 10 Mar 2019 11:45:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aa9d:: with SMTP id f29ls3256653qvb.4.gmail; Sun, 10 Mar
 2019 11:45:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx30u43aQ9IuO3MpP3m1y5AZ0eYlbGHyz4vtC9F3g1BJHtZesRQCAprk7CZ2IJ+uebS3/Yn
X-Received: by 2002:a0c:eac2:: with SMTP id y2mr2959043qvp.26.1552243503520;
        Sun, 10 Mar 2019 11:45:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552243503; cv=none;
        d=google.com; s=arc-20160816;
        b=lNhaXSP2mKAcQbI7ZDkddUUGuYHMQNgeh7sgcxlba6y5CmmauB3S0muvhIX7Wf15yY
         fH9cnozT213hNeV2zojI4atB/CdwuBazvYPPT1TJxmb0kPayQ95ppE7wKLfEKSOGCiDC
         4GVsgE+MJZ1i4hQKPt4SeCUJlorQ3P+tCrpRwTLIQJZ406EL3vu40jdskoJNlKvz0zOi
         STHBF1WwJVE1T4pIFDRuW96WSHCqtALtwcjytnuMWFJ/Kqv4STKbwfrfpYkUOJcBaO+y
         hK5J+OmXoqA5iNxAj5IZqhNmTLtepp5N12m/fkx04DqKB4ptrxgJup6ETaqty7oPOxI0
         FFvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lTNas4Ov65quNG5vPO/hrpav38f+6+zLLciBwdUW9Yk=;
        b=FKdB37gA8xSLMV8RLawCPdvS6BO7RtJkHmBTP8s/de+NDsMbyasdalRmBe3U5hokN4
         lMap6pn+zVBX+eU1SQEzxtc29dPnJURKKpSQm7JV0r0ANKHMQM6AcrUk+IMmbNiN0Lq9
         VlZXlk1dtrf1JMkqhPQhN+o72PG2EJNrUM5ew7eH4MdA/Mo+lVsy2Pqs17wnXMFhOOUo
         Riew6j/jQaKkcXMFOBeXgAxNv1VhH5HwnPf3sm5cHh9su2tLS4J2+S0zIoXm3g7ogyiD
         VcgK3IPszxLWF7A88adLtsSq1lvQVhGmcuNJwROb1psAQeDX6eRX2dXeDuswxQpTwsMo
         /P0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MrGxsFNp;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id i11si207274qkk.4.2019.03.10.11.45.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:45:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MrGxsFNp;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72f.google.com with SMTP id n6so1488249qkf.1
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 11:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lTNas4Ov65quNG5vPO/hrpav38f+6+zLLciBwdUW9Yk=;
        b=MrGxsFNpl+xdv66Hi6H264q31HhLn7NwdUf3dA04wwjcuCApZhtdXKC+me+XvMi62y
         PGl4mR650Htkt3bO8aqV7pUKuISAPpceMXYIZluDfYLUIvEs0YZjPx/Q9tK2OsXtnDWx
         Ey/u6nldecaXnPcOHvBkYdRJLKAab/l8kizqtSKBKVFrsIO1cRZrIcpEOnILRbY5Wd31
         V8ChbL2/nLtguDHD57gNHO5GZlc8ePwCNIxHFEUtDCQQ65tV6b2aDbszePTFvoinPwaJ
         K84jz3Ux3k/ap+u156q+/mobStr3NfBLec9ZS8g+6lG/ZneOqaGcZvNa/EqNrVwGrcE6
         Kj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lTNas4Ov65quNG5vPO/hrpav38f+6+zLLciBwdUW9Yk=;
        b=E3NUSJyn0CXLCB8SNB7i7NkjpizIBViTzdARqDhsYYhHkiQzu0Klylhr5m0MtlnMpb
         jCKFRKSI5EBhSUERYfVTuJ75zOAjWxd6KFQqyXx8VSKRhMFIx/oKhgId8eI7POmtl6+z
         JTzNCVAm15LNjL6kDI897D0r4lmn7IgwVeTZ6mtOku1SCyxl0TpEX6K9bqJ6giJmWjZR
         ZCv9/H2oMFFZGATBRakDKwFCmc57g1aS0C9cG/1iN03U84M2K//sI5QeKzQX+65wamXp
         nsSN8drzZ7CRnRe16olUPMiqFQM994G5kfwar6U0Dk4E6Nhp34tUonZtm2GiCLqwL1FW
         3hew==
X-Gm-Message-State: APjAAAVGM8ytanOQYC7IKqDDQbRclPAryTENQtPjpyNIaLmRTMPyZkVU
	MlYObU7n3jAIb//t3wqwpNDl3vPatcQwgMKQ46A=
X-Received: by 2002:a37:77c5:: with SMTP id s188mr11160695qkc.21.1552243503154;
 Sun, 10 Mar 2019 11:45:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190310181412.GA29653@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1903101920430.3131@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903101920430.3131@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Mon, 11 Mar 2019 00:14:49 +0530
Message-ID: <CAOMPgjjYcWySqSdH-U4LC6GRDYtNJAUcCKHv=a3dTUTF97ZmFQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Multiple blank lines.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000009c4acc0583c1dacf"

--0000000000009c4acc0583c1dacf
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 10, 2019, 11:55 PM Julia Lawall <julia.lawall@lip6.fr wrote:

> > diff --git a/drivers/staging/rtl8712/rtl8712_spec.h
> b/drivers/staging/rtl8712/rtl8712_spec.h
> > index c0bab4c..e9415ae 100644
> > --- a/drivers/staging/rtl8712/rtl8712_spec.h
> > +++ b/drivers/staging/rtl8712/rtl8712_spec.h
> > @@ -30,39 +30,6 @@
> >
> >  #define RTL8712_IOBASE_FF    0x10300000 /*IOBASE_FIFO
> 0x1031000~0x103AFFFF*/
> >
> > -
> > -/*IOREG Offset for 8712*/
> > -#define RTL8712_SYSCFG_              RTL8712_IOBASE_IOREG
> > -#define RTL8712_CMDCTRL_     (RTL8712_IOBASE_IOREG + 0x40)
> > -#define RTL8712_MACIDSETTING_        (RTL8712_IOBASE_IOREG + 0x50)
> > -#define RTL8712_TIMECTRL_    (RTL8712_IOBASE_IOREG + 0x80)
> > -#define RTL8712_FIFOCTRL_    (RTL8712_IOBASE_IOREG + 0xA0)
> > -#define RTL8712_RATECTRL_    (RTL8712_IOBASE_IOREG + 0x160)
> > -#define RTL8712_EDCASETTING_ (RTL8712_IOBASE_IOREG + 0x1D0)
> > -#define RTL8712_WMAC_                (RTL8712_IOBASE_IOREG + 0x200)
> > -#define RTL8712_SECURITY_    (RTL8712_IOBASE_IOREG + 0x240)
> > -#define RTL8712_POWERSAVE_   (RTL8712_IOBASE_IOREG + 0x260)
> > -#define RTL8712_GP_          (RTL8712_IOBASE_IOREG + 0x2E0)
> > -#define RTL8712_INTERRUPT_   (RTL8712_IOBASE_IOREG + 0x300)
> > -#define RTL8712_DEBUGCTRL_   (RTL8712_IOBASE_IOREG + 0x310)
> > -#define RTL8712_OFFLOAD_     (RTL8712_IOBASE_IOREG + 0x2D0)
> > -
> > -
> > -/*FIFO for 8712*/
> > -#define RTL8712_DMA_BCNQ     (RTL8712_IOBASE_FF + 0x10000)
> > -#define RTL8712_DMA_MGTQ     (RTL8712_IOBASE_FF + 0x20000)
> > -#define RTL8712_DMA_BMCQ     (RTL8712_IOBASE_FF + 0x30000)
> > -#define RTL8712_DMA_VOQ              (RTL8712_IOBASE_FF + 0x40000)
> > -#define RTL8712_DMA_VIQ              (RTL8712_IOBASE_FF + 0x50000)
> > -#define RTL8712_DMA_BEQ              (RTL8712_IOBASE_FF + 0x60000)
> > -#define RTL8712_DMA_BKQ              (RTL8712_IOBASE_FF + 0x70000)
> > -#define RTL8712_DMA_RX0FF    (RTL8712_IOBASE_FF + 0x80000)
> > -#define RTL8712_DMA_H2CCMD   (RTL8712_IOBASE_FF + 0x90000)
> > -#define RTL8712_DMA_C2HCMD   (RTL8712_IOBASE_FF + 0xA0000)
> > -
> > -
> > -/*------------------------------*/
> > -
>
> This does more than remove blank lines.
>
> Anyway, I think you have a number of accepted patches now.  Please focus
> on things that involve changing code rather than adjusting whitespace.
>

Yes, Sure. :)

>
> julia
>

--0000000000009c4acc0583c1dacf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 10, 2019, 11:55 PM Julia Lawall &lt;<a href=3D"mailto:julia.law=
all@lip6.fr">julia.lawall@lip6.fr</a> wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">&gt; diff --git a/drivers/staging/rtl8712/rtl8712_spec.h b/driver=
s/staging/rtl8712/rtl8712_spec.h<br>
&gt; index c0bab4c..e9415ae 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl8712_spec.h<br>
&gt; +++ b/drivers/staging/rtl8712/rtl8712_spec.h<br>
&gt; @@ -30,39 +30,6 @@<br>
&gt;<br>
&gt;=C2=A0 #define RTL8712_IOBASE_FF=C2=A0 =C2=A0 0x10300000 /*IOBASE_FIFO =
0x1031000~0x103AFFFF*/<br>
&gt;<br>
&gt; -<br>
&gt; -/*IOREG Offset for 8712*/<br>
&gt; -#define RTL8712_SYSCFG_=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 RTL8712_IOBASE_IOREG<br>
&gt; -#define RTL8712_CMDCTRL_=C2=A0 =C2=A0 =C2=A0(RTL8712_IOBASE_IOREG + 0=
x40)<br>
&gt; -#define RTL8712_MACIDSETTING_=C2=A0 =C2=A0 =C2=A0 =C2=A0 (RTL8712_IOB=
ASE_IOREG + 0x50)<br>
&gt; -#define RTL8712_TIMECTRL_=C2=A0 =C2=A0 (RTL8712_IOBASE_IOREG + 0x80)<=
br>
&gt; -#define RTL8712_FIFOCTRL_=C2=A0 =C2=A0 (RTL8712_IOBASE_IOREG + 0xA0)<=
br>
&gt; -#define RTL8712_RATECTRL_=C2=A0 =C2=A0 (RTL8712_IOBASE_IOREG + 0x160)=
<br>
&gt; -#define RTL8712_EDCASETTING_ (RTL8712_IOBASE_IOREG + 0x1D0)<br>
&gt; -#define RTL8712_WMAC_=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 (RTL8712_IOBASE_IOREG + 0x200)<br>
&gt; -#define RTL8712_SECURITY_=C2=A0 =C2=A0 (RTL8712_IOBASE_IOREG + 0x240)=
<br>
&gt; -#define RTL8712_POWERSAVE_=C2=A0 =C2=A0(RTL8712_IOBASE_IOREG + 0x260)=
<br>
&gt; -#define RTL8712_GP_=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (RTL8712_IOBASE=
_IOREG + 0x2E0)<br>
&gt; -#define RTL8712_INTERRUPT_=C2=A0 =C2=A0(RTL8712_IOBASE_IOREG + 0x300)=
<br>
&gt; -#define RTL8712_DEBUGCTRL_=C2=A0 =C2=A0(RTL8712_IOBASE_IOREG + 0x310)=
<br>
&gt; -#define RTL8712_OFFLOAD_=C2=A0 =C2=A0 =C2=A0(RTL8712_IOBASE_IOREG + 0=
x2D0)<br>
&gt; -<br>
&gt; -<br>
&gt; -/*FIFO for 8712*/<br>
&gt; -#define RTL8712_DMA_BCNQ=C2=A0 =C2=A0 =C2=A0(RTL8712_IOBASE_FF + 0x10=
000)<br>
&gt; -#define RTL8712_DMA_MGTQ=C2=A0 =C2=A0 =C2=A0(RTL8712_IOBASE_FF + 0x20=
000)<br>
&gt; -#define RTL8712_DMA_BMCQ=C2=A0 =C2=A0 =C2=A0(RTL8712_IOBASE_FF + 0x30=
000)<br>
&gt; -#define RTL8712_DMA_VOQ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (RTL8712_IOBASE_FF + 0x40000)<br>
&gt; -#define RTL8712_DMA_VIQ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (RTL8712_IOBASE_FF + 0x50000)<br>
&gt; -#define RTL8712_DMA_BEQ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (RTL8712_IOBASE_FF + 0x60000)<br>
&gt; -#define RTL8712_DMA_BKQ=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (RTL8712_IOBASE_FF + 0x70000)<br>
&gt; -#define RTL8712_DMA_RX0FF=C2=A0 =C2=A0 (RTL8712_IOBASE_FF + 0x80000)<=
br>
&gt; -#define RTL8712_DMA_H2CCMD=C2=A0 =C2=A0(RTL8712_IOBASE_FF + 0x90000)<=
br>
&gt; -#define RTL8712_DMA_C2HCMD=C2=A0 =C2=A0(RTL8712_IOBASE_FF + 0xA0000)<=
br>
&gt; -<br>
&gt; -<br>
&gt; -/*------------------------------*/<br>
&gt; -<br>
<br>
This does more than remove blank lines.<br>
<br>
Anyway, I think you have a number of accepted patches now.=C2=A0 Please foc=
us<br>
on things that involve changing code rather than adjusting whitespace.<br><=
/blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Yes, =
Sure. :)</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
<br>
julia<br>
</blockquote></div></div></div>

--0000000000009c4acc0583c1dacf--

