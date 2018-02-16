X-GM-THRID: 6523195637320646656
X-Received: by 10.55.204.24 with SMTP id r24mr4615422qki.46.1518801953663;
        Fri, 16 Feb 2018 09:25:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.68.2 with SMTP id j2ls1645474qtn.8.gmail; Fri, 16 Feb 2018
 09:25:52 -0800 (PST)
X-Google-Smtp-Source: AH8x224Lt5XIQ7C9VMYO+c0dl9a77g/rzEtqQ/DrhuYj0H7qaltEbJKpOqzuacV9tI0LTjIqzB9a
X-Received: by 10.200.112.94 with SMTP id y30mr5032225qtm.0.1518801952642;
        Fri, 16 Feb 2018 09:25:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518801952; cv=none;
        d=google.com; s=arc-20160816;
        b=icangFvPj7ZD/Ydi3wWxKyG3Mh7+4cZnBeI3vR6U47t2QHceoZLQLgA6GZ+XSf307j
         uK8A6Nu5OEplUrfLaZZGr2Ld/Bt489ovCSItsY9KxdqW0rkLr/gynk/4iht5Zlf9kT6V
         SfHeekfifGr2hBun3ENhLFcSg+qP0zzPRRzkB3JW6PxPGnjhyocGEa5p2zZuKxV8SR4i
         kpWRYp135UEAiAjKnQec8bVGlPkpj5Wh4KrptvQDP8PG1b8fYSOBXSX0grew3qeyqT0X
         9OMU7R3ySTJesTpDpWUxzGd1kOVbE0KtGVWVxyAou36u/DHAMh5+YkjnLc45wmEi0VG5
         ww/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=1AxFkgIdgFOSxcS7ZxS87htGgMSzLGQO3UpHQgg3IkU=;
        b=tngq7HJvdVaLOOH6L2VTUoTGek+EcOAn3MVFzTd1TL5KvSJuQXNlzTMr7P1BZcdNDt
         0c51VShi4YfWM4AE5rKrUqctvmadfQ7+4lyJa/HzZ0megG6RYzdvGJd7klOakurZ9A0s
         qELULY2A/rN6OnlMltNPjWH8IiDaXEM1yHuHQDD+cG2liK5Ci29esT1kabfqL5Ah1XJ/
         haWpq4EtB/f52+rUVzisiNF2wNXuZ+Grvk+bowJRSwEye6iiUg3cf2W9Cr1Xr9AxSfqq
         f9SXlvxcmwN89wWEE86JJ5Unt60uqXO6XBXy/6b2D+c0meYAdBLSCIlidLyTVzEyDyl4
         jtSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=Q9A361CR;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Return-Path: <ezequiel@vanguardiasur.com.ar>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id y124si550142qke.2.2018.02.16.09.25.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:25:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=Q9A361CR;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Received: by mail-pl0-x241.google.com with SMTP id bd10so2032923plb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 09:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=1AxFkgIdgFOSxcS7ZxS87htGgMSzLGQO3UpHQgg3IkU=;
        b=Q9A361CRcxqeOwdppO1ghNpsCvEUTo39mWXxUwNuPmFSIj1RAYXviviwIul+5mNqcP
         FkhV/nXMUyBEe5PSg858VRxf1uJIhCofP1zNabCBcQAVvu5ALGnQsZPTTPdjYyEqTFZu
         Cp2gAMiZgspkOd6QyNmWDcmbS82hkbl6ERYOQoumjM8vvjVBZZdLYA9NXEQGYS2ECm4v
         Aezpj4IRjRjevg8jqee/iVuO3zQrjI71itp+twsshBr/LiwyoRK8Dw/kXyh0gkuU+9eo
         urCMItenF3aIEwyh3blG8NUvo6XhpKv59wt6FV2sxmtFow5tHBL8K7FxIrx+GH4aPBZJ
         v9dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=1AxFkgIdgFOSxcS7ZxS87htGgMSzLGQO3UpHQgg3IkU=;
        b=oJ2qo7LXzb1J+MTfNAgwfx4AZODv7rWEzm9fKaPIvbO39B1O3VnkzTygF1LXNmU1ce
         PVrUofe1ZiKclP+u9Cer+fVbK/efIi/iTxtADeuknuF+h26v8rLpeD0RtIT0EC3VnfKX
         FsVKnQ8Bv08crC4Vq/+T3btbOeZtcD+W6lhnQlIJ6d+TpCS+czrc7RArjL5802NPIeVQ
         KY4PVsZmLo9+n5jMNIOHPvASfhj/dFApEpD800FBlJou3d++9NPHouVTqS96l4jaNPqh
         tcryUtDF1mT2KYlZjUkfnqLiExQ0HxC3nJQezSPPREybwtKDzhUMgJvFUDio1CFEkALP
         2yEg==
