X-GM-THRID: 6670934867500335104
X-Received: by 2002:a2e:988f:: with SMTP id b15mr9565138ljj.25.1553410416391;
        Sat, 23 Mar 2019 23:53:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5926:: with SMTP id v6ls1254918lfi.14.gmail; Sat, 23 Mar
 2019 23:53:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzSoWgeUC8Y7XXssHTL1eTLM922Xu622XDGUuR3M96qZuVOKXZ4Au69phwoI6vYaxlKO8t3
X-Received: by 2002:a19:ec14:: with SMTP id b20mr9298786lfa.55.1553410415523;
        Sat, 23 Mar 2019 23:53:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553410415; cv=none;
        d=google.com; s=arc-20160816;
        b=gzgme5zcFgSx3mDo+vXgdEbYxspNUu4i0GGfUVwNB5Pum5HOxE/rerTH64E1nDl6e+
         m6LhhjrYqdKyk55N1TWYWIpFgQEzu2oiIDFTILXPt0ruglf/M7keYSczl+YnDEQHaWcz
         +HNJXiAhUckeQZc9CUr8+0itwfu9/XbgkgaukWwAmtphl4PwS/FkayOBJMK1jHaw3Vx8
         ZqFGDFUE3iV27TwhbVtyfVNB61xMlT63Btrtj8gcXapUIXdDW4H9xtjfWgdW6L/UwtTa
         lZqXfpd9Uus9fI56bRn6pFrv/q3FAH5KjAY1AamXW/KkCPJaRcz9BuibU9V3/mHXbqO+
         5tpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=E0EvKL53+3nCn0xQTnO/JQBZ9rp5qADnO4LtDDegKpc=;
        b=LM9K0i/Kb4HFtbQhhHVSfJxSoUsAaC+QRM6N/UoeiKvSEeG6SF6UebqMhHIAjkcBW+
         +5ldxEa+2y83SZ6uVe7tuScgVEwHevRvb++7xs/vOl0mykr1iLieaUvEz5kEBZTWBA1k
         Og/rUrmhe9iAfsnZ8KZWbsn3d7sH53uoWXND2QgtHuqV9g/a+F0E9N0DRaPaIAZsNY1Q
         Nz4ibrYxk+Tcfa0HNumLI0Uh04BI/7dN6Z69r9B6DY3t07JUBBCon+IzSBko5hQYH0L3
         irZMYsiG74S4yfNnBdSfLMw/Uot4qq3Mvs2r/9xg01xf/rGFC49j8KIEKZC0OjkTF6rw
         Fnvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m17si392013lfl.0.2019.03.23.23.53.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 23:53:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300510721"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 07:53:28 +0100
Date: Sun, 24 Mar 2019 07:53:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH resend] staging: pi433: break line
 after comparison operator to fix checkpatch warning
In-Reply-To: <20190323002555.5280-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1903240750180.2526@hadrien>
References: <20190323002555.5280-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Mar 2019, Jules Irenge wrote:

>  Break line after comparison operator to solve checkpatch.pl warning:
> "WARNING: line over 80 characters".

Don't add a newline in the middle of an expression.

It is only the semicolon that goes over.  I don't think it harms
readability very much.

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
> index b2314636dc89..f537722395c6 100644
> --- a/drivers/staging/pi433/pi433_if.c
> +++ b/drivers/staging/pi433/pi433_if.c
> @@ -479,7 +479,8 @@ pi433_receive(void *data)
>  	/* length byte enabled? */
>  	if (dev->rx_cfg.enable_length_byte == OPTION_ON) {
>  		retval = wait_event_interruptible(dev->fifo_wait_queue,
> -						  dev->free_in_fifo < FIFO_SIZE);
> +						  dev->free_in_fifo <
> +						  FIFO_SIZE);
>  		if (retval) /* wait was interrupted */
>  			goto abort;
>
> @@ -500,7 +501,8 @@ pi433_receive(void *data)
>  		bytes_total--;
>
>  		retval = wait_event_interruptible(dev->fifo_wait_queue,
> -						  dev->free_in_fifo < FIFO_SIZE);
> +						  dev->free_in_fifo <
> +						  FIFO_SIZE);
>  		if (retval) /* wait was interrupted */
>  			goto abort;
>
> @@ -513,7 +515,8 @@ pi433_receive(void *data)
>  	while (dev->rx_position < bytes_total) {
>  		if (!rf69_get_flag(dev->spi, payload_ready)) {
>  			retval = wait_event_interruptible(dev->fifo_wait_queue,
> -							  dev->free_in_fifo < FIFO_SIZE);
> +							  dev->free_in_fifo <
> +							  FIFO_SIZE);
>  			if (retval) /* wait was interrupted */
>  				goto abort;
>  		}
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190323002555.5280-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

