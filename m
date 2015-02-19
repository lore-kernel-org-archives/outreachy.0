X-GM-THRID: 135506427904
X-Received: by 10.152.6.232 with SMTP id e8mr731989laa.2.1424364623890;
        Thu, 19 Feb 2015 08:50:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.97.105 with SMTP id dz9ls104649wib.4.gmail; Thu, 19 Feb
 2015 08:50:22 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr1175114wic.4.1424364622135;
        Thu, 19 Feb 2015 08:50:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si143376wib.1.2015.02.19.08.50.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 08:50:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,609,1418079600"; 
   d="scan'208";a="122554835"
Received: from technetium.rsr.lip6.fr ([132.227.76.37])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 17:50:21 +0100
Date: Thu, 19 Feb 2015 17:52:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: aybuke ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Convert from
 __attribute__((aligned(size))) to __aligned(size)
In-Reply-To: <1424364343-3944-1-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.10.1502191751180.3284@hadrien>
References: <1424364343-3944-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, aybuke ozdemir wrote:

> This fixes the following checkpatch.pl warnings in emxx_udc.h file:
> WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))

This was done already by Vatika Harlalka.  You can see what has been done
in the mailing list archives.

julia

> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index ee1b80d..2ac216f 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -535,7 +535,7 @@ typedef struct _T_FC_REGS {
>
>  	u8 Reserved1200[0x1000-0x200];	/* Reserved */
>
> -} __attribute__ ((aligned(32))) T_FC_REGS, *PT_FC_REGS;
> +} __aligned(32) T_FC_REGS, *PT_FC_REGS;
>
>
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424364343-3944-1-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

