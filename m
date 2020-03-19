X-GM-THRID: 6803014756528553984
X-Received: by 2002:a2e:2e11:: with SMTP id u17mr3228908lju.90.1584648965074;
        Thu, 19 Mar 2020 13:16:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5476:: with SMTP id e22ls611021lfn.7.gmail; Thu, 19 Mar
 2020 13:16:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv7mMwfpT0N6pCove4YtMNpNS+rx5SzPapKm/zKkkYStlSA3vReLDBYOMokF9/UGzXysFgj
X-Received: by 2002:a19:c206:: with SMTP id l6mr2322424lfc.118.1584648963527;
        Thu, 19 Mar 2020 13:16:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584648963; cv=none;
        d=google.com; s=arc-20160816;
        b=Nnh4ULVWqR+lSFm8F1a34F9O6kW3M20XTRcRGh2D5tJJS9ikgh6c3rmN9OKRWOeM8h
         70uRiyLcQgy+2P6UEXfFf6klD5jRbbaiyIYab7Hy/JOxLJjaGJoC8A7dDSzHdaBUWO9r
         EjAkd86Z8HtWmTmOcY6IfJ78ESwbTzeq30HqGCCfxcNzxtk6QrOEWp2qC+kxpz8vcWnd
         zajiBg2kvBMw0ACrT4DWFXM7dlLjI77wRqWs7NqswRJ1DHQg8PyOlpP0PuPeHOhWSe1j
         IX+E6rLdcXjwi4cdr5iZ+EJtsU211w8nNYjJd/XhXI0QO7loRlRVeD/XSJRjsBcA/48t
         IQKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QeU2HyQeRfXaS74q3CWujpsBZqyBRMkdR/CutN/4UEE=;
        b=g31aQ6vupBNc/RMVCG/XfZCy149iXTo5tIXndtlDl6dRBo7Q3BvbMT5SUpCf5kpuua
         H3ehqvF819aOgVDejqmAi4LPNA7dOyhCpLVMyy53sVRubaw5wkCcuE++t+mURevOY70W
         sHQCVTIYD4W7OQiPmKdqQXH5AhQcMBC3z9IGXy84sfLxT+7FsI11E5SyUdPXSHUftFuP
         OitiGhd9eBWmouwGCtTpwulfCdiMG1LkP059QHlmpBz1YeMeoX4lyPSBK+oMIM5RVpmJ
         sztvex4QqjfJiBDpANn7pNYEtWVjsxbR3ODu4t0/C7H+Yf3FXiBSIqojORDdndtvIpNc
         hvlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=XW44Tdp5;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w6si160377lfa.1.2020.03.19.13.16.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 13:16:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=XW44Tdp5;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x542.google.com with SMTP id v6so4320770edw.8
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 13:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QeU2HyQeRfXaS74q3CWujpsBZqyBRMkdR/CutN/4UEE=;
        b=XW44Tdp5f6LtArkiJqXme2LeRf/HimsMUrVEi2sczRYBybzvYSJn1x99+ejN2QEGa+
         nES9xdrFuxSyPbMk+Wp33lWkasHWH795teM0dJuBGgNN7CzjXhsf1p+j/xOeNAIQ5o92
         nzKePqD53wBvKDwMAk+ufxPTTwn02ztgjAtHI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QeU2HyQeRfXaS74q3CWujpsBZqyBRMkdR/CutN/4UEE=;
        b=X3PggwRwkhSho4q8dFaWeebDIHNvfxQMs9lly+jt4wPTei3ECxkSVfkurzbukZHvsR
         VBZbVk35qvH+HveRZ8xJTzRdP56vnIylmP5nJnIPKYt9yiiSLSqPJ1fKu71gwpp2pAQJ
         y2Qe/L80RAr0FD8t/riCs2mIxKN5kP2f9UyHyWVPO8G6bE/kjwyRud6PhVikovv45pXK
         Yw1xK0QeglV2c9+PZzWiLH3uYNOMpbIQ7BmYD+D0xMP/Kr4X0/CIWuXS09V3kv0nDzwo
         gQkh+/alIWuRgA+85K6XyMFQmT0rp5keeYTH77yvnDF+b+fNubfiUDS/Gam+6UbvzfzE
         Ui2Q==
