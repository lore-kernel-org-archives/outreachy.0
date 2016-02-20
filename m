X-GM-THRID: 6253096427237408768
X-Received: by 10.28.45.151 with SMTP id t145mr29333wmt.6.1455940189085;
        Fri, 19 Feb 2016 19:49:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.212.198 with SMTP id l189ls101376lfg.67.gmail; Fri, 19 Feb
 2016 19:49:48 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr2256904lbb.23.1455940188306;
        Fri, 19 Feb 2016 19:49:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 141si603889wmy.2.2016.02.19.19.49.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 19:49:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,473,1449529200"; 
   d="scan'208";a="203869194"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 04:49:47 +0100
Date: Fri, 19 Feb 2016 22:49:45 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH]Staging:tty:amiserial:Add space before
 open parenthesis and fix indent warning.
In-Reply-To: <20160219120741.GA5755@sandhya>
Message-ID: <alpine.DEB.2.10.1602192248590.2806@hadrien>
References: <20160219120741.GA5755@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

You need a Signed-off-by line with your full name, and that should match
the From line of your patch, which here seems t contain only your first
name.

julia

On Fri, 19 Feb 2016, Sandhya wrote:

> Add space before open parenthesis of "if" statement and fix indent warning.
> The checkpatch.pl script reported  error and warning.
>
> diff --git a/drivers/tty/amiserial.c b/drivers/tty/amiserial.c
> index 2caaf5a..9a5c584 100644
> --- a/drivers/tty/amiserial.c
> +++ b/drivers/tty/amiserial.c
> @@ -262,10 +262,10 @@ static void receive_chars(struct serial_state *info)
>  	custom.intreq = IF_RBF;
>  	mb();
>
> -	if((serdatr & 0x1ff) == 0)
> -	    status |= UART_LSR_BI;
> -	if(serdatr & SDR_OVRUN)
> -	    status |= UART_LSR_OE;
> +	if ((serdatr & 0x1ff) == 0)
> +		status |= UART_LSR_BI;
> +	if (serdatr & SDR_OVRUN)
> +		status |= UART_LSR_OE;
>
>  	ch = serdatr & 0xff;
>  	icount->rx++;
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160219120741.GA5755%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

