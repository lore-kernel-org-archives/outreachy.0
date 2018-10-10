X-GM-THRID: 6610740007472726016
X-Received: by 2002:aca:5514:: with SMTP id j20-v6mr26683471oib.44.1539196411991;
        Wed, 10 Oct 2018 11:33:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:540c:: with SMTP id j12ls1130418oth.10.gmail; Wed, 10
 Oct 2018 11:33:31 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60U92JHhtnYPONybJun/ACurehdcdeOU6447fJo1moDrZziQTRdbBZN6tf4saBFM5AybtBj
X-Received: by 2002:a9d:55c6:: with SMTP id z6mr25757771oti.71.1539196411082;
        Wed, 10 Oct 2018 11:33:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539196411; cv=none;
        d=google.com; s=arc-20160816;
        b=lQCLsGvYc/lMIV9i+w1q8rydI4Uco4HiElriw68ABrWf5r9xqwZvV2D8Y3DfgESTG5
         gxcKwj12ekd5drx1kfi2rd1k8hl7YIYi1Jh53Ck4CVunZglnMjoZ0Mi5OjtrwWsVkWZj
         C9vspIAD7X35XS6I6UN5G1ergUHQSOBsn9G2kNWj9ReUsvJlKwCTSdUfuLL0V8gcppQk
         zoO5EqtcccR/PuehfmL60rqPR8WLKjNPF2JzJChPdzwbfAcNHHgswnnd2rs/XrP3FSID
         8kG6d2tsc0tfVO0ziVLcXpuxRLWrq9U5Ztvy7k4xYqO059Tk1LVrEhUJQcsLEJZyumrS
         2rKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Sgw+Cgy0wBTvW3Y9NzBXtjbT8ELXvQpC7pgIi0z02Qc=;
        b=JnkAkghNJQuOTirXYXyK9XSMup+zpPUv54tBUL9dr295rwJf2Ama2kLEX3LAyONTL6
         xIOmWaUVsW+EYj1CJLuDZiJYUZYJ4jQD8KuGEtixV+MujHdsnSjV//+yfcmmh5yn8gRL
         SDt4Cwqr7HHQ+xogp7xLQ03rWuwJ1pPChq0I+YxciJe1ysT7z6GuYEmUqhGdq8ztN6p6
         +le65nfy3X734Y2MWKqLTJk11lCihrNM+7hM4DYvFY4RxngYvPOueXfo8cBRNEJQ+ARR
         wnXNea1f4Vd0oF7gYz3UQvBwvYFyPKFzXsNJdnh24ElWegmQAOI1BBR67YKFRCLgdBjb
         8FIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="H5E/SFfB";
       spf=pass (google.com: domain of srs0=ahpx=mw=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AHPx=MW=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AHPx=MW=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v207-v6si1334583oia.3.2018.10.10.11.33.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 11:33:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ahpx=mw=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="H5E/SFfB";
       spf=pass (google.com: domain of srs0=ahpx=mw=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AHPx=MW=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 259182075B;
	Wed, 10 Oct 2018 18:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1539196410;
	bh=daPU6Apwq7vhcg5LCn5rXzTFFitlFEhMdeWMDmRrR1g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H5E/SFfBnQnHBaVNrfe0tfzNqix6sgbOtpGi+tKfJtVDP7gWSWw5oWUDk2ZXeTGv6
	 SBQ8E58VW/P0L9APs4GaMpeb6eJzCGlqLm10V+K2mAkNtWsrbtfcnH7Q34d0/idg/3
	 IkUa49116/J6wXxu6EYxTgmjY4lEq+hJ++R2qsfY=
Date: Wed, 10 Oct 2018 20:33:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Subject: Re: [PATCH 1/3] staging: wilc1000: replace udelay with usleep_range
Message-ID: <20181010183322.GB24096@kroah.com>
References: <cover.1539182155.git.code@wizofe.uk>
 <6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Oct 10, 2018 at 03:47:20PM +0100, Ioannis Valasakis wrote:
> Fix warning and replace a udelay inside a non-atomic context and
> it can be safely replace by a usleep_range(t, t + delta), where delta is
> 20% of t, as that is between 10 and 20 microseconds.
> Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index 8b184aa30d25..661c594b0a3c 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -436,7 +436,7 @@ void chip_wakeup(struct wilc *wilc)
>  		} while (wilc_get_chipid(wilc, true) == 0);
>  	} else if ((wilc->io_type & 0x1) == HIF_SDIO) {
>  		wilc->hif_func->hif_write_reg(wilc, 0xfa, 1);
> -		udelay(200);
> +		usleep_range(200, 210);

Unless you have the hardware for this device, and have tested it, I
can't take this patch, sorry.  The 20% number is totally randomly
picked, which isn't ok.

The _range stuff is primarily for when scheduling timers that are called
a lot, which is not the case here.

thanks,

greg k-h

