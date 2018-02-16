X-GM-THRID: 6523195637320646656
X-Received: by 10.37.130.12 with SMTP id q12mr1961002ybk.11.1518801584383;
        Fri, 16 Feb 2018 09:19:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.204.203 with SMTP id o194ls163443ywd.15.gmail; Fri, 16 Feb
 2018 09:19:43 -0800 (PST)
X-Google-Smtp-Source: AH8x224C15+cUPtN1zb6sFibwc4SagvIH/vF2Lz1eurZfeyc+r9W6PnHCJhoVwcEXni0NOkiaiFU
X-Received: by 10.129.68.2 with SMTP id r2mr3950704ywa.230.1518801583292;
        Fri, 16 Feb 2018 09:19:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518801583; cv=none;
        d=google.com; s=arc-20160816;
        b=Atgszun0scdYCKV1m5ID4yoV9HnXuemXs6wnuikCJSMD+IKqjG78H4Oy5R7tGwpBVN
         oB1pzb38vCQIkcdWhV+J4z9LWs53rbXGl+dxY1+JMpqzpGB+NK39KLpu5qoRtPtsrbVM
         qxBM7aNl2S3X8nVoUJGKOYmPjF3/3q5yuc3JVpvXLWEjC/nVjXH1VO926dSnZPnE23nY
         /ueOthoz+E8/MrOrIWCeXqm3uFb5OlTxNj+WCUL0wgoVyznyh40Sa4o/aw2L4KwdALAl
         COqdt5IDdST8SisIvvp5gE7ir5ztZeIcsxT5d7MlgmYtbSegMx9lxhWnhtrqIKsJpSaU
         CkQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=fwsH/Lcz5eL3Bnlr9Mg5A5uivmVSXH2QZHe21zKkDoQ=;
        b=wh+64wecDGrF/E+1dysgBZpSdqkCAhQ2ZVTHfVex0c8jk5NxXZ9m/yj7QuluTAB2RC
         jBjkl6Lkx5BD1j90KBOoZYk2pw/Qm5B025D3ab8a5kwhMIfeRmXfsNdWARPcwjT2OaTR
         xB1qlW5tUSSknit40Gb3qwjXcdJC/wi+0HhI9uTVrvt2ptTX+IGgvJENtJ/Xk9XAYGij
         LtqK4iaksLIW1CvP1B2ScZK03RzDyNJtMtTLrNquDRtXaxv2HfaUiybQAboSL5UsyyEv
         XHrszKOzxxZEmfenU7RWaXxd5jrns1F8pYrYMp140po+s70lQ+jo1PWkYWZnu/R11xzc
         B5UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=sZwqgU9u;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Return-Path: <ezequiel@vanguardiasur.com.ar>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id t8si207744ybc.1.2018.02.16.09.19.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:19:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=sZwqgU9u;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Received: by mail-pg0-x242.google.com with SMTP id w17so2908949pgv.6
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 09:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=fwsH/Lcz5eL3Bnlr9Mg5A5uivmVSXH2QZHe21zKkDoQ=;
        b=sZwqgU9uaJfllfN8+Cpv687uB8zPFgoPPB6HCeH34FXmJWt5cyI/BUM1hOBDJtm7+g
         +axofrzNo2816+OLHaBPEWtMXDo4dskol4eA4UEE5ws7oS5Msau8bwWTFYEhKZWnuRwq
         e5xlgcpoBpbn0RwWCggB/fMcBwsqW9+W+WaVm8eBln54l0J8WW+ymDwclUgDMcO1q7im
         BMR5LTQOKn5MbEvm+OKxF58DPWzUJceZlvRY2yJN6ZDLnRiZOq1C/e5fTkKgb+EB4R+5
         XX9YK/NckAZ7+329E/EhvcrnaUgvbrXIwT1a/gNQt6iatsgS5GCo1Hg9eIR+k9e1P7dd
         IG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=fwsH/Lcz5eL3Bnlr9Mg5A5uivmVSXH2QZHe21zKkDoQ=;
        b=J3RilDwTb7zD4/2phQMlQSV5GxERU45FOL7LXwg+zoCb5ZVQQop2WdfhlQPEjAp9SQ
         QNeHNSpTO8OMWnywdSZyges9NOG9Q5nhmKC5UI9epifDxPxmUbrCAfbtuP7dtaYs8nN1
         kICkEJlp+JIM7L4OkcZ6p8kv7QN1Q326LgZoTrTL2X7hZWsJu8EJmnsxFKbd6RPKKEkP
         c5h9mkLmVmqt9JOTJ7B6N3y7oJK2eGZ9egGZxc6Y+L1SzxYMQBKu9XLfKwJE8TQ/KqnU
         ko3MO+fTy5GQbtKDB3gS6LfX+QayOUYHjMVrTnylvEEwEINrTy77X5DbcQvHZ+faoHn0
         hyFQ==
