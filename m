X-GM-THRID: 6950201228210995200
X-Received: by 2002:a1c:1b46:: with SMTP id b67mr136287wmb.122.1618247393251;
        Mon, 12 Apr 2021 10:09:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls261830wrb.1.gmail; Mon, 12
 Apr 2021 10:09:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxUDay71qvXuKb/vYwDqa5k5ESEXjdcziC2ayx5EDbEEs9R36i7JMLa+0TkwNpYEfDk76n3
X-Received: by 2002:a5d:6682:: with SMTP id l2mr8137089wru.306.1618247391675;
        Mon, 12 Apr 2021 10:09:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618247391; cv=none;
        d=google.com; s=arc-20160816;
        b=tD5WdDKpPFqlOeAqWhCUuo/l5pSrQoy9wK2YKy6JiW3a8v/ijIoVJRyIZHYoYovEe8
         IU9G7c4WiwX1J0kh1ThQT1VcXmt8bfSEs6pHHaP6MYXgHoh6ParfiPSE2WcCH1kHDtfK
         Z79qr5lVv9ccgLIs3uSVAF33UuB4O6WsixptbkVx2fmfcg8pZpEGNTINvGnUjoAq9qu8
         0U3Vp4W9LxOhxdygiPgbjpU+49q6omyl03SyQTT2C7BNTIcIZl1t8HZz2IN6C45YRySM
         /U1jAlfiFGCu8FXYgNpkYx7nJRsjh4xuLf0xAEvY7kMwYgjUPhHf/t/0SI2yxFOVuUWq
         tZ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=twpIt9q4/M23inCK155VBYPgPIlaq7z69LHyRBEGQ6E=;
        b=nBj3AmVVLek5TkxbOI+OETvGRe6FNUrd0qlzCmBhmeM/hRZSz+3Nawj6lhlbJstep2
         flUP6oH0Cgoc5vHgdBaymAwJOYTlVMLJiXrJfwqWb3r5H/sQT1pwKTPEjdYTT45ttFcW
         yPtH2MdG9QrL0g6JCRp0y3JTDifhwNeMnExY6SrzBC7/COJt5SX5QkiBmjzqendWYLbg
         XTwjBXIHtQ2w64UB3ZmVCxU6ufEUGJuqmlHckqGqzuCkSsFAp7/WXsh+1KQGXL6rYea8
         myI/Ap9E5rY27rIua0dtrSMuBpwMUGAE5eoYP1osrckoaFHd4DgTXX4VFxvrc0SEj2fq
         SY8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x16si1828wmi.1.2021.04.12.10.09.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 10:09:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ASCsZNK0gkWB4Zlshy8DR2AqjBeRyeYIsi2QD?=
 =?us-ascii?q?101hICF9WMbwrbHWoN0w0xjohDENHEwxgNzoAtj5fVrw175QpbMQM7CrQRX8tA?=
 =?us-ascii?q?KTRr1KwIP+z1TbakjD38FH06MISdkdNPTRChxAgd/+8E2EFb8bsbq62YSJocub?=
 =?us-ascii?q?8Ht3VwFtbMhbjjtRLgqACEV5SE1nKPMCZf6hz/FKrTahZngbB/7TbhI4dtPOqN?=
 =?us-ascii?q?HRmJXtbQRuPX4awTOThjCl4qOSKWn+4j4iVVp0sNEf2FmAvQi8wqm4qfm0xlvn?=
 =?us-ascii?q?ymfP4/1t9OfJ+59sAsqDj8RQBxfNrkKTZIpnU6CfpzxdmoySwWdvvt/LrRIte/?=
 =?us-ascii?q?529mqURGeouhHgsjOO7B8er0Tvw1OZnnfvyPaWeA4H?=
X-IronPort-AV: E=Sophos;i="5.82,216,1613430000"; 
   d="scan'208";a="502847669"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 19:09:34 +0200
Date: Mon, 12 Apr 2021 19:09:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: PEGGY TAWAH <tawahpeggy98@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: Remove line to fix checkpatch
 error
In-Reply-To: <CADT-=4kSZrzZs4=WZM8F-WBiG03XWjLGudvZ83E7_M6Gg6-now@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104121909170.15516@hadrien>
References: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB> <alpine.DEB.2.22.394.2104121208530.6734@hadrien> <3c032481-f359-45c7-947b-54b39e989822n@googlegroups.com> <alpine.DEB.2.22.394.2104121401100.9408@hadrien>
 <CADT-=4kSZrzZs4=WZM8F-WBiG03XWjLGudvZ83E7_M6Gg6-now@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-476315695-1618247374=:15516"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-476315695-1618247374=:15516
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 12 Apr 2021, PEGGY TAWAH wrote:

