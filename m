X-GM-THRID: 6208125602285748224
X-Received: by 10.66.236.133 with SMTP id uu5mr9237651pac.5.1445455353606;
        Wed, 21 Oct 2015 12:22:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.228 with SMTP id j91ls1270507qgj.56.gmail; Wed, 21 Oct
 2015 12:22:31 -0700 (PDT)
X-Received: by 10.140.234.135 with SMTP id f129mr9184922qhc.9.1445455351476;
        Wed, 21 Oct 2015 12:22:31 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id y206si246502ywd.6.2015.10.21.12.22.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 12:22:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id o38so36981050qge.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 12:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=SVR4SH9uc0OXRDyMwXKVHQUbhvSoFzlEOVH2/UfoBRw=;
        b=G67NnjGaBjrZmDLEHmfo/eAiXcQo1zjhCGsaCtMEIMbPZycCSltV2NlDPhftGXTcq4
         TIif4+LDYpi86XkNvSBw2UEPycfLUHmFEL48Izn/GsZ6PBjXweN7Pc2uyfs+XhnocrQb
         9F7byNelYx/M+v9kBrkm/h82Nto3L+nRWE1Hi2J/jPBqdtDKytxd4CEQ7XTj2aO+EiB9
         psnhSIOGu+fwRHaHggHLfYD2dIdcCjVkas6b4CYcpU6wlw/FaOjtS4ulXwe0Zp7DlhbE
         gsEEAcI0xFs4k4JIzqQpac6CxdEDeYUrMRAdp7eh9vAduBJfqmeNVULUnmOLtsrFqQIe
         Hp+A==
MIME-Version: 1.0
X-Received: by 10.140.128.81 with SMTP id 78mr14316305qha.62.1445455351299;
 Wed, 21 Oct 2015 12:22:31 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Wed, 21 Oct 2015 12:22:31 -0700 (PDT)
In-Reply-To: <20151021153800.GA3140@navya>
References: <20151021153800.GA3140@navya>
Date: Thu, 22 Oct 2015 00:52:31 +0530
Message-ID: <CA+5yK5FLqFQ0gN2wZ+=v4_nYTM8z3dWBhgayHnEpwXgQNZFD=g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: xgifb: Replace udelay
 function with usleep_range
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1134f708c0cb410522a24cb5

--001a1134f708c0cb410522a24cb5
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 9:08 PM, Navya Sri Nizamkari <
navyasri.tech@gmail.com> wrote:

>  static const unsigned short XGINew_DDRDRAM_TYPE20[12][2] = {
>         { 128, 0x5D},
> @@ -51,7 +51,7 @@ XGINew_GetXG20DRAMType(struct xgi_hw_device_info
*HwDeviceExtension,
>         } else if (HwDeviceExtension->jChipType == XG21) {
>                 /* Independent GPIO control */
>                 xgifb_reg_and(pVBInfo->P3d4, 0xB4, ~0x02);
> -               udelay(800);
> +               usleep_range(800);

Hi Navya,

usleep_range() as the name suggests, has to have 2 arguments: you can see
this
<https://www.kernel.org/doc/htmldocs/device-drivers/API-usleep-range.html> for
reference.


-- 
Amitoj

--001a1134f708c0cb410522a24cb5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wed, Oct 21, 2015 at 9:08 PM, Navya Sri Nizamka=
ri &lt;<a href=3D"mailto:navyasri.tech@gmail.com">navyasri.tech@gmail.com</=
a>&gt; wrote:<br><br>&gt; =C2=A0static const unsigned short XGINew_DDRDRAM_=
TYPE20[12][2] =3D {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 { 128, 0x5D},<br>&g=
t; @@ -51,7 +51,7 @@ XGINew_GetXG20DRAMType(struct xgi_hw_device_info *HwDe=
viceExtension,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else if (HwDeviceExten=
sion-&gt;jChipType =3D=3D XG21) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 /* Independent GPIO control */<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 xgifb_reg_and(pVBInfo-&gt;P3d=
4, 0xB4, ~0x02);<br>&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 udelay(800);<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 us=
leep_range(800);<br><br>Hi Navya,<br><br>usleep_range() as the name suggest=
s, has to have 2 arguments: you can see <a href=3D"https://www.kernel.org/d=
oc/htmldocs/device-drivers/API-usleep-range.html">this</a>=C2=A0for referen=
ce.<br><br><br>-- <br>Amitoj</div>

--001a1134f708c0cb410522a24cb5--

