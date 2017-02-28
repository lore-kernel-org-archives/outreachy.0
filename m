X-GM-THRID: 6391488130164195328
X-Received: by 10.107.187.197 with SMTP id l188mr330427iof.55.1488262728915;
        Mon, 27 Feb 2017 22:18:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.19 with SMTP id p19ls172229ioe.47.gmail; Mon, 27 Feb
 2017 22:18:48 -0800 (PST)
X-Received: by 10.107.53.232 with SMTP id k101mr367710ioo.36.1488262728007;
        Mon, 27 Feb 2017 22:18:48 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f7si137696pfk.5.2017.02.27.22.18.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 22:18:47 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id y23so391699pfk.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 22:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uORk+5xh41Ke/gkI993nRQezdY/QzJgqmOcd2c3TcnM=;
        b=MMtmBm7Sa3zlAf4j3hFdk+5LlU6cQso7+RQsYqoWDr5dndJWLokLlwK1q2c/1ITPV4
         IldfnQ6JH1uqwrdPiq6SE3cIkf9saeAd2jDVQFgLsqumwNlkbwRkFj9jb/L1lcJ8t3vG
         4T0fviVq2rV60aSOghn90xUKw/SHOAR0eVXE+Y3ylha1tLJSVN+OHlBJdm+MZEDkuyrW
         B3nVKulYohSXv4RpW6G4jqpyq1UNyECK3ZPbSUFA6IV+pR2114xXRKN0xft2cArIbJUY
         Q2GuECnjYMAiVRVwiA5S3Pk7LmKB1EkQ/xU+Eq54rxN3oFPj8ZdQKOUMyMv1+2NvpsQy
         hRJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uORk+5xh41Ke/gkI993nRQezdY/QzJgqmOcd2c3TcnM=;
        b=NAfcxtV0BZm5d3XFroeXZD+cRmsf6PRynVVHZ7+lK81U71vgnohX3+4zoGOgDIm9cR
         Rhr09P0d6pvZcQSAPtYdOwWeysfXuZzI10YfdGz+1bdG+7VaexWtka6FrALnFj6jWhs1
         uUnO4e7P/+gI2F8UDMl4XdtTy230/KR8xsdIj4iG0GdZqcWfYYozQ6W0FYekgMV2aOzN
         VAXk4uDX8wWcgJt37oazfyOwWS+XAmutbeyjMhVkIvlHOZG7aNVJrJMKnFBnS0aUIeUU
         6vu/FAD38UQvAVGJ5nRK+i8xFraHtJ/IdKlwAww+6ZJ8i5YtAK5x/n3RNWTqTXOGNFLY
         mYAA==
X-Gm-Message-State: AMke39l0aX+Sj38E13hrn+FAnYzDt25BaXPfVGmXu93guAiKiqi5x+0Xttq+CKK2//jYDw==
X-Received: by 10.99.125.68 with SMTP id m4mr808055pgn.13.1488262727678;
        Mon, 27 Feb 2017 22:18:47 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id f21sm1434445pfj.111.2017.02.27.22.18.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 22:18:47 -0800 (PST)
Date: Tue, 28 Feb 2017 11:48:38 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] staging: dgnc: replace udelay with usleep_range
Message-ID: <20170228061838.GA8349@aishwarya>
References: <20170227163445.GA4514@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170227163445.GA4514@aishwarya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 27, 2017 at 10:04:45PM +0530, Aishwarya Pant wrote:
> Fix checkpatch warning on dgnc_cls.c : CHECK usleep_range
> is preferred over udelay. There is one ocurrence of udelay in
> function cls_uart_init with non-atomic context that can be safely
> replaced by usleep_range(t, t + delta) where delta is t (as t is
> between 10 and 20 microseconds). Also replace usleep_range by udelay in
> function cls_flush_uart_write as it is called under a channel lock.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
> Changes in v4:
> 	- Fix commit message formatting
> 
> Changes in v3:
> 	- Replace usleep_range by udelay in cls_flush_uart_write
> 	- Fix diff in commit message
> 
> Changes in v2:
> 	- Revert usage of usleep_range in atomic context
> 	- Cleanup the commit message
> 
>  drivers/staging/dgnc/dgnc_cls.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index c20ffdd..7068c3b 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -609,7 +609,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
>  
>  	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
>  	       &ch->ch_cls_uart->isr_fcr);
> -	usleep_range(10, 20);
> +	udelay(10);
>  
>  	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
>  }
> @@ -1096,7 +1096,7 @@ static void cls_uart_init(struct channel_t *ch)
>  
>  	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
>  	       &ch->ch_cls_uart->isr_fcr);
> -	udelay(10);
> +	usleep_range(10, 20);
>  
>  	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
>  
> -- 
> 2.7.4
>


Since delays are something I cannot test if it works well on all
hardware, should I move on to some other cleanup and not tamper with
delays?





