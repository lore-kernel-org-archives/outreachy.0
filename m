X-GM-THRID: 6255196435658047488
X-Received: by 10.107.132.73 with SMTP id g70mr2639578iod.4.1456410537485;
        Thu, 25 Feb 2016 06:28:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.4.2 with SMTP id 2ls445528ioe.10.gmail; Thu, 25 Feb 2016
 06:28:57 -0800 (PST)
X-Received: by 10.107.3.24 with SMTP id 24mr2558957iod.12.1456410537126;
        Thu, 25 Feb 2016 06:28:57 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-oi0-x243.google.com (mail-oi0-x243.google.com. [2607:f8b0:4003:c06::243])
        by gmr-mx.google.com with ESMTPS id xh11si247930igb.0.2016.02.25.06.28.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:28:57 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::243 as permitted sender) client-ip=2607:f8b0:4003:c06::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x243.google.com with SMTP id y78so2621883oif.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=Vm6fkKer/2y7zQbNDyqL9fFdF1dpky7eJMgjKhbFFQw=;
        b=ACjPPaO0VrbCTZYW4fD9FNorg6ZyKVhFpKvORJSYNGy1WR5jWXuFVhQUcbLP6FScAF
         vMNMeHksgq3yuWz+Ixy8ywKhLIL5623sMtwaWVVnu998ZMI4T+XVv8P1XC8Uh7BDg0Q/
         nWAt72oJCmkL/yTcdNV9s9LMZZqJ1yosV74DiAit8ujNT4VTgkofZkV5jIYT8/8NHvRo
         QG0hdmyZnReAV62a0ch1ygPFVXN4EDOXrsQDyRdiW6foa2rbsdmBbpz93PYXfhMsBIKZ
         mijCF8bf+D4pfX/hItVgC6bXhzOPZMrG90sQ9hKk81eAIgoeydKmx9urm6Hg8qyY3rOu
         Rqiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=Vm6fkKer/2y7zQbNDyqL9fFdF1dpky7eJMgjKhbFFQw=;
        b=Omp+/Mqj1dQM1uKuT7jwx1gFK3p+ZyzRdlKEkLPIea5Fof/tdD99MzEOyDZ/34G/qT
         RyaEIFDSdNESc4c/09LmrqNV7gQTDhWGx6VM/UtrQJKAKiq/3uydXHzFbbfdynvzxdYM
         P0Vnsuop7DxtA6w9vZhEgn98E+U7o3uPDwLC4cLr0ufNmbEUK2TCSVcDmXyph2kzPWUU
         IqP3yMxT0tdO+QL/l9jcTeYudiDXBREXaL42wFb3Gx6xOBhD9rFCPUBNMXt+Ige7TUJF
         ktr8XEY5CxcPdMRQF14UT51ZYi1cqrRPUKlsuqXg1457giAHeUS6ILdRA1WcZLc+Jqli
         plgw==
X-Gm-Message-State: AG10YOQ0wsu2w9yhgLz/lmapmPhsJYXxSvw7zpU9memZRO6hWgXWeDI7iTYNeTewuNdXCy6gFtaFn4gPz494tQ==
MIME-Version: 1.0
X-Received: by 10.202.217.136 with SMTP id q130mr36102889oig.127.1456410536924;
 Thu, 25 Feb 2016 06:28:56 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Thu, 25 Feb 2016 06:28:56 -0800 (PST)
In-Reply-To: <3462200.DanSUfdRtD@wuerfel>
References: <cover.1456390351.git.bhumirks@gmail.com>
	<3462200.DanSUfdRtD@wuerfel>
Date: Thu, 25 Feb 2016 19:58:56 +0530
Message-ID: <CAOH+1jHL-0kxOWSCK5jro0yv6scRuB+vP2s6PpBQCNGx-ZAQJw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] Staging: rdma: Remove wrapper functions
From: Bhumika Goyal <bhumirks@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11496c54b35a1d052c990096

--001a11496c54b35a1d052c990096
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 25, 2016 at 7:49 PM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Thursday 25 February 2016 17:25:55 Bhumika Goyal wrote:
> > The functions add_rcvctrl, clear_rcvctrl, sdma_start_hw_clean_up can be
> > replaced with direct calls to the functions they wrapped. Thus remove the
> > wrapper functions and replace their calls with the functions they
> wrapped.
> > Changes are done using coccinelle semantic patches.
> >
> > Bhumika Goyal (3):
> >   Staging: rdma: Remove wrapper function add_rcvctrl
> >   Staging: rdma: Remove wrapper clear_rcvctrl
> >   Staging: rdma: Remove wrapper sdma_start_hw_clean_up
>
> These are all in a grey area. I'd personally suggest doing the third
> patch only, but not the first two that remove what seems to be
> a useful abstraction.
>
>         Arnd
>

Ok I will send a v2 only for patch 3. Thanks for the feedback.

Thanks,
Bhumika

--001a11496c54b35a1d052c990096
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Feb 25, 2016 at 7:49 PM, Arnd Bergmann <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:arnd@arndb.de" target=3D"_blank">arnd@arndb.de</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Thursday 25=
 February 2016 17:25:55 Bhumika Goyal wrote:<br>
&gt; The functions add_rcvctrl, clear_rcvctrl, sdma_start_hw_clean_up can b=
e<br>
&gt; replaced with direct calls to the functions they wrapped. Thus remove =
the<br>
&gt; wrapper functions and replace their calls with the functions they wrap=
ped.<br>
&gt; Changes are done using coccinelle semantic patches.<br>
&gt;<br>
&gt; Bhumika Goyal (3):<br>
&gt;=C2=A0 =C2=A0Staging: rdma: Remove wrapper function add_rcvctrl<br>
&gt;=C2=A0 =C2=A0Staging: rdma: Remove wrapper clear_rcvctrl<br>
&gt;=C2=A0 =C2=A0Staging: rdma: Remove wrapper sdma_start_hw_clean_up<br>
<br>
</span>These are all in a grey area. I&#39;d personally suggest doing the t=
hird<br>
patch only, but not the first two that remove what seems to be<br>
a useful abstraction.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<br>
</font></span></blockquote></div>=C2=A0 <br></div><div class=3D"gmail_extra=
">Ok I will send a v2 only for patch 3. Thanks for the feedback.<br><br></d=
iv><div class=3D"gmail_extra">Thanks,<br></div><div class=3D"gmail_extra">B=
humika<br></div></div>

--001a11496c54b35a1d052c990096--

