X-GM-THRID: 6802769340290564096
X-Received: by 2002:a2e:b4b1:: with SMTP id q17mr587219ljm.22.1583893164142;
        Tue, 10 Mar 2020 19:19:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3e04:: with SMTP id l4ls55805lja.8.gmail; Tue, 10 Mar
 2020 19:19:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt6CIq0LEDg8StuiRNcmRSTDLaAPmBb3dQOoDwf0LuDStdeROW3buDdsLbImAwaQdNe4hQf
X-Received: by 2002:a2e:8e6e:: with SMTP id t14mr610903ljk.279.1583893162562;
        Tue, 10 Mar 2020 19:19:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583893162; cv=none;
        d=google.com; s=arc-20160816;
        b=oMZq9l+usaHzFl6bZJjo2CaM54DLIS8kC8baRQt4+z17goQsoJVzjP6h0NuONN5eW6
         o0q/wEfXJxcdI/XAJMpJhayLXd8CDKohYT0Dn5WUnxHvoLxormrNyW7+asFyxE672+Yz
         VJmkpTB1sPheTzE5lkCBp/j/2/9eiAR2QNK6JZQx1jwqiv8jSPId/T+7KDhB29y8+erP
         tSbsS9a4QBb03W3ARo6D3ii174zP/Ikt1AWQ51uRYTgJXvMdBWHgc9rnhJ0KCmwPAbBq
         Ga0zhr+k6L+EQCRnFi2XYa8d5vnsNeFE/popsIsu1IWPFbJJMqbENBPhsvwebJXOfonD
         G4RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=oYJVpn2kKjTFlj2uMEbN8zjjnWkDguHgkOsAKoIi5q4=;
        b=QjxCT9RbLl4Dgry53Og7ARIkGHKg6p5OAyjPXBT9KiPes/0FnbZKzQgRTXzOAistLr
         hWk1v9Wa8ujmGiCrK4FhUJE025Q1Vi47VdoXyyl3fHssTrrhAIdwaFTPN97Y1LmgM1Nk
         Oe34Iw/h2SUjuWFUO+l3liESMbjb2ev/xOUvZ8V0WcgL9m/mgAEdesdm+fr18mf+OKvf
         ATtZJlLO+lo90xr5ytwqEgZwwQ8B9cE2vmnWIV4DChOwoSoZjBr5lDqNN53HcvuirWBD
         bWgflpMotmoKsu/XwMxMTSI+aMASa6WwdZum0S9F/iVcvneeS/dZJblH58RZWPx6xNGw
         FjYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QHb50Qnw;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id j11si20168lfe.4.2020.03.10.19.19.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 19:19:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QHb50Qnw;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x232.google.com with SMTP id r24so532570ljd.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 19:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=oYJVpn2kKjTFlj2uMEbN8zjjnWkDguHgkOsAKoIi5q4=;
        b=QHb50QnwNaJfqH8Y/CaAmN0+rsXNujpzqIoU//5Ii2y12XYKsoiqCJTV1VncqVxAZ4
         C1gfBdduYoUD7UeFPWltxPaBpuOY83b0Au0U1k6Q02hQnXV7nMFCL8PX+eO01PnLZ+fO
         cYrSgovD+ufiFbuLIQlZO1jKsT/o5XI2aVbg0xqA+AJKeeL+G3QZxDUAwiQvmUjoWEm0
         pt8lyPZclDwRrOOM67nk2zWtKSu5YlpUy28VH1JmO/RFDTBzlQ8Kwn6GHaT0EljWLOeT
         2qmKeMdlPL+LPZ6gK0zdzfXM7w8gqHAcm1+iD2jF9177d31GWC5rFuPs8C0Us7FK+yQB
         Q7iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oYJVpn2kKjTFlj2uMEbN8zjjnWkDguHgkOsAKoIi5q4=;
        b=KwLGFHtD60nBivUs2kJ1fi/NawguZf3t+kZl1/uaKm9h1hP8QwRISQC5tDjo1gqKPl
         c/8HIT2PHcdI7+c3owMi9OxWM8Q503xPe+OQPrrb7bUDxVnWJxITtLExWJaUtBK2bwxa
         RHAKFgos+5YEZ2+jqjBxkAYS8LKYEdR9DflDdtet88aLYOWJ41xN2AyzQXkHDZLKfBv1
         gLvOvpfS2MvnLVFM3kgPn1vj8FFc9Pct+MI4doZBOK0tpc8IdwTVxUb0evHvA4NnjroX
         5HXKDQOCM4r/DwpG79a/suy0UXgMWmp3tlcXjuO0t/ucr16swb0yfY3eimo4vxCWriBq
         pOVg==
X-Gm-Message-State: ANhLgQ1TaoNPOrtFse+73gFZ5HfriJ7aC4SPi4bRBNe3hgG5bRelhz/A
	DVzwg54870/kVu0Nn6/kaCr4fyl27FMLd1GJQhslIPU5
X-Received: by 2002:a2e:b0c9:: with SMTP id g9mr600804ljl.120.1583893162103;
 Tue, 10 Mar 2020 19:19:22 -0700 (PDT)
MIME-Version: 1.0
From: Soumyajit Deb <debsoumyajit100@gmail.com>
Date: Wed, 11 Mar 2020 07:49:11 +0530
Message-ID: <CAMS7mKA1m5JEVhNB+fwytLF3JgFYb-8C9xD9DjOmXm52omC4NQ@mail.gmail.com>
Subject: Question regarding installation of kernel
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004a16ef05a08adddf"

--0000000000004a16ef05a08adddf
Content-Type: text/plain; charset="UTF-8"

Hii

This is my first mail to the outreachy-kernel list. I am Soumyajit Deb.
I am currently following the first patch tutorial and accordingly I have
downloaded the Kernel source tree.
 I have doubt whether I have to build the kernel source code I have
downloaded as I am using ubuntu already?

Thank you

--0000000000004a16ef05a08adddf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hii<div dir=3D"auto"><br></div><div dir=3D"auto">This is =
my first mail to the outreachy-kernel list. I am Soumyajit Deb.</div><div d=
ir=3D"auto">I am currently following the first patch tutorial and according=
ly I have downloaded the Kernel source tree.</div><div dir=3D"auto">=C2=A0I=
 have doubt whether I have to build the kernel source code I have downloade=
d as I am using ubuntu already?</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Thank you</div></div>

--0000000000004a16ef05a08adddf--