X-Gm-Message-State: ANhLgQ3cn1qSKiw3T962Zu695d+aLWOuyG9kS9Kf/eoh5/DEcuj1d+7S
	VN7xaO384DyrEIaOi9PxjAnB6LAzKB0=
X-Received: by 2002:a17:906:43c6:: with SMTP id j6mr4764799ejn.39.1584648962586;
        Thu, 19 Mar 2020 13:16:02 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id l9sm214028ejg.42.2020.03.19.13.16.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Mar 2020 13:16:01 -0700 (PDT)
Date: Thu, 19 Mar 2020 21:15:53 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Stefano Brivio <sbrivio@redhat.com>,
	Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200319201553.GA10911@supernova>
References: <20200311181134.GA17847@supernova>
 <20200312002348.06821daa@elisabeth>
 <20200313094046.GB3844@supernova>
 <20200316150829.370975f2@elisabeth>
 <alpine.DEB.2.21.2003161527020.5216@hadrien>
 <20200316153629.0fde04f8@elisabeth>
 <alpine.DEB.2.21.2003161543170.5216@hadrien>
 <20200316162343.36bacaa7@elisabeth>
 <alpine.DEB.2.21.2003161631270.5216@hadrien>
 <20200316164440.54fe16a8@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200316164440.54fe16a8@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

Julia, Stefano,

I would like to move to coccinelle instead of continue using checkpatch. So 
after the problem I explained in my last email, I have been trying various
combinations of commands and modifications in some makefiles, as Stefano
suggested. In order to see what is happening or to see why I can't use
coccinelle.

