X-GM-THRID: 2118621593600
X-Received: by 10.194.142.174 with SMTP id rx14mr443820wjb.4.1424551909537;
        Sat, 21 Feb 2015 12:51:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.139 with SMTP id dg11ls349909lac.62.gmail; Sat, 21 Feb
 2015 12:51:49 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr444960lab.0.1424551909130;
        Sat, 21 Feb 2015 12:51:49 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r6si379079wix.0.2015.02.21.12.51.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 12:51:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="122824063"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 21:51:48 +0100
Date: Sat, 21 Feb 2015 21:51:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Gulsah Kose <gulsah.1004@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/4] Corrected four type checkpatch.pl
 errors and warning.
In-Reply-To: <cover.1424551058.git.gulsah.1004@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212151260.2296@localhost6.localdomain6>
References: <cover.1424551058.git.gulsah.1004@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Gulsah Kose wrote:

> This patch fixes following checkpatch.pl errors and warnings in bootp.c:
> ERROR: "foo * bar" should be "foo *bar"
> ERROR: "(foo*)" should be "(foo *)"
> WARNING: braces {} are not necessary for single statement blocks
> WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))

None of these will be taken because they are not in files in 
drivers/staging.

julia

> Gulsah Kose (4):
>   staging: arch: alpha: boot: Deleted unnecessary space.
>   staging: arch: alpha: boot: Added missing space before "*"
>   staging: arch: alpha: boot: Deleted unnecessary brackets.
>   staging: arch: alpha: boot: Replaced __attribute__((aligned(size)))
>     with __aligned(size).
> 
>  arch/alpha/boot/bootp.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1424551058.git.gulsah.1004%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

