X-GM-THRID: 6885722277770428416
X-Received: by 2002:a05:620a:c0f:: with SMTP id l15mr3202494qki.494.1603207149940;
        Tue, 20 Oct 2020 08:19:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:f97:: with SMTP id b23ls1072043qkn.11.gmail; Tue,
 20 Oct 2020 08:19:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxx0PTXnlLtCEkIPKnbpQNddhxKsr5ItpDnVOwruw5BIxyuOJB2u8gYz10EoDmplzk9RlJQ
X-Received: by 2002:a37:79c6:: with SMTP id u189mr3303636qkc.74.1603207148258;
        Tue, 20 Oct 2020 08:19:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603207148; cv=none;
        d=google.com; s=arc-20160816;
        b=OAE6mhzxwtoyt5YkU9/QvdA1StQ4TBiKJ57JtxzTuvdoBV/05TBo9vveMcy4g+1W1q
         2r83t3IHUA82MH9VKi4dKgYnd2ckZThQttHIZnjql8DCQcvDLer2YnSzxgYvvxdWbCkm
         qDH2N5hBUp8QRZBczr3oMETMKWvEIkTHiBMmVGu5cgdUr0My2pBahaq9uHQ7cHbPgMI/
         5VVY08tSxPFMoL4c7L9sYVj5i2v1/bw4X/GoeuDJRvQVrfj3pgxXI4SxqgnnMPmCRi71
         3is+1lHl/G3sZAmOdDCviMHBXpQMaPUyaqwZzeKaxu975HnqYOLeX6QaTPtEmd/VLx7E
         ZtLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=59uHFL+mm9tZe83EP7lMgYLFn2dX7j0lyuMPy8ZyAxo=;
        b=pVBqJYdxogc8w5XquZVOxI+/GbxBkdXvQUnxQPQHh3+kJoa8fP3MaPDhTdOrPcLtry
         69BiMrh8XCY9OzXkNS2dURN601EYcujxO2skVY9BnLlhmi4CElmFdN+xoVl+z1ItP6Rn
         U4tpKvelOWXnprssDvhEPruj7zPssNOfun5JRsVPfusenCBK9p+iCFSiTSNM46FhVZky
         J+oKrwnTxmJLj2PpvkRI0R96t+Tr8PoetXeMEXfmTsiRft6Z1nYcQvBS0sfhJFSF/UcL
         um+m49Jncx4JvQ2vQZJRzLgWUuaBqHveQfQSoZX+GlIbGji+8NFUcLBimybb+fPLacdI
         TIhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x9Xw3QQs;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l15si140452qtb.0.2020.10.20.08.19.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 08:19:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x9Xw3QQs;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7A87320757;
	Tue, 20 Oct 2020 15:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603207147;
	bh=VrXgey1iP8/TPkJntOZW6GK2ussCxQ3E8Co6wldPBdE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=x9Xw3QQs3u9pmRugTxWenzkIZAqq0EAlC5uFPyenPILssvJQa4WEBTGZuD+wWU1yr
	 rB5YPayaCkFOc4AuRbFsfTT2ppI2dI49vfK6U8RwJVGzzp+f/W5V3kES8wIDJeV8pt
	 caPQAWwevIWEdlsCntBVv/JgKhUnLm04A50xrKSY=
Date: Tue, 20 Oct 2020 17:19:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elena Afanasova <eafanasova@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging/rtl8192u/ieee80211: use __func__ macro
Message-ID: <20201020151949.GA852005@kroah.com>
References: <20201020150823.35734-1-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201020150823.35734-1-eafanasova@gmail.com>

On Tue, Oct 20, 2020 at 08:08:23AM -0700, Elena Afanasova wrote:
> Replace function names with __func__ macro.
> Remove unnecessary characters in error messages.
> Reported by checkpatch.pl.
> 
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/dot11d.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c b/drivers/staging/rtl8192u/ieee80211/dot11d.c
> index bc642076b96f..f972edcde8a0 100644
> --- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
> +++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
> @@ -15,7 +15,7 @@ void rtl8192u_dot11d_init(struct ieee80211_device *ieee)
>  	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
>  	RESET_CIE_WATCHDOG(ieee);
>  
> -	netdev_info(ieee->dev, "rtl8192u_dot11d_init()\n");
> +	netdev_info(ieee->dev, "%s\n", __func__);

This is a pure debugging line, and should just be removed.  Can you do
that as an add-on patch to this?

thanks,

greg k-h

