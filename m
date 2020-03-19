X-GM-THRID: 6803014756528553984
X-Received: by 2002:a1c:9ac2:: with SMTP id c185mr5151223wme.45.1584649518382;
        Thu, 19 Mar 2020 13:25:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:230e:: with SMTP id j14ls1773643wmj.0.canary-gmail; Thu,
 19 Mar 2020 13:25:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs2LWdCV5QaC+RPJ02sK3voPiSIB0DBWWvutR33yvcImjh4wWhx/hl9idSoiJkxtfHASt9p
X-Received: by 2002:a1c:1f14:: with SMTP id f20mr5849437wmf.61.1584649516803;
        Thu, 19 Mar 2020 13:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584649516; cv=none;
        d=google.com; s=arc-20160816;
        b=BiB1pdK7e8dPqOMdMszixZzGIQCt0cjQxRtF0ouahqlgUM5tUyrICvYAZRBonsmK2q
         eVG17ypV0LzS6bIxZnwSidGKhiosvWA2y/Sd1h7QC7W11EMDSBZdut35NO7JAhPLpWvs
         T3RtM8MeNNrAAx8bJZIYqDBV9HwpWqbOEhSmaUEETSbpHkWGx5/QEI/V/eWDAABbE5dR
         pTkY+/o3jA680wWz4HoSLs1xQ/Vf/HmR/fkKBo9iQEXQKTx0SGVkWszfe4RqCABiqHDB
         PMbtST3LdpYt5v67KgSYdZQIwm9XlHjfmKTpHbfTCmWgdVKzgiubNLVwx/bSanhGN6QG
         OB+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=EfS/EoNBcTbWkY2uk8I9G77INBP1vtDX1tS99qqz16Q=;
        b=UirJ/4xzv+J5yOVeO9GMAwmL+ZxiOROEfBb2gEu/kuXwrmPOkcCXYsYGwPL43jsIfX
         rqJ5d8DYcpfLt0F8G4/KCzRPRqixKpHQPHo346BFRM0OSnXS4JWZTRkWynr0rfFZEtuA
         +caz2IlJHjlUMO2AKFEi4xcINr8wUTHCmrjPRp8sYC+68jgykQ1a7gdsNGiC6H/t9Ath
         xL8MD3LSWxUS/7brJ/t+w9JsZySP5kglPrn2eL5SXXFoo95z28A4baWNCczwkITr99dw
         WDLCGUPUMAfUJIn8zwVFOlkXXUi2urgT8r8fr5X3J4j8xsgqk3/HUze59th7LzLGzaol
         HeKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y201si356892wmc.0.2020.03.19.13.25.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 13:25:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,572,1574118000"; 
   d="scan'208";a="342995024"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 21:25:15 +0100
Date: Thu, 19 Mar 2020 21:25:15 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
In-Reply-To: <20200319201553.GA10911@supernova>
Message-ID: <alpine.DEB.2.21.2003192122110.9011@hadrien>
References: <20200311181134.GA17847@supernova> <20200312002348.06821daa@elisabeth> <20200313094046.GB3844@supernova> <20200316150829.370975f2@elisabeth> <alpine.DEB.2.21.2003161527020.5216@hadrien> <20200316153629.0fde04f8@elisabeth> <alpine.DEB.2.21.2003161543170.5216@hadrien>
 <20200316162343.36bacaa7@elisabeth> <alpine.DEB.2.21.2003161631270.5216@hadrien> <20200316164440.54fe16a8@elisabeth> <20200319201553.GA10911@supernova>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, Lourdes Pedrajas wrote:

