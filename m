X-GM-THRID: 6330577059983654912
X-Received: by 10.46.1.75 with SMTP id 72mr1805438ljb.10.1473966732887;
        Thu, 15 Sep 2016 12:12:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.136 with SMTP id 130ls346381ljj.14.gmail; Thu, 15 Sep
 2016 12:12:12 -0700 (PDT)
X-Received: by 10.25.43.76 with SMTP id r73mr1794906lfr.9.1473966732110;
        Thu, 15 Sep 2016 12:12:12 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si305224wmd.1.2016.09.15.12.12.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:12:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,340,1470693600"; 
   d="scan'208";a="193588009"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 21:12:11 +0200
Date: Thu, 15 Sep 2016 21:12:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    jon.nettleton@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: olpc_dcon: Prefer using the
 BIT macro
In-Reply-To: <20160915151150.GA6172@life-desktop>
Message-ID: <alpine.DEB.2.10.1609152110590.3364@hadrien>
References: <20160915151150.GA6172@life-desktop>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

The subject should say what you have done, not give the checkpatch
message.  Here what you have done is replace a bit shift by a use of BIT.

On Thu, 15 Sep 2016, Anchal Jain wrote:

> Replace all occurences of (1<<x) by BIT(x) in the file olpc_dcon.h to get rid
> of checkpatch.pl "CHECK" output "Prefer using the BIT macro"

The macro is BIT, not bit.

julia

>
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/olpc_dcon/olpc_dcon.h | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/olpc_dcon/olpc_dcon.h b/drivers/staging/olpc_dcon/olpc_dcon.h
> index 215e7ec..23a48a1 100644
> --- a/drivers/staging/olpc_dcon/olpc_dcon.h
> +++ b/drivers/staging/olpc_dcon/olpc_dcon.h
> @@ -9,18 +9,18 @@
>  #define DCON_REG_ID		 0
>  #define DCON_REG_MODE		 1
>
> -#define MODE_PASSTHRU	(1<<0)
> -#define MODE_SLEEP	(1<<1)
> -#define MODE_SLEEP_AUTO	(1<<2)
> -#define MODE_BL_ENABLE	(1<<3)
> -#define MODE_BLANK	(1<<4)
> -#define MODE_CSWIZZLE	(1<<5)
> -#define MODE_COL_AA	(1<<6)
> -#define MODE_MONO_LUMA	(1<<7)
> -#define MODE_SCAN_INT	(1<<8)
> -#define MODE_CLOCKDIV	(1<<9)
> -#define MODE_DEBUG	(1<<14)
> -#define MODE_SELFTEST	(1<<15)
> +#define MODE_PASSTHRU	bit(0)
> +#define MODE_SLEEP	bit(1)
> +#define MODE_SLEEP_AUTO	bit(2)
> +#define MODE_BL_ENABLE	bit(3)
> +#define MODE_BLANK	bit(4)
> +#define MODE_CSWIZZLE	bit(5)
> +#define MODE_COL_AA	bit(6)
> +#define MODE_MONO_LUMA	bit(7)
> +#define MODE_SCAN_INT	bit(8)
> +#define MODE_CLOCKDIV	bit(9)
> +#define MODE_DEBUG	bit(14)
> +#define MODE_SELFTEST	bit(15)
>
>  #define DCON_REG_HRES		0x2
>  #define DCON_REG_HTOTAL		0x3
> @@ -35,11 +35,11 @@
>  #define DCON_REG_MEM_OPT_B	0x42
>
>  /* Load Delay Locked Loop (DLL) settings for clock delay */
> -#define MEM_DLL_CLOCK_DELAY	(1<<0)
> +#define MEM_DLL_CLOCK_DELAY	bit(0)
>  /* Memory controller power down function */
> -#define MEM_POWER_DOWN		(1<<8)
> +#define MEM_POWER_DOWN		bit(8)
>  /* Memory controller software reset */
> -#define MEM_SOFT_RESET		(1<<0)
> +#define MEM_SOFT_RESET		bit(0)
>
>  /* Status values */
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915151150.GA6172%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

