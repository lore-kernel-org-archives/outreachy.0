X-GM-THRID: 6399968600794333184
X-Received: by 10.25.104.21 with SMTP id d21mr4414997lfc.31.1490125057311;
        Tue, 21 Mar 2017 12:37:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.25.67 with SMTP id 64ls491lfz.9.gmail; Tue, 21 Mar 2017
 12:37:36 -0700 (PDT)
X-Received: by 10.25.210.146 with SMTP id j140mr4455052lfg.10.1490125055993;
        Tue, 21 Mar 2017 12:37:35 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id e72si1326495wma.0.2017.03.21.12.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 12:37:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id g70so14069472lfh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 12:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=2STz8rnV/wSqJAj0yST+6MYkUL1EWg2FQ7pEkEA1wtw=;
        b=rTdtXDBMHf7VyemjAkI9Ijz/ap6PXUXmx4Dgvw921/VwrjUmfuvOHuWA3i8CyJakNy
         62NR9fd1WuzkEqFYdrI/XyPbmvg4VY4qBgtqQ61T+4BbRYp/4JjdGKmktWJGGX3IO3/d
         qgRpMQOvEARAJiZDjnULE+zn+ftncOyVggdMUUgFP5HAEVUN6zsIma7cuihiMIoy29w6
         N9GlcmUZusA/Ezxjz+ztspkVIIP/4EIrdXaPhPu17uBrfaWl7YnvqhiTsxBN9Sufk/rV
         YFsCtUUObPQBacuHYckVElq0mS6ic9ePTKl144RjZfjtCEUg/Voi/JQfzUAlK0LGbZB2
         M5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=2STz8rnV/wSqJAj0yST+6MYkUL1EWg2FQ7pEkEA1wtw=;
        b=FTKyBxcXbAoxMYTWIeq8VmhpCUcP1u3YJV8kIU1K5K+49BAr79r7IXe52V8qSsu0Su
         GPMkQB9Sb0dg2UMSmL9u7kwBeS7QrefJ6sroQgSq64WhZ2glg/lxdKMPN7v6+a2mxIPs
         F/CdDrHJcL++vx0NnOsN72Vvbnca7NqXK4GG5d2iwIDuykztkxK+V1qTDLBhC7kbqrIF
         DRdkZLdQTOxDBM0inRx5lpdfj12hkTvlsrB+a9HWI0Mj1DtKFWM4pb89zwYDu000etuZ
         ASfk/21ik/7ODhO7dQrn5M+5ymcw1y+ahZjUqoskiQXWgoGyRxoSyP4d7ghPQB3ktoJH
         Gmaw==
X-Gm-Message-State: AFeK/H0xjDEgY6EOm5KWmp9aiLS/MWp6eKDHVAeYl43UV56AbiQM+KJ8xr8rs/4qCeMlLFkoOi6FHcmKRZBF5Q==
X-Received: by 10.25.17.153 with SMTP id 25mr10019406lfr.39.1490125055720;
 Tue, 21 Mar 2017 12:37:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Tue, 21 Mar 2017 12:37:35 -0700 (PDT)
In-Reply-To: <52786ce4-e783-0ea4-c6cb-1deb63e91b53@kernel.org>
References: <20170321150638.9175-1-arushisinghal19971997@gmail.com> <52786ce4-e783-0ea4-c6cb-1deb63e91b53@kernel.org>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Wed, 22 Mar 2017 01:07:35 +0530
Message-ID: <CA+XqjF-be3KN3VYMwdnK8uqc5SvgP6Ue__YhbenCx-nu=MjX4w@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Remove Typedefs.
To: Jonathan Cameron <jic23@kernel.org>
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>, outreachy-kernel@googlegroups.com, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Teddy Wang <teddy.wang@siliconmotion.com>, 
	Greg KH <gregkh@linuxfoundation.org>, speakup@linux-speakup.org, 
	driverdevel <devel@driverdev.osuosl.org>, linux-kernel@vger.kernel.org, 
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>, linux-iio@vger.kernel.org
Content-Type: multipart/alternative; boundary=001a1140379e9e0452054b42c6b7

--001a1140379e9e0452054b42c6b7
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 1:04 AM, Jonathan Cameron <jic23@kernel.org> wrote:

> On 21/03/17 15:06, Arushi Singhal wrote:
> > Typedefs are removed in sm750fb driver.
> >
> > Arushi Singhal (2):
> >   staging: sm750fb: Remove typedef from "typedef struct
> _mode_parameter_t"
> >   staging: sm750fb: Remove typedef from "typedef enum _spolarity_t"
> >
> >  drivers/staging/sm750fb/ddk750_mode.c |  8 +++++---
> >  drivers/staging/sm750fb/ddk750_mode.h | 19 ++++++++-----------
> >  drivers/staging/sm750fb/sm750_hw.c    |  2 +-
> >  3 files changed, 14 insertions(+), 15 deletions(-)
> >
> Please be careful to only cc linux-iio for patches with an IIO component...
>
Sorry
From  next I will not repeat the same.
Thanks
Arushi

--001a1140379e9e0452054b42c6b7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Mar 22, 2017 at 1:04 AM, Jonathan Cameron <span dir=3D"ltr">&lt=
;<a href=3D"mailto:jic23@kernel.org" target=3D"_blank">jic23@kernel.org</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 21=
/03/17 15:06, Arushi Singhal wrote:<br>
&gt; Typedefs are removed in sm750fb driver.<br>
&gt;<br>
&gt; Arushi Singhal (2):<br>
&gt;=C2=A0 =C2=A0staging: sm750fb: Remove typedef from &quot;typedef struct=
 _mode_parameter_t&quot;<br>
&gt;=C2=A0 =C2=A0staging: sm750fb: Remove typedef from &quot;typedef enum _=
spolarity_t&quot;<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/sm750fb/<wbr>ddk750_mode.c |=C2=A0 8 +++++---<br=
>
&gt;=C2=A0 drivers/staging/sm750fb/<wbr>ddk750_mode.h | 19 ++++++++--------=
---<br>
&gt;=C2=A0 drivers/staging/sm750fb/sm750_<wbr>hw.c=C2=A0 =C2=A0 |=C2=A0 2 +=
-<br>
&gt;=C2=A0 3 files changed, 14 insertions(+), 15 deletions(-)<br>
&gt;<br>
</span>Please be careful to only cc linux-iio for patches with an IIO compo=
nent...<br></blockquote><div>Sorry<br></div><div>From=C2=A0 next I will not=
 repeat the same.<br></div><div>Thanks<br></div><div>Arushi <br></div></div=
><br></div></div>

--001a1140379e9e0452054b42c6b7--

