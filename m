X-GM-THRID: 6390372862333550592
X-Received: by 10.99.116.8 with SMTP id p8mr12178066pgc.119.1487874626747;
        Thu, 23 Feb 2017 10:30:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.86 with SMTP id j83ls1312602iod.40.gmail; Thu, 23 Feb
 2017 10:30:26 -0800 (PST)
X-Received: by 10.99.238.18 with SMTP id e18mr14187484pgi.39.1487874626006;
        Thu, 23 Feb 2017 10:30:26 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x233.google.com (mail-it0-x233.google.com. [2607:f8b0:4001:c0b::233])
        by gmr-mx.google.com with ESMTPS id i189si928566iti.0.2017.02.23.10.30.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 10:30:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) client-ip=2607:f8b0:4001:c0b::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x233.google.com with SMTP id 203so9211842ith.0
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 10:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qwF+yNW7Fo+CQ57X1l0yeGrI4qK7Y8938hrH1jSW7hs=;
        b=dO5N6aYJxdNWupZhsqIiimFZ00BUtFC61lP5qqh2ElVUrk11xaDUGnmEY/rM3eepD0
         vyHTDCgkg8FkOmka+bWDT1pS7vuSArzNTNvGjmGLFCdywNqTUgcVx+0jAKejyyHobduI
         55zbmTgzrcN4v+3qMJJzlja2+z7PRDtkttYOmrQQ0loOt8xgHOM8YFhhAOaM5WPL5NHV
         xTCm0FGOO9WRCuFTb4fHpbXpl4c7d3KKekaav98o0M1Rq+LLdzvobSaNqhhRf6rcMgEO
         MjnGNPCMmeybuWbU8w5wDPfi98eNaB6im/2Lu8HSb9Yh3KrWQYFTmMqIZjxgjjMXxu+N
         KMuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qwF+yNW7Fo+CQ57X1l0yeGrI4qK7Y8938hrH1jSW7hs=;
        b=aYRAh9fyDupJDLhjhjkRd6gbOPd3WJHklYtSDq22JPm2Xoq0OouEkoXccI1D2f279x
         2C8GgVUPrK2ldS1YUYzEHb585LTRRM5afWpNQTJjur+/Rc/+bYhbatTSkZWvTlk0cyiw
         qCar7UZvyqYWm49HIHVOhRhgE/hQmZ4Qk/AffCzzlYieLYhWRTSToLpvC4Wnb3ZR3/dW
         KuGuaePsXhcK+Z+SvBUNWZoYX3bTvk3kx1+L8UvsdiGFUs6Vj0jTr+yac31mdHYhi0jn
         A24EyVXiY3aJmChCyfK3en9n8tXTk5xGlfjnBXKONBGK59E1LQRevZNmVuhvpSR9A8tV
         QY1w==
X-Gm-Message-State: AMke39kzDAUFbqvy7USLN03EThH0lOlhRvYSGAWQCQwG9S+xGYCr+fvv4Gb3n+WUhaPXP/IYa+C3wkpPKEILNA==
X-Received: by 10.36.64.198 with SMTP id n189mr3939844ita.6.1487874625458;
 Thu, 23 Feb 2017 10:30:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Thu, 23 Feb 2017 10:29:55 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
Date: Thu, 23 Feb 2017 23:59:55 +0530
Message-ID: <CAOCi2DE66sqkwAAQiZKNYcY5tWxg30n+qmrq3Yqb2-L1uPHqBA@mail.gmail.com>
Subject: Coccinelle Challenge Problem 3
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1134f0628592a1054936ce5b

--001a1134f0628592a1054936ce5b
Content-Type: text/plain; charset=UTF-8

Hi,

Here's my Coccinelle script to handle NULL tests for the following
functions kmalloc, devm_kzalloc, kmalloc_array, devm_ioremap,
usb_alloc_urb, alloc_netdev, dev_alloc_skb.

@@
expression ptr;
position p;
statement s0;
@@

ptr@p =
\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...)
... when != ptr

if (
(
+ !
ptr
- == NULL
)
 ) s0

Thanks,
Gargi

--001a1134f0628592a1054936ce5b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>Here&#39;s my Coccinelle script to handle NULL =
tests for the following functions kmalloc, devm_kzalloc, kmalloc_array, dev=
m_ioremap, usb_alloc_urb, alloc_netdev, dev_alloc_skb.<br><br>@@<br>express=
ion ptr;<br>position p;<br>statement s0;<br>@@<br><br>ptr@p =3D \(kmalloc\|=
devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev=
_alloc_skb\)(...)<br>... when !=3D ptr<br><br>if (<br>(<br>+ !<br>ptr<br>- =
=3D=3D NULL<br>)<br>=C2=A0) s0<div><br></div><div>Thanks,</div><div>Gargi</=
div></div>

--001a1134f0628592a1054936ce5b--

