X-GM-THRID: 6801796609244921856
X-Received: by 2002:aca:2104:: with SMTP id 4mr8456731oiz.127.1583666682993;
        Sun, 08 Mar 2020 04:24:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5513:: with SMTP id j19ls1892809oib.5.gmail; Sun, 08 Mar
 2020 04:24:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuHOfbrel8CbDdXgXOOkO4xlGV+aZa4ag4MLrrtxE9ifjh5buXiZXnApiWm/U61LSVvwGA9
X-Received: by 2002:aca:be09:: with SMTP id o9mr8435311oif.177.1583666681915;
        Sun, 08 Mar 2020 04:24:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583666681; cv=none;
        d=google.com; s=arc-20160816;
        b=KtR7P634qToZOJwSeXfnZ5yJZcXqLnhlSKcXkbabmtutRhM+V7NnBddji7NiI5FaxT
         0cSIxQXrvcVvpWujgHSS6B/tVX6AtA3Rl1DXHBJ4pLDbBaWS2GqEPe3WwfgrgtuACX3O
         7Hd9b+EP11mqBj3OwjCyRWSxbRme2tfn8FWzVORuLREQkwQdTLl/WU/t0nMi9uCces2f
         8NpG+YpwcXQ9iJf49F3437THCAyznUGKL7ZlSnBkrSfWKn01Ex82es5FucIH2+PddEri
         IMMgJnK5OF7UfSmbwtCFhkdrg/V5LcTPJygdQJxswTESKscqLBAnEp1KblRkTibRj6dO
         ysrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=RRKCrppZ9AAtwokRlCEkVXAkvio7sBjyCBzyt/3L0rk=;
        b=b04F+vq1qql22sObZyepcXXBdQtivCSBeBbrIlOT9jzE2zhdvGnBgiEegD1Bdzb8TS
         fcheOV652KdVnx9AY6XtT0Js2uey6Wydu8188gaJBa9Sm+zq4/u3YUhhEDut8Hx4q+KV
         BEJXdUB52jtugVdbE6Z6Yck13pPoa0mCSTjrgBE1O1+Fx1R9p7930eXKo09IcmU9qrU/
         sJ5ZXF14I27ICMsh3R0mIba1DnHcfi/BARGXKLQigkp1ral1dd8HK6AD8JE4MwhR2w9v
         DgTGBFrYhrMiPlbId6cnXbXga/EBO0jBa/TMG8Gu71dLivkXxdVUMEOy9+BcAmMwLo8G
         6/Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gRJ65kbJ;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id m132si32284oig.3.2020.03.08.04.24.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 04:24:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gRJ65kbJ;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-il1-x131.google.com with SMTP id e8so6097605ilc.13
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 04:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=RRKCrppZ9AAtwokRlCEkVXAkvio7sBjyCBzyt/3L0rk=;
        b=gRJ65kbJUZFcP4XYzVGaE5AIf1oE7ziIA7wXL4Pp41FajYVepGqsZebicZmGncaTWk
         x7HSGAZ+Mf74bxpvdjxtgiCCuSBHkMfPJvPmJ8aBwX3p9Wc85zVD3n+XxAeuHxJL7keH
         NCAFWeXtLKrkre6psdxLZpSgJoGbafaSEtYCAjzCo+1wcfzQWVOrt+TC1liJNbbi7K62
         aWb0j8Qkb+WOVbo3Ilo1fHCT1JaSjeOnx0lL+rw8nK+L4HR11CXVJmFlIg7BeCSAgfn7
         YMXd8FehZNNgY/gx6kPBYXX6xAZeGOUI6Oq/4fMj0XOUId0LCWHCearQOzg60Bl06fTG
         ii0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RRKCrppZ9AAtwokRlCEkVXAkvio7sBjyCBzyt/3L0rk=;
        b=isSiHMWC9Ep6j9OMUTjEXN4qsVIGWlVwVqjjBuCMNxQvRISY08L04KyTTmnhaVrCva
         keoG9tsi7J2i+xqyXLeNY75tm2YK2hrvRIEUjUg93XrN1uefr/SXyRPfNk7FFf3BVuYx
         TMCX10wydskhgTKji4MPioKO/IJGhSLEj47Zxy+3UQaEt5CYTPZdMXNWucxg4BIxMYb6
         Npqsu8m3TDIyI4ZOQdhVeJKmMR34AG7wuvNd1dhGjaE0qEhhWx+GwReXSVXZQUIeDYMh
         cPdEqEMSemI9lHTjXvELg/qd7RHCrBhQydctPxzv++D6yuGdw4beD99pu4zfoE91ke2+
         WeLw==
X-Gm-Message-State: ANhLgQ1AeSF91jl79BrWinQXVsp5NTkRlcteFgLVlaYjp4N+DdPUb5BL
	yqt7qZMgrBY31KUYcjlb1lel5qG+t1UBYEIW2kmhFXrhdgs=
X-Received: by 2002:a92:bf0b:: with SMTP id z11mr2742269ilh.213.1583666681387;
 Sun, 08 Mar 2020 04:24:41 -0700 (PDT)
MIME-Version: 1.0
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Date: Sun, 8 Mar 2020 16:54:30 +0530
Message-ID: <CAND3PyeWnvf4Zu87m_kOBw6Vz7MOwJfpR7wHUyh_udvEDvpJdw@mail.gmail.com>
Subject: Using 4.18.0-rc7+ kernel
To: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@inria.fr>, 
	Vaishali Thakkar <vthakkar@vaishalithakkar.in>, helen@koikeco.de, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000fca11d05a0562133"

--000000000000fca11d05a0562133
Content-Type: text/plain; charset="UTF-8"

Hi,

I am currently using 4.18.0-rc7+ custom kernel so to start with my
contributions is it recommended to compile the latest kernel or it will be
fine to just update it using the following commands.
git fetch origin
git rebase origin/staging-testing

Since the compilation process is very lengthy and takes a lot of time I
would like to know if it is just fine to update the kernel rather than
always upgrading it.

Thanks

--000000000000fca11d05a0562133
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am currently using 4.18.0-rc7+ cu=
stom kernel so to start with my contributions is it recommended to compile =
the latest kernel or it will be fine to just update it using the following =
commands.</div><font face=3D"monospace">git fetch origin<br>git rebase orig=
in/staging-testing</font><div><font face=3D"monospace"><br></font></div><di=
v><font face=3D"monospace">S</font>ince the compilation process is very len=
gthy and takes a lot of time I would like to know if it is just fine to upd=
ate the kernel rather than always upgrading it.</div><div><br></div><div>Th=
anks</div></div>

--000000000000fca11d05a0562133--

