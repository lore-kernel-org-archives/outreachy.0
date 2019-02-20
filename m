X-GM-THRID: 6659803762561908736
X-Received: by 2002:a2e:c41:: with SMTP id o1mr931995ljd.19.1550647739290;
        Tue, 19 Feb 2019 23:28:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5551:: with SMTP id j78ls1179313ljb.11.gmail; Tue, 19
 Feb 2019 23:28:58 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaXw35gPGWMnZM96Nwu86RHBDebvuCHKRv3vAIVqmkVhFUjitajfxYBhIandx9ZYvRKFTrv
X-Received: by 2002:a2e:701a:: with SMTP id l26mr1452413ljc.26.1550647738386;
        Tue, 19 Feb 2019 23:28:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550647738; cv=none;
        d=google.com; s=arc-20160816;
        b=Ex6aUufPgNpC5G+kdAOa/j4pA8DshdohDT63jzTor4Oedns+04ryULRnnDhC9dzIq4
         KpRBEgqGtJdNn3kwtmyQdhMAgbeap4ZdHto890ibyxAYeQ0P0ifebKBzhTYQs6w7TIYz
         Hi/ACv8exWHTs7Y5X1kRkz80t07uk9VEXPAc+ody3R4Z5yPkisPcLcZySC1jx1JwK3Yq
         /LeeYnNUJ9U1LI1dKUeORi60zVmhC5InFazPh/lzmrQ/+sIG2+kBO0gsSGO5GBwJ0jlf
         Mek+OlRXqM4zbjEicnA0bd2Xq18uRz02I7QciNJGEmJ1S4B/No3jBug8nY+5GCykCQOx
         lGVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=xLTwbESz2bcOwPRkwIPxkbyXK9MWDxPAK5q2tnDWPzY=;
        b=kRC6tKwPmutPnYqGq7Szl7kDqCL9ojzF+EbSu0K13fpo8QERFbz4UtcW8EaKGy83zb
         58TKpJk+3vTCiCNxKTZ/tM3e84cmxQ+cp9wUA5f6+sgutdgG+CbKwroQpG2uC0XKMUEg
         Wd3mU5Q8ONYyzFWHxjPIPHeNGVdANFlNOEBVha7rq2hKmfR/AQCQxEwECtcU31nMn7Fh
         adlBv13mtfEMqlYGU431x9bX8+qztmq/SfNlSfIgoViEWdORMhSpGxMlUdlvKw4abM+A
         mp4i2O0/lT1NipMDvSXdCMmIVIvQKn/FYXMs812fSZl20SpArU7gdn0UAhTxOcoS5Uja
         VRVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 19si83893lje.4.2019.02.19.23.28.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 23:28:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,390,1544482800"; 
   d="scan'208";a="296725792"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Feb 2019 08:28:57 +0100
Date: Wed, 20 Feb 2019 08:28:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: rts5208: Fix Macro
 argument reuse
In-Reply-To: <20190220050522.GA19976@bhanusree-MacBookAir>
Message-ID: <alpine.DEB.2.21.1902200825590.14914@hadrien>
References: <20190220050522.GA19976@bhanusree-MacBookAir>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Feb 2019, Bhanusree Pola wrote:

> Fixes Macro argument reuse issue
> typeof is used to avoid possible side effects
> Issue found with checkpatch.pl
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rts5208/xd.h | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
> index 98c00f268e56..5e9b3805c33a 100644
> --- a/drivers/staging/rts5208/xd.h
> +++ b/drivers/staging/rts5208/xd.h
> @@ -99,11 +99,12 @@
>  #define	XD_RW_ADDR			0x01
>  #define	XD_ERASE_ADDR			0x02
>
> -#define	XD_PAGE_512(xd_card)		\
> +#define	XD_PAGE_512(_card)		\
> +(typeof(_card) (card) = (_card);	\
>  do {					\
> -	(xd_card)->block_shift = 5;	\
> -	(xd_card)->page_off = 0x1F;	\
> -} while (0)
> +	(card)->block_shift = 5;	\
> +	(card)->page_off = 0x1F;	\
> +} while (0))

Is it useful to reuse this macro?  Other types may not have the same
fields, with the same semantics.  On the other hand, I wonder why this is
a macro at all, and not an inline function?  Likewise for the next two
macros.  Then you would have proper typed parameters.

I haven't checked on the uses, though.  Perhaps there are many closely
related types with the same field names and so having a macro is useful.

julia

>
>  #define	XD_SET_BAD_NEWBLK(xd_card)	((xd_card)->multi_flag |= 0x01)
>  #define	XD_CLR_BAD_NEWBLK(xd_card)	((xd_card)->multi_flag &= ~0x01)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190220050522.GA19976%40bhanusree-MacBookAir.
> For more options, visit https://groups.google.com/d/optout.
>

