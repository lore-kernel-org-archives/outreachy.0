X-GM-THRID: 6393675902317756416
X-Received: by 10.46.92.131 with SMTP id q125mr1232976ljb.15.1488644340975;
        Sat, 04 Mar 2017 08:19:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.6.2 with SMTP id 2ls463218ljg.13.gmail; Sat, 04 Mar 2017
 08:19:00 -0800 (PST)
X-Received: by 10.25.18.219 with SMTP id 88mr1132907lfs.29.1488644340372;
        Sat, 04 Mar 2017 08:19:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si842848wmd.0.2017.03.04.08.19.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:19:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,242,1484002800"; 
   d="scan'208";a="263121525"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 17:18:59 +0100
Date: Sat, 4 Mar 2017 17:18:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: abbotti@mev.co.uk, hsweeten@visionengravers.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, johan@kernel.org, dtwlin@gmail.com, 
    outreachy-kernel@googlegroups.com, greybus-dev@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: rtl8192u: Replace "is
 is" with "is"
In-Reply-To: <1488643671-24758-2-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703041718360.2072@hadrien>
References: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com> <1488643671-24758-2-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, simran singhal wrote:

> This patch replace "is is " with "is". The replacement couldn't be
> automated because sometimes the first "is" was meant to be another
> word.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8192u/r819xU_cmdpkt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> index 3e0731b..231be8f 100644
> --- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> +++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> @@ -495,7 +495,7 @@ u32 cmpk_message_handle_rx(struct net_device *dev,
>  	u8			element_id;
>  	u8			*pcmd_buff;
>
> -	/* 0. Check inpt arguments. If is is a command queue message or
> +	/* 0. Check inpt arguments. If is a command queue message or

I can't figure out how to parse "If is a command...".

julia

>  	 * pointer is null.
>  	 */
>  	if (pstats == NULL)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488643671-24758-2-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

