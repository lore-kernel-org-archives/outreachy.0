X-GM-THRID: 6528718721660223488
X-Received: by 10.223.172.146 with SMTP id o18mr2034079wrc.18.1520437133045;
        Wed, 07 Mar 2018 07:38:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.201.145 with SMTP id f17ls603408wrh.5.gmail; Wed, 07 Mar
 2018 07:38:51 -0800 (PST)
X-Google-Smtp-Source: AG47ELunyb3dbVCb9k5fNvd7yQ9CgVzh4Tu07NIQ+zVQxO91Zgfbtt5AupwJOyrBNZrdDaEKDv3h
X-Received: by 10.223.129.200 with SMTP id 66mr2036073wra.17.1520437131392;
        Wed, 07 Mar 2018 07:38:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520437131; cv=none;
        d=google.com; s=arc-20160816;
        b=EQdjBcIaSnHDE+wWb7AakzppqxYQoLWjFnWeOugb8N2S29G65nhzM/C9IBSTpuk12d
         MwYsQ80o/P0kJ15GBXmhx1T5l4l+GeYrhNCdbFTxi+5yLoI16oPmyrGJop3Rl+QYPlhU
         /6f43M+Jr0nlJ/PaXaxyB2g1tnDF68dxBXndOLJd642qbY5nPxlj+/pQEIQmumiEPlKk
         nfkMVdFqs+S7VCbWZsWAzRaBVjSoAeMsjqZdiFnCHN451UTb3CRMQMq0UUGUK6urVl7u
         wc14ZZ3qcrBiltdz1KYHKwv1+nuWkRqda0S9jUJfKTKb2+ZP+4KAE3UtYym3xl+phonn
         tAeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=YlE9b00li9H4gRQDdawn/FdTga1NoFStxFYJqvpAQBs=;
        b=fVI9P45jSRVyxdOQey/QtfDA/Q/L/JbUzDB/kenJAAnNJrlECU9DfFh+kQlWbgCmXE
         GfYSDrUHMDfducrumE5YlBkz7YP+S7QMxeLmvRBbn6RomhcCLbvPSekPHoyT9CaPVhdL
         job0N9D/WE5gfHkFH1fUjNArNgygl+xUUyRRQeHH5Tl8JJucI7jYEMD/JJX1FwNtrEOg
         qh6RLqzCQMdEqPLx//UHljix/EZAZ4TlAWK8RD4I8PRZEZuA1hJUSbVI0ttsDAzG7nwV
         1+mcsY4u+yMUrvbKscYZS6DdtfpVfx1QeNdoEuq/aHwYjHTCfsTPeZUSRRqQOiUaVZ5o
         i3oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ddx6OV+O;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22d as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x22d.google.com (mail-lf0-x22d.google.com. [2a00:1450:4010:c07::22d])
        by gmr-mx.google.com with ESMTPS id d12si443957wre.4.2018.03.07.07.38.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 07:38:51 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22d as permitted sender) client-ip=2a00:1450:4010:c07::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ddx6OV+O;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22d as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22d.google.com with SMTP id o145-v6so3881686lff.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Mar 2018 07:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=YlE9b00li9H4gRQDdawn/FdTga1NoFStxFYJqvpAQBs=;
        b=Ddx6OV+ORPeZsorI4qZA9EAlXqg7adWEnaPg8BI9LdwgjxFYDl61eJGRp3IdmikJcv
         PPYq77PGtVNtKKrXN8FxM8G1au1PC8iXtYkhj8xmPtDX93DCgO+SIYWo7VT9ELymrJo2
         cMAXldKkctjcS8DHBn1UKLPItUpqs/nRJwVbKM1o2DP7q5XOIb2kPQJv4Fpsq9AYJCnp
         rO4mb2LE+RaaOhiKbeiZQbUJHw0gQJGlL3dTDgFpyCAY2tM4xp1H5qa3sPXp7rsAxaDH
         dcUogjz+CyRy3b2G5/ASlb2RnEaIOFU8hba4CSy8BvhPUD5Fx6+5lwgRQNGAegaLUQlL
         Mg0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=YlE9b00li9H4gRQDdawn/FdTga1NoFStxFYJqvpAQBs=;
        b=JsEQJRZmdKUvUMEoYqBYICCtwZvWQOwVzQske2cSWUviVTC6/NNjnahkE2LFfubvXK
         K5Fk2hnxGhr5N/GG6+vZTkcLf4QYasLJGGGjg55SJiyIpYr/bV95iBUJFN/xPU3yqnQR
         Uq3HPEhlUF5XnCVpHmh65mCPnd95T5D1vOUGXSdrEZiIJj5noLR/eVlaqPcmsNNzvj5U
         sFfTs5tjMOwWmLJ/s6bSNtrKj27kjIYS6Stbv3T4wYQ37NAXKdLr+XZUHIirCqwdQG39
         9kl5DhH4gO/zllQlGFIk2jZgfNBTPKA2IpOBbRyhFfitQXp/AId/WVMppWF/FGCWXltt
         KM9Q==
