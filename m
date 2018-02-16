X-GM-THRID: 6523195637320646656
X-Received: by 10.28.145.13 with SMTP id t13mr1369914wmd.14.1518801806451;
        Fri, 16 Feb 2018 09:23:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.141.4 with SMTP id p4ls443131wmd.12.canary-gmail; Fri, 16
 Feb 2018 09:23:25 -0800 (PST)
X-Google-Smtp-Source: AH8x2263PZsFO4gy42RijJCjErojO8/SDF7qbBP3NLJKVCuGJJb4yZqtS8sFl3QijgSvPGj8uJ+L
X-Received: by 10.28.218.16 with SMTP id r16mr1486639wmg.11.1518801805334;
        Fri, 16 Feb 2018 09:23:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518801805; cv=none;
        d=google.com; s=arc-20160816;
        b=VFlY5K5k5Y38i7VTMaY9OoTjP7vL9+9FcVvoDLiSV9729afS5c2nnPqJK+OeMmKXfe
         YoZAgoHQGHmVNp9WkCmgSdrPcVRKJo4/zd1/cuUzVCiWx32ZItinK3MNku0i+uFiyBHc
         E3rrnBnayAQAty3gUr4UEMzyKNc0XYSg68F0cXdGY6+FlPeA/gtgkGJkGOCATOoBW6il
         8gcM/neTVjwUmPIYkY706ZggWGy6ecf+Kx2vfHGmWbo9JDqOKNfQMeFxawxdr09zXd1V
         6GSuvuMahRtmMC/gc8EGVyn43au97F/xYD6JV+K63XDMPNwr7pW2OwrvjOoHh0cZjRl7
         6ePg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=neGRKLzFhh2Q3T76WAF6TpZFVxFBsdjn+e1NV42ducA=;
        b=Ow27nScvZTYFTd2X5HJRg8oPLpqYPrHJeMu0S/gGndduXJRKhzrvL/7ln1rJhun4Gr
         yTz8+oOVRG/z1hSen7RpNKgQ2pTgnqN3wOBipkTbubTFxfehzpaUPHJ4DMb/B94Oj9Ni
         d0t2e5yinFlI3agNxYB/Gm/yf2gmkyckUf4jj3MRmnaeQ6mAubGrFMVsz3I8mR0kC4VC
         GIx+lQOJuUsfbkm3PQvd2b2KNxMkrIimJLsXb0r/JnOjIPjZjuU9mwwOsQ1ceXaeuxX4
         sDdEqTWOVy57kSULF9bP61LmtQrgD9LbvIvqsrl+aliCt/Y5dtlKYzrje4TX2ANEd9tj
         n06g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a138si235748wmd.0.2018.02.16.09.23.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:23:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,520,1511823600"; 
   d="scan'208";a="313984569"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2018 18:23:24 +0100
Date: Fri, 16 Feb 2018 18:23:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
cc: Shreeya Patel <shreeya.patel23498@gmail.com>, 
    Boris Brezillon <boris.brezillon@free-electrons.com>, 
    Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>, 
    Brian Norris <computersforpeace@gmail.com>, 
    Marek Vasut <marek.vasut@gmail.com>, 
    Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    linux-mtd@lists.infradead.org
Subject: Re: [Outreachy kernel] Re: [PATCH NAND 0/5] Replace printk statements
 with pr_*macros
In-Reply-To: <CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1802161822560.4340@hadrien>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com> <CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1437051580-1518801804=:4340"

--8323329-1437051580-1518801804=:4340
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 16 Feb 2018, Ezequiel Garcia wrote:

> Hi Shreeya,
>
> Thanks for the contribution.
>
> On 16 February 2018 at 13:50, Shreeya Patel
> <shreeya.patel23498@gmail.com> wrote:
> > This patchset removes all the log levels i.e. KERN_WARN,
> > KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> > statements and replaces the printk statements with appropriate
> > pr_*macros.
> > According to the kernel coding style, pr_*macro is the preferred
> > way to print the message.
> >
>
> So, two things to begin with.
>
> First of all, despite this contribution being part of outreachy,
> I believe you can include mailing lists in your case.
>
> In other words, don't use the "nol" option in get_maintainer
> script and Cc the MTD mailing list: linux-mtd at lists.infradead.org.

Shouldn't the dev_* functions also be usable?

julia

>
> >
> > Shreeya Patel (5):
> >   mtd/nand: Replace printk with pr_warn
> >   mtd/nand: Replace printk with pr_notice
> >   mtd/nand: Replace printk with pr_err
> >   mtd/nand: Replace printk with pr_info
> >   mtd/nand: Replace printk with pr_debug
> >
>
> This is a non-usual split. We usually split patches per-driver,
> instead of grouping all the pr_{} of a given type together.
>
> Can you re-do the series? Grouping the changes per-driver,
> i.e. all the pr_{} changes in cafe_nand.c together, and so on.
>
> >  drivers/mtd/nand/ams-delta.c     |  4 +--
> >  drivers/mtd/nand/cafe_nand.c     |  4 +--
> >  drivers/mtd/nand/cs553x_nand.c   |  8 ++---
> >  drivers/mtd/nand/diskonchip.c    | 76 +++++++++++++++++++++-------------------
> >  drivers/mtd/nand/fsl_elbc_nand.c |  4 +--
> >  drivers/mtd/nand/fsl_ifc_nand.c  |  2 +-
> >  drivers/mtd/nand/mxc_nand.c      |  2 +-
> >  drivers/mtd/nand/nand_bch.c      | 12 +++----
> >  drivers/mtd/nand/nandsim.c       | 10 +++---
> >  drivers/mtd/nand/r852.c          |  2 +-
> >  drivers/mtd/nand/r852.h          |  6 ++--
> >  drivers/mtd/nand/sh_flctl.c      |  2 +-
> >  drivers/mtd/nand/sm_common.c     |  5 ++-
> >  13 files changed, 70 insertions(+), 67 deletions(-)
> >
> > --
> > 2.7.4
> >
>
>
>
> --
> Ezequiel García, VanguardiaSur
> www.vanguardiasur.com.ar
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAAEAJfAg_hei2PF37_oX2tf%2BMv43ye-nEOt%2BKRVFerp1Jfzn2Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1437051580-1518801804=:4340--

