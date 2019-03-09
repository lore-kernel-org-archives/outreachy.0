X-GM-THRID: 6666346191524986880
X-Received: by 2002:aca:39d6:: with SMTP id g205mr27363004oia.42.1552144637941;
        Sat, 09 Mar 2019 07:17:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3189:: with SMTP id x131ls3131541oix.2.gmail; Sat, 09
 Mar 2019 07:17:17 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZC/jTsJqLttfepEsTECC9ygk/BB1R1OakVpKca8kNu2IMG4N194eamfPSqZ7yViYgpg/VQ
X-Received: by 2002:aca:de02:: with SMTP id v2mr26962018oig.0.1552144637387;
        Sat, 09 Mar 2019 07:17:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552144637; cv=none;
        d=google.com; s=arc-20160816;
        b=zY9hbzU2bPz2Y3+PxYiGOjI22JUBpjFB8v0W8uYAtJAfqVCoEr+VqCGMUI4l0BgMTK
         tiWl3gpKLulEK4Z4/pje0eSgVMdVI7sbW3mUQC3Z9UsH5d7SnfJhLEzwiigrNVL8p1MD
         NH5Ku3hoa9y8SiQW2uWEiRaeMnif8YLEigG/BmBgv/fV6jyGnTvCmqMmj6JxrnxVxFBh
         NeocWsKqUYYyi+nXtb0Lss2tqybvhOxruDZXQ0rie5kDrjKBcWBZK6rGB+r1O+PRaTQ/
         TizUG9A671mh8xV8Y/o7lKKs6JiwjKMHdETKXhEdgkS/JvYNeVNBSK0/luGJCl6Q9Rgp
         Mt0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/lIu089xMoXevANYCmXdVpz4Gn5t4ZI0HwWnaHYIjks=;
        b=faXpqYqi03/FDIIrMahbiIfZa4kCkAPelBkkpo+bOhUhBQ+P7ew27UrouwS13IjijV
         AXzAUtCdVD6uNCAtqZI3yPvP4srP4DKFxFWhG4DPaLQIZMBzcB0nl/Z5M8Ml7wMp6cM0
         99RmaeXG0/x33ajpoELVv4h17cVq3GV0IO5GAcc+R1xRytlcAIJVFDCiH5IWUsNwW5cz
         A05aaWKeqfiZkIEv37vm2z7PSxz1MjWSHxkTTIHQrxOVGBVar16Xvgq/TZfCx2GkJaFp
         5i5v3p8nbie9v58+oeDDoof2AebnMavFZb8ivYxL9xYFgKGP8yoEHpH8Y0AGuHL8IhEd
         RvKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EGxNdWbp;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q206si41661oic.2.2019.03.09.07.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 07:17:17 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EGxNdWbp;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id b3so375634otp.4
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 07:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/lIu089xMoXevANYCmXdVpz4Gn5t4ZI0HwWnaHYIjks=;
        b=EGxNdWbpkV3mvd58tBI8/PV0fDiwY8KdHuAwxg1gugIrgGuF44LUFulS38/Y2cLiAm
         7WAQH9t4L/I5leaIh9zOzNHWvAcgWqf3T17PbesupKONNdOKIQYQWzj64WxcqH6Kbbzb
         rcFsMgAQuiFUFvHWhUK0McfhUzmswCT13UH7GTj6D6UBqRzqaDSjwh6p4cCdS7eWfeb3
         /SPo3uWFXMPD5LCC9yTlMi6cvuZ3iEmjOnAdlHHyOJcTYi/83pOUWZNKTZ/Qn5rpn3fm
         8jKA8TzDMVG2ipCuNrC3MHLoRK28gfhCLhTWirpEfASdDEvxZwDtGSi41oTnuo6FfTGY
         a7MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/lIu089xMoXevANYCmXdVpz4Gn5t4ZI0HwWnaHYIjks=;
        b=RdZy5cJRPRiU46pamnIkZEShbnP3wnR3QNhYy8iAEEYoE8FVuLYmH8GAQerIdXJIIq
         rwj1SdpzGZYoJSwgGJ9FMz29x5wwSq+T/39BDD0ZeFCP5Ss9K2nGCTvkvQi9mCmu8jUg
         Z34ssxaB3A0u6EdJPEXxPTMF8hf1FDMOjk1J1DSQRIjlQtIr9ov7CDT0OKUDyb4zVLnq
         VkIRz3aTk8/kTeWHfpaBSvv1I6zMx8pgCGBHsHwboq5V4xnkQexlIK8ALKXASmb747hr
         P0UZh9MWcPEmelh88GrHLLKy0FTWVJA8iMbW6HR3HrtojR2JbpNpqVoK6yG3nUMmC2Tq
         m0Qg==
