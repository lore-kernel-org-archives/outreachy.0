X-GM-THRID: 6393675902317756416
X-Received: by 10.46.71.15 with SMTP id u15mr1344484lja.9.1488644393575;
        Sat, 04 Mar 2017 08:19:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls1258568ljb.12.gmail; Sat, 04 Mar
 2017 08:19:53 -0800 (PST)
X-Received: by 10.46.82.157 with SMTP id n29mr1311537lje.29.1488644393109;
        Sat, 04 Mar 2017 08:19:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 14si521097wmn.2.2017.03.04.08.19.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:19:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,242,1484002800"; 
   d="scan'208";a="263121573"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 17:19:52 +0100
Date: Sat, 4 Mar 2017 17:19:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: abbotti@mev.co.uk, hsweeten@visionengravers.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, johan@kernel.org, dtwlin@gmail.com, 
    outreachy-kernel@googlegroups.com, greybus-dev@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: comedi: Replace "is is"
 with "is"
In-Reply-To: <1488643671-24758-4-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703041719400.2072@hadrien>
References: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com> <1488643671-24758-4-git-send-email-singhalsimran0@gmail.com>
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
>  drivers/staging/comedi/drivers/ni_usb6501.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/drivers/ni_usb6501.c b/drivers/staging/comedi/drivers/ni_usb6501.c
> index 5036eeb..9a0a963 100644
> --- a/drivers/staging/comedi/drivers/ni_usb6501.c
> +++ b/drivers/staging/comedi/drivers/ni_usb6501.c
> @@ -45,7 +45,7 @@
>   *	byte 3 is the total packet length
>   *
>   *	byte 4 is always 00
> - *	byte 5 is is the total packet length - 4
> + *	byte 5 is the total packet length - 4
>   *	byte 6 is always 01
>   *	byte 7 is the command
>   *
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488643671-24758-4-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

