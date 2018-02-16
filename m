X-GM-THRID: 6523195637320646656
X-Received: by 10.101.92.67 with SMTP id v3mr1484816pgr.66.1518802018627;
        Fri, 16 Feb 2018 09:26:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8c92:: with SMTP id t18-v6ls1034657plo.10.gmail;
 Fri, 16 Feb 2018 09:26:57 -0800 (PST)
X-Google-Smtp-Source: AH8x2271GkZGj0dFY3k6U3alIANOkJIUMcGJpA1vQQT224c7A1eAndhZ0D2fSvBQr4ZAfuBKiO6F
X-Received: by 2002:a17:902:2f41:: with SMTP id s59-v6mr1544232plb.46.1518802017336;
        Fri, 16 Feb 2018 09:26:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518802017; cv=none;
        d=google.com; s=arc-20160816;
        b=xxEqG8JLWmZjlLml5c/bfRwHRRwbt+sjk6wV54IOUtyVJuE4rCJVZiRZMd+nZGD7rS
         +UjCwX/mVYnLeBwudtPC+a4O0MhPvWd4ad1X/gQBNmuDagX3WyGFF6oZaHZ1RnEdfpq3
         qWWDF4sOqtstxF+ucQNvj45bNmaIMntGYCULgA0U/v9jcs/Q7HEHqMchqtGu282Hd+oP
         BAnZB0E7J5NtoXuMr5yUJ/rze2TDvnhT2Ii08EkiN1scJskbpFsZEdfd+4MfgMzcAk32
         vCHedj+hxx4/7usLs8Lo7ukioH4v+Ib1l3Df99nfZoGInS8KW9p7TLyJyAGNu7qhFTUr
         sdrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=0PezbSGk71VKe4e5jz0WD2nePWRcVL/rzTXVnuQHzYE=;
        b=RbdpST8V2agvhMLyDkuv7Bkoa0bwof7VocCxTUBBondpDnnxLB9gZmu80F+2S48l29
         9F2SzU7SfxzFC+pzYcLDZQMlgXPoYflYlLOs4+zI1F8xqsB3dzKMa6vfYIk91QQYN/NI
         yO8fvpOTSBp0t36ve34qolRgjF56EI9bvZ9YoQz/jLznEtsjeVdsNiGfDebZjeJgW1yr
         Xu+X33VkmRSBgH0y1vXCPUMIaSpMzJdDYPng4sG3bikBMrTg58oTsoffHbPlV02fLakq
         hONZ79ruoatfZ35Ap6Is+t6zC3/YLExNIhnPHJRO+J5z/UdSDQiAkGoOmEzp6L1KNdmy
         0WGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=jpurDEZu;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Return-Path: <ezequiel@vanguardiasur.com.ar>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a11si535717pfi.2.2018.02.16.09.26.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:26:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=jpurDEZu;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Received: by mail-pg0-x242.google.com with SMTP id a11so2896809pgu.13
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 09:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0PezbSGk71VKe4e5jz0WD2nePWRcVL/rzTXVnuQHzYE=;
        b=jpurDEZuZcbAQw61VYCtt35HN8cFF4cHqZc/q+YsZlEZgHi70F2fN2GCD5yfbV4qa+
         9pHz6PL9oIm38tGLCd3eiwNoyUEvOeJcNptB/xcJ+cKQyObEfEaPPg9D70/cI9PfcVua
         5E59xtHopirdgWwq8/q3Q8frTV6EFH5JROUQ2hkpxOgHhgwDWmFEIHhhN9w0+9Q/I08W
         DEI+CVzOQiBFpvQhMnxOr52JhixIMMUOM9xl7aXkK1siBShv3uV6eMQ9au5fsZab4Fna
         3wxDfEFygW15Yr9LQzNsHppyvdbqPIM4s0rNZ+05jyum2m/H9s/dfDvlcA3MpH5ELABg
         ba1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0PezbSGk71VKe4e5jz0WD2nePWRcVL/rzTXVnuQHzYE=;
        b=ZzyduDO6Keto+R2/Lr6kwVlXGzXwiG5mWui159o/u40tRPNGhVZSrfrP4kpotKksp1
         +LLNJfr+b9fRn0FDYpmKUTgTusaGNF9V8lNVso2zYPsJmh3Dvx5BU9ckggQeqqmMRvvV
         rqwE9rSmheN6jROuqah8Di2r+z0+HcpFlG/1gGKxdDXpB5oawxZCERPYJzuBU6c4V1QT
         FAnHAFUDcmErdkrlOAYC28WHIIKMAEU6h0kYGM1uYKvDHJF1w72d3KfXDPrR+JrlduB2
         u0ntBfycXHmgJn730FeYMdKE2IxqIFrQBjvkDlDr1VAffcnSc28Tv0ChH5Yzg+vyJ8w6
         FYgA==
X-Gm-Message-State: APf1xPCmTUM3C3sei8q5cFc8KbWuwBn64T1MiKEa9RA+OSGe8MmmrV/V
	9Kz8jvEWfjWIsWDIe4JfaEaE1gkH2obdgyh34fp2ww==
X-Received: by 10.98.92.68 with SMTP id q65mr6789528pfb.4.1518802017008; Fri,
 16 Feb 2018 09:26:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.236.140.23 with HTTP; Fri, 16 Feb 2018 09:26:56 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1802161822560.4340@hadrien>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
 <CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com> <alpine.DEB.2.20.1802161822560.4340@hadrien>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 16 Feb 2018 14:26:56 -0300
Message-ID: <CAAEAJfAtvm5bii9eyUnYmU=tQCOvE_hPk0eBJQ1vwgogbGYr-A@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH NAND 0/5] Replace printk statements
 with pr_*macros
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>, 
	Boris Brezillon <boris.brezillon@free-electrons.com>, Richard Weinberger <richard@nod.at>, 
	David Woodhouse <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, 
	Marek Vasut <marek.vasut@gmail.com>, Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 16 February 2018 at 14:23, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 16 Feb 2018, Ezequiel Garcia wrote:
>
>> Hi Shreeya,
>>
>> Thanks for the contribution.
>>
>> On 16 February 2018 at 13:50, Shreeya Patel
>> <shreeya.patel23498@gmail.com> wrote:
>> > This patchset removes all the log levels i.e. KERN_WARN,
>> > KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
>> > statements and replaces the printk statements with appropriate
>> > pr_*macros.
>> > According to the kernel coding style, pr_*macro is the preferred
>> > way to print the message.
>> >
>>
>> So, two things to begin with.
>>
>> First of all, despite this contribution being part of outreachy,
>> I believe you can include mailing lists in your case.
>>
>> In other words, don't use the "nol" option in get_maintainer
>> script and Cc the MTD mailing list: linux-mtd at lists.infradead.org.
>
> Shouldn't the dev_* functions also be usable?
>

Provided that:
1. it's applicable, i.e. if in the context of a device.
2. Richard is not too opposed to the idea.

Then, yes.
--=20
Ezequiel Garc=C3=ADa, VanguardiaSur
www.vanguardiasur.com.ar

