X-GM-THRID: 6663442013681090560
X-Received: by 2002:a17:906:16c6:: with SMTP id t6mr118690ejd.6.1551461975777;
        Fri, 01 Mar 2019 09:39:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3645:: with SMTP id r5ls75392ejb.4.gmail; Fri, 01
 Mar 2019 09:39:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqxbH+/EXPHo3zs8fuu7Ydks8flZsVTxsPK2VCvsvSRKAwW8VbZcZnA5YjDYXkkmR0k3X5lO
X-Received: by 2002:a17:906:2641:: with SMTP id i1mr716839ejc.9.1551461975049;
        Fri, 01 Mar 2019 09:39:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551461975; cv=none;
        d=google.com; s=arc-20160816;
        b=GR8B7cBFiMQVJCXT0rP52vAIHXH32K03cbo/bvZWztk6llT5xK+baNP7ocUuBn9aWY
         eiIPrIO2HE8vZNP2Do7L1JhXZWQItZFOmanVD4xCF9WOFzqTzn/YlR8eokszM8XYAgwf
         SFRpWBkud6n1zZUO2PdlPE+fIZqvq5VQx4+DvijeZ+dekvd+6hHhqBAwXUnyD5J3Li+P
         wHAdKZ65VNmpP3bmOXEHQkQXB/XBNwfoso09gwi11FuyfJQo4eMQoTsZvUzMaUOQN6f/
         iosDqtLFj8ADN1ZSqyvoDnwwEzXLftkVRP0zeFJW9Q6VHCCCHnFpWL8Zxz1T/5xfx7qU
         ZA1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=2JDcr7iF3guLF4RE2R4RAr7dRLcE0zjTiYR7tcGK5ww=;
        b=pWMQBTdbiy1d4NzXMCcfWSQUJaG+Qre5MtJAGmvqDuUP7LcHkJKIfZbcCq/H+JsQfJ
         ex0It2w2uoVKGsfVcswN4bBZhIAQ2odzk+eQSYSDvDDVwCULJXaXMeIFAiaxdlnk/0hD
         OeQwFQFeUka+hj0nRxdlEdHhcUfRLlKZsrKc3vC754a3Ymt0P57ROIyEMyTyGPc26mqP
         jwL3Hqxc/ZNEco13poyNjLo/iCkWFbkO+gc2bX0t+eB6kwp0px3D9Asq/CBLVgguPfGL
         T/SlJHkb+ZMxRCxsclqm97FdjojioCJNUIeeZzNtTBwaNYfdAat+g4800SND2Une8Chq
         nwNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KF/4PLGr";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c7si591506ejx.1.2019.03.01.09.39.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 09:39:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KF/4PLGr";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x544.google.com with SMTP id x7so20647920eds.8
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 09:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=2JDcr7iF3guLF4RE2R4RAr7dRLcE0zjTiYR7tcGK5ww=;
        b=KF/4PLGruWPjiQ2IdWgHbevy6pIRERdionwk8JcxBU1PRbkhkFJIMH7RUceHawhsPP
         WDIUYmObbEU1VC/cROhGdBu050Wkp5HrkvTQWWyFWNdhZSN66NZk3icUKg3PYHjXnMzp
         SVKiqA8ZcvFnXE20uMrpYjneWC7R3QprfG6hJtI+r4eFaw5kWLLU5HLnO9Uwdqh/wxqI
         2JvrjoWTQMrVY8YHEl+UWIl8wd+mlVmFxk+BWW5kufes3BmdtvPj2MPdif16vAF9V19p
         6fjSAzqzu0ud+TkMEAxL6Yis95m+Mfhq6twDjWpdbd/cGcre1WncRpSRZSk9oT9uu/88
         j5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=2JDcr7iF3guLF4RE2R4RAr7dRLcE0zjTiYR7tcGK5ww=;
        b=Aj0ALEhKLTDGgosL0z15tNLOGV1l47iTEpJOk4L3IWqTKYTty5tXq2+DJYLhkARQuE
         DGv0PsRSF6J0+PVbl1crqRONWWdIdvRJxdh1v9Q3a9gVH/xBaViaeME5CZJ3XX1iDvVh
         Ih0R1NJStkeoRSmI8Oz09I8D5mAEOEfJ0FijoOgz+/TnChGJJXxds5KEk+l+m39cXGEy
         jVEYWzj+MNTLs/2uVkkm0hQ6sO6PQi98Os2mlI6EqQsP3uWSLoOU+KIh88+7738O+Xy3
         ldn07DXIDvZ0kA1e3Jg4ZYaLqjkL0uMirT9xwJ+UwJWe2C4deZJ7qZJ7Bj+86GRhu4ub
         Xm2g==
