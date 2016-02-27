X-GM-THRID: 6256054516784824320
X-Received: by 10.129.131.206 with SMTP id t197mr6204754ywf.50.1456603096966;
        Sat, 27 Feb 2016 11:58:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.132 with SMTP id h4ls1848642qgf.70.gmail; Sat, 27 Feb
 2016 11:58:16 -0800 (PST)
X-Received: by 10.13.219.80 with SMTP id d77mr6567823ywe.39.1456603096361;
        Sat, 27 Feb 2016 11:58:16 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-ob0-x242.google.com (mail-ob0-x242.google.com. [2607:f8b0:4003:c01::242])
        by gmr-mx.google.com with ESMTPS id nt4si570945igb.2.2016.02.27.11.58.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 11:58:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) client-ip=2607:f8b0:4003:c01::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x242.google.com with SMTP id rt8so1067676obc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 11:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to;
        bh=lcEEGMxQATvxtVcXJ5u5OuENNLw1ZwvenFYT7VDTbUw=;
        b=dOX6ca7aqt/OfEoBw5EomNumiC69aDI5Vi7zMh616UaUyl7rfATtUuANUZxLHmhkxU
         MO1e4Z3x3IgpquqXpRJ+Jd8DxzrQ9U9eAd08Nw1pVd1lGUFQUK9Aen62wUuo+14LxP6s
         UMpMK7sZjwOGdv8BhlJKp8peg5tcDXFvBkezlUpnkH8viLUFacwJIisCboPLCeXDf3br
         Cw1Q4+A+fWA9Tf85YCunG25sgxlA87dHsKo/OuGTo9UrIVQJ0qEj7Vj5Wsci1tlFOQ8j
         sqQfIDyELq120UWMTP6GiStkTdH6wI2vSKOfIwfDbSPrLjn5Y0hBgC69fSuGlQSO+05f
         5b7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to;
        bh=lcEEGMxQATvxtVcXJ5u5OuENNLw1ZwvenFYT7VDTbUw=;
        b=OnlaBYJmAU0FKs/AKDPNFw8rfVaz9ByRW7F8a0QOoVUUI3TWgZjDwHy6wLQB9omp6W
         nkacs5lc0y31UR3HMGHD78AHImVsHEjT1lMbpnhK6cpXi9xsHfBQDN4qC/xadIpAX3Cs
         x3Cfou9EfWQGBdMkfS8RtV+XIzT1MiPReqUB64PHYGx+r9Wi/tma+JNQX3eF/7GSqcBw
         d1lOq8hJZfW23uKiQZ5CvOLSGmhaeYCo4H2hDGW9rDWT1TjwDxv260gUe/wyzS3wC5uu
         5Z/5Hg4AwXRvJ7ZQBB1NJ+I1Pdjuf4ZXXmWoGTr9UCbEIUvjlfmHiBZUOPvjV6MO4pXc
         5aXw==
X-Gm-Message-State: AD7BkJLldzQetAbmaRa+TTUfvuLt2bZNkNmo9I0QHPUzQXubfjNdLbIlQi4/0M/nRIeZcIpTs4A36qf4spMG3g==
MIME-Version: 1.0
X-Received: by 10.60.178.70 with SMTP id cw6mr6263043oec.46.1456603096051;
 Sat, 27 Feb 2016 11:58:16 -0800 (PST)
Received: by 10.157.47.239 with HTTP; Sat, 27 Feb 2016 11:58:16 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <cover.1456573526.git.bankarsandhya512@gmail.com>
References: <cover.1456573526.git.bankarsandhya512@gmail.com>
Date: Sun, 28 Feb 2016 01:28:16 +0530
Message-ID: <CAA3ASz=gTjG2H8QN4FyUmh0onMT-o=6CVOEk9asOaO7fUgFq6Q@mail.gmail.com>
Subject: Re: [PATCH 0/2] Staging: usb: Use PTR_ERR_OR_ZERO instead of
 if(IS_ERR(...)) + PTR_ERR.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: multipart/alternative; boundary=089e011822721e7863052cc5d61d

--089e011822721e7863052cc5d61d
Content-Type: text/plain; charset=UTF-8

Thanks ! I will resend the patch.

On Sat, Feb 27, 2016 at 5:20 PM, Sandhya Bankar <bankarsandhya512@gmail.com>
wrote:

> Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.
>
> Sandhya Bankar (2):
>   [PATCH 1/2] Staging: usb: Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...))
> + PTR_ERR.
>   [PATCH 2/2] Staging: usb: gadget: Use PTR_ERR_OR_ZERO instead of
> if(IS_ERR(...)) + PTR_ERR.
>
>  drivers/usb/gadget/udc/at91_udc.c   | 5 +----
>  drivers/usb/phy/phy-qcom-8x16-usb.c | 5 +----
>  2 files changed, 2 insertions(+), 8 deletions(-)
>
> --
> 1.8.3.4
>
>

--089e011822721e7863052cc5d61d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks ! I will resend the patch.<br></div></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Feb 27, 2016 =
at 5:20 PM, Sandhya Bankar <span dir=3D"ltr">&lt;<a href=3D"mailto:bankarsa=
ndhya512@gmail.com" target=3D"_blank">bankarsandhya512@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">Use PTR_ERR_=
OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.<br>
<br>
</span>Sandhya Bankar (2):<br>
=C2=A0 [PATCH 1/2] Staging: usb: Use PTR_ERR_OR_ZERO instead of if(IS_ERR(.=
..)) + PTR_ERR.<br>
=C2=A0 [PATCH 2/2] Staging: usb: gadget: Use PTR_ERR_OR_ZERO instead of if(=
IS_ERR(...)) + PTR_ERR.<br>
<br>
=C2=A0drivers/usb/gadget/udc/at91_udc.c=C2=A0 =C2=A0| 5 +----<br>
=C2=A0drivers/usb/phy/phy-qcom-8x16-usb.c | 5 +----<br>
=C2=A02 files changed, 2 insertions(+), 8 deletions(-)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.8.3.4<br>
<br>
</font></span></blockquote></div><br></div>

--089e011822721e7863052cc5d61d--

