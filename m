X-GM-THRID: 10002918014976
X-Received: by 10.152.87.110 with SMTP id w14mr2755921laz.3.1427447961211;
        Fri, 27 Mar 2015 02:19:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.240 with SMTP id jr16ls368999lab.69.gmail; Fri, 27 Mar
 2015 02:19:20 -0700 (PDT)
X-Received: by 10.112.170.38 with SMTP id aj6mr4189704lbc.4.1427447960755;
        Fri, 27 Mar 2015 02:19:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i8si65631wif.1.2015.03.27.02.19.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Mar 2015 02:19:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,478,1422918000"; 
   d="scan'208";a="130372038"
Received: from technetium.rsr.lip6.fr ([132.227.76.37])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Mar 2015 10:19:20 +0100
Date: Fri, 27 Mar 2015 10:21:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Helen Fornazier <helen.fornazier@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/8] staging: sm750fb: Add space before
 switch statement
In-Reply-To: <81d001c87a35bf25d675c8e15744c47252a44867.1427389602.git.helen.fornazier@gmail.com>
Message-ID: <alpine.DEB.2.10.1503271020310.2261@hadrien>
References: <cover.1427389602.git.helen.fornazier@gmail.com> <81d001c87a35bf25d675c8e15744c47252a44867.1427389602.git.helen.fornazier@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Mar 2015, Helen Fornazier wrote:

> This patch fixes the checkpatch.pl warnings:
>
> ERROR: space required before the open parenthesis '('
> +               switch(divisor) {
>
> ERROR: space required before the open parenthesis '('
> +               switch(divisor) {
>
> ERROR: space required before the open parenthesis '('
> +       switch(reg) {

No need to resend, but you don't really need to include all three
messages.  Just the part: ERROR: space required before the open
parenthesis '(' would be fine.

julia

>
> Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 49e26bd..3913aa4 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -150,7 +150,7 @@ void setMemoryClock(unsigned int frequency)
>
>  		/* Set the corresponding divisor in the register. */
>  		ulReg = PEEK32(CURRENT_GATE);
> -		switch(divisor) {
> +		switch (divisor) {
>  		default:
>  		case 1:
>  			ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
> @@ -198,7 +198,7 @@ void setMasterClock(unsigned int frequency)
>
>  		/* Set the corresponding divisor in the register. */
>  		ulReg = PEEK32(CURRENT_GATE);
> -		switch(divisor) {
> +		switch (divisor) {
>  		default:
>  		case 3:
>  			ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_3);
> @@ -235,7 +235,7 @@ unsigned int ddk750_getVMSize(void)
>
>  	/* get frame buffer size from GPIO */
>  	reg = FIELD_GET(PEEK32(MISC_CTRL),MISC_CTRL,LOCALMEM_SIZE);
> -	switch(reg) {
> +	switch (reg) {
>  	case MISC_CTRL_LOCALMEM_SIZE_8M:  data = MB(8);  break; /* 8  Mega byte */
>  	case MISC_CTRL_LOCALMEM_SIZE_16M: data = MB(16); break; /* 16 Mega byte */
>  	case MISC_CTRL_LOCALMEM_SIZE_32M: data = MB(32); break; /* 32 Mega byte */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/81d001c87a35bf25d675c8e15744c47252a44867.1427389602.git.helen.fornazier%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

