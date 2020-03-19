X-GM-THRID: 6803014756528553984
X-Received: by 2002:a1c:c257:: with SMTP id s84mr6299994wmf.9.1584653941311;
        Thu, 19 Mar 2020 14:39:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls1851760wme.3.gmail; Thu, 19
 Mar 2020 14:39:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu70WliEQAbS4TUtMOTKoP9TvG2R9H8/Xn7HIqFBERepCBf6v0S8SsBNUCUrIHAsBC77m8A
X-Received: by 2002:a7b:c92a:: with SMTP id h10mr5887171wml.26.1584653939994;
        Thu, 19 Mar 2020 14:38:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584653939; cv=none;
        d=google.com; s=arc-20160816;
        b=Be+eFlo7aGlvqFypEEUnvDJvlLSccx8V2DMrh65SXEeJwlkO0CBv0abGR/lP2Z+k7W
         2xgOYmYXN7EY/t9TRHK+bOeyCfrqSXNkt8RjBlkiwBDrDwGDASq6nzJ1KO/SpZ4rJYCu
         sbXuUYoDBJLGRS1i6mh+6yXpu79neNm0lzdp5woRKxdVd3ZBf8MbNgXpYTDXwt8KTnLX
         p9dFxoPXwF5e8luOlWfbKeqybQGCipiifZf4nfmoTfG+sSp7DNQlpJ2oN3tzqZw9qJL8
         JIeB6x65uAYCa8+Q4lzI/J20aNf9OijIMVONmgW13bZOAd0Bf6S3e3mqTpfymhLlxYp7
         UUJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=H/HmlkWXM+NA+myLn+MpD2+mPvAba9PcwOrIZaOID2U=;
        b=vpGYHVGX1ZptPvdNVW3C3TsGLNOD+PqSHOLW7lvRF6dBU9wpRHpdgruTOmvkcOu/J6
         ArfTCVabX5mEn3bKHE6K7z+1/5nITPieHzTddJqEMl49GlNLmxygLm3fMJ72FRpvLCYs
         JRR48r7g1FIACY4middxH9M9DuddxENHUr9M1Hqwk3P6yOAKp5+nzf+oVfe5hS84NW3L
         DW2C7jjQp1idI/AtC2tNUbn+8C0zIBS7ys4YXfwEqhpBtj5AhoSgO5P8b+5YdrrudqBV
         np2940JKFc/E0whw9W52VQ+4CfzapvFiJS5EaYVh0O8Niuk3MPKF4Cu8TbRB0KBPhF5G
         V+EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v12si131166wrp.5.2020.03.19.14.38.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 14:38:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,573,1574118000"; 
   d="scan'208";a="342998788"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 22:38:59 +0100
Date: Thu, 19 Mar 2020 22:38:59 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
In-Reply-To: <20200319213047.GB10911@supernova>
Message-ID: <alpine.DEB.2.21.2003192236110.9011@hadrien>
References: <20200313094046.GB3844@supernova> <20200316150829.370975f2@elisabeth> <alpine.DEB.2.21.2003161527020.5216@hadrien> <20200316153629.0fde04f8@elisabeth> <alpine.DEB.2.21.2003161543170.5216@hadrien> <20200316162343.36bacaa7@elisabeth>
 <alpine.DEB.2.21.2003161631270.5216@hadrien> <20200316164440.54fe16a8@elisabeth> <20200319201553.GA10911@supernova> <20200319214321.2060a5ef@elisabeth> <20200319213047.GB10911@supernova>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, Lourdes Pedrajas wrote:

> On Thu, Mar 19, 2020 at 09:43:21PM +0100, Stefano Brivio wrote:
> > On Thu, 19 Mar 2020 21:15:53 +0100
> > Lourdes Pedrajas <lu@pplo.net> wrote:
> >
> > Can you just run this spatch command:
> >
> > > Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> > > --cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci
> > > --include-headers --very-quiet --patch . --dir ./drivers/staging/.
> > > -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
> > > -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> > > -I ./include/uapi -I ./include/generated/uapi
> > > --include ./include/linux/kconfig.h --jobs 8 --chunksize 1
> > > coccicheck failed
> > > Makefile:1740: recipe for target 'coccicheck' failed
> > > make: *** [coccicheck] Error 255
> >
> > alone, from the same directory? The issue (okay, I'll send a patch) is
> > that the coccicheck script suppresses stderr for it.
> >
> > --
> > Stefano
> >
>
> It says "274 files match" and if I suppress the "--very-quiet" part of
> the command, it outputs many files preceded with the word "HANDLING:".
>
> After that, If I try, by example, this command:
>
> /usr/local/bin/spatch -D patch
> --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci
> --no-includes --include-headers -I ./arch/x86/include
> -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi
> -I ./arch/x86/include/generated/uapi -I ./include/uapi
> -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 8
> --chunksize 1 drivers/staging/qlge/qlge_mpi.c
>
> It says:
>
> HANDLING: drivers/staging/qlge/qlge_mpi.c
>
> But nothing more.
>
> The command Julia suggest has similar results.
>
> Is this correct? I thought it outputs reports or patches.

Yes, that is correct.  Maybe it has nothing to do on that file.

Could you try the following file:

drivers/net/ethernet/qlogic/qed/qed_roce.c

with the semantic patch

scripts/coccinelle/api/alloc/alloc_cast.cocci

julia