X-Gm-Message-State: APjAAAXiE5dZ5E1fMrOt2iOXrkflHWY8tpQ3TVkviy8QwNv+DHR46JMb
	v0k+iRjlR0090Fl+g5KzLpjYGJhJCI+M1IjPykKvcLaeVw==
X-Received: by 2002:aa7:cb52:: with SMTP id w18mr4877980edt.257.1551461974579;
 Fri, 01 Mar 2019 09:39:34 -0800 (PST)
MIME-Version: 1.0
References: <20190301151801.7886-1-jbi.octave@gmail.com> <20190301151801.7886-2-jbi.octave@gmail.com>
 <20190301153935.GA3877@kroah.com>
In-Reply-To: <20190301153935.GA3877@kroah.com>
From: Jules Octave <jbi.octave@gmail.com>
Date: Fri, 1 Mar 2019 17:38:58 +0000
Message-ID: <CAOuULM6W1PtuaysLX7=z+nXhXnM35Wyz65Gx++urmrLJcbGe2w@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: mt7621-dma: add SPDX GPL-2.0 or later
 version license identifier
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000e09d2505830be372"

--000000000000e09d2505830be372
Content-Type: text/plain; charset="UTF-8"

Some people say  GPL-2.0+ has deprecated (
https://www.drupal.org/project/lightning/issues/2938910 ) but I will
change it to GPL-2.0+.
I tried looking  on  https://spdx.org/licenses/

Kind regards,
*Jules*
*..*
BCS West Yorkshire Secretary
Positive action combined with positive thinking results in success - Shiv
Khera


On Fri, 1 Mar 2019 at 15:39, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Fri, Mar 01, 2019 at 03:18:00PM +0000, Jules Irenge wrote:
> > Add SPDX GPL-2.0-or-later license to fix missing SPDX warning
> >  reported by checkpatch.pl.
> >
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c
> b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > index d67a2504adb1..7d69586f23c0 100644
> > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > @@ -1,3 +1,4 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
>
> Shouldn't this be:
>
> // SPDX-License-Identifier: GPL-2.0+
>
> The "or later" is starting to get used, but I don't think it's all that
> prelevant yet.  What did you read to decide to use that format instead
> of the "+" format?
>
> thanks,
>
> greg k-h
>

--000000000000e09d2505830be372
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Some people say=C2=A0 GPL-2.0+ has d=
eprecated (=C2=A0<a href=3D"https://www.drupal.org/project/lightning/issues=
/2938910" target=3D"_blank">https://www.drupal.org/project/lightning/issues=
/2938910</a>=C2=A0) but I will=C2=A0 change it to GPL-2.0+.<br></div><div>I=
 tried looking=C2=A0 on=C2=A0=C2=A0<a href=3D"https://spdx.org/licenses/">h=
ttps://spdx.org/licenses/</a></div><div><br></div><div>Kind regards,</div><=
div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div><div><b><font color=3D"#0078d7" size=3D"2">Jules</font></b>=
</div></div><div><div><font color=3D"#0078d7" size=3D"1"><b>..</b></font></=
div><div><font color=3D"#000000" size=3D"1">BCS West Yorkshire Secretary</f=
ont></div><div><span style=3D"color:rgb(51,51,51);font-family:&quot;helveti=
ca neue&quot;,Helvetica,Arial,sans-serif"><font size=3D"1">Positive action =
combined with positive thinking results in success - Shiv Khera</font></spa=
n></div></div><div><b></b></div></div></div></div></div></div></div></div><=
/div></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 1=
 Mar 2019 at 15:39, Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.or=
g">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On Fri, Mar 01, 2019 at 03:18:00PM +0000, Jule=
s Irenge wrote:<br>
&gt; Add SPDX GPL-2.0-or-later license to fix missing SPDX warning<br>
&gt;=C2=A0 reported by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" =
target=3D"_blank">checkpatch.pl</a>.<br>
&gt; <br>
&gt; Signed-off-by: Jules Irenge &lt;<a href=3D"mailto:jbi.octave@gmail.com=
" target=3D"_blank">jbi.octave@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +<br>
&gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/=
mt7621-dma/mtk-hsdma.c<br>
&gt; index d67a2504adb1..7d69586f23c0 100644<br>
&gt; --- a/drivers/staging/mt7621-dma/mtk-hsdma.c<br>
&gt; +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c<br>
&gt; @@ -1,3 +1,4 @@<br>
&gt; +// SPDX-License-Identifier: GPL-2.0-or-later<br>
<br>
Shouldn&#39;t this be:<br>
<br>
// SPDX-License-Identifier: GPL-2.0+<br>
<br>
The &quot;or later&quot; is starting to get used, but I don&#39;t think it&=
#39;s all that<br>
prelevant yet.=C2=A0 What did you read to decide to use that format instead=
<br>
of the &quot;+&quot; format?<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--000000000000e09d2505830be372--

