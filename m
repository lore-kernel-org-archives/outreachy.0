X-GM-THRID: 6607744026526351360
X-Received: by 2002:aca:cdd5:: with SMTP id d204-v6mr13375020oig.53.1538492136326;
        Tue, 02 Oct 2018 07:55:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:4697:: with SMTP id k23-v6ls14209224oic.10.gmail; Tue,
 02 Oct 2018 07:55:35 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62nFfwgAPdSieo8MjQBKJcQOvnn5xUolj0Fd8TUVqymQGIatgYzJyhc3zHD9nfet3SdtbIr
X-Received: by 2002:aca:e612:: with SMTP id d18-v6mr1663099oih.32.1538492135491;
        Tue, 02 Oct 2018 07:55:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538492135; cv=none;
        d=google.com; s=arc-20160816;
        b=E/n/H9kN9hEa/+oZDr5u6csD65t6w2fz9s+vGF4hgJUqm7vm0rrL8qmR+kYINK/KF0
         POq/1Wo/mE4x8VIzYsMlTmnH/jOOKHyZumay+dq7B6lIz3zTsac3m+os8lpyQ91i9ptM
         a8pbtbQbTS7KxoXjOZXzqqK6pzjjywt4ye7R6DQ0CKWAWZbTSjdIh0rdvXjd5uyaM/3l
         zp5xQmaH6lxMmANbr1I/fWc9iV305BcQzrVoRvt/973aP6Hhlx8fIYdH1otrRFseHuyh
         rdyxYn1Qo03L4TFSvp46mxAZMv/wKQMmtKRoUVm3XTnxsscXFDjelvEVYQn0AxMPr5A/
         BpkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xBqNttknI2LMr3g1luRUuUeYFW8Q11YKiBiwCYIYPKM=;
        b=DcO5HaNY4UfM/8sJLk/nyUeO4Oy083Zy7O71UgPs59hTBci94N+8jOlhV+PdWxIAhw
         UL+2uk0Tv0y3YNVE1VqLlouMEXsX4xELZXvU/HX0YfQ+bDY3c+1HDshUuvXJ9I0IITcl
         wCGyySpjt0bwkdJW9CwwKBkOhJs6CobWxzVVvBh2HMglG9MB8B7we+rXr9wiKqDAEaeC
         iS14lSQ9ZZcYUMM1CT/Lrq290FV5SWI8IJ2D3c+vUmc8phZHdvFZ9bqGKx/ug65nCjt3
         gDZxYi02dR7p9wXTXyrBxf+EtfHy7SO9ZCBT7j4FBUXkmyCpbS0KEQrchOTlTER9MGET
         edWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u1YkJhlF;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-it1-x129.google.com (mail-it1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id q24-v6si896045otl.1.2018.10.02.07.55.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 07:55:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u1YkJhlF;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x129.google.com with SMTP id l127-v6so7310107ith.1
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Oct 2018 07:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xBqNttknI2LMr3g1luRUuUeYFW8Q11YKiBiwCYIYPKM=;
        b=u1YkJhlF4XNAcQccDkWkvaZOOp7t63k2NKU3MtET4Wz+Wt4wXasnbZc2Uwsu6rZ3Us
         5n9EF03Y3Xh31gPetbc+VWhwEdBNktbK6wdtDAh1Kt5I8EgDjPkYYDZCGmsqN75kCe1y
         Gto8zODYiT8tnGScEc/nKiCPrerUxqW+MfyI5XY3dlPrd6iqEmRLeJMqKvmGySZCHewG
         pOu1yzbYnI/UjrF3m+t4AR4lkOEztsVBpwuY8VEzx8/MZ6hWn4L9M9FzzVCu8EWPevK1
         mnQdiH/7S/B0+3MiIJbXLrSnhKhRpmSCWM8DCkYrka7Z+URuux2lLNqAdSmsos1Ux/hq
         KDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xBqNttknI2LMr3g1luRUuUeYFW8Q11YKiBiwCYIYPKM=;
        b=HFvtyq2LxpbBD6FYINh0jKlG9X+0OPO8Je6TP3QeqCRpT5NSpd5GizyLxdPyiA9AQ6
         JyQzJMiZw2lt1CkYOT6oLqDWOCcTK9gW2Hw+O/+cHw7kX7iBeoLrvlBw21dv3C336B6P
         h/2B9T4hqHP/BcL0UN6ylS+QalxikdsypiU2YAD+/8YlwppJfLxYTvIXYmY6TsikcKMd
         txYtydTPLcG2dC6ZKHUvaShXAMF4cRpi+Gv92vdKKvtEiMvRHdUErcwcvKMRRNH6zygp
         vWPqP3duafYP3ibVWOvWeYQorG2Pawx2zghuZfHsnIyDbXe2a9GX6C03WHUHlaCyBlqA
         +IWw==
X-Gm-Message-State: ABuFfohfQz9R0FFZs6I4tYSV0HVUJFqBr/QEbOafI/MmyM0AZ2I8fyMy
	nuq/szXoJbd5BRgEh5/98AmFGk2KxsVwJrKqPqI=
X-Received: by 2002:a24:2487:: with SMTP id f129-v6mr2181877ita.51.1538492135079;
 Tue, 02 Oct 2018 07:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <20181002130124.GA27163@armorer> <alpine.DEB.2.20.1810021505480.3460@hadrien>
 <20181002131306.GA32586@kroah.com>
In-Reply-To: <20181002131306.GA32586@kroah.com>
From: Mamta Shukla <mamtashukla555@gmail.com>
Date: Tue, 2 Oct 2018 20:24:55 +0530
Message-ID: <CAMNCNOVLEDUvg0RAT_ZP2rBYtR4VSkZRP+i+EdbmwcB+-E4EDQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace udelay()
 with usleep_range()
To: gregkh@linuxfoundation.org
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000033859e0577401d52"

--00000000000033859e0577401d52
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 2, 2018 at 6:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Oct 02, 2018 at 03:07:14PM +0200, Julia Lawall wrote:
> >
> >
> > On Tue, 2 Oct 2018, Mamta Shukla wrote:
> >
> > >     udelay(unsigned long usec) replaced with usleep_range(unsigned long
> > >     min, unsigned long max) to prevent trigger by interrupt in
> specified
> > >     duration.Also provides better scheduling,power management for
> drivers.
> >
> > Thanks for the patch.  A few picky comments.  In English, it is more
> > readable to put some space after punctuation.  It is also not necessary
> to
> > indent the log message.
> >
> > Also, it would be good to explain how you chose the upper limit.
>
  Thank you for feedback Julia.I will keep in mind all these  while writing
next patch.
  I replaced udelay() with usleep_range to improve the responsiveness. I
considered these values
  to be equivalent for values by udelay(). But as mentioned by Greg , since
this depends on response
  time  of hardware and no exact value can be decided.

>
> It is _required_ to explain this.  This change comes up every so often,
> and I keep rejecting it as no one knows what value to put here that will
> correctly work.  So I recommend just leaving it alone unless you hav the
> hardware and can test this type of change properly.
>
> thanks,
>
> greg k-h
>
 Thank you for feedback Greg. I understood the hardware dependency for this
driver.
 Is it possible to remove this delay ?  This driver needs DMA accessibility
in Linux.
 So if one has to develop PCIe driver for any processor(intel, altera),
there should be
 different driver for each platform.


Thanks,

Mamta Shukla

--00000000000033859e0577401d52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><br><br><div class=3D"gmail_quote"><div dir=3D"l=
tr">On Tue, Oct 2, 2018 at 6:43 PM Greg KH &lt;<a href=3D"mailto:gregkh@lin=
uxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">On Tue, Oct 02, 2018 at 03:07:14PM +0200, Julia La=
wall wrote:<br>
&gt; <br>
&gt; <br>
&gt; On Tue, 2 Oct 2018, Mamta Shukla wrote:<br>
&gt; <br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0udelay(unsigned long usec) replaced with uslee=
p_range(unsigned long<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0min, unsigned long max) to prevent trigger by =
interrupt in specified<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0duration.Also provides better scheduling,power=
 management for drivers.<br>
&gt; <br>
&gt; Thanks for the patch.=C2=A0 A few picky comments.=C2=A0 In English, it=
 is more<br>
&gt; readable to put some space after punctuation.=C2=A0 It is also not nec=
essary to<br>
&gt; indent the log message.<br>
&gt; <br>
&gt; Also, it would be good to explain how you chose the upper limit.<br></=
blockquote><div>=C2=A0 Thank you for feedback Julia.I will keep in mind all=
 these=C2=A0 while writing next patch.<br></div><div>=C2=A0 I replaced udel=
ay() with usleep_range to improve the responsiveness. I considered these va=
lues <br></div><div>=C2=A0 to be equivalent for values by udelay(). But as =
mentioned by Greg , since this depends on response <br></div><div>=C2=A0 ti=
me=C2=A0 of hardware and no exact value can be decided. <br> </div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
<br>
It is _required_ to explain this.=C2=A0 This change comes up every so often=
,<br>
and I keep rejecting it as no one knows what value to put here that will<br=
>
correctly work.=C2=A0 So I recommend just leaving it alone unless you hav t=
he<br>
hardware and can test this type of change properly.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>=C2=A0Thank you for feedback Greg. I understood the hard=
ware dependency for this driver.<br>=C2=A0Is it possible to remove this del=
ay ?=C2=A0 This driver needs DMA accessibility in Linux.<br></div>=C2=A0So =
if one has to develop PCIe driver for any processor(intel, altera), there s=
hould be <br></div>=C2=A0different driver for each platform. <br clear=3D"a=
ll"><div><div><div><br></div><div><br></div><div>Thanks,<br>=C2=A0<br></div=
><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_si=
gnature"><div dir=3D"ltr"><font face=3D"arial, helvetica, sans-serif">Mamta=
 Shukla</font><div><font face=3D"arial, helvetica, sans-serif"><br></font><=
/div></div></div></div></div></div></div>

--00000000000033859e0577401d52--

