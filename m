X-GM-THRID: 6330194437741740032
X-Received: by 10.194.119.196 with SMTP id kw4mr847399wjb.1.1473881348633;
        Wed, 14 Sep 2016 12:29:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.203 with SMTP id 194ls416967wmj.27.gmail; Wed, 14 Sep
 2016 12:29:07 -0700 (PDT)
X-Received: by 10.28.208.141 with SMTP id h135mr903346wmg.3.1473881347961;
        Wed, 14 Sep 2016 12:29:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si15031wmg.3.2016.09.14.12.29.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:29:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,335,1470693600"; 
   d="scan'208";a="193197354"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 21:29:06 +0200
Date: Wed, 14 Sep 2016 21:29:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com, Lidza Louina <lidza.louina@gmail.com>, 
    Mark Hounschell <markh@compro.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Fix long line and
 spelling mistake
In-Reply-To: <20160914142656.GA3298@toblerone>
Message-ID: <alpine.DEB.2.10.1609142128200.3347@hadrien>
References: <20160914142656.GA3298@toblerone>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 14 Sep 2016, Rehas Sachdeva wrote:

> This patch fixes the checkpatch.pl warning:
> Line over 80 characters.
> Also, the word 'because' was spelled as
> 'Becuz' and has been corrected.

While the commit message should not exceed 80 characters, it is also nicer
if it is not too short.  The last sentence could probably fit on one line.

julia

>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_neo.c | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index 5ef5b3e..fe071e1 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -107,7 +107,9 @@ static inline void neo_set_cts_flow_control(struct channel_t *ch)
>  	/* Turn off auto Xon flow control */
>  	efr &= ~UART_17158_EFR_IXON;
>
> -	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
> +	/* Why? Because Exar's spec says we have to zero it
> +	 * out before setting it
> +	 */
>  	writeb(0, &ch->ch_neo_uart->efr);
>
>  	/* Turn on UART enhanced bits */
> @@ -143,7 +145,9 @@ static inline void neo_set_rts_flow_control(struct channel_t *ch)
>  	ier &= ~UART_17158_IER_XOFF;
>  	efr &= ~UART_17158_EFR_IXOFF;
>
> -	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
> +	/* Why? Because Exar's spec says we have to zero it
> +	 * out before setting it
> +	 */
>  	writeb(0, &ch->ch_neo_uart->efr);
>
>  	/* Turn on UART enhanced bits */
> @@ -181,7 +185,9 @@ static inline void neo_set_ixon_flow_control(struct channel_t *ch)
>  	/* Turn on auto Xon flow control */
>  	efr |= (UART_17158_EFR_ECB | UART_17158_EFR_IXON);
>
> -	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
> +	/* Why? Because Exar's spec says we have to zero it
> +	 * out before setting it
> +	 */
>  	writeb(0, &ch->ch_neo_uart->efr);
>
>  	/* Turn on UART enhanced bits */
> @@ -219,7 +225,9 @@ static inline void neo_set_ixoff_flow_control(struct channel_t *ch)
>  	ier |= UART_17158_IER_XOFF;
>  	efr |= (UART_17158_EFR_ECB | UART_17158_EFR_IXOFF);
>
> -	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
> +	/* Why? Because Exar's spec says we have to zero it
> +	 * out before setting it
> +	 */
>  	writeb(0, &ch->ch_neo_uart->efr);
>
>  	/* Turn on UART enhanced bits */
> @@ -260,7 +268,9 @@ static inline void neo_set_no_input_flow_control(struct channel_t *ch)
>  	else
>  		efr &= ~(UART_17158_EFR_ECB | UART_17158_EFR_IXOFF);
>
> -	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
> +	/* Why? Because Exar's spec says we have to zero
> +	 * it out before setting it
> +	 */
>  	writeb(0, &ch->ch_neo_uart->efr);
>
>  	/* Turn on UART enhanced bits */
> @@ -298,7 +308,9 @@ static inline void neo_set_no_output_flow_control(struct channel_t *ch)
>  	else
>  		efr &= ~(UART_17158_EFR_ECB | UART_17158_EFR_IXON);
>
> -	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
> +	/* Why? Because Exar's spec says we have to zero it
> +	 * out before setting it
> +	 */
>  	writeb(0, &ch->ch_neo_uart->efr);
>
>  	/* Turn on UART enhanced bits */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914142656.GA3298%40toblerone.
> For more options, visit https://groups.google.com/d/optout.
>

