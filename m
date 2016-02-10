X-GM-THRID: 6249397284630429696
X-Received: by 10.31.9.78 with SMTP id 75mr36469861vkj.9.1455091508102;
        Wed, 10 Feb 2016 00:05:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.145 with SMTP id f17ls222902qgd.27.gmail; Wed, 10 Feb
 2016 00:05:05 -0800 (PST)
X-Received: by 10.140.143.200 with SMTP id 191mr36478160qhp.3.1455091505939;
        Wed, 10 Feb 2016 00:05:05 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x243.google.com (mail-ob0-x243.google.com. [2607:f8b0:4003:c01::243])
        by gmr-mx.google.com with ESMTPS id c15si497888igm.1.2016.02.10.00.05.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:05:05 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::243 as permitted sender) client-ip=2607:f8b0:4003:c01::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x243.google.com with SMTP id il1so1099951obb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=MwkTgqzPcOaIomr/a0o5yamdjWaJWI27yourosFuF4g=;
        b=C4+vUi+eY0QC7vYMwBRjK8eO+gRbqFrt0fYwXCez/2hsb9Efa8xgKKdGx2WD/dqv+r
         CnNireVe1gsBVA1E3QTT5NsxyPsvw6mql120SzcRhy+KiHJbSuMi3YjDUyYL8+veV17l
         FCoH5gSO/SrNv4PmkeS15TLwJuQJ3B5jKV6VJVq8ADVeRNi5Y83rkKv9lvwSoftGlktP
         9n7oPDsqexOvzYkqSqxcheA17ztZCZmpVp3arKgjEnL+B8YV4j3wgBnPGBfuCwvlg80e
         EYeXp0xyvpg/+o+ldSBOILPTwQlUZjDdrVBh8QVdhVmBzMr+wCP2xPsH8C+PhDEnVZL0
         68vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=MwkTgqzPcOaIomr/a0o5yamdjWaJWI27yourosFuF4g=;
        b=dDWZaw/A9gRxSeEE+uQDHWeVLsYmSAxmaXmAYQ4l4dAfa0fcjqhW2uMlVMa7zvUTem
         VGowRplEeUCuiWRquQXvYQDs8D9VHJ4mwCc+6hVuJ/juAJ6iniNK783iwzBCUuGEe1KW
         cMgrGnSi3LOzFBw62TOVL1Fn0Oop5ixyegs2kAKIlIiWOHR5mE7LfTagJJRRnYoxDqde
         3psb2zRJhiKxHV0lC7mQJa8J7f6I4xmWHn6BHer3wnWchpvjgyzKtXSFXv5Duvx2rtK2
         GxtRvRSruAiR0M4v2WBmpj10/K2AZrIStVJeVcpQeUGeYyg7sSJX0cxREJk8881PQwkE
         a8bA==
X-Gm-Message-State: AG10YOSoX5qCBH1QRqOI1ey9DHGLA81fYm0OyjaQMm/4/61Kyoats6Z01Q7jOgNcKeqVYYWKFihy1i8dIP8ERA==
MIME-Version: 1.0
X-Received: by 10.60.146.169 with SMTP id td9mr33977965oeb.32.1455091505726;
 Wed, 10 Feb 2016 00:05:05 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Wed, 10 Feb 2016 00:05:05 -0800 (PST)
In-Reply-To: <20160210074242.GB24358@sudip-pc>
References: <20160210033729.GA2677@janani-Inspiron-3521>
	<alpine.DEB.2.02.1602100828060.2050@localhost6.localdomain6>
	<20160210074242.GB24358@sudip-pc>
Date: Wed, 10 Feb 2016 03:05:05 -0500
Message-ID: <CANnt6XmEPTr4W9fSq+Wnx+qcBP3PsPFKEoXL9NW4GCtFdE-9iw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: xgifb: Rename local variable
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7b45047a50a7ba052b65e4fc

--047d7b45047a50a7ba052b65e4fc
Content-Type: text/plain; charset=UTF-8

> >
> > So this variable is only initialized, but never used?  If that is the
> > case, then a better solution would be to drop it.
> >
>
I was in fact debating between dropping it and renaming it but decided
on renaming it as I thought it might be used in the future, looking at the
if() check and the comment above it. Not sure if this was a good idea.

> > Or maybe it was not intended to introduce the local variable.  You might
> > want to see what you can find with git blame on the line that makes the
> > local declaration.
>
Sure, I will do that.

>
> If you remember in the last round of Outreachy also we had a similar
> discussion, I will see if I can find out that thread.

I'd love to see it, Sudip.

Thanks,
Janani.

>
> regards
> sudip
>

--047d7b45047a50a7ba052b65e4fc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">
&gt;<br>
&gt; So this variable is only initialized, but never used?=C2=A0 If that is=
 the<br>
&gt; case, then a better solution would be to drop it.<br>
&gt;<br></div></div></blockquote><div>I was in fact debating between droppi=
ng it and renaming it but decided <br></div><div>on renaming it as I though=
t it might be used in the future, looking at the<br></div><div>if() check a=
nd the comment above it. Not sure if this was a good idea.=C2=A0 <br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">
&gt; Or maybe it was not intended to introduce the local variable.=C2=A0 Yo=
u might<br>
&gt; want to see what you can find with git blame on the line that makes th=
e<br>
&gt; local declaration.<br></div></div></blockquote><div>Sure, I will do th=
at. <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div cla=
ss=3D"h5">
<br>
</div></div>If you remember in the last round of Outreachy also we had a si=
milar<br>
discussion, I will see if I can find out that thread.=C2=A0</blockquote><di=
v>I&#39;d love to see it, Sudip.<br><br></div><div>Thanks,<br></div><div>Ja=
nani. <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
<br>
regards<br>
<span class=3D"HOEnZb"><font color=3D"#888888">sudip<br>
</font></span></blockquote></div><br></div></div>

--047d7b45047a50a7ba052b65e4fc--

