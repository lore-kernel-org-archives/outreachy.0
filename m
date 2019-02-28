X-GM-THRID: 6663027370941743104
X-Received: by 2002:a25:c74f:: with SMTP id w76mr3467799ybe.16.1551364176882;
        Thu, 28 Feb 2019 06:29:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2304:: with SMTP id j4ls1291143ybj.5.gmail; Thu, 28 Feb
 2019 06:29:36 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbNv6kC/6ld3AIWT81ENsyXaFyJ4kgzsFYZH3BlLnGRnmHLONnE4zQJT7H0BmleoE/s/7Mm
X-Received: by 2002:a5b:404:: with SMTP id m4mr3960160ybp.100.1551364176000;
        Thu, 28 Feb 2019 06:29:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551364175; cv=none;
        d=google.com; s=arc-20160816;
        b=0QkgOlB+OOAie5MviOpkKMRImmCNy7c5O/vCLLKywX3i2e4gF2V7tfHYO4FVaQ3M4I
         mUS+ES8YIydIcHzVeHqla9wQznwUOCb++VdIUF9k4kqXxCYexF4YtoHcNvD+YRpyS2N8
         epi9GpUJ+/ikUdR0KCPvqH/S+edRfE9swFd9DOUYHOkm0zK7PeH2ZJgivWqTPk0hPbDu
         LQ4osPempoZgkTpuui3N5Q2hFt8sPMSVC9w9LGsg+UnHS5IpGZX3sAwLwod7+an+hWd8
         EHKCrKV8zi7rXF3OF8HnGcrB2M0iWeHALqKaoEqAsRfhVUIM967UC2YRPOTa2o+BcJZU
         4uoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SeLs00ftSdnLcmsXzJLpleRXSWY1eVDwWgAOquWVUGo=;
        b=Y16qbGmSPW6T49a9k9Um6b7F3/OGfWzvqGlfxaxreIFC+xSIbbSt13c3Cbo1YnlYVZ
         8NyCYa2J5XzLa40Yz9zjCCUgkOckbK3TTHLSSZxh1dwSye11iR4Kwt3WIa7aDxvO9Xts
         YIsN+AomD8NOoMJk5sylHzuH/vX/OXFdvVBqlJfXwzKMlGmywDXsr9IWthtGzrc7VH6i
         4aYFtekrAlpdUlEUkD1WmX36BxG97S+S8wiQKgyjoyVQsN/FsqUtgGf5roFgUm3sZRg9
         RrxwamdGORgXWMK5XNOUG6oSLC9BjJ0XDOiolpiQ2jL/6MqyX9w8M3cV1oxqFO1UjNlJ
         mHJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XpKsU5wY;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com. [2607:f8b0:4864:20::82e])
        by gmr-mx.google.com with ESMTPS id d186si1014251ywa.1.2019.02.28.06.29.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 06:29:35 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) client-ip=2607:f8b0:4864:20::82e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XpKsU5wY;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82e.google.com with SMTP id p48so23686343qtk.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 06:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SeLs00ftSdnLcmsXzJLpleRXSWY1eVDwWgAOquWVUGo=;
        b=XpKsU5wYjZaBaEZB8C+dqMUJYeUswAZp4EH8eJ3Exd2Es2oQ9iRSypwR60mvRCJmZB
         cma1MC51DEBArGEBSYiwEdRKE+hHGcnsvfgMr6Us8+80IM+/DSczTbR4G3g/MvfDfsMe
         ZRiIxaZU7d0RpfJZScIcX3KccfECgNUDJ3rdiGXDq67jfYjd/mSq5mPOIeWyAw+F9ewy
         48B908Jc4OX7NXFvBlyHwNxVZDNBl4GZwtpMs11+CIu0L3MsGzH6y5sr0UsITrwMMgPp
         tEntsqwT+TUoFxS486zmf8BfQz2okhzsRyAu7/UZ5WX00JLEWE+zIvo+dSoabpmvzRdb
         mohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SeLs00ftSdnLcmsXzJLpleRXSWY1eVDwWgAOquWVUGo=;
        b=We9MiC1FSYOtuM1ZzvBWCCJGQLxMAijMnmD4wkjRW1ENheXUsANcQgzF6ez+Cq/3FE
         eIhK47mfTLbB90DgVCF7rn98dGKdMUJz9qH7tMdNlSb7DlQo+HqB+/8HCM5cZCpPXi30
         Mzxat/bwb11t67RY+6i/jM1jkyxnTluESWgPyY4hXOuI7r7Hhl6GmU8hsYt0wjKxeJwX
         +YUB7OCUSWWOQ3Vf5gq97407VYhaUnjT0sZiGnxd6crxRbE8QSZ2/Zps2w4g/8Ve60Q9
         za10K9uVN0fQx93Kk9ajKOASNAy52Wvo7fxjcjgMuHSucioZ+z/2ZZl5sCqMec35k2+s
         Qstw==
