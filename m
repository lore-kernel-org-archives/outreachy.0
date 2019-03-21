X-GM-THRID: 6670748157895245824
X-Received: by 2002:a63:2141:: with SMTP id s1mr4794805pgm.430.1553194642879;
        Thu, 21 Mar 2019 11:57:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1281:: with SMTP id 1ls2651777pfs.4.gmail; Thu, 21 Mar
 2019 11:57:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwJVPYrKMIF7AtLpJ0KtPDjSDidTl7+zwDUllvTRkUYKtVzqYMDUG3YJa+v8/u3jNWuxZRh
X-Received: by 2002:a63:c24d:: with SMTP id l13mr4883769pgg.166.1553194642116;
        Thu, 21 Mar 2019 11:57:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553194642; cv=none;
        d=google.com; s=arc-20160816;
        b=bqRhnAwFyMMw/o8N/LI8iZbAq2cFFshxfrnwfClf6hU99+SKAEjMlp+y0eaE+xT2Dk
         Uo3BLwnnpbntX7MmJclCBV9Ou/2u2fNXr+G2Qs5li07QJYclf5kPbypJy55M2hAi5Sg2
         pm90LLETkbD/f6oFaIj1npQSfV1gCNmcfQNWeA6x6baJ0gSdNrFTBUBTBBWdFZk/QrHQ
         XKWtIIF1VeqesjCJ6CAxKa8BjgJzRmCV3sFo30TCJoImhtCB9aDd0gKS4cplmn2EI+3g
         61RKeLwqBGIBUwUbVEzvoZ/sxXQUjSqLyh82uCaomybr4jUzUE3kPWRF1msFkTvq2uJi
         kdbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vSvdnF0Mfl9uNjAqwXSujsDxqtOv4FCOv3dEMwoc1yk=;
        b=SjeRt9d/nGBjXtptUw7mGJk0w6KOBdhtHpsMfdSuxSumKorlO+WsE0W9MFNsGi3oOJ
         uy82fesMOTQVfr2CcE93eqApoMN9p5Ll838d03UHn0ebVSdZJ5IjSjL0VIvGEzySaet9
         j+FrMABJMBvEdwoI0FlywzdXqym0rxeJi0tXsfh3UCcwTapxdShNrRIUu1omaGd/1AdO
         MKqWsVbeU78bhKWuKv64tXP81XKKLi42t0gpEnHJgWtBM4qWLD2ylXg6kUMXuzXWjoTz
         PjbrCmmhn4Smxs8Inih8PSoBNbfW7wVgkEEzOfujQ3qkt3YF/8CqNku+IdDvLu6G9Ee0
         ok/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SmDPDL7P;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p15si305777plr.4.2019.03.21.11.57.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:57:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SmDPDL7P;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5481520657;
	Thu, 21 Mar 2019 18:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553194641;
	bh=bg1mRYluiMkVv7vdQL0wLl9Brb8WeXAMzWpPS9ofk6c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SmDPDL7P/m86gNLIgXSievwJPFS8/wVo8U1uCIJ4XNQD31gP1JKZPKLsl0Oe02nE+
	 U99m5Vy6AEDyp+l2mBXyJ5tewNTOqYFXVXs6NFSBYQ3OGg+Ze52Zkv56BcqYNvq2mm
	 wR5k5oYwPFFTB+l8VCN5U1TkSXF9eAj/QAC7ZML8=
Date: Thu, 21 Mar 2019 19:57:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: outreachy-kernel@googlegroups.com, ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Subject: Re: [PATCH v2 3/3] staging: wilc1000: Remove return variables in
 wilc_spi.c
Message-ID: <20190321185719.GA6828@kroah.com>
References: <20190321074927.2865-1-nishka.dasgupta@yahoo.com>
 <20190321074927.2865-4-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321074927.2865-4-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 01:19:27PM +0530, Nishka Dasgupta wrote:
> Remove return variables in wilc_spi.c. Issue found with Coccinelle using
> ret.cocci.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index 4a1be9e60d74..66ac08c92927 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -934,9 +934,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  	int k = IRG_FLAGS_OFFSET + 5;
>  
>  	if (spi_priv->has_thrpt_enh) {
> -		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
> -					int_status);
> -		return ret;
> +		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
> +					 int_status);
>  	}
>  	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
>  	if (!ret) {
> @@ -982,9 +981,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
>  	u32 tbl_ctl;
>  
>  	if (spi_priv->has_thrpt_enh) {
> -		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
> -					 val);
> -		return ret;
> +		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE, 
> +					  val);

Always run your patches through checkpatch.pl so that you do not get
grumpy maintainers telling you to run your patches through checkpatch.pl
before sending them out :)

Please fix up...

greg k-h

