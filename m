X-GM-THRID: 6329968789142110208
X-Received: by 10.28.27.132 with SMTP id b126mr175158wmb.0.1473831694240;
        Tue, 13 Sep 2016 22:41:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.22.77 with SMTP id 74ls65973wmw.15.canary; Tue, 13 Sep 2016
 22:41:28 -0700 (PDT)
X-Received: by 10.194.172.9 with SMTP id ay9mr122113wjc.2.1473831688864;
        Tue, 13 Sep 2016 22:41:28 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w134si587451wmf.3.2016.09.13.22.41.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 22:41:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,332,1470693600"; 
   d="scan'208";a="193054180"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 07:41:28 +0200
Date: Wed, 14 Sep 2016 07:41:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 0/6] Cleaning xgifb/vb_setmode.c
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609140741050.3395@hadrien>
References: <cover.1473809550.git.gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Sep 2016, Gargi Sharma wrote:

> This patchset fixes various issues that come up in the checkpatch in patch 1, 3, 4 and 5. Patches 2 and 6 are based on Julia's suggestion when a one patch was sent fixing the checkpatch issue of moving && operator to previous line.

This is actually a v2, because eg the first one was sent already.

julia

>
> Gargi Sharma (6):
>   staging: xgifb: move AND operator for logical continuation
>   staging: xgifb: remove unnecessary parentheses
>   staging: xgifb: remove blank line after open brace
>   staging: xgifb: add spaces around |
>   staging: xgifb: remove blank line before closing brace
>   staging: xgifb: fix alignment for if arguments
>
>  drivers/staging/xgifb/vb_setmode.c | 48 ++++++++++++++------------------------
>  1 file changed, 17 insertions(+), 31 deletions(-)
>
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1473809550.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