This is long, so I ask for forgiveness for that :( 

Lines preceded with $ are the commands I have run. Lines inside braces () are 
some modifications I have done that is not reflected in the console's output or 
clarifications.  The majority of the output is stripped in the sake of brevity, 
only the obvious errors are here.                                               
                                                                                
I don't know if this will be useful or not :( But I'll be glad if as least my 
problem helps to find any error or bug, or helps coccinelle itself.

Thank you,
Lourdes 


====

$ make coccicheck MODE=patch J=8 M=drivers/staging/android/ --debug

--(stripped output)
File 'coccicheck' does not exist.
Must remake target 'coccicheck'.

Please check for false positives in the output before submitting a patch.
When using "patch" mode, carefully review the patch before submitting it.

coccicheck failed
Makefile:1740: recipe for target 'coccicheck' failed
make: *** [coccicheck] Error 255

====

$ make coccicheck MODE=patch J=8 M=drivers/staging/android/ --debug

(showing $(BASH) and $(srctree) variables from 1740 line of the main Makefile,
and DIR and SPATCH from scripts/coccicheck lines 10-11)

--(stripped output)
File 'coccicheck' does not exist.
Must remake target 'coccicheck'.

Please check for false positives in the output before submitting a patch.
When using "patch" mode, carefully review the patch before submitting it.

BASH = bash
srctree = .

DIR = /mnt/btrfsimg/gregkh/staging/scripts/..
SPATCH = /usr/local/bin/spatch

coccicheck failed
Makefile:1740: recipe for target 'coccicheck' failed
make: *** [coccicheck] Error 255

====

$ make /mnt/btrfsimg/gregkh/staging/scripts/coccicheck MODE=patch J=8
  M=drivers/staging/android/ --debug

(but x86_64 binutils are installed!! It don't repeat the error of last command
about not finding coccicheck file here)

--(stripped output)

arch/x86/Makefile:147: CONFIG_X86_X32 enabled but no binutils support

====

$ make /mnt/btrfsimg/gregkh/staging/scripts/coccicheck MODE=patch J=8
  M=drivers/staging/android/ --debug

(w/o CONFIG_X86_X32 or commenting-out the ifdef CONFIG_X86_X32 section of
arch/x86/Makefile)

--(stripped output)

make: Nothing to be done for '/mnt/btrfsimg/gregkh/staging/scripts/coccicheck'.

====

$ make coccicheck C=2 MODE=patch J=8 drivers/staging/android/ashmem.c --debug

--(stripped output)
File 'coccicheck' does not exist.
Must remake target 'coccicheck'.
./scripts/coccicheck: line 65: shift: -1: shift count out of range
Successfully remade target file 'coccicheck'.
make: Nothing to be done for 'drivers/staging/android/ashmem.c'.

====

$ make coccicheck C=2 MODE=patch J=8 --debug drivers/staging/*/*.c

--(stripped output)
File 'coccicheck' does not exist.
Must remake target 'coccicheck'.
./scripts/coccicheck: line 65: shift: -1: shift count out of range
Successfully remade target file 'coccicheck'.
make: Nothing to be done for 'drivers/staging/android/ashmem.c'.
make: Nothing to be done for 'drivers/staging/axis-fifo/axis-fifo.c'.
--(stripped output: it repeats the same line for all C files inside staging
   drivers)

====

$ make coccicheck C=1 MODE=patch J=8 --debug drivers/staging/*/*.c

--(stripped output)
File 'coccicheck' does not exist.
Must remake target 'coccicheck'.
./scripts/coccicheck: line 65: shift: -1: shift count out of range
Successfully remade target file 'coccicheck'.
make: Nothing to be done for 'drivers/staging/android/ashmem.c'.
make: Nothing to be done for 'drivers/staging/axis-fifo/axis-fifo.c'.
--(stripped output: it repeats the same line for all C files inside staging
   drivers)

====

$ make coccicheck MODE=patch J=8 drivers/staging/android/ --debug

Reading makefiles...
Updating goal targets....
 File 'coccicheck' does not exist.
   File '__build_one_by_one' does not exist.
  Must remake target '__build_one_by_one'.
GNU Make 4.1
Built for x86_64-pc-linux-gnu
Copyright (C) 1988-2014 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Reading makefiles...
Updating goal targets....
 File 'coccicheck' does not exist.
Must remake target 'coccicheck'.

--(stripped output: after a while it produces some patches in drivers/ but not
   drivers/staging/. And then the same error:)

coccicheck failed
Makefile:1740: recipe for target 'coccicheck' failed
make: *** [coccicheck] Error 255

====

$ make coccicheck MODE=patch V=1 J=8 --debug

(it works, but doesn't descend into drivers/staging/ before giving this error:)

coccicheck failed
Makefile:1740: recipe for target 'coccicheck' failed
make: *** [coccicheck] Error 255

====

$ make coccicheck MODE=patch V=1 J=8 --debug
(with variable KBUILD_EXTMOD set to drivers/staging/ in scripts/coccicheck)

--(stripped output)
File 'coccicheck' does not exist.
Must remake target 'coccicheck'.
bash ./scripts/coccicheck
--(stripped output)

Processing alloc_cast.cocci
with option(s) " --no-includes --include-headers"

--(stripped output)

Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
--cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes
--include-headers --patch . --dir ./drivers/staging/. -I ./arch/x86/include
-I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi
-I ./arch/x86/include/generated/uapi -I ./include/uapi
-I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 8
--chunksize 1
Processing pool_zalloc-simple.cocci
with option(s) " --no-includes --include-headers"

--(stripped output)

Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
--cocci-file ./scripts/coccinelle/api/alloc/pool_zalloc-simple.cocci
--no-includes --include-headers --patch . --dir ./drivers/staging/.
-I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
-I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
-I ./include/uapi -I ./include/generated/uapi
--include ./include/linux/kconfig.h --jobs 8 --chunksize 1
Processing zalloc-simple.cocci
with option(s) " --no-includes --include-headers

--(stripped output)

Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
--cocci-file ./scripts/coccinelle/api/alloc/zalloc-simple.cocci
--no-includes --include-headers --patch . --dir ./drivers/staging/.
-I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
-I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
-I ./include/uapi -I ./include/generated/uapi
--include ./include/linux/kconfig.h --jobs 8 --chunksize 1
Processing atomic_as_refcounter.cocci
with option(s) " --include-headers --very-quiet"

--(stripped output)

Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
--cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci
--include-headers --very-quiet --patch . --dir ./drivers/staging/.
-I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
-I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
-I ./include/uapi -I ./include/generated/uapi
--include ./include/linux/kconfig.h --jobs 8 --chunksize 1
coccicheck failed
Makefile:1740: recipe for target 'coccicheck' failed
make: *** [coccicheck] Error 255

