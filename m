X-GM-THRID: 6664067951305424896
X-Received: by 2002:a63:7444:: with SMTP id e4mr6612265pgn.89.1551685614772;
        Sun, 03 Mar 2019 23:46:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:59d7:: with SMTP id k84ls6401598pfj.6.gmail; Sun, 03 Mar
 2019 23:46:54 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZYRZOIigh8KgIL84nhrdFEu4goATcFWnbZIZwW1HmCHgvqpMP0+5HGwOokJJNQ9B/X6OzS
X-Received: by 2002:aa7:8296:: with SMTP id s22mr6427617pfm.135.1551685614083;
        Sun, 03 Mar 2019 23:46:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551685614; cv=none;
        d=google.com; s=arc-20160816;
        b=sxt5O59bBQW9N9gJSaHODJpGaEhDjGLpejbsnZJWcR0cNraARia86FyvdfXboWBsS2
         TzLtgmZUpKD1QRj6f8r0aCp0ZvIinr+zwbhEekK06u1bBD7jowU0EXwz1ezMaOXQRLZY
         qSqV2WL894mrU2mykrfRt6qUeXYjaFik+tXVDCH+xTm98taQgQysz2MpJTpmC6SoP1hy
         QsHUVe7iew1DNg+Z75LP9dlHoE0Fw+AArmUryGrVRnA9aE+dM5qhVfYKTHgFa5I79mT5
         dnOnjJvZuOAVhKtxbUxtn4fAmUERDCrBSP6kyLLRrrZk1KUhE4pLCK+k8Tue0RAXkc8j
         Lc2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+HPaHZEnlx8FAYgzILOeSh6uhG1YaWKUHeH5eB1VCQ8=;
        b=DvCA7zyQuphQitV9kwaHW0IpPrxHZuiCDdfdfJZPK0tjk79BwHWoi4Yji53QZ1/k0M
         2vYKaqmVflibO36lF/42uEzgNXIyMRCpqAbno7Qkfjtdsj6yK5JgiDcskU8LWPETen2c
         bPfVFy2E/lj5m2rUvv25i33dJpycVmxLwBfSGypph3S517N8tI1fYwCVnHFTxp0mj5Lz
         Z+al4ASG0N3ahAz+1+cvS10KlY35oZoSfHs0+F5LiKYkWW0GbGm86fWGt2rVqECr2iMO
         iEvxaQKEaHHZzI1BwLd6g+iUujavwGsL1JjqPFF1WncFrTvhTOJCV4sTfLsBZm+7SWCI
         tTKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="RgZPX/XJ";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r133si265042pgr.4.2019.03.03.23.46.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 23:46:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="RgZPX/XJ";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 57E9020836;
	Mon,  4 Mar 2019 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551685613;
	bh=yKBUr5NU856FddEaQad3Q5ieJrA8mYrr+Yh9HPjWwMY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RgZPX/XJFSTJDQNIc7XfbrLlUawB1dkYav6L31WSY8z94/Gb0xPvu7EBxNPuNwFuy
	 rM90+Gb/VaQgGSATKkYLJpA1KXWw0PPDGopqyWydJ5EjTvAqeWpcKZM1QuCnRLjnMD
	 Eul4XhCA6tEoaXIiP7ly7k66FHKYnk/JSplEkAxA=
Date: Mon, 4 Mar 2019 08:46:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Debleena Sen <idebleenasen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: pi433: Fix line over 80 characters issue
Message-ID: <20190304074650.GC22711@kroah.com>
References: <1551679530-2635-1-git-send-email-idebleenasen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1551679530-2635-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sun, Mar 03, 2019 at 10:05:30PM -0800, Debleena Sen wrote:
> Delete extra whitespace and tab space to remove
> checkpatch.pl warning:
> WARNING: line over 80 characters
> 
> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
> index b231463..53928af 100644
> --- a/drivers/staging/pi433/pi433_if.c
> +++ b/drivers/staging/pi433/pi433_if.c
> @@ -45,10 +45,10 @@
>  #include "pi433_if.h"
>  #include "rf69.h"
>  
> -#define N_PI433_MINORS			BIT(MINORBITS) /*32*/	/* ... up to 256 */
> -#define MAX_MSG_SIZE			900	/* min: FIFO_SIZE! */
> -#define MSG_FIFO_SIZE			65536   /* 65536 = 2^16  */
> -#define NUM_DIO				2
> +#define N_PI433_MINORS		BIT(MINORBITS) /*32*/	/* ... up to 256 */
> +#define MAX_MSG_SIZE		900	/* min: FIFO_SIZE! */
> +#define MSG_FIFO_SIZE		65536   /* 65536 = 2^16  */

The comment above should also use a tab, right?

thanks,

greg k-h

