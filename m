X-GM-THRID: 6673772779804819456
X-Received: by 2002:a24:4e89:: with SMTP id r131mr1880480ita.4.1553876574314;
        Fri, 29 Mar 2019 09:22:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:3553:: with SMTP id k80ls831499ita.4.gmail; Fri, 29 Mar
 2019 09:22:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwPT9gWtiax0E64+7Q53CJmCJ8gtG6ybyor9yrKtfh6aIWlP6Z8O82nsy10LUDt/HwdchFa
X-Received: by 2002:a24:9383:: with SMTP id y125mr1999183itd.1.1553876573116;
        Fri, 29 Mar 2019 09:22:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553876573; cv=none;
        d=google.com; s=arc-20160816;
        b=Lj+JRZ1dPrCOvoEAz/aVXH4UBvLLawe18AaPw+tyfgrf5k/FSwlML8/SPXm4zx7gmV
         jTQA6bfsLOZC+w2XJr5XaJrZFGlVQgCtyN/gHs/S1TZ+zWmVU1WXRHcZFRL21vGaG1oz
         MX+Hgl2Bl36uFoTJkMAJVHEJXNf50WiedVugoMaEb3v0P3pUwnkVeUhtv6rDUXoZrOIE
         rwWY5omtkM0YHve1dhezC1w6jXbJcJ30gipyn4uQRM1eQB3lDOV9J5IbUA/xxiKL2lTI
         CPzkla6uh+RDjCIAdS6IsXkR0jAjZMGUAjPIOPaPfJO3pwawgetEqJ1Fydo2HwA1JRR0
         ehFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=s7wucGbtj5AHAfL/mwEFGkNQ38YgZG4af1DddZe9kEA=;
        b=0DZvzIDJm8O2at1uWreraLA/LYfGoTiWU3W2kqKP/lU54wsJ7Lm2cJpK6YHLtUe/z0
         tSdlac1+NovYaQagClDhylldr3YeRO0EwWiplDQZpV4p5Tn9pbv/xPNN3xymqGlFspyT
         gDwfd5ydPLMqs1+KfqUc6/I0MNqWOdeDtGxp3mZV+GU9x3JlDy7flrAbFSovzZBQRiWJ
         6u3xOcySZ0pcWVMLXmpabSONkjN9jECWmGd5T3cW5m0wOiTC81f308nVtpFJ16OBT+PD
         dMpa50nkGqnkcaFTRxar6KXxAfTc722q+8c+dPTHjjjaR7Lfw8Aw8859yood3vEgy9XF
         mKHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=xmiktEiG;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=3NL9zuT5;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id g127si668873ita.3.2019.03.29.09.22.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:22:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=xmiktEiG;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=3NL9zuT5;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 7038721B84;
	Fri, 29 Mar 2019 12:22:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 29 Mar 2019 12:22:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=s7wucGbtj5AHAfL/mwEFGkNQ38Y
	gZG4af1DddZe9kEA=; b=xmiktEiGK+47+BZ98YB/PRlPyw4mXihh4tO1rJGwOo6
	jsoU2dX8tkKjzDorj5ONjFYG9Uzv4MH7Xk7OSQQzrFL2yy55F+bjv8vny1xvBTY9
	n9O3rU9ikyPPu91cKSiBN1vRroyHKl1rwFw/ZxNWPW5bWsfu/Q3pkCdjE3ZsLiq6
	bMr+nQi+o8J29FUQGuohw6jVbKAHtRHSbkL+4m5KVqqllMjJuHOuFPVxtXvaSmMS
	4Ai8GbTonXxLVrMMAfDUuUKZFaFklasWS+AAsMph8xUtrEYSjswYj9XGzuyriTUP
	AJ0orOm/G163nMeleaUMfnUFAEB3MK8LI9FH8RffbHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=s7wucG
	btj5AHAfL/mwEFGkNQ38YgZG4af1DddZe9kEA=; b=3NL9zuT5BtXPM+zcm3cFjj
	bYvaIkuDKFK8mauqjLMShlWTyrMc/lRGeMIz+/0OUY4GbD/HCGDQExWjyBJM56WP
	HXPz216SHvBw7kNmRRQhupeiQVdQtXAnEuVZy+boaUsC1ZcZhxkUvfUXSl1PHbUl
	tYgZWgkf3qFDVmwA+xbvFLkHI1TyONBVliXxfdDlPPzRuHJzOQFEUgH2PBOYL8yk
	lDio/CFOBPrrfYACCo5OFLDxhJJJpOibapyuQIHsYLY/xkYxp1GhaKYeXBPpgnwV
	iGq86+/ci9spFA9LTUEc9InO4VTqu+YqGVUHvrt9HL2tdLN+I5yFE64YxmgoRwdw
	==
X-ME-Sender: <xms:XEaeXKQ_luh2jdcqfkPjrF0Y93zQwqHvQqbvq5a4o2Iy2VYUTRBx2A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrkeejgdeiudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
    ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
    lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:XEaeXOSu3MeU68M7felha3gIHB3HKohXX0dLPRV9RJ4XQsuwp8-F_w>
    <xmx:XEaeXOpqQ8aDmO-_gyFOFP2fl2GzTI7v5-JgDA2N78fj6XxiWHZcOA>
    <xmx:XEaeXGAN4UnWhvBAu0hbeCDL33nbisVUfFatY2ki_-0z0LIteD4CKw>
    <xmx:XEaeXCwVvr_HGhP1XEbhtxMPyVnHaTlqJB9rLKlevD57nbOJOD69YA>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id BC1A610392;
	Fri, 29 Mar 2019 12:22:51 -0400 (EDT)
Date: Fri, 29 Mar 2019 17:22:50 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: fbtft: line over 80
 characters
Message-ID: <20190329162250.GA27406@kroah.com>
References: <1553858792-4632-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553858792-4632-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 04:56:32PM +0530, Payal Kshirsagar wrote:
> Fix style issue - line over 80 characters.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/fbtft/fb_ssd1331.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
> index 9f54fe2..4cfe9f8 100644
> --- a/drivers/staging/fbtft/fb_ssd1331.c
> +++ b/drivers/staging/fbtft/fb_ssd1331.c
> @@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
>  		for (i = 0; i < len; i++)
>  			buf[i] = (u8)va_arg(args, unsigned int);
>  		va_end(args);
> -		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device, u8, buf, len, "%s: ", __func__);
> +		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device,
> +				  u8, buf, len, "%s: ", __func__);
>  	}
>  
>  	va_start(args, len);

This patch does not apply to my tree because someone else did it long
ago.  Be sure you are always working off of the correct development tree
so you do not duplicate work already done.

thanks,

greg k-h

