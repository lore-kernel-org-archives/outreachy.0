X-GM-THRID: 6806430751874088960
X-Received: by 2002:a63:4e22:: with SMTP id c34mr22301280pgb.263.1584965366878;
        Mon, 23 Mar 2020 05:09:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:fb90:: with SMTP id cp16ls8717756pjb.3.canary-gmail;
 Mon, 23 Mar 2020 05:09:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuqWMkHnkw3ImeTjaRJUZoqMXvlaxCLCEY9+8R0Z86JZMUf8kD9i5Dg9EMqAewyDLpEhQQP
X-Received: by 2002:a17:90a:bb92:: with SMTP id v18mr25540745pjr.54.1584965365345;
        Mon, 23 Mar 2020 05:09:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584965365; cv=none;
        d=google.com; s=arc-20160816;
        b=VKyswnJNrV8CgXZz2eQEpgOM+P+c00KroygPx1yYP8jhbWrb84YANeEemceM63cGqa
         GGtAOydkbiKKsOfMNUwDbcqxzY2n5gtkCQtGCrRfo1jyIokXo2i+VXDeQq0VsLxmiuMn
         wYpoKtZQk2lpfwDqADcG3xFipf202nzrI6HJIC77plaRWMO8uVqVwOaG1Yb1Gjc/D49R
         7U67UyW6Bss4dYIOWS7zdIQneSp8chaGjG89yyi9m6NcrJH3Ay01jGVfMvQXj8vIzNph
         XVqdngaCHauGufhW72lfKNtwcusAbKwmFIh8wDwLBswOYQ9JF/CJSheFOjjHQfaGmR56
         G8VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jcIXRmUbMRg8ujR4Tc4PD0SaIHgu1vXVSgjJqXPr2LI=;
        b=CBX32vVjq8FMhIn0Iic9jYTEu161gzq4usrUq4eF9HSqs28i3BiszcKcDxQ/xzIjZz
         qv9vkRw+MjGqvlv6rPO3Rhwks5KEoXY705WCfDwutUKKEwh0mtsijDZtZctpoir1iY0h
         Oev5ezClX4sy0cFrAyV3UPNedYrjxmXpDnmAgkHjnhbjlrmXK+M7JuCEOvlqcGKkH7H3
         3a6IWgB9b0aAP/jHfynrSYbIpyEm5hJqbUQDGvMnNcGS2y9CEcTds6pPUwDpQFntfe03
         Lbl9slbVlHs+JF2RcE4dJ0xBnqJ3mmLqFmIqA+yQ2S1BZiriELIAuMzZH6rvKJb5w2MJ
         vHNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ygCdlI2F;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y1si309897pjv.2.2020.03.23.05.09.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 05:09:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ygCdlI2F;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9C192208C3;
	Mon, 23 Mar 2020 12:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584965365;
	bh=bDHBJPAFIiUwZMPegtTlb2KJ1J8jpzG4Mb32YxVXMek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ygCdlI2FM7+yv1zga6zFjKBm57MMxWGY3xw4dRjhFn3B52uZNEhZKnW9CwVol/cVM
	 7GNAjfdV/iP5jzLQkCy3PH/IA+DTaltVGH934XzuX0jIY+OknSu1UPxI7VrHSPR7KS
	 liNX3v9QQrv/RFiAFsqXM6g+bIlhmBlQ/ANq+kAE=
Date: Mon, 23 Mar 2020 13:09:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-dma: quoted string
 split across lines
Message-ID: <20200323120922.GA780534@kroah.com>
References: <20200320233056.GA9027@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200320233056.GA9027@siyah2>

On Sat, Mar 21, 2020 at 02:30:56AM +0300, Gokce Kuler wrote:
> quoted string merge to upper line
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index e619d75a..47f7784 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -241,8 +241,7 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
>  		tx_desc = &chan->tx_ring[i];
>  		rx_desc = &chan->rx_ring[i];
>  
> -		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, "
> -				"tx addr1: %08x, rx addr0 %08x, flags %08x\n",
> +		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, tx addr1: %08x, rx addr0 %08x, flags %08x\n",
>  				i, tx_desc->addr0, tx_desc->flags,
>  				tx_desc->addr1, rx_desc->addr0, rx_desc->flags);
>  	}
> -- 
> 2.7.4

You sent 2 patches with the same exact subject line, yet they did
different things, which isn't ok. :(

Please fix up both and resend.

thanks,

greg k-h

