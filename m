X-GM-THRID: 6806841558557523968
X-Received: by 2002:a05:6102:146:: with SMTP id a6mr4530637vsr.237.1584876300350;
        Sun, 22 Mar 2020 04:25:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:5589:: with SMTP id v9ls830756uaa.11.gmail; Sun, 22 Mar
 2020 04:24:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuMznKke5KNkKAbGu80xaW37Ll8EUTLZ3pgljw6gwLbiN9mdwq198Zpvaf/KPOpphbFXNOw
X-Received: by 2002:ab0:20ad:: with SMTP id y13mr12252472ual.46.1584876299213;
        Sun, 22 Mar 2020 04:24:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584876299; cv=none;
        d=google.com; s=arc-20160816;
        b=npKQldOGS30pc4Zxb6X+S1yD+QCqkv7waKKW9d+QPOBr1GmFkUOge5FqLoCym+da6U
         lA9I6eiFz3OPQWlmpLKfqTf2/L4CbXdYcuEAoiDvFUUmMPEHQHtd6r7ujN+vTepGkB8k
         WBu9zxPK83xsnqN74ero6Nu5vxxY/DwOkigA8Fq5MKaLYun/smZekkVkzbwuG3EBSoiF
         Atd8j/7Gt3b1a72ju+uyEWkhQASBR/c9wx1+GeeRwCtPJ0bB+XhRegXMzlt2D6bvA0dV
         W+dEFJ0uqMTDlQdyhcZKLctvzauJthshXQ/48xktgKt4DWNsaJFaFtgDf9QxpMzjF6Ne
         Q7eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FPEKEfAnbGKqKbJf+JEEw2zHsRGiS9WLca7NFOGNo/4=;
        b=HMlwr5BGGydC8QKMicn5SkNWrdCsRLYx4kmpqjV/QbK2j+taqtrNXxDIXhLSSUGD/7
         OeMg2CepXPligRcbS0zZ2ZYQ92hslS3Bcf2Vu+Z8JKvjzS2YqVR7tcLmNERKR3vpBq81
         bfmO2v6B9QySQ+vftjJ5Bum5r/CJgxoHrl/HWrTMyBpklvE+nWgWGPecnbK1Gb1n5v0d
         eTpUtumFiQyDbBcLCdeuE0DTDNSkbV3rnt1Ypa/PyJAfjmOKSANU4okl6RcYu65Qljnb
         dy2kvgACkgJsjuSrbH0ZEC39wLS7IG7/Uf5x/Zwf0xd5dwLJpGCHmZNSNqALrvlWQEKQ
         XYTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xYacDwdb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s124si760792vka.1.2020.03.22.04.24.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 04:24:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xYacDwdb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5DA1420714;
	Sun, 22 Mar 2020 11:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584876297;
	bh=8J0eK2ZMY6fgqQRYsnAfaCKUAEk8jtd9oY2Km7Yn7Eg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xYacDwdbfIr/Mqk9QAIIFM7oRfLKpqTmjFBlW+u1fSAqx5B+7RR6oQr1c/MmXzp5n
	 t85mQvWPoQ3h/ExC8vFhAJzMxwKXlLakHNFBaT+sAuMkZicHDRObTGPC9d90ISQDoc
	 RECxDTkXs0IJOaq9uk/f07IDd1PwHS2XbiHYXWIw=
Date: Sun, 22 Mar 2020 12:24:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: line over 80
 characters
Message-ID: <20200322112453.GA75383@kroah.com>
References: <20200322014137.GA6031@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200322014137.GA6031@siyah2>

On Sun, Mar 22, 2020 at 04:41:37AM +0300, Gokce Kuler wrote:
> Moved to the bottom line after == operator for it exceeds 80 character
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 1b957aa..43607fb 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -549,7 +549,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>  #endif
>  			local_mode = 3;
>  		} else if (chip == HP100_CHIPID_LASSEN &&
> -			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) == (HP100_BM_WRITE | HP100_BM_READ)) {
> +			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) ==
> +			   (HP100_BM_WRITE | HP100_BM_READ)) {

Needs to be indented one more space, right?

