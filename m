X-GM-THRID: 6528718721660223488
X-Received: by 10.223.185.72 with SMTP id b8mr2258599wrg.3.1520460146384;
        Wed, 07 Mar 2018 14:02:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.77 with SMTP id v74ls646770wmv.7.canary-gmail; Wed, 07
 Mar 2018 14:02:25 -0800 (PST)
X-Google-Smtp-Source: AG47ELsPB9Q+bOG+IBAPi8a1Sy8gtG6V7Fa1BTSXS+2g/zTMXEqYiMI1YASvBnJt47I1R9kKnAhV
X-Received: by 10.28.74.152 with SMTP id n24mr1076282wmi.16.1520460145087;
        Wed, 07 Mar 2018 14:02:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520460145; cv=none;
        d=google.com; s=arc-20160816;
        b=YTUWG1evznobbZ32xRipUfm2tgPhqpRr1qr4HCL9Sc6Cjb9nGqnTaFfZ7a+8kiQbI+
         1QIFe1z9BfaUyLSChkrcyBjOqxylucwgehCfxNTcHtRqxJtDaHDi8dZwNnZwpEs2ASz5
         qL3bljBrtDaU8f2fSECWSllykXpDCSmY6Iy1+Dv5Ts+/pzaOdKLazz01nOs8gN4cukYq
         6bJUWGueJgAjtQHsK7eJcoIgK6nLhF/O285A+7eUxpcluPSfNE3KL14nAR56/OOf+3bJ
         iMakq3PUFfLPkKlIK30BrEFbxFhRE/hZlBBCDnBhvO/L1OWvo8DIxKKkURj/YP190omH
         BAsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:arc-authentication-results;
        bh=TG2HoV1POB+2pieziZLl50ON0LCLz+HRq5GP8HNktjk=;
        b=mSFafu0+vYqiY/BAaXcUiC7JrXVhCOZWj6l4HabeRrmRB8OWmveLDwHyrezE8p+Lx5
         hZM5vVCS/WtjM7xz7thEEYDIieQsoZrVIiZRWaO+pp3Fk1Yzo3mDEfIJNKxycjRfIGIK
         JfgCqEm+AThXw19gWQoDOH/K9199sVezFh8+C+KwiPSJ9H4aoP3oM6VRNONIQz2hNAEJ
         2OiQhC3sx+Hp9fEBg5uAKEk1rzDnqSfR+KKQgSr3gb3YSEC0rvjl244Am11RYaG48yzM
         18qDSOgHfZYVAIWrflKJ77ggkSp9+/KdxzUYQbyMe2/jlrLg2EF2ylfXh5YGW6MOORky
         66lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Return-Path: <richard@nod.at>
Received: from lilium.sigma-star.at (lilium.sigma-star.at. [109.75.188.150])
        by gmr-mx.google.com with ESMTPS id r10si591677wmg.2.2018.03.07.14.02.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 14:02:24 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) client-ip=109.75.188.150;
Authentication-Results: gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Received: from localhost (localhost [127.0.0.1])
	by lilium.sigma-star.at (Postfix) with ESMTP id 8D831181A43F6;
	Wed,  7 Mar 2018 23:02:24 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: boris.brezillon@free-electrons.com, David Woodhouse <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, linux-mtd@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] mtd: nand: Added spaces around ('=' and '<')
Date: Wed, 07 Mar 2018 23:03:53 +0100
Message-ID: <4005910.RbgyVDuFdx@blindfold>
In-Reply-To: <CA+XqjF-2K48uEPHhgoH4K+4X0Gnr=S3VaG4-VeZ9urfsNEf3QQ@mail.gmail.com>
References: <20180303140233.GA9634@seema-Inspiron-15-3567> <2872216.aoWXzO2rYL@blindfold> <CA+XqjF-2K48uEPHhgoH4K+4X0Gnr=S3VaG4-VeZ9urfsNEf3QQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Arushi,

Am Mittwoch, 7. M=E4rz 2018, 16:38:50 CET schrieb Arushi Singhal:
> On Mon, Mar 5, 2018 at 9:12 PM, Richard Weinberger <richard@nod.at> wrote:
> > Arushi Singhal,
> >=20
> > Am Samstag, 3. M=E4rz 2018, 15:02:33 CET schrieb Arushi Singhal:
> > > Add spaces around ('=3D' and '<'),  to conform to the Linux
> > > kernel coding style. Issue found using checkpatch.
> >=20
> > please fix real issues. Coding style fixes to existing code just add too
> > much
> > churn. Except for drivers/staging/.
>=20
> Hello Richard
> Thanks for explaining,
>=20
> > If you're looking for a small MTD related project, I can offer the
> > following.
> > Cleanup all ubi_assert()s in drivers/mtd/ubi/.
> > Some of them need to be transformed into a meaningful warning/error
> > message,
> > others into a hard error, such as WARN_ON().
> > Review/understand every ubi_assert() and convert it.
>=20
> Before doing this task, I read about this discussion (
> http://lists.infradead.org/pipermail/linux-mtd/2014-November/056352.html =
).
> In this discussion it is decided to split ubi_assert() into two different
> functions, BUG_ON() and WARN_ON(). Even some of the asserts can be removed
> too.

Very good! You managed to exhume my forgotten TODOs. ;-)

One comment on BUG_ON(), we have to make very sure that it is not user=20
trigger-able.

Thanks,
//richard =20


