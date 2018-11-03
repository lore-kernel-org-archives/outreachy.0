X-GM-THRID: 6619603219062456320
X-Received: by 2002:a2e:8887:: with SMTP id k7-v6mr11902lji.3.1541283957460;
        Sat, 03 Nov 2018 15:25:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:6e4c:: with SMTP id q12-v6ls880931lfk.20.gmail; Sat, 03
 Nov 2018 15:25:56 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dsaMOOk4RXdBJ8biuZiTcHm18GI8a0sryAc0vX1OOx/dPSklTTQ2x6zhuYUSy3OCOCkYQ+
X-Received: by 2002:a19:a28f:: with SMTP id l137-v6mr1284506lfe.14.1541283956487;
        Sat, 03 Nov 2018 15:25:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541283956; cv=none;
        d=google.com; s=arc-20160816;
        b=Y1Amw66W1WG8D5zqHajpAPK035LIyKODJAszZ+wOosIjR0XWrR6ANzBtBXxN9F28uE
         J11xwhFIv71PGi7BaitvW0+TBWe1S7hF6XnGeZx7ytXSUzslz/lzUvTNNh2ezAXD9maN
         dk74uoDMozcD5RqsaSreDoMyiF9/HRoszOs1ldT3h2ueZx9qtqSoujgRLMsyTY4s8g4d
         NI0mNAZk5acTGsyBvL8w9qBhvQGiAOMoj0aqH8CfKhsAkaUrna2/hwmHSQrb3JoH0pxv
         UpUt3K6ZXP39zDj5y4yYmqqqZKPVCHB4NAq/1wzVKyGg5L0Zf3Km+G6ENRf5ees1nzgB
         Mywg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=vUCP/vYUdgL+OXKy6WjpWmLdm7MlHK5YYpnQ1f8XLeA=;
        b=J60vXtnPHEv3jKqWi3QmMaoFJxw3kfDJa/Y7/AhHReu05c+eFqaK5ITRdcKQ8D/rNj
         Fz+c4Dh0UkKhbr1YD5eGh9Aa9z+RQ2TJdD5KGDYTsHCJKAhl3PUQpSYpkfANWFnHUb9p
         m4TOdF/6fkLmF+wu+qvJlrMqlk6/vVNO3U1M5yoNwumjobryIzBf+vbfD4fm9ogt0ld9
         rfH8r5iJBAHNKyBguJPHFsAvKJYpwXD7RsQ5vTop3gemOAaF9kkW3MZNOv8kNW4silZm
         85yiux0jDqFZi/Vx8BMVYc8KJw/NuR1dm8qTeTOGALT6w5U+HtnWXEf8REn1wKXgsDjK
         0Clg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kF0EYP0x;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d9-v6si1041481lfi.5.2018.11.03.15.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 15:25:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kF0EYP0x;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x542.google.com with SMTP id x2-v6so4551682eds.3
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 15:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=vUCP/vYUdgL+OXKy6WjpWmLdm7MlHK5YYpnQ1f8XLeA=;
        b=kF0EYP0xgTU3He9twwhU9C498oqG24fo/09b98aKGnMOlJPVLsl1/1sMF/wJY4yfIW
         4W53SOjoCNVdJ8LHdXus5vzYurttxaqbwybAibjmz3aBWz3uGyh1RGthQU3YlU0fCx8c
         PPY+b7RqMQY9wBrVEdyEidkoTUqmFbF8lCXSMglu83AKxcLGMh03JwFHvOSznOFJUIID
         ht78eikVMcjQvIFwlPE/NOjabvnXOmXKVyAsx2m0i1AUTAOPZWncjJmWi4JlEZOEsmi9
         nthSSAq0aMZzMwyUW/gy7yMdGBTUTxgqqn37lVlYGYbUJ+Ssh19MNY2zjdCeQQG2SpJT
         H+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=vUCP/vYUdgL+OXKy6WjpWmLdm7MlHK5YYpnQ1f8XLeA=;
        b=W0P92GC/xbUE1mCliuDpsWwZPWVyLX8hvtkgvDrDNgN4eUnhO7HzRUTWO2BDXDjWe6
         CZIE6LfRczWfh1o6va1z1qYvJdpEC8rg1ZLS1jisv6CojPrx7/QMLa3ZYk/lIF1m+lf+
         Tfb1rsBQkXc6FTQmt5jfgI2ctgnjhoW7xjypTFrHsU7zMyYtAjbNjltExxb3Dl+979wm
         qadPG4brNvoyqAFSe+RgDB41zEixD52+vHrpF2GtpN/0RL3MFJBIhidL0BNZSgPrcrsu
         Khk/2Uwl7PMuY0FRoL1frbZI+/DHh+K0eONnFvtrqPK8J8DjdGtd1+DO0q2eH4w3/Up0
         022Q==