X-Gm-Message-State: AHQUAuZwNOAvRGlGLT5BbTDfCBmG8AW1WfXaqDy69Vlq4QtTm71F9c0x
	XspPAAk4ZNF4V4xM9OaH+O9Vq38+BAKk/tFzJXyPiOr7
X-Received: by 2002:aed:3c0f:: with SMTP id t15mr6527726qte.282.1551364175469;
 Thu, 28 Feb 2019 06:29:35 -0800 (PST)
MIME-Version: 1.0
References: <20190228122904.GA16782@bhagyashri-Lenovo-G570>
 <CAOMPgjhjgt2bv3pL4weJjx6VgfV8Bfrmdfu31esFB8CPKusGgQ@mail.gmail.com> <20190228140038.GA16345@kroah.com>
In-Reply-To: <20190228140038.GA16345@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Thu, 28 Feb 2019 19:59:24 +0530
Message-ID: <CAOMPgjh3MA0WBs+WA4BVm6zrydsxiXa-oXPUkYNRAw3mNCKArQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] staging: speakup: fix line over 80 characters.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Michael Kelley <mikelley@microsoft.com>, Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000098a15d0582f51e6b"

--00000000000098a15d0582f51e6b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My apologies Greg, Above message was for one of my subordinate who wants to
contribute to the project. I was helping her to understand the patch
submission process, verifying her patch and accedentally messed up the
email thread during reply.

My appologies, I assure this won=E2=80=99t happen again!

=E2=80=94 Bhagyashri



On Thu, 28 Feb 2019 at 7:30 PM, Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Thu, Feb 28, 2019 at 06:17:23PM +0530, Bhagyashri Dighole wrote:
> > This looks good! If greg replies to make changes! Ask him  what kind of
> > changes you required.
>
> Did you just email yourself?
>
> confused,
>
> greg k-h
>

--00000000000098a15d0582f51e6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div style=3D"font-size:16px;color:rgb(49,49,49);word-spacing:1px" dir=
=3D"auto"><div dir=3D"auto" style=3D"font-size:1rem">My apologies Greg,=C2=
=A0<span style=3D"font-size:1rem">Above message was for one of my subordina=
te who wants to contribute to the project. I was helping her to understand =
the patch submission process, verifying her patch and accedentally messed u=
p the email thread during reply.=C2=A0</span></div><div dir=3D"auto" style=
=3D"font-size:1rem"><br></div><div dir=3D"auto" style=3D"font-size:1rem">My=
 appologies, I assure this won=E2=80=99t happen again!</div><div dir=3D"aut=
o" style=3D"font-size:1rem"><br></div><div dir=3D"auto" style=3D"font-size:=
1rem">=E2=80=94 Bhagyashri</div><div dir=3D"auto" style=3D"font-size:1rem">=
<br></div></div><div dir=3D"auto" style=3D"font-size:16px;color:rgb(49,49,4=
9);word-spacing:1px"><br></div></div><div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, 28 Feb 2019 at 7:30 PM, Greg Kr=
oah-Hartman &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxf=
oundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu=
, Feb 28, 2019 at 06:17:23PM +0530, Bhagyashri Dighole wrote:<br>
&gt; This looks good! If greg replies to make changes! Ask him=C2=A0 what k=
ind of<br>
&gt; changes you required.<br>
<br>
Did you just email yourself?<br>
<br>
confused,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--00000000000098a15d0582f51e6b--

