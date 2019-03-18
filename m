X-GM-THRID: 6669793876600946688
X-Received: by 2002:aca:5115:: with SMTP id f21mr7013639oib.50.1552934744316;
        Mon, 18 Mar 2019 11:45:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:be04:: with SMTP id o4ls53513oif.1.gmail; Mon, 18 Mar
 2019 11:45:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyhvdB0RYuNE3FPArEVBiojuI5+PLN995kQeF8Z1l0FLWB2wJaAriUd+Yd78CMKhDzRtsQR
X-Received: by 2002:aca:c6c8:: with SMTP id w191mr1740191oif.24.1552934743379;
        Mon, 18 Mar 2019 11:45:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552934743; cv=none;
        d=google.com; s=arc-20160816;
        b=RdviE5xsDuvpWS2hioCY0iQutDrTzk9wnD/Optkrno7ONvXV1+zfTx7+6QJKk9lFma
         qv8ftJeJkXnunJ0nCtRQG98runaYwWxUh0szcOLlX+1Tl326PHONUg4RqpRUuTma8gfm
         XskBs6/+R+dD36tg2fR9+g7LTyFUnYD8qLjPiTtIVAoT8mbCw1n0yE6PyK3K2xhdiAAl
         WUn3mmEoejMgh3AemzCggpPbqA+Iajsy7VtFDTQcqrNqDsfU8/diouMhqiBXLavFhIei
         XsSbVVoY/Qzq5XqQ85ezDsPCI0QCMk/WeSCbCMv/+v1xxfF4RrijhSm7NJbmYCi6m1TE
         GHiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jYu7EMGcQtEaknQVfJ+8S0Jj5XT4d8p+i+aHpxAHQAM=;
        b=dxZdwDGiOJKCYNnIWiu0tX4qW2zHdIkGA7KT3tTx8U0BJrxdjNn0Y6dRKaZb+l76ja
         w46qMzX+dTN1IMaKLkWfH7p+k141PErFq0SwlqsOFmzZ919HhRLlQjf6RXKZdJfd/l1S
         uOeJnZiBU2h03iLOyzhSficljBuvin/dU3Qzthg9PYXjGOcL1Kt+OeTLy9Za5E2kqliY
         VBXuw+2unHNgPGvIDeHGY/olF4luO/l+H4cJt/AD6hrdNkznKY74tjGLSFkcmMeVRMbp
         n3IBX/X5cxFlozVmYCqji32DIijRCpo4VvUMfpZCat9i6aGaGtNXbDtaaIgZW0ar/8oZ
         /Baw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=czwja9JO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u185si426145oib.2.2019.03.18.11.45.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 11:45:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=czwja9JO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 000122077B;
	Mon, 18 Mar 2019 18:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552934742;
	bh=Mw49IXXoNK/xYeBY5lbqTPyx/51v4n3YccSD66o2Hik=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=czwja9JOLloIOS7Ed9dHnLqZ4k+WcvDwedoZDFCjQhDfaU3LqwK2fA2V45uW3ot8L
	 lbwQ5Er38JAVmA3sgfUgid8MFenONbKUQl+qssl1TMJucZcCpv85PMmR3lt4eJKWVZ
	 rQVJsIZKUtbky7gFldFtWAJZnMEIaGD82K4K+38Y=
Date: Mon, 18 Mar 2019 19:45:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: speakup: prefer usleep_range
 over udelay
Message-ID: <20190318184539.GA11680@kroah.com>
References: <1552932384-11028-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552932384-11028-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 18, 2019 at 11:36:24PM +0530, Payal Kshirsagar wrote:
> Since usleep_range is built on top of hrtimers, the
> wakeup will be very precise (ish), thus a simple
> usleep function would likely introduce a large number
> of undesired interrupts.
> Thus udelay replaced with usleep_range.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/speakup/speakup_decpc.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
> index 798c42d..10ca19b 100644
> --- a/drivers/staging/speakup/speakup_decpc.c
> +++ b/drivers/staging/speakup/speakup_decpc.c
> @@ -251,7 +251,7 @@ static int dt_waitbit(int bit)
>  	while (--timeout > 0) {
>  		if ((dt_getstatus() & bit) == bit)
>  			return 1;
> -		udelay(50);
> +		usleep_range(50, 50 + 10);

I've said this in the past, only do this type of change if you can
actually test it, and know it will be ok.  For some stuff like this, it
_might_ be ok, but you just expanded the timeout range potentially a lot
longer than before, and do we know that is ok?

I sure do not :)

So just leave these things alone unless you know the hardware will keep
working properly.

thanks,

greg k-h