X-Gm-Message-State: AElRT7FQMHkBhFiZUi1zUYFnIyVxSziMRI5NGI2r5vCNlwr8FaE36S1Y
	+9qvHTX/NfobQJuChRlxvO2Y4AmN3LGtsolDXjY=
X-Received: by 10.46.62.11 with SMTP id l11mr4143508lja.25.1520437130727; Wed,
 07 Mar 2018 07:38:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.26.203 with HTTP; Wed, 7 Mar 2018 07:38:50 -0800 (PST)
In-Reply-To: <2872216.aoWXzO2rYL@blindfold>
References: <20180303140233.GA9634@seema-Inspiron-15-3567> <2872216.aoWXzO2rYL@blindfold>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Wed, 7 Mar 2018 21:08:50 +0530
Message-ID: <CA+XqjF-2K48uEPHhgoH4K+4X0Gnr=S3VaG4-VeZ9urfsNEf3QQ@mail.gmail.com>
Subject: Re: [PATCH] mtd: nand: Added spaces around ('=' and '<')
To: Richard Weinberger <richard@nod.at>
Cc: boris.brezillon@free-electrons.com, David Woodhouse <dwmw2@infradead.org>, 
	Brian Norris <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, 
	Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, linux-mtd@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="f4f5e80755241497b00566d45bdc"

--f4f5e80755241497b00566d45bdc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 5, 2018 at 9:12 PM, Richard Weinberger <richard@nod.at> wrote:

> Arushi Singhal,
>
> Am Samstag, 3. M=C3=A4rz 2018, 15:02:33 CET schrieb Arushi Singhal:
> > Add spaces around ('=3D' and '<'),  to conform to the Linux
> > kernel coding style. Issue found using checkpatch.
>
> please fix real issues. Coding style fixes to existing code just add too
> much
> churn. Except for drivers/staging/.
>

Hello Richard
Thanks for explaining,


>
> If you're looking for a small MTD related project, I can offer the
> following.
> Cleanup all ubi_assert()s in drivers/mtd/ubi/.
> Some of them need to be transformed into a meaningful warning/error
> message,
> others into a hard error, such as WARN_ON().
> Review/understand every ubi_assert() and convert it.
>

Before doing this task, I read about this discussion (
http://lists.infradead.org/pipermail/linux-mtd/2014-November/056352.html ).
In this discussion it is decided to split ubi_assert() into two different
functions, BUG_ON() and WARN_ON(). Even some of the asserts can be removed
too.

Hope, I am not missing anything.

Thanks
Arushi


>
> Thanks,
> //richard
>

--f4f5e80755241497b00566d45bdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Mar 5, 2018 at 9:12 PM, Richard Weinberger <span dir=3D"ltr">&l=
t;<a href=3D"mailto:richard@nod.at" target=3D"_blank">richard@nod.at</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Arushi=
 Singhal,<br>
<span class=3D"gmail-"><br>
Am Samstag, 3. M=C3=A4rz 2018, 15:02:33 CET schrieb Arushi Singhal:<br>
&gt; Add spaces around (&#39;=3D&#39; and &#39;&lt;&#39;),=C2=A0 to conform=
 to the Linux<br>
&gt; kernel coding style. Issue found using checkpatch.<br>
<br>
</span>please fix real issues. Coding style fixes to existing code just add=
 too much<br>
churn. Except for drivers/staging/.<br></blockquote><div><br>Hello Richard<=
br></div><div>Thanks for explaining,<br>=C2=A0<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
If you&#39;re looking for a small MTD related project, I can offer the foll=
owing.<br>
Cleanup all ubi_assert()s in drivers/mtd/ubi/.<br>
Some of them need to be transformed into a meaningful warning/error message=
,<br>
others into a hard error, such as WARN_ON().<br>
Review/understand every ubi_assert() and convert it.<br></blockquote><div><=
br></div><div>Before doing this task, I read about this discussion ( <a hre=
f=3D"http://lists.infradead.org/pipermail/linux-mtd/2014-November/056352.ht=
ml">http://lists.infradead.org/pipermail/linux-mtd/2014-November/056352.htm=
l</a> ).<br></div><div>In this discussion it is decided to split ubi_assert=
() into two different functions, BUG_ON() and WARN_ON(). Even some of the a=
sserts can be removed too.<br></div><div><br></div><div>Hope, I am not miss=
ing anything.<br><br></div><div>Thanks<br></div><div>Arushi<br></div><div>=
=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Thanks,<br>
//richard<br>
</blockquote></div><br></div></div>

--f4f5e80755241497b00566d45bdc--