X-Gm-Message-State: APf1xPCx5A+rqgHk8AqzWxQrOoCAEtA6rofebjeCfBrmbxYiSFJGk1VU
	o9bcADsDA4bT6n5/OOi57/yDPfwPMDHq4BgIUdUWGQ==
X-Received: by 2002:a17:902:9893:: with SMTP id s19-v6mr6410512plp.101.1518801951773;
 Fri, 16 Feb 2018 09:25:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.236.140.23 with HTTP; Fri, 16 Feb 2018 09:25:51 -0800 (PST)
In-Reply-To: <CAAEAJfD6CbWOfrYOY4QDW0tte-yOebcZTGjUDQhR8uE+fsOs3w@mail.gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
 <1963507.Bpu1nn9g4S@blindfold> <CAAEAJfD6CbWOfrYOY4QDW0tte-yOebcZTGjUDQhR8uE+fsOs3w@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 16 Feb 2018 14:25:51 -0300
Message-ID: <CAAEAJfDpHotBRB4u0kfuOAM2cwaLqJFkYEsLHeozOGsSu_27cw@mail.gmail.com>
Subject: Re: [PATCH NAND 0/5] Replace printk statements with pr_*macros
To: Richard Weinberger <richard@nod.at>
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>, 
	Boris Brezillon <boris.brezillon@free-electrons.com>, David Woodhouse <dwmw2@infradead.org>, 
	Brian Norris <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, 
	Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

(Ccing MTD)

On 16 February 2018 at 14:24, Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
> Hey Richard,
>
> On 16 February 2018 at 14:19, Richard Weinberger <richard@nod.at> wrote:
>> Am Freitag, 16. Februar 2018, 17:50:09 CET schrieb Shreeya Patel:
>>> This patchset removes all the log levels i.e. KERN_WARN,
>>> KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
>>> statements and replaces the printk statements with appropriate
>>> pr_*macros.
>>> According to the kernel coding style, pr_*macro is the preferred
>>> way to print the message.
>>
>> Beside of that, how does it improve the code?
>> Don't get me wrong, pr_* is the way to go for new code, but I don't thin=
k it
>> is worth "fixing" in existing code and make working with git blame more
>> painful.
>>
>
> Shreeya's intention is to work on [1], migrating drivers to exec_op.
> As a first task, before being accepted, she is required to submit
> cleanup patches (or small tasks).
>
> Since I couldn't come up with small tasks for MTD, I suggested
> starting with printk cleaning. So this was my idea.
>
> Printk to pr_{} or dev_{} is not only aesthetical, it's also a consolidat=
ion
> change. Centralizing prints allows for other improvements.
>
> See for instance Wolfram's work [2, 3].
>
> In any case, does it hurt git-blame so much? It only affects
> the lines where the print is performed.
>
> BTW, should you have ideas for small cleanup tasks in MTD,
> let us know.
>
> [1] https://www.outreachy.org/communities/cfp/linux-kernel/project/migrat=
e-nand-driver-to-new-exec_op-framework/
> [2] https://elinux.org/Refactor_kernel_strings
> [3] https://elinux.org/Refactor_kernel_strings
>
> Thanks,
> --
> Ezequiel Garc=C3=ADa, VanguardiaSur
> www.vanguardiasur.com.ar



--=20
Ezequiel Garc=C3=ADa, VanguardiaSur
www.vanguardiasur.com.ar

