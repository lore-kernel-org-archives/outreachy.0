X-GM-THRID: 6393675902317756416
X-Received: by 10.46.84.69 with SMTP id y5mr1290855ljd.21.1488644379347;
        Sat, 04 Mar 2017 08:19:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.11.195 with SMTP id 186ls618542wml.5.canary-gmail; Sat, 04
 Mar 2017 08:19:38 -0800 (PST)
X-Received: by 10.28.45.7 with SMTP id t7mr209050wmt.9.1488644378337;
        Sat, 04 Mar 2017 08:19:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si521052wmn.2.2017.03.04.08.19.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:19:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,242,1484002800"; 
   d="scan'208";a="215567894"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 17:19:28 +0100
Date: Sat, 4 Mar 2017 17:19:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: abbotti@mev.co.uk, hsweeten@visionengravers.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, johan@kernel.org, dtwlin@gmail.com, 
    outreachy-kernel@googlegroups.com, greybus-dev@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: greybus: Replace "is
 is" with "is"
In-Reply-To: <1488643671-24758-3-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703041719160.2072@hadrien>
References: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com> <1488643671-24758-3-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, simran singhal wrote:

> This patch replace "is is " with "is". The replacement couldn't be
> automated because sometimes the first "is" was meant to be another
> word.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/greybus/uart.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
> index ab0dbf5..9188fe0 100644
> --- a/drivers/staging/greybus/uart.c
> +++ b/drivers/staging/greybus/uart.c
> @@ -34,7 +34,7 @@
>  #include "greybus.h"
>  #include "gbphy.h"
>
> -#define GB_NUM_MINORS	16	/* 16 is is more than enough */
> +#define GB_NUM_MINORS	16	/* 16 is more than enough */
>  #define GB_NAME		"ttyGB"
>
>  #define GB_UART_WRITE_FIFO_SIZE		PAGE_SIZE
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488643671-24758-3-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

