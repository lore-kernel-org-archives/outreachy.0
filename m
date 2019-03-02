X-GM-THRID: 6663442013681090560
X-Received: by 2002:adf:8182:: with SMTP id 2mr493730wra.14.1551516718843;
        Sat, 02 Mar 2019 00:51:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d49:: with SMTP id t70ls808862wmt.12.canary-gmail; Sat,
 02 Mar 2019 00:51:58 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbTMPcGEiTJQfDQy+KvY/7NBfi+VpeHDNELyPlYjKi8+af2szt1ncuIBakpyiVyEUTAok0u
X-Received: by 2002:a1c:cb8d:: with SMTP id b135mr610236wmg.22.1551516718144;
        Sat, 02 Mar 2019 00:51:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551516718; cv=none;
        d=google.com; s=arc-20160816;
        b=qVG4E/CHrnFBPMEQB9/rhhTcbfTQ92Ra/2MKE/QPNOvJI0M4iDFmF6vOxGl3Xm6aj4
         aEIlu/z/PAZdty1s0FWjqlVTwqs6W95bO1RHXu7OYDDnTcWTQlVIu6nqm34qGOtvjTzz
         JoS9Vr3MD885jHwOit+8AQ6HmCSNaa4n2Y2aT30cUd8nQK0HYajyQaEIgCc3cgNQERHS
         IA8t1k441P1UFd84FATZJuV+43h29pNOEB/jlsQ9NZ+1/8i6VeknaKAUihiuZwYxNlt+
         6HEloqtQLQdNQiRdYC9pSzpVCDxypBz5lOv5+uGz0VJxVnw86kSvvRNqoyM6MKA1ghvM
         KixA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0PlqKNW5jkWz8Se6ob2QYBJQbQrLmun/J6V6RXgBxWY=;
        b=XEmMtkZ80/Ptghxhwa0m4CPaSidebvNhblpMiIB3DjxZWFdlo7pz9aP2sALcIqKwiM
         qUyfA5ciqHeJRJHFqrxqe6kFEBhJsbum+7/rrydSZuFi39qai89DRVg0Tn1bx2I1NyXy
         +0wqqJ4+HOz0iotuLx1zg4xDGljMetsiLkkK6AeJD5m8H8MI8/xaDchPUBoJ9wWdOItE
         3jAZXqLJWYQePlu0EStVxosKoWMYcFv0tNj2OusUXKFpbujb1ff9qYQTxI+T5hGiVRki
         K+LwWguPnOdwqx/q0XUXw4pltJWF5qI1Wew/9V9x7wFnbBYsoCvTQe4zAGUDu+ODPhyp
         EJgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t22si27773wmj.2.2019.03.02.00.51.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 00:51:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,431,1544482800"; 
   d="scan'208";a="297862227"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2019 09:51:57 +0100
Date: Sat, 2 Mar 2019 09:51:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: mt7621-dma: add SPDX
 GPL-2.0+ license identifier
In-Reply-To: <20190302083240.23894-2-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1903020951340.2572@hadrien>
References: <20190302083240.23894-1-jbi.octave@gmail.com> <20190302083240.23894-2-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Mar 2019, Jules Irenge wrote:

> Add SPDX GPL-2.0+ to fix missing SPDX warning
>  reported by checkpatch.pl.

Again, the identifier in the commit message is not the same as the
identifier in the patch.

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index d67a2504adb1..7d69586f23c0 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
>   *  MTK HSDMA support
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190302083240.23894-2-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

