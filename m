X-GM-THRID: 6255332457317400576
X-Received: by 10.28.45.82 with SMTP id t79mr76115wmt.2.1456433694309;
        Thu, 25 Feb 2016 12:54:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.208 with SMTP id e199ls142799lfg.109.gmail; Thu, 25 Feb
 2016 12:54:53 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr5857072lbb.2.1456433693267;
        Thu, 25 Feb 2016 12:54:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si1563wme.0.2016.02.25.12.54.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 12:54:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="166010735"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 21:54:52 +0100
Date: Thu, 25 Feb 2016 21:54:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Break line after
 boolean operator
In-Reply-To: <20160225204443.GA29868@Toblerone>
Message-ID: <alpine.DEB.2.02.1602252153340.2038@localhost6.localdomain6>
References: <20160225204443.GA29868@Toblerone>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 26 Feb 2016, Rehas Sachdeva wrote:

> The preferred way to break up long math lines is to break after
> an arthimetic or boolean operator.
> This patch fixes the checkpatch.pl warning:
> Logical continuations should be on the previous line.
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_neo.c | 12 +++++++-----
>  drivers/staging/dgnc/dgnc_tty.c |  4 ++--
>  2 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index ee3155b..b68b758 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -351,8 +351,8 @@ static inline void neo_clear_break(struct channel_t *ch, int force)
>  
>  	/* Turn break off, and unset some variables */
>  	if (ch->ch_flags & CH_BREAK_SENDING) {
> -		if (time_after_eq(jiffies, ch->ch_stop_sending_break)
> -		    || force) {
> +		if (time_after_eq(jiffies, ch->ch_stop_sending_break) ||
> +		    force) {

Actually, this doesn't look so nice to me, probably because force is so 
short.

>  			unsigned char temp = readb(&ch->ch_neo_uart->lcr);
>  
>  			writeb((temp & ~UART_LCR_SBC), &ch->ch_neo_uart->lcr);
> @@ -1783,9 +1783,11 @@ static void neo_vpd(struct dgnc_board *brd)
>  		brd->vpd[(i * 2) + 1] = (a >> 8) & 0xff;
>  	}
>  
> -	if  (((brd->vpd[0x08] != 0x82)	   /* long resource name tag */
> -		&&  (brd->vpd[0x10] != 0x82))   /* long resource name tag (PCI-66 files)*/
> -		||  (brd->vpd[0x7F] != 0x78)) { /* small resource end tag */
> +	if (((brd->vpd[0x08] != 0x82) && /* long resource name tag */
> +	    (brd->vpd[0x10] != 0x82)) || /* long resource name tag
> +					  *  (PCI-66 files)
> +					  */
> +	    (brd->vpd[0x7F] != 0x78)) {  /* small resource end tag */

This one doesn't either.  Maybe there could be a single line comment, 
above the tested expression.

>  
>  		memset(brd->vpd, '\0', NEO_VPD_IMAGESIZE);
>  	} else {
> diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
> index 8a7508a..320ef25 100644
> --- a/drivers/staging/dgnc/dgnc_tty.c
> +++ b/drivers/staging/dgnc/dgnc_tty.c
> @@ -1800,8 +1800,8 @@ static int dgnc_tty_write(struct tty_struct *tty,
>  	}
>  
>  	/* Update printer buffer empty time. */
> -	if ((un->un_type == DGNC_PRINT) && (ch->ch_digi.digi_maxcps > 0)
> -	    && (ch->ch_digi.digi_bufsize > 0)) {
> +	if ((un->un_type == DGNC_PRINT) && (ch->ch_digi.digi_maxcps > 0) &&
> +	    (ch->ch_digi.digi_bufsize > 0)) {
>  		ch->ch_cpstime += (HZ * count) / ch->ch_digi.digi_maxcps;

This one looks fine.

julia

>  	}
>  
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225204443.GA29868%40Toblerone.
> For more options, visit https://groups.google.com/d/optout.
> 

