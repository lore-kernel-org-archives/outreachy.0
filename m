X-GM-THRID: 6210663897171492864
X-Received: by 10.112.55.2 with SMTP id n2mr3870682lbp.9.1446051510462;
        Wed, 28 Oct 2015 09:58:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.217.198 with SMTP id q189ls153383wmg.30.canary; Wed, 28 Oct
 2015 09:58:29 -0700 (PDT)
X-Received: by 10.194.82.193 with SMTP id k1mr6946614wjy.2.1446051509955;
        Wed, 28 Oct 2015 09:58:29 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id t18si108172wme.0.2015.10.28.09.58.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 09:58:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id c75so9711124wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 09:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=SWNYOHeQlwoQsxVkP0lQtrYVTH9Ivp6xTubUNdp0/1s=;
        b=ufZvDNHh9lnCl/b/lEX9aYd6nNi+JGJFmpM1PC2HorRyRqpDOf6hLDsJZU+SKMAwgi
         3HJzjjgljXKnOllbupnDzkQJyGDzedBvyOn9XqzP5JpZmmQsc4UPWSJAw+/71i/5Ya5g
         wYmIvN12yt3QqQBvxjP53EUaxbd+laXs/PFSom255teys9w5gLowEW/t9IDkDqNHsxMF
         mqf/zNiBr0SCb266maB8GeFEktfZxW6Q8kBPXxd31tGkp7ZT+Lp+vI1NJURIFyNAQcsj
         lOqKnWRSCspYwivJDb0so/eltByhx0S8hfPYsn13dOWx3yOQKXuvwzgqti6tmZadAa89
         q8gg==
MIME-Version: 1.0
X-Received: by 10.28.46.143 with SMTP id u137mr2203897wmu.52.1446051509811;
 Wed, 28 Oct 2015 09:58:29 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Wed, 28 Oct 2015 09:58:29 -0700 (PDT)
In-Reply-To: <CAKHNQQE6UVcQ9eS_pisCed4ExE4BU-KdzVGcd_T269tP8Pim2A@mail.gmail.com>
References: <cover.1446032441.git.shivanib134@gmail.com>
	<f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134@gmail.com>
	<20151028131019.GB16810@sudip-pc>
	<CAKHNQQE6UVcQ9eS_pisCed4ExE4BU-KdzVGcd_T269tP8Pim2A@mail.gmail.com>
Date: Wed, 28 Oct 2015 22:28:29 +0530
Message-ID: <CAKHNQQFRRV3C3wqmatnf4cq525JcmJeXawqzF1-qFB4yy64YxQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: wilc1000: linux_wlan:
 Replace function calls
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114342a091c53c05232d1a93

