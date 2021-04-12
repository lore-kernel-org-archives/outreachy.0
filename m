X-GM-THRID: 6950201228210995200
X-Received: by 2002:a7b:cf2e:: with SMTP id m14mr6131159wmg.73.1618228901238;
        Mon, 12 Apr 2021 05:01:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cc94:: with SMTP id p20ls7855401wma.0.gmail; Mon, 12 Apr
 2021 05:01:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyBoL9ESCXzxDi/vv4BZuzQ2dZ0WgeZTH3iC9yZSGSzdRyWB6+Un1jVlk0KoJjTlV9mA2Oo
X-Received: by 2002:a1c:7207:: with SMTP id n7mr4565876wmc.11.1618228899760;
        Mon, 12 Apr 2021 05:01:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618228899; cv=none;
        d=google.com; s=arc-20160816;
        b=nG/4ogo23TxclA9crKoFiUHJ0tCtM8dxeaqyEl4jugSiOveGb16YWva7LRkDYbTDpm
         GsilY0x5MGPSyJlh6yMrITAyZCQGki3TF4EF5Q8URduX7z20aDmXX0LbSS/TbPdqmXGT
         sPHbZjzIRhQF2FjX1aUvKG3H2qL4SI8qN9R2YFYMykzooN5fi+E7+ePEXLhtZPdQTeDK
         bAPWosHeZc/7O8UA3IE5fS7HsUpZ2StzUayCmwQHa8M2l/fxcKbpzBvbvn8a6g7Zx+Qp
         Z9AKWeoG1O8KgzeWcwRlsW6Ly+JCUPsfYwszVF+/oLO2qoCPN4o00Zwc2vaHlke50o7x
         sHVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=XjyZweb5OClrjEjMO8k0SYPycvySqEuWs+T1b76J2qk=;
        b=thIyaXye1HbKQ24/T4FJhkkSDPGB6A9TiGPzTKA6bwcdO6Bs5cYUwQa2wxePjCoAhL
         Zdouom+zXhw+YdOuj037EgdRR57hOpPmyfd3Di04YKby1W22Du+QimnA78U6n4zwOdl6
         82kxto1flLz/Cbgi4byA6pIHoY8i+G1ueEYwD5t1cvfIwtco0P9sjqEr7Slu/hKCZHtE
         Vnr1pvGE3wAtR1nbCWN7gMpilSewuk/1k+1Lwap0NaZ0xlxssNjAiF9asj8cr7Xx2Fyv
         yc4GzNEdGDn3l3CZbAN2SLez+IQFSyL8B/bUXU4T0fV9IKGd3IObnGiuwlhWCbQ2WRF1
         ySag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k187si1300468wme.2.2021.04.12.05.01.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:01:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AIvVTDa210+FDgNUUfZaO1QqjBFMkLtp033Aq?=
 =?us-ascii?q?2lEZdDV+dMuEm8ey2MkKzBOcskd0ZFgMkc2NUZPqfVry7phwiLN6AZ6DW03ctH?=
 =?us-ascii?q?KsPMVe6+LZogHIPw3b2qpj2bx7c654YeeAaGRSqcrh+gG3H5IB7bC8kJyAvuvV?=
 =?us-ascii?q?w3dzQQwCUcgJ0y5DBgmWCUFwTgVdbKBJd6a03NZNpDarZB0sAPiTO39tZYT+ju?=
 =?us-ascii?q?HQmImjSRALAANP0njtsRqYrI+/KRSe0xsEOgkj/Z4p+wH+/DDE2g=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,216,1613430000"; 
   d="scan'208";a="502772094"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 14:01:39 +0200
Date: Mon, 12 Apr 2021 14:01:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: PEGGY TAWAH <tawahpeggy98@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: Remove line to fix checkpatch
 error
In-Reply-To: <3c032481-f359-45c7-947b-54b39e989822n@googlegroups.com>
Message-ID: <alpine.DEB.2.22.394.2104121401100.9408@hadrien>
References: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB> <alpine.DEB.2.22.394.2104121208530.6734@hadrien> <3c032481-f359-45c7-947b-54b39e989822n@googlegroups.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1435894986-1618228899=:9408"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1435894986-1618228899=:9408
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 12 Apr 2021, PEGGY TAWAH wrote:

> Thank you Julia for your timely feedback and intervention. i think the patch
> got mixed up after i did git add <name of file modified> now i understand it
> was a wrong move.  will fix that right away and submit.Thanks again.

Actually, someone else said that it is a generated file.  So you should
just move on to something else.

julia

> Tawah Peggy
>
> On Monday, April 12, 2021 at 6:10:56 AM UTC-4 Julia....@inria.fr wrote:
>
>
>       On Sun, 11 Apr 2021, tawahpeggy wrote:
>
>       > remove one empty line.CHECK: Please don't use multiple blank
>       lines
>
>       Did something go wrong with the patch generation? You say that
>       you are
>       removing one line, but the diff information looks like you are
>       adding a
>       file. Normally a patch has only the changed lines and a few
>       lines before
>       and after.
>
>       > Signed-off-by: tawahpeggy <tawahp...@gmail.com>
>
>       You need to put your real name when contributing to the Linux
>       kernel.
>
>       For example, I would put:
>
>       Julia Lawall <julia....@inria.fr>
>
>       julia
>
>       >
>       > ---
>       > drivers/staging/comedi/comedi_pcmcia.mod.c | 1 -
>       > 1 file changed, 0 insertion(+), 1 deletion(-)
>       > create mode 100644 drivers/staging/comedi/comedi_pcmcia.mod.c
>       >
>       > diff --git a/drivers/staging/comedi/comedi_pcmcia.mod.c
>       b/drivers/staging/comedi/comedi_pcmcia.mod.c
>       > index 0904b8765afs96..3984db1a39c8
>       > --- /dev/null
>       > +++ b/drivers/staging/comedi/comedi_pcmcia.mod.c
>       > @@ -0,0 +1,31 @@
>       > #include <linux/module.h>
>       > #define INCLUDE_VERMAGIC
>       > #include <linux/build-salt.h>
>       > #include <linux/vermagic.h>
>       > #include <linux/compiler.h>
>       >
>       > BUILD_SALT;
>       >
>       > MODULE_INFO(vermagic, VERMAGIC_STRING);
>       > MODULE_INFO(name, KBUILD_MODNAME);
>       >
>       > __visible struct module __this_module
>       > __section(".gnu.linkonce.this_module") = {
>       > .name = KBUILD_MODNAME,
>       > .init = init_module,
>       > #ifdef CONFIG_MODULE_UNLOAD
>       > .exit = cleanup_module,
>       > #endif
>       > .arch = MODULE_ARCH_INIT,
>       > };
>       >
>       > #ifdef CONFIG_RETPOLINE
>       > MODULE_INFO(retpoline, "Y");
>       > #endif
>       >
>       > MODULE_INFO(staging, "Y");
>       >
>       > MODULE_INFO(depends, "pcmcia,comedi");
>       >
>       > -
>       > MODULE_INFO(srcversion, "ED971F2E01020DFA2B04486");
>       > --
>       > 2.17.1
>       > h-Hartman <gre...@linuxfoundation.org>
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20210411204933.GA3524%40
>       peggy-Lenovo-V130-15IKB.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/3c032481-f359-45c7-947b-
> 54b39e989822n%40googlegroups.com.
>
>
--8323329-1435894986-1618228899=:9408--

