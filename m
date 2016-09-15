X-GM-THRID: 6330315334745063424
X-Received: by 10.28.31.209 with SMTP id f200mr151917wmf.4.1473916807856;
        Wed, 14 Sep 2016 22:20:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.195 with SMTP id h64ls204199lji.24.gmail; Wed, 14 Sep
 2016 22:20:07 -0700 (PDT)
X-Received: by 10.25.152.10 with SMTP id a10mr1134523lfe.4.1473916807358;
        Wed, 14 Sep 2016 22:20:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w79si46871wmw.0.2016.09.14.22.20.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 22:20:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,338,1470693600"; 
   d="scan'208";a="193413677"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 07:20:06 +0200
Date: Thu, 15 Sep 2016 07:20:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Malcolm Priestley <tvboxspy@gmail.com>, 
    Alison Schofield <amsfield22@gmail.com>, 
    maomao xu <albert008.xu@gmail.com>, Othmar Pasteka <pasteka@kabsi.at>, 
    Parth Sane <laerdevstudios@gmail.com>, 
    Wolfram Sang <wsa-dev@sang-engineering.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: vt6656: Fix multiple
 checkpatch issues
In-Reply-To: <CAFrQyDFa-=oAuQdZmJYn+SyWGvStXL+CrNQEVRHC7sJWmp8HWA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609150719461.6078@hadrien>
References: <CAFrQyDFa-=oAuQdZmJYn+SyWGvStXL+CrNQEVRHC7sJWmp8HWA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Namrata A Shettar wrote:

> Fix checkpatch issues.These issues are detected by checkpatch.pl script.
>
> Namrata A Shettar(6):
> staging: vt6656: Remove unnecessary blank lines
> staging: vt6656: main_usb: Remove unnecessary blank lines
> staging: vt6656: main_usb: Replace data type declaration with variable of
> same type
> staging: vt6656: rf: Add space around '-'
> staging: vt6656: rxtx: Remove unneccessary blank lines
> staging: vt6656: rxtx: Fix multiple assignments

In all of these, the commit log message should be rewritten to use the
imperative.

julia

>
>
> drivers/staging/vt6656/wcmd.c | 3 ---
> drivers/staging/vt6656/main_usb.c | 9 +++------
> drivers/staging/vt6656/rf.c | 4 ++--
> drivers/staging/vt6656/rxtx.c | 7 ++-----
> 4 files changed, 7 insertions(+), 16 deletion(-)
>
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAFrQyDFa-%3DoAuQdZmJYn%
> 2BSyWGvStXL%2BCrNQEVRHC7sJWmp8HWA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