X-Gm-Message-State: AGRZ1gJxqexbZ4bEYis5OitPoLZq3pQqZ10Kxw3xXf6ceA5oseWeVoQT
	CiU3uM8+unlCEDYN2i7tdCsoNB5ap7IrB/+ggw==
X-Received: by 2002:a17:906:30d5:: with SMTP id b21-v6mr228065ejb.42.1541283955757;
 Sat, 03 Nov 2018 15:25:55 -0700 (PDT)
MIME-Version: 1.0
References: <20181103120109.780-1-jbi.octave@gmail.com> <alpine.DEB.2.21.1811031516160.2416@hadrien>
 <20181103150655.GA3486@kroah.com>
In-Reply-To: <20181103150655.GA3486@kroah.com>
From: Jules Octave <jbi.octave@gmail.com>
Date: Sat, 3 Nov 2018 22:25:18 +0000
Message-ID: <CAOuULM7QfLkXzUOaFfYaqMnCvoRb+3aGZLEe-mOXDh0OpBTACw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging:dm365_ipipe:Add SPDX License Identifier
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
	mchehab@kernel.org, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: multipart/alternative; boundary="000000000000ae56dd0579ca22b1"

--000000000000ae56dd0579ca22b1
Content-Type: text/plain; charset="UTF-8"

Thanks all for your kind advise . really appreciate it.

*Jules*
*..*
Positive action combined with positive thinking results in success - Shiv
Khera


On Sat, 3 Nov 2018 at 15:06, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sat, Nov 03, 2018 at 03:16:39PM +0100, Julia Lawall wrote:
> >
> >
> > On Sat, 3 Nov 2018, Irenge Jules Bashizi wrote:
> >
> > > Add SPDX license Identifier to fix checkpatch malformed license warning
> > >
> > > Remove old style text describing the License
> > >
> > > Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
> > > ---
> > >  .../staging/media/davinci_vpfe/dm365_ipipe.c  | 31 ++++++-------------
> > >  1 file changed, 9 insertions(+), 22 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > > index dcfeac818451..20bd6d652931 100644
> > > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > > @@ -1,29 +1,16 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +
> > >  /*
> > > - * Copyright (C) 2012 Texas Instruments Inc
> >
> > Is it correct to remove this?
>
> Not at all, this should never be removed.
>
> thanks,
>
> greg k-h
>

--000000000000ae56dd0579ca22b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks all for your kind advise . really appreciate it.<di=
v><br><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div><div><b><font color=3D"#0078d7" size=3D"2">Jules</font></b=
></div></div><div><div><font color=3D"#0078d7" size=3D"1"><b>..</b></font><=
/div><div><span style=3D"font-size:x-small;color:rgb(51,51,51);font-family:=
&quot;helvetica neue&quot;,Helvetica,Arial,sans-serif">Positive action comb=
ined with positive thinking results in success - Shiv Khera</span><br></div=
></div><div><b></b></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div><br></div><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sat, 3 Nov 20=
18 at 15:06, Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">greg=
kh@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">On Sat, Nov 03, 2018 at 03:16:39PM +0100, Julia Lawall wrote:<br>
&gt; <br>
&gt; <br>
&gt; On Sat, 3 Nov 2018, Irenge Jules Bashizi wrote:<br>
&gt; <br>
&gt; &gt; Add SPDX license Identifier to fix checkpatch malformed license w=
arning<br>
&gt; &gt;<br>
&gt; &gt; Remove old style text describing the License<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Irenge Jules Bashizi &lt;<a href=3D"mailto:jbi.oct=
ave@gmail.com" target=3D"_blank">jbi.octave@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 .../staging/media/davinci_vpfe/dm365_ipipe.c=C2=A0 | 31 +++=
+++-------------<br>
&gt; &gt;=C2=A0 1 file changed, 9 insertions(+), 22 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/d=
rivers/staging/media/davinci_vpfe/dm365_ipipe.c<br>
&gt; &gt; index dcfeac818451..20bd6d652931 100644<br>
&gt; &gt; --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c<br>
&gt; &gt; +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c<br>
&gt; &gt; @@ -1,29 +1,16 @@<br>
&gt; &gt; +// SPDX-License-Identifier: GPL-2.0<br>
&gt; &gt; +<br>
&gt; &gt;=C2=A0 /*<br>
&gt; &gt; - * Copyright (C) 2012 Texas Instruments Inc<br>
&gt; <br>
&gt; Is it correct to remove this?<br>
<br>
Not at all, this should never be removed.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--000000000000ae56dd0579ca22b1--

