X-GM-THRID: 6670934867500335104
X-Received: by 2002:a5d:4887:: with SMTP id g7mr3822966wrq.51.1553198436148;
        Thu, 21 Mar 2019 13:00:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fb11:: with SMTP id c17ls1492952wrr.13.gmail; Thu, 21
 Mar 2019 13:00:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwxpNryqpDqd7Ox+hGtaEL+Ge3WKTsSbxBbwyTztPToHsa0OVQxkQgdmgEW9cvftWpH3+KV
X-Received: by 2002:a5d:6b12:: with SMTP id v18mr4039141wrw.27.1553198435351;
        Thu, 21 Mar 2019 13:00:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553198435; cv=none;
        d=google.com; s=arc-20160816;
        b=Y6c42JaEFdnHhZq//tyrR4s91m7yCNim0F8sQ2sAu9o6rja4XxwLeK82R+Ue2Gq08n
         2iQSNXsbnBg+yvBStBpcbLcDRyDN+WMvsDwdu0MO0XaFs+bhEdY+cKpxxR0dIYLDfxTd
         KfyT3XEk6rtKM702pFBJReO9Teeli4pyEHxAjoKaSRuuNg/s+vl/xF212iNKdeHANpk+
         Go7j0r9/B5NcM5Ro/7GtjE5IP5fTMV0xJRTdGmpj08yV8FZ475RRnngeuoMVxKf+qB5U
         c0d5aELJJEe9fd2DwaE4gQBmhRDnISqCrAn1PWqqChkhvW6AKmsfM3ygNpxPrMX4yevg
         qPmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ypcNEwpTWd1eBQuj79ZbY/O1m8wM2LybPCXHN2Vr0YM=;
        b=xi6atUVVbIvssC8D0xkCeEfed01eA/Ns9R7DB3/4yk5wIhR+n/zxR572kcvpWKhPnu
         5oHBZVL0fNyts/SN91Rv0nI9KD/29Byp4fcYr4zmFNFoBUpfXMMkC02ckjOqiSE/izrH
         NjyFPRE7v+sJpg2T/2YS6YZawjT/2+UeJdHdD1w4RhX2pZLbAH8EunD0pT7SPQU9LW8x
         KQHx36FGcHKHIqrmLm4wRY7r2ZZ2TbAKPPEctpBGy4Ik6OjZpVC8NTqAv1dKe0x5MOM2
         73dUMzpCAWx5aUaLSIRtNQXylQGDdr8XylOOwwTo68e+1jM+N3KJO4EqQNQG2G/zbLOC
         M+jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f14si199063wme.2.2019.03.21.13.00.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 13:00:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,254,1549926000"; 
   d="scan'208";a="375165899"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 21:00:34 +0100
Date: Thu, 21 Mar 2019 21:00:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: pi433: break line
 after comparison operator to fix checkpatch warning
In-Reply-To: <20190321195408.30440-2-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1903212059390.2491@hadrien>
References: <20190321195408.30440-1-jbi.octave@gmail.com> <20190321195408.30440-2-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Mar 2019, Jules Irenge wrote:

>  Break line after comparison operator to solve checkpatch.pl warning:
> "WARNING: line over 80 characters".
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

Even if checkpatch would complain for another reason, it could look nucer
with just one tab less in front of the argument.  Then the whole argument
expression could be kept on one line.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321195408.30440-2-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