> Ok, thanks! 

Don't top post.

julia

>
> On Mon, Apr 12, 2021, 1:01 PM Julia Lawall <julia.lawall@inria.fr> wrote:
>
>
>       On Mon, 12 Apr 2021, PEGGY TAWAH wrote:
>
>       > Thank you Julia for your timely feedback and intervention. i
>       think the patch
>       > got mixed up after i did git add <name of file modified> now i
>       understand it
>       > was a wrong move.  will fix that right away and submit.Thanks
>       again.
>
>       Actually, someone else said that it is a generated file.  So you
>       should
>       just move on to something else.
>
>       julia
>
>       > Tawah Peggy
>       >
>       > On Monday, April 12, 2021 at 6:10:56 AM UTC-4
>       Julia....@inria.fr wrote:
>       >
>       >
>       >       On Sun, 11 Apr 2021, tawahpeggy wrote:
>       >
>       >       > remove one empty line.CHECK: Please don't use multiple
>       blank
>       >       lines
>       >
>       >       Did something go wrong with the patch generation? You
>       say that
>       >       you are
>       >       removing one line, but the diff information looks like
>       you are
>       >       adding a
>       >       file. Normally a patch has only the changed lines and a
>       few
>       >       lines before
>       >       and after.
>       >
>       >       > Signed-off-by: tawahpeggy <tawahp...@gmail.com>
>       >
>       >       You need to put your real name when contributing to the
>       Linux
>       >       kernel.
>       >
>       >       For example, I would put:
>       >
>       >       Julia Lawall <julia....@inria.fr>
>       >
>       >       julia
>       >
>       >       >
>       >       > ---
>       >       > drivers/staging/comedi/comedi_pcmcia.mod.c | 1 -
>       >       > 1 file changed, 0 insertion(+), 1 deletion(-)
>       >       > create mode 100644
>       drivers/staging/comedi/comedi_pcmcia.mod.c
>       >       >
>       >       > diff --git
>       a/drivers/staging/comedi/comedi_pcmcia.mod.c
>       >       b/drivers/staging/comedi/comedi_pcmcia.mod.c
>       >       > index 0904b8765afs96..3984db1a39c8
>       >       > --- /dev/null
>       >       > +++ b/drivers/staging/comedi/comedi_pcmcia.mod.c
>       >       > @@ -0,0 +1,31 @@
>       >       > #include <linux/module.h>
>       >       > #define INCLUDE_VERMAGIC
>       >       > #include <linux/build-salt.h>
>       >       > #include <linux/vermagic.h>
>       >       > #include <linux/compiler.h>
>       >       >
>       >       > BUILD_SALT;
>       >       >
>       >       > MODULE_INFO(vermagic, VERMAGIC_STRING);
>       >       > MODULE_INFO(name, KBUILD_MODNAME);
>       >       >
>       >       > __visible struct module __this_module
>       >       > __section(".gnu.linkonce.this_module") = {
>       >       > .name = KBUILD_MODNAME,
>       >       > .init = init_module,
>       >       > #ifdef CONFIG_MODULE_UNLOAD
>       >       > .exit = cleanup_module,
>       >       > #endif
>       >       > .arch = MODULE_ARCH_INIT,
>       >       > };
>       >       >
>       >       > #ifdef CONFIG_RETPOLINE
>       >       > MODULE_INFO(retpoline, "Y");
>       >       > #endif
>       >       >
>       >       > MODULE_INFO(staging, "Y");
>       >       >
>       >       > MODULE_INFO(depends, "pcmcia,comedi");
>       >       >
>       >       > -
>       >       > MODULE_INFO(srcversion, "ED971F2E01020DFA2B04486");
>       >       > --
>       >       > 2.17.1
>       >       > h-Hartman <gre...@linuxfoundation.org>
>       >       >
>       >       > --
>       >       > You received this message because you are subscribed
>       to the
>       >       Google Groups "outreachy-kernel" group.
>       >       > To unsubscribe from this group and stop receiving
>       emails from
>       >       it, send an email to outreachy-kern...@googlegroups.com.
>       >       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/20210411204933.GA35
>       24%40
>       >       peggy-Lenovo-V130-15IKB.
>       >       >
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/3c032481-f359-45c7-
>       947b-
>       > 54b39e989822n%40googlegroups.com.
>       >
>       >
>
>
>
--8323329-476315695-1618247374=:15516--