> Julia, Stefano,
>
> I would like to move to coccinelle instead of continue using checkpatch. So
> after the problem I explained in my last email, I have been trying various
> combinations of commands and modifications in some makefiles, as Stefano
> suggested. In order to see what is happening or to see why I can't use
> coccinelle.
>
> This is long, so I ask for forgiveness for that :(
>
> Lines preceded with $ are the commands I have run. Lines inside braces () are
> some modifications I have done that is not reflected in the console's output or
> clarifications.  The majority of the output is stripped in the sake of brevity,
> only the obvious errors are here.
>
> I don't know if this will be useful or not :( But I'll be glad if as least my
> problem helps to find any error or bug, or helps coccinelle itself.

Hi,

I would suggest to drop make coccicheck for the moment and just run
coccinelle directly.

Just go to your kernel directory and pick any *cocci file below
scripts/coccinelle.  Then run spatch -D report file.cocci .
(the . is to refer to the current directory, not the end of the sentence).
Hopefully, this way you will see what the problem is.

When you can get one rule to run properly, even if it doesn't find
anything, then you should be able to run make coccicheck with no problem.

julia




>
> Thank you,
> Lourdes
>
>
> ====
>
> $ make coccicheck MODE=patch J=8 M=drivers/staging/android/ --debug
>
> --(stripped output)
> File 'coccicheck' does not exist.
> Must remake target 'coccicheck'.
>
> Please check for false positives in the output before submitting a patch.
> When using "patch" mode, carefully review the patch before submitting it.
>
> coccicheck failed
> Makefile:1740: recipe for target 'coccicheck' failed
> make: *** [coccicheck] Error 255
>
> ====
>
> $ make coccicheck MODE=patch J=8 M=drivers/staging/android/ --debug
>
> (showing $(BASH) and $(srctree) variables from 1740 line of the main Makefile,
> and DIR and SPATCH from scripts/coccicheck lines 10-11)
>
> --(stripped output)
> File 'coccicheck' does not exist.
> Must remake target 'coccicheck'.
>
> Please check for false positives in the output before submitting a patch.
> When using "patch" mode, carefully review the patch before submitting it.
>
> BASH = bash
> srctree = .
>
> DIR = /mnt/btrfsimg/gregkh/staging/scripts/..
> SPATCH = /usr/local/bin/spatch
>
> coccicheck failed
> Makefile:1740: recipe for target 'coccicheck' failed
> make: *** [coccicheck] Error 255
>
> ====
>
> $ make /mnt/btrfsimg/gregkh/staging/scripts/coccicheck MODE=patch J=8
>   M=drivers/staging/android/ --debug
>
> (but x86_64 binutils are installed!! It don't repeat the error of last command
> about not finding coccicheck file here)
>
> --(stripped output)
>
> arch/x86/Makefile:147: CONFIG_X86_X32 enabled but no binutils support
>
> ====
>
> $ make /mnt/btrfsimg/gregkh/staging/scripts/coccicheck MODE=patch J=8
>   M=drivers/staging/android/ --debug
>
> (w/o CONFIG_X86_X32 or commenting-out the ifdef CONFIG_X86_X32 section of
> arch/x86/Makefile)
>
> --(stripped output)
>
> make: Nothing to be done for '/mnt/btrfsimg/gregkh/staging/scripts/coccicheck'.
>
> ====
>
> $ make coccicheck C=2 MODE=patch J=8 drivers/staging/android/ashmem.c --debug
>
> --(stripped output)
> File 'coccicheck' does not exist.
> Must remake target 'coccicheck'.
> ./scripts/coccicheck: line 65: shift: -1: shift count out of range
> Successfully remade target file 'coccicheck'.
> make: Nothing to be done for 'drivers/staging/android/ashmem.c'.
>
> ====
>
> $ make coccicheck C=2 MODE=patch J=8 --debug drivers/staging/*/*.c
>
> --(stripped output)
> File 'coccicheck' does not exist.
> Must remake target 'coccicheck'.
> ./scripts/coccicheck: line 65: shift: -1: shift count out of range
> Successfully remade target file 'coccicheck'.
> make: Nothing to be done for 'drivers/staging/android/ashmem.c'.
> make: Nothing to be done for 'drivers/staging/axis-fifo/axis-fifo.c'.
> --(stripped output: it repeats the same line for all C files inside staging
>    drivers)
>
> ====
>
> $ make coccicheck C=1 MODE=patch J=8 --debug drivers/staging/*/*.c
>
> --(stripped output)
> File 'coccicheck' does not exist.
> Must remake target 'coccicheck'.
> ./scripts/coccicheck: line 65: shift: -1: shift count out of range
> Successfully remade target file 'coccicheck'.
> make: Nothing to be done for 'drivers/staging/android/ashmem.c'.
> make: Nothing to be done for 'drivers/staging/axis-fifo/axis-fifo.c'.
> --(stripped output: it repeats the same line for all C files inside staging
>    drivers)
>
> ====
>
> $ make coccicheck MODE=patch J=8 drivers/staging/android/ --debug
>
> Reading makefiles...
> Updating goal targets....
>  File 'coccicheck' does not exist.
>    File '__build_one_by_one' does not exist.
>   Must remake target '__build_one_by_one'.
> GNU Make 4.1
> Built for x86_64-pc-linux-gnu
> Copyright (C) 1988-2014 Free Software Foundation, Inc.
> License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
> This is free software: you are free to change and redistribute it.
> There is NO WARRANTY, to the extent permitted by law.
> Reading makefiles...
> Updating goal targets....
>  File 'coccicheck' does not exist.
> Must remake target 'coccicheck'.
>
> --(stripped output: after a while it produces some patches in drivers/ but not
>    drivers/staging/. And then the same error:)
>
> coccicheck failed
> Makefile:1740: recipe for target 'coccicheck' failed
> make: *** [coccicheck] Error 255
>
> ====
>
> $ make coccicheck MODE=patch V=1 J=8 --debug
>
> (it works, but doesn't descend into drivers/staging/ before giving this error:)
>
> coccicheck failed
> Makefile:1740: recipe for target 'coccicheck' failed
> make: *** [coccicheck] Error 255
>
> ====
>
> $ make coccicheck MODE=patch V=1 J=8 --debug
> (with variable KBUILD_EXTMOD set to drivers/staging/ in scripts/coccicheck)
>
> --(stripped output)
> File 'coccicheck' does not exist.
> Must remake target 'coccicheck'.
> bash ./scripts/coccicheck
> --(stripped output)
>
> Processing alloc_cast.cocci
> with option(s) " --no-includes --include-headers"
>
> --(stripped output)
>
> Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes
> --include-headers --patch . --dir ./drivers/staging/. -I ./arch/x86/include
> -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi
> -I ./arch/x86/include/generated/uapi -I ./include/uapi
> -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 8
> --chunksize 1
> Processing pool_zalloc-simple.cocci
> with option(s) " --no-includes --include-headers"
>
> --(stripped output)
>
> Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> --cocci-file ./scripts/coccinelle/api/alloc/pool_zalloc-simple.cocci
> --no-includes --include-headers --patch . --dir ./drivers/staging/.
> -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
> -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> -I ./include/uapi -I ./include/generated/uapi
> --include ./include/linux/kconfig.h --jobs 8 --chunksize 1
> Processing zalloc-simple.cocci
> with option(s) " --no-includes --include-headers
>
> --(stripped output)
>
> Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> --cocci-file ./scripts/coccinelle/api/alloc/zalloc-simple.cocci
> --no-includes --include-headers --patch . --dir ./drivers/staging/.
> -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
> -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> -I ./include/uapi -I ./include/generated/uapi
> --include ./include/linux/kconfig.h --jobs 8 --chunksize 1
> Processing atomic_as_refcounter.cocci
> with option(s) " --include-headers --very-quiet"
>
> --(stripped output)
>
> Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> --cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci
> --include-headers --very-quiet --patch . --dir ./drivers/staging/.
> -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
> -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> -I ./include/uapi -I ./include/generated/uapi
> --include ./include/linux/kconfig.h --jobs 8 --chunksize 1
> coccicheck failed
> Makefile:1740: recipe for target 'coccicheck' failed
> make: *** [coccicheck] Error 255
>

