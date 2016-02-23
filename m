X-GM-THRID: 6254207218410848256
X-Received: by 10.13.236.84 with SMTP id v81mr30505029ywe.2.1456214472831;
        Tue, 23 Feb 2016 00:01:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.133 with SMTP id f5ls2019877qgf.91.gmail; Tue, 23 Feb
 2016 00:01:12 -0800 (PST)
X-Received: by 10.129.83.85 with SMTP id h82mr31323716ywb.18.1456214472279;
        Tue, 23 Feb 2016 00:01:12 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22a.google.com (mail-qk0-x22a.google.com. [2607:f8b0:400d:c09::22a])
        by gmr-mx.google.com with ESMTPS id i133si1653693ywe.7.2016.02.23.00.01.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 00:01:12 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) client-ip=2607:f8b0:400d:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22a.google.com with SMTP id o6so65439139qkc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 00:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=+Gk1WumWdYX5dEuAKOio63OqxcqAYUOkfyXqXy18BHc=;
        b=v/hQuZzL7sMmqJwCAhBYS+lMzI0gWaX6doiPYiA+1gjhyy6liXurNyuWkqx0HFTIOT
         Ozk8O1GR/n2Vs+dTHXwEBZOG61+8EO2YmaeIJEv/pPzr+xTdDnaRwaymUbsVrSclmQ8p
         dNcWAxR2E69GBIw0oqprXnMB/IC5Hh43sp8A+2/tb9ILWxhUEqnMWZwd0H85Dh0/+/9y
         RhZj6gP12ahpVRaGxrse6V6TpKoozI6mJtoUiV5FOaEAqXXiSdTrmTzvVTrNbCAEASZn
         ++l5pi0pmyf7fzRnNXzZoINwQVcvTK78/lhhKoiMZpsTdATN06rDO45LUwdX61sGuhEc
         GOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=+Gk1WumWdYX5dEuAKOio63OqxcqAYUOkfyXqXy18BHc=;
        b=Guq/nmfDzimAfGgG3xksBu1PErrYz8kjjIBJrRhNo6nOdD4B74EsPw8BbFaCTlUuFJ
         rXI2zTrvIN38vETjCr8CFaA4wxsg52PtInR2VYxUv4cVYYL/2phUV6EU/iAIX/1QW/qb
         PDfbLLb90H+PRZFAEFCYcgr/lwEs2d4omtMQrzA+byZybgUjmr2Ol7CvatEbmh/6wkpr
         tPq0MHa9vYq0CRjJg8HZ6Htr4lxcfrc34bzgVP7OYvw0wfpm7lByvP36jJWWh73kHYSt
         VgMkwhVlzOTW+lj9HEXh53Cl9JsC4hEV69eBRGG61eKPPSv5cK4ZYSMc21xIVavV7gCJ
         dYng==
X-Gm-Message-State: AG10YOTzbkFkCDIaFKRuZX28gCFbgIGGg6k7ctvQoqBAINJeM3DOKfO8LAhEKbvaz37nxswFV0LmIR8WXOcHvw==
MIME-Version: 1.0
X-Received: by 10.55.49.11 with SMTP id x11mr18500360qkx.86.1456214472106;
 Tue, 23 Feb 2016 00:01:12 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 00:01:12 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602221915500.2785@hadrien>
References: <20160222195807.GA12070@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602221915500.2785@hadrien>
Date: Tue, 23 Feb 2016 13:31:12 +0530
Message-ID: <CA+5yK5F5pAs8MLm2NDdUF9_h18Q0tCy=9Dars8R58e3eFzSC=Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: spear_adc: Use devm_iio_device_register
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1147807853abbd052c6b5a1b

--001a1147807853abbd052c6b5a1b
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 5:46 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> There is an iounmap in the remove functon.  Can that be devmified too?
>
> julia
>

It can be, I believe. But I think Greg would want the change to be a
separate patch.
Since the function contains an of_iomap which has the subsequent freeing
iounmap that you pointed out, and as this conversation
<https://lkml.org/lkml/2013/8/13/32> suggests devm_of_iomap() is not
correct usually, should I switch to devm_ioremap()?

I can send a separate patch for this if you agree.

Amitoj

--001a1147807853abbd052c6b5a1b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tue, Feb 23, 2016 at 5:46 AM, Julia Lawall &lt;=
<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:=
<br>&gt;<br>&gt; There is an iounmap in the remove functon.=C2=A0 Can that =
be devmified too?<br>&gt;<br>&gt; julia<br>&gt;<br><br>It can be, I believe=
. But I think Greg would want the change to be a separate patch.<br>Since t=
he function contains an of_iomap which has the subsequent freeing iounmap t=
hat you pointed out, and as <a href=3D"https://lkml.org/lkml/2013/8/13/32">=
this conversation</a>=C2=A0suggests devm_of_iomap() is not correct usually,=
 should I switch to devm_ioremap()?<br><div><br></div><div>I can send a sep=
arate patch for this if you agree.</div><div><br></div><div>Amitoj</div></d=
iv>

--001a1147807853abbd052c6b5a1b--