X-Gm-Message-State: APjAAAWTMiWXR7B0xmvZDTK9jrnuL3W3MDl974ZjaXf3WF773YGAidzh
	Lm+QTTNh6MkFFcz31CxvH/nAKyLcPIT7hCna+Ds=
X-Received: by 2002:a9d:7dd5:: with SMTP id k21mr14445377otn.309.1552144636910;
 Sat, 09 Mar 2019 07:17:16 -0800 (PST)
MIME-Version: 1.0
References: <20190309110743.41443-1-himadri18.07@gmail.com> <20190309134031.GB4144@kroah.com>
In-Reply-To: <20190309134031.GB4144@kroah.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sat, 9 Mar 2019 20:47:04 +0530
Message-ID: <CAPnhUpaBBL5MDW549sgr2BPeyPqK2gLJ3G7m3_=dkTjD8ipScg@mail.gmail.com>
Subject: Re: [PATCH 0/2] remove unnecessary local variables
To: Greg KH <gregkh@linuxfoundation.org>
Cc: adham.abozaeid@microchip.com, ajay.kathat@microchip.com, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000b9234e0583aad5cc"

--000000000000b9234e0583aad5cc
Content-Type: text/plain; charset="UTF-8"

On Sat, 9 Mar, 2019, 7:10 PM Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Sat, Mar 09, 2019 at 04:37:41PM +0530, Himadri Pandya wrote:
> > This patchset removes unnecessary local variables from functions
> > wilc_set_tx_power and wilc_get_tx_power.
> >
> > Himadri Pandya (2):
> >   staging: wilc1000: remove unnecessary variable ret
> >   staging: wilc1000: remove unnecessary local variable
> >
> >  drivers/staging/wilc1000/host_interface.c | 10 +++-------
> >  1 file changed, 3 insertions(+), 7 deletions(-)
>
> The Subject: line of this email should also have the subsystem (staging)
> and driver (wilc1000), like your patches do.  No need to change it this
> time, but please do so next time.


> thanks,
>
> greg k-h
>

Noted. Thank you.

- Himadri

>

--000000000000b9234e0583aad5cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 9 Mar, 2019, 7:10 PM Greg KH, &lt;<a href=3D"m=
ailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">On Sat, Mar 09, 2019 at 04:37:41PM=
 +0530, Himadri Pandya wrote:<br>
&gt; This patchset removes unnecessary local variables from functions<br>
&gt; wilc_set_tx_power and wilc_get_tx_power.<br>
&gt; <br>
&gt; Himadri Pandya (2):<br>
&gt;=C2=A0 =C2=A0staging: wilc1000: remove unnecessary variable ret<br>
&gt;=C2=A0 =C2=A0staging: wilc1000: remove unnecessary local variable<br>
&gt; <br>
&gt;=C2=A0 drivers/staging/wilc1000/host_interface.c | 10 +++-------<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 7 deletions(-)<br>
<br>
The Subject: line of this email should also have the subsystem (staging)<br=
>
and driver (wilc1000), like your patches do.=C2=A0 No need to change it thi=
s<br>
time, but please do so next time.</blockquote></div></div><div dir=3D"auto"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Noted. Thank you.</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">- Himadri</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">
</blockquote></div></div></div>

--000000000000b9234e0583aad5cc--

