X-GM-THRID: 6803014756528553984
X-Received: by 2002:a19:ae18:: with SMTP id f24mr2221279lfc.207.1584369848662;
        Mon, 16 Mar 2020 07:44:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:3cd:: with SMTP id f13ls3427168ljp.4.gmail; Mon, 16
 Mar 2020 07:44:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuWejOJfT0jblpmVB/4C8hg7j+mHk9wzlAv7zBRvTzfbc9ny88A0+Vbr+BYdSNTQ8eyja/z
X-Received: by 2002:a05:651c:30d:: with SMTP id a13mr16618016ljp.272.1584369847213;
        Mon, 16 Mar 2020 07:44:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584369847; cv=none;
        d=google.com; s=arc-20160816;
        b=T3ieSYWxsacEP56pyof5lPXiBdkuZ3v8nPvqN3yODugiVZfmyQocs+K64hrpmEpmYy
         CL0J4UBWN4V5/8G9zfCB1d9UKh7MHql4GyEqmn6lill+l8iOyAN125f75Tp0TjVaNsmK
         URSQZyc/m3Z9lTJItrWNapxTRVacXwvSN0r/Gdo5BkGXYKUonAeTWbKwoGZXxxnEWnvM
         clbbW0LpK8pLCk5rS/Tr+lxiAgdaBd50ptFBHBuzXKRylEWgN5eFeQDHRgQLe7wyMgBL
         SOxOWb+7K6d4FLdU1ap9bty8GOtHoZzI4zk28iSDezhrpWiHRtCaYxyf2Y4mEvoohbrY
         R7Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=lvXuRW3XxIAT1jsFEu0xd1yv7jRN776aiuVDEUuw0Yc=;
        b=lRieTmRoKtTVnokIrRdupO520+lKWt0zTs2LxBM4pXv1Y9/hQrfuK03RQ4i8jul5Dg
         4ElbU5TqBGrE6dzm+/vcpJFEGthEu+aICQvLPTWKWLICvFBJlNDJl3RZP1qY5ubwElRV
         w8/mq0rp3CP7pk42VVZh+rahfQS63N7zZqwYVpx3SUiX5TlrGCpuErj/YunoYQoDv0n1
         UtwZXUyweOaAtr3RJqv0lbE1jK59L90kIppJ6KybWjOrttsF2X/f03F841VLzm0EoajD
         CDKjlbUyuou7AhmFI0NuIs+VxwJqQ4GyzgkUplMsECckfT61duYpEdz4B114wjT8QD+3
         o/6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d12si140lfi.2.2020.03.16.07.44.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 07:44:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,560,1574118000"; 
   d="scan'208";a="342527613"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 15:44:06 +0100
Date: Mon, 16 Mar 2020 15:44:05 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Stefano Brivio <sbrivio@redhat.com>
cc: Lourdes Pedrajas <lu@pplo.net>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
In-Reply-To: <20200316153629.0fde04f8@elisabeth>
Message-ID: <alpine.DEB.2.21.2003161543170.5216@hadrien>
References: <20200311181134.GA17847@supernova> <20200312002348.06821daa@elisabeth> <20200313094046.GB3844@supernova> <20200316150829.370975f2@elisabeth> <alpine.DEB.2.21.2003161527020.5216@hadrien> <20200316153629.0fde04f8@elisabeth>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 16 Mar 2020, Stefano Brivio wrote:

> On Mon, 16 Mar 2020 15:27:38 +0100 (CET)
> Julia Lawall <julia.lawall@inria.fr> wrote:
>
> > On Mon, 16 Mar 2020, Stefano Brivio wrote:
> >
> > > On Fri, 13 Mar 2020 10:40:46 +0100
> > > Lourdes Pedrajas <lu@pplo.net> wrote:
> > >
> > > > [...]
> > > >
> > > > Indeed, this is all the output: (this command is run in the sources root
> > > > directory)
> > > >
> > > > make coccicheck MODE=patch J=8 M=drivers/staging/android/
> > > >
> > > > Please check for false positives in the output before submitting a patch.
> > > > When using "patch" mode, carefully review the patch before submitting it.
> > > >
> > > > coccicheck failed
> > > > Makefile:1740: recipe for target 'coccicheck' failed
> > > > make: *** [coccicheck] Error 255
> > >
> > > Hah, I think I got the same issue on Debian. I installed coccinelle via
> > > opam, then:
> > >
> > > ---
> > > $ make coccicheck MODE=report M=drivers/staging/android/
> > >
> > > Please check for false positives in the output before submitting a patch.
> > > When using "patch" mode, carefully review the patch before submitting it.
> > >
> > > coccicheck failed
> > > make: *** [Makefile:1740: coccicheck] Error 255
> > > ---
> > >
> > > Debugging: looking at makefiles, I thought about using V=1:
> > >
> > > ---
> > > $ make V=1 coccicheck MODE=report M=drivers/staging/android/
> > > bash ./scripts/coccicheck
> > >
> > > Please check for false positives in the output before submitting a patch.
> > > When using "patch" mode, carefully review the patch before submitting it.
> > >
> > > Processing alloc_cast.cocci
> > > with option(s) " --no-includes --include-headers"
> > >
> > > Message example to submit a patch:
> > >  Remove casting the values returned by memory allocation functions
> > >  like kmalloc, kzalloc, kmem_cache_alloc, kmem_cache_zalloc etc.
> > >
> > >  The semantic patch that makes this report is available
> > >  in scripts/coccinelle/api/alloc/alloc_cast.cocci.
> > >
> > >  More information about semantic patching is available at
> > >  http://coccinelle.lip6.fr/
> > >
> > > Semantic patch information:
> > >  This makes an effort to find cases of casting of values returned by
> > >  kmalloc, kzalloc, kcalloc, kmem_cache_alloc, kmem_cache_zalloc,
> > >  kmem_cache_alloc_node, kmalloc_node and kzalloc_node and removes
> > >  the casting as it is not required. The result in the patch case may
> > >  need some reformatting.
> > >
> > > Running (4 in parallel): /home/sbrivio/.opam/default/bin/spatch -D report --no-show-diff --very-quiet --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes --include-headers --patch . --dir drivers/staging/android/ -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 4 --chunksize 1
> > > coccicheck failed
> > > make: *** [Makefile:1740: coccicheck] Error 255
> > > ---
> > >
> > > so, yeah, spatch fails, but no error (see below) isn't propagated (even
> > > with V=1)
> > >
> > > Julia, do you think it's worth trying to fix this? Any quick idea?
> >
> > I will try to find the problem.  I think there is a way to get debug
> > information.
>
> One idea might be, in run_cmd_parmap(), to avoid redirecting stderr
> here:
> 	        $@ 2>>$DEBUG_FILE
>
> if DEBUG_FILE is not set (that is, it's /dev/null) and we detect V=1 --
> otherwise, spatch output is thrown away.
>
> That works for me, but I'm not sure how elegant you would consider that.

Actually, I was just going to try to fix the semantic patch that caused
the problem.  I don't really maintain make coccicheck, but I will suggest
it to the person who does.  Thanks.

julia