--001a114342a091c53c05232d1a93
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 28, 2015 at 9:39 PM, Shivani Bhardwaj <shivanib134@gmail.com>
wrote:
> On Wed, Oct 28, 2015 at 6:40 PM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
>> On Wed, Oct 28, 2015 at 05:19:04PM +0530, Shivani Bhardwaj wrote:
>>> Replace calls to wrapper functions with the actual functions called by
>>> wrapper functions. Definitions needed to make those calls should also
be added.
>>>
>>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>>> ---
>>
>> Not build tested. :(
>>
>> error: implicit declaration of function =E2=80=98linux_sdio_set_speed=E2=
=80=99
[-Werror=3Dimplicit-function-declaration]
>>   nwi->io_func.u.sdio.sdio_set_max_speed =3D
linux_sdio_set_speed(MAX_SPEED);
>>
>> drivers/staging/wilc1000/linux_wlan.c:990:41: warning: assignment makes
pointer from integer without a cast [enabled by default]
>>   nwi->io_func.u.sdio.sdio_set_max_speed =3D
linux_sdio_set_speed(MAX_SPEED);
>>
>> drivers/staging/wilc1000/linux_wlan.c:991:68: error:
=E2=80=98sdio_default_speed=E2=80=99 undeclared (first use in this function=
)
>>
>> regards
>> sudip
>
> I'm really very sorry I didn't do make allmodconfig, make didn't show
> me any errors at that time. In order to fix these mistakes, I'm
> thinking of changing some part of code. Please check the next version.
> Thank you

I need a bit of help here. While replacing the calls of wrapper function by
actual function, I get the following:
warning: assignment makes pointer from integer without a cast

Why is it like that? Wrapper function returns function which in turn
returns an integer so ultimately the value that is to be returned is int.

I think I'm missing something trivial. I don't know what.

Wrapper functions:
linux_sdio_set_max_speed
<http://lxr.free-electrons.com/source/drivers/staging/wilc1000/linux_wlan_s=
dio.c#L195>
linux_sdio_set_default_speed
<http://lxr.free-electrons.com/source/drivers/staging/wilc1000/linux_wlan_s=
dio.c#L195>

Replaced with:
linux_sdio_set_speed
<http://lxr.free-electrons.com/source/drivers/staging/wilc1000/linux_wlan_s=
dio.c#L195>

Called at:
WILC_SDIO
<http://lxr.free-electrons.com/source/drivers/staging/wilc1000/linux_wlan.c=
>

--001a114342a091c53c05232d1a93
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br><br>On Wed, Oct 28, 2015 at 9:39 PM, Shivani Bhar=
dwaj &lt;<a href=3D"mailto:shivanib134@gmail.com">shivanib134@gmail.com</a>=
&gt; wrote:<br>&gt; On Wed, Oct 28, 2015 at 6:40 PM, Sudip Mukherjee<br>&gt=
; &lt;<a href=3D"mailto:sudipm.mukherjee@gmail.com">sudipm.mukherjee@gmail.=
com</a>&gt; wrote:<br>&gt;&gt; On Wed, Oct 28, 2015 at 05:19:04PM +0530, Sh=
ivani Bhardwaj wrote:<br>&gt;&gt;&gt; Replace calls to wrapper functions wi=
th the actual functions called by<br>&gt;&gt;&gt; wrapper functions. Defini=
tions needed to make those calls should also be added.<br>&gt;&gt;&gt;<br>&=
gt;&gt;&gt; Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib1=
34@gmail.com">shivanib134@gmail.com</a>&gt;<br>&gt;&gt;&gt; ---<br>&gt;&gt;=
<br>&gt;&gt; Not build tested. :(<br>&gt;&gt;<br>&gt;&gt; error: implicit d=
eclaration of function =E2=80=98linux_sdio_set_speed=E2=80=99 [-Werror=3Dim=
plicit-function-declaration]<br>&gt;&gt; =C2=A0 nwi-&gt;io_func.u.sdio.sdio=
_set_max_speed =3D linux_sdio_set_speed(MAX_SPEED);<br>&gt;&gt;<br>&gt;&gt;=
 drivers/staging/wilc1000/linux_wlan.c:990:41: warning: assignment makes po=
inter from integer without a cast [enabled by default]<br>&gt;&gt; =C2=A0 n=
wi-&gt;io_func.u.sdio.sdio_set_max_speed =3D linux_sdio_set_speed(MAX_SPEED=
);<br>&gt;&gt;<br>&gt;&gt; drivers/staging/wilc1000/linux_wlan.c:991:68: er=
ror: =E2=80=98sdio_default_speed=E2=80=99 undeclared (first use in this fun=
ction)<br>&gt;&gt;<br>&gt;&gt; regards<br>&gt;&gt; sudip<br>&gt;<br>&gt; I&=
#39;m really very sorry I didn&#39;t do make allmodconfig, make didn&#39;t =
show<br>&gt; me any errors at that time. In order to fix these mistakes, I&=
#39;m<br>&gt; thinking of changing some part of code. Please check the next=
 version.<br>&gt; Thank you<br><br>I need a bit of help here. While replaci=
ng the calls of wrapper function by actual function, I get the following:<b=
r>warning: assignment makes pointer from integer without a cast<br><br>Why =
is it like that? Wrapper function returns function which in turn returns an=
 integer so ultimately the value that is to be returned is int.<br><br>I th=
ink I&#39;m missing something trivial. I don&#39;t know what.<br><br>Wrappe=
r functions:<br><a href=3D"http://lxr.free-electrons.com/source/drivers/sta=
ging/wilc1000/linux_wlan_sdio.c#L195">linux_sdio_set_max_speed</a><br><a hr=
ef=3D"http://lxr.free-electrons.com/source/drivers/staging/wilc1000/linux_w=
lan_sdio.c#L195"> linux_sdio_set_default_speed</a><br><br></div><div>Replac=
ed with:<br><a href=3D"http://lxr.free-electrons.com/source/drivers/staging=
/wilc1000/linux_wlan_sdio.c#L195">linux_sdio_set_speed</a><br><br></div>Cal=
led at:<br><a href=3D"http://lxr.free-electrons.com/source/drivers/staging/=
wilc1000/linux_wlan.c">WILC_SDIO</a><br></div>

--001a114342a091c53c05232d1a93--