X-Gm-Message-State: APf1xPCkZTDFXveIhupVqBz9l3uzIrkVd+ONmoemG67bwkRzcMMvYAHL
	Y5D5iwkMFdlyKpcWiCz3WhLzml+m/MLCbaHoLjPgRA==
X-Received: by 10.99.134.65 with SMTP id x62mr5550473pgd.291.1518801582194;
 Fri, 16 Feb 2018 09:19:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.236.187.136 with HTTP; Fri, 16 Feb 2018 09:19:41 -0800 (PST)
In-Reply-To: <cover.1518797480.git.shreeya.patel23498@gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 16 Feb 2018 14:19:41 -0300
Message-ID: <CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
Subject: Re: [PATCH NAND 0/5] Replace printk statements with pr_*macros
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: Boris Brezillon <boris.brezillon@free-electrons.com>, Richard Weinberger <richard@nod.at>, 
	David Woodhouse <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, 
	Marek Vasut <marek.vasut@gmail.com>, Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Shreeya,

Thanks for the contribution.

On 16 February 2018 at 13:50, Shreeya Patel
<shreeya.patel23498@gmail.com> wrote:
> This patchset removes all the log levels i.e. KERN_WARN,
> KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> statements and replaces the printk statements with appropriate
> pr_*macros.
> According to the kernel coding style, pr_*macro is the preferred
> way to print the message.
>

So, two things to begin with.

First of all, despite this contribution being part of outreachy,
I believe you can include mailing lists in your case.

In other words, don't use the "nol" option in get_maintainer
script and Cc the MTD mailing list: linux-mtd at lists.infradead.org.

>
> Shreeya Patel (5):
>   mtd/nand: Replace printk with pr_warn
>   mtd/nand: Replace printk with pr_notice
>   mtd/nand: Replace printk with pr_err
>   mtd/nand: Replace printk with pr_info
>   mtd/nand: Replace printk with pr_debug
>

This is a non-usual split. We usually split patches per-driver,
instead of grouping all the pr_{} of a given type together.

Can you re-do the series? Grouping the changes per-driver,
i.e. all the pr_{} changes in cafe_nand.c together, and so on.

>  drivers/mtd/nand/ams-delta.c     |  4 +--
>  drivers/mtd/nand/cafe_nand.c     |  4 +--
>  drivers/mtd/nand/cs553x_nand.c   |  8 ++---
>  drivers/mtd/nand/diskonchip.c    | 76 +++++++++++++++++++++-------------=
------
>  drivers/mtd/nand/fsl_elbc_nand.c |  4 +--
>  drivers/mtd/nand/fsl_ifc_nand.c  |  2 +-
>  drivers/mtd/nand/mxc_nand.c      |  2 +-
>  drivers/mtd/nand/nand_bch.c      | 12 +++----
>  drivers/mtd/nand/nandsim.c       | 10 +++---
>  drivers/mtd/nand/r852.c          |  2 +-
>  drivers/mtd/nand/r852.h          |  6 ++--
>  drivers/mtd/nand/sh_flctl.c      |  2 +-
>  drivers/mtd/nand/sm_common.c     |  5 ++-
>  13 files changed, 70 insertions(+), 67 deletions(-)
>
> --
> 2.7.4
>



--=20
Ezequiel Garc=C3=ADa, VanguardiaSur
www.vanguardiasur.com.ar

