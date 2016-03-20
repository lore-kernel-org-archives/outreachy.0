X-GM-THRID: 6263088426063495168
X-Received: by 10.112.149.6 with SMTP id tw6mr3175540lbb.6.1458497803331;
        Sun, 20 Mar 2016 11:16:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.128.209 with SMTP id b200ls504153wmd.41.canary; Sun, 20 Mar
 2016 11:16:42 -0700 (PDT)
X-Received: by 10.28.63.201 with SMTP id m192mr956228wma.5.1458497802845;
        Sun, 20 Mar 2016 11:16:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 71si203174wmp.0.2016.03.20.11.16.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 11:16:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,367,1454972400"; 
   d="scan'208";a="169823368"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Mar 2016 19:16:42 +0100
Date: Sun, 20 Mar 2016 19:16:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/4] Staging: i4l: Fix coding style
 issues.
In-Reply-To: <cover.1458471223.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.10.1603201916120.2597@hadrien>
References: <cover.1458471223.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Actually, when you resend something, you should put RESEND after PATCH in
the subject line.

julia

On Sun, 20 Mar 2016, Sandhya Bankar wrote:

> Fix coding style issues.
> Changes in v2:
> * Correcting the heading.
> * Resending v2 as previously it is not showing in mailing list.
>
> Sandhya Bankar (4):
>   Staging: i4l: pcbit: capi: Add parentheses to complex macro.
>   Staging: i4l: pcbit: drv: Use !x instead of x == NULL
>   Staging: i4l: pcbit: edss1: Do not initialise statics to 0.
>   Staging: i4l: pcbit: layer2: Add parentheses to complex macro.
>
>  drivers/staging/i4l/pcbit/capi.h   | 2 +-
>  drivers/staging/i4l/pcbit/drv.c    | 4 ++--
>  drivers/staging/i4l/pcbit/edss1.c  | 2 +-
>  drivers/staging/i4l/pcbit/layer2.h | 2 +-
>  4 files changed, 5 insertions(+), 5 deletions(-)
>
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1458471223.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

