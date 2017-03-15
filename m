X-GM-THRID: 6397558175016419328
X-Received: by 10.46.83.76 with SMTP id t12mr77668ljd.26.1489547587562;
        Tue, 14 Mar 2017 20:13:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.201.79 with SMTP id z76ls29814lff.54.gmail; Tue, 14 Mar
 2017 20:13:06 -0700 (PDT)
X-Received: by 10.25.204.21 with SMTP id c21mr70331lfg.19.1489547586428;
        Tue, 14 Mar 2017 20:13:06 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x22a.google.com (mail-lf0-x22a.google.com. [2a00:1450:4010:c07::22a])
        by gmr-mx.google.com with ESMTPS id 82si137143wmg.3.2017.03.14.20.13.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 20:13:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) client-ip=2a00:1450:4010:c07::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22a.google.com with SMTP id j90so1622143lfk.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 20:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ivyOY3KeHayyKA2UcAktFgMbvMfJ/LOSIgekPF2OOr0=;
        b=Y0Z8GQb2bq3pp029n5pgR3mFXP7BA3k0MmBXaHwjpH0n4te5yLgIB8Zjlx16GwKsf0
         bAkZBmS+hgp44+vyg75FPAsojpGV3a5EohkIUrOowM9+JRlUswO/Ya/qHuPkbU8EAE/T
         TyRf96/XZhQmDfA1p/Hh5eJ7TM4NRSPJLbA71fs9/8mRkI8n5sPxIl2RQ89rlnaRaCIG
         UgNZOUJqnPWkiqkLoVr4PC7/LYASnTJZR1MxvBb9dImxTWz+x/C4peFD91DQyM/DNv7y
         YMysfEOVLMwY+DKEgOGF5jmfcp7cCD6+wizzTgreIbIiMWEocr3SEtEC3zXERzEux56U
         ajpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ivyOY3KeHayyKA2UcAktFgMbvMfJ/LOSIgekPF2OOr0=;
        b=Vu8teEPb03tHlMpyuOuWgPlO+WGVvzm9rWVG+qKWxYXcyGIVyxZg1cunAxrucDoSYM
         O3lhvtFwq4DZzf7u1S14SocLGiMSnno3M5TdlVG+HweqH0J5nfRWp2e64Y1y36uAo6E+
         IzohIXszJfQ1XNuMylMG5fWNT7mDKrC8rkaam+aTfM4EWB5gbd4ENDuAL+jOV5/sdLMu
         10mMrWk9TrRJMPA6U2JXexBsRjiSNBO7QVB+sJg1tRS2LQk7ns/SDqaGPfdyQpEGPL3D
         0lLk/nZCX7ckPrMrPjNteTwnSAaoCVmxBvTMHV3JstBOnYry6v0dkG2JhLe27r1t8XBX
         jGuQ==
X-Gm-Message-State: AFeK/H2stZSSlF1vo2TDiXv8HMzRyvAlgI9MkleXcJkYkcFB8oR7oqCOuUHEeANGHR0tZDxG3ttIgZlKmaub8g==
X-Received: by 10.46.87.14 with SMTP id l14mr255395ljb.93.1489547585525; Tue,
 14 Mar 2017 20:13:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Tue, 14 Mar 2017 20:13:04 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Wed, 15 Mar 2017 08:43:04 +0530
Message-ID: <CA+XqjF-n+yMJOo0tH1j4ZaBdjOq+C8qDLc9Kq=7o6xoqs9+5gw@mail.gmail.com>
Subject: PATCH Not Yet Added
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=f403045f8794b621a4054abc5242

--f403045f8794b621a4054abc5242
Content-Type: text/plain; charset=UTF-8

Hi

The Patch Linked below is also not yet added to the Kernel tree.
Do I need to do some changes.

https://groups.google.com/d/msg/outreachy-kernel/T8I7ORhjVQ0/bqpbKtioAgAJ
https://groups.google.com/d/msg/outreachy-kernel/SCKByJIl-Cc/o3RdMZKIAgAJ

Thanks
Arushi

--f403045f8794b621a4054abc5242
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:12.8px">Hi=C2=A0</div><div style=
=3D"font-size:12.8px"><br><div class=3D"gmail_quote"><div dir=3D"ltr"><div>=
The Patch Linked below is also not yet added to the Kernel tree.<br></div><=
div><span class=3D"gmail-im">Do I need to do some changes.<br><br></span><a=
 href=3D"https://groups.google.com/d/msg/outreachy-kernel/T8I7ORhjVQ0/bqpbK=
tioAgAJ" target=3D"_blank">https://groups.google.com/d/<wbr>msg/outreachy-k=
ernel/<wbr>T8I7ORhjVQ0/bqpbKtioAgAJ</a><br></div><div><a href=3D"https://gr=
oups.google.com/d/msg/outreachy-kernel/SCKByJIl-Cc/o3RdMZKIAgAJ" target=3D"=
_blank">https://groups.google.com/d/ms<wbr>g/outreachy-kernel/SCKByJIl-Cc<w=
br>/o3RdMZKIAgAJ</a><br></div><span class=3D"gmail-m_1135019598649901216gma=
il-HOEnZb"></span></div></div><br></div><span style=3D"font-size:12.8px">Th=
anks</span><br><div><span style=3D"font-size:12.8px">Arushi</span></div></d=
iv>

--f403045f8794b621a4054abc5242--

