X-GM-THRID: 6808859565738688512
X-Received: by 2002:a1c:988d:: with SMTP id a135mr5543549wme.16.1585311155873;
        Fri, 27 Mar 2020 05:12:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:230e:: with SMTP id j14ls358856wmj.0.canary-gmail; Fri,
 27 Mar 2020 05:12:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvAHEEl+0jF8kIzdVO5CiZM9EDyi38dc2OYUhwYBeLq5UFgqAJghLykV+Aceu34YKb3moRU
X-Received: by 2002:a7b:c5cb:: with SMTP id n11mr5329474wmk.160.1585311154562;
        Fri, 27 Mar 2020 05:12:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585311154; cv=none;
        d=google.com; s=arc-20160816;
        b=Sg63AhnD1iFnDdAfIoFN9qef7ADDS1jxRng6J9yG4NH6XqyD3xQKj/NsSPqCt03hUG
         rVefVqs/UgylJg5UoNBqhAjoHE6Qyx5oOKFwi81hWeianvvQIVnzx/iWGWFpQ8aaoubE
         w9yHE2jppM+LFotJiDocpubeTPIEXJ9TXeRFZp0CVWKZo5bxQegV1a2Ecra3XZJUEvys
         CEnXqkG3LeOx2wfbHreHddTTWHEToA5MmVpNgV1fSXFrEP+Xyju4TGvXgsOOo6+KpdXr
         GhkOKKz3PLMt/tKb3vRFbUo4j3Ldufflg/JGrFs4TbdNmZ/HRyoS5GgboGlY2r7YNR1m
         7DNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=7mcKm4yGiGKgDlp5s0j377/A7OBEO3XCSnYW//VZVVQ=;
        b=KkV/onwLsZ9wWUr/timbNgIq5hyivvT2o7Oi7nL3ODu/1ZW+CaxO7UTQE3luoSzyzW
         jpwt3nWK41V3xj5N2aCX6b7Sdc5WrbAWWg35XtRNShtCAFN6SWS6V2KKOOL7fg1nlj9v
         d3YOnqhuVq6khX8Sn12PdcUlUMJDpN+NhzV+fZybrv4bRdn+rRYUjFzl1OZyIiUdJ1fI
         Obz2rnTXtcKqTRlSiNEOrscffRKegJnL38K75bACewxARRrQ9eMMndKsIoUVJsw8Vf02
         DPfg2iU6nO3e/FuWBDQpsiZoH+C2E77TIIm3YWruZyfQT+riaKP9qM7NA0Sly3YIVCZM
         2Bfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fLKHWSrn;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id f3si507188wmc.2.2020.03.27.05.12.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 05:12:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fLKHWSrn;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x230.google.com with SMTP id 19so9911739ljj.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 05:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=7mcKm4yGiGKgDlp5s0j377/A7OBEO3XCSnYW//VZVVQ=;
        b=fLKHWSrnASDMDTkd9K0uVOP17Tv7DS7w29+tKPeYfGdbBrK/bRHMWrC46yT8tUnMXV
         JStfnBKUI8fXn16B9N1o/xcZ8ok+vveWmOScR8LnB78xrxe873kkS4jjDkSdfkQWMYhG
         pui7ajvKu+vBgyFdlzfN8RhI9v+j+imM13wX/4hI+17WA8uoYhBcjLtx1RTAKP3VSzpM
         bXSVHNbgrvSqLl1Fu3nbXvaRpqOdXuWZST3Sq3xfHCrYUrEk0Za15Dtp87t33hy8WWX0
         YlpbxKHgKfjj59gloU5wvteO2b9iptDmpMOxmJQ/XPJ9j0dQGvjLl39QmSzOm6qtAHoY
         L86A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7mcKm4yGiGKgDlp5s0j377/A7OBEO3XCSnYW//VZVVQ=;
        b=nEqAfjklAyZ1Jhh61b77mjz+5kQ8XNpNSYgbdkJEELAQXyJZbKg1KjwRS5cF5wOfBx
         PwJZ9dchhNaUlUI8w1eE2G8XMhOvXwS2D0l9eskc3Lv5ghkyClOG1JOQF/GW6ZAPCVlh
         N2+J6vD+VtJx98YAplM3C42YbKFYuVnbmxt945CCvXhcxTZpe1vWMGEfAjjqzymRJEc4
         iaadZ3IsY4LVeiM4eTrho8ZMb1E6ZGa7Hhm67a9wCaBafdG8Ps7DNRiCxBVlQe9fyPH2
         D1ZLEBtFf3TYaMV/dqdO6z3h77+twt7Gs0aY92F1uL1DZ4sEDB6vFqDazp9OJ6RbBlax
         Pbew==
X-Gm-Message-State: AGi0PuaicY6hGf2kYRwvx9qY+obQuLmOb5H8CzScu0qySzo02SAcmKcm
	otSoXAEaSRk5Np3tBDb4XVKHUPjrNukCthpHT85q8xVq/itMfw==
X-Received: by 2002:a2e:45c2:: with SMTP id s185mr1278205lja.66.1585311153717;
 Fri, 27 Mar 2020 05:12:33 -0700 (PDT)
MIME-Version: 1.0
From: Soumyajit Deb <debsoumyajit100@gmail.com>
Date: Fri, 27 Mar 2020 17:42:22 +0530
Message-ID: <CAMS7mKAjK8OgRzpCifKn+_17y-NzMbAepKSqnOMzRDbWLqTV1A@mail.gmail.com>
Subject: [Outreachy kernel] Converting unsigned type to signed type.
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000002d060305a1d5044a"

--0000000000002d060305a1d5044a
Content-Type: text/plain; charset="UTF-8"

Hi,

(msg2.signal.data - 65536) * 100, /* Conversion to signed type */

I came across the above line in one of the staging driver which it seems is
trying to convert msg2.signal.data to signed type according the comment
provided. I looked it up and msg2.signal.data field is of type u32. My
question is can't we change type to signed type by simply type casting to
i32 ?
Also, I can't understand how the above expression is performing the type
conversion?
Currently the above expression is giving a "more than 80 characters"
warning when I run checkpatch.pl script. So a simple typecast to i32 will
be able to resolve that warning.

--0000000000002d060305a1d5044a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>(msg2.signal.data - 6553=
6) * 100, /* Conversion to signed type */</div><div><br></div><div>I came a=
cross the above line in one of the staging driver which it seems is trying =
to convert msg2.signal.data to signed type according the comment provided. =
I looked it up and msg2.signal.data field is of type u32. My question is ca=
n&#39;t we change type to signed type by simply type casting to i32 ? <br><=
/div><div>Also, I can&#39;t understand how the above expression is performi=
ng the type conversion?</div><div>Currently the above expression is giving =
a &quot;more than 80 characters&quot; warning when I run <a href=3D"http://=
checkpatch.pl">checkpatch.pl</a> script. So a simple typecast to i32 will b=
e able to resolve that warning.<br></div></div>

--0000000000002d060305a1d5044a--

