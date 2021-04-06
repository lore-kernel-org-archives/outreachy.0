X-GM-THRID: 6948024355480666112
X-Received: by 2002:a17:902:c1d5:b029:e6:52e0:6bdd with SMTP id c21-20020a170902c1d5b02900e652e06bddmr28678887plc.49.1617715632663;
        Tue, 06 Apr 2021 06:27:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:903:31cc:: with SMTP id v12ls9376841ple.9.gmail; Tue, 06
 Apr 2021 06:27:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzOI+D/eGnembZd2swlIWuc56RztHMhDaASJCpu0jOyx7gDZip9caegulQYoyk0XYPgRRW9
X-Received: by 2002:a17:902:dac4:b029:e6:b39f:7ee2 with SMTP id q4-20020a170902dac4b02900e6b39f7ee2mr29038878plx.85.1617715631630;
        Tue, 06 Apr 2021 06:27:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617715631; cv=none;
        d=google.com; s=arc-20160816;
        b=jAM8vDHKPCSGhlGBLXSCcp71Ij7lO558WdvfiNqA27fz8FH8A71SizUFnT2d/iBc0Q
         lqOBz2n8f2G5Ueu40W8UlNUAuWtC8RLXG/La7+2On+zfbwnEc+UYFyeWvdFcDa8GJWC4
         ehJydHQv7sPAd9d2KhVxnk1YPQXDObv/8jizbq7YeUAEdC9ptfLnqwKeBt7sgaax/qP0
         LIhfHJlUGDLYdI9X+Os65NvmRaXIhJpl+BFZTk2m/PF7szyT1YOxgEhl5ptmDQ2GyhLU
         rKDGSAU9T5TSZiPJX8RkDo0JJfFarBrZRuiDuXIiUHeXQ1u4+txBKzhzzLYH4V9FYunm
         utSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eZqMQqQz99yBH8A2AOzi3AYf3XJR1aWefVfVpHOeZns=;
        b=nmFECh9JMX3poEr4xww5jvSIAM9TmMCZhAZrhY+F6kwYQrgMaRGXnN0ptj+1/LgAgu
         csSfp6hASOh8GSg+pTEFg+x49JOIjKwzdCnj+W6z/ijhReabZqipwYyzBFAPlJaNWTrz
         i1d9AY2lpwwe6SSNAUIRGDxDxsS/XTaAK46PeiV1LS3tKiMKlnnej088CCYGsAJcGJzC
         bQYU8WkH1Nl6fZ47yuuS7HT/DIoivhUYO1ShWhiUtMATlB4FSnZoYMKSfPFgT32OvGlf
         x26cehMAyKzJ2liWGdpacRxpMkYOSrw9FCXNumxPaNzH16YoXugoZzS+MADpo37nxlR9
         Nq7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=BeHOw+5i;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q19si1409253pfk.5.2021.04.06.06.27.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 06:27:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=BeHOw+5i;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id C38E1613B8;
	Tue,  6 Apr 2021 13:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617715631;
	bh=ERIs1PjdZ/cIW7cJ6sgd5HHiOD7kYmFgFIqyjegciDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BeHOw+5imr42Mr7A1F1IAPLNlzoJaHsfiUSIdV4qBVCr4HEfwYPlUTxElZPwoh7H1
	 xOg8aOO8eILR+pZrXLP01u/nJWowJzIKjfwSU/cgte6qUJqScS7Lx/8L4x8lMBpZJG
	 wj7ycXtK97NOKfKiD9cPeq4gM/jLwSDskSt+G9SI=
Date: Tue, 6 Apr 2021 15:27:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
Cc: johan@kernel.org, elder@kernel.org, greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: greybus: Match parentheses alignment
Message-ID: <YGxhrLZPIPjILWUH@kroah.com>
References: <20210406124259.GA96537@zhans>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210406124259.GA96537@zhans>

On Tue, Apr 06, 2021 at 06:42:59PM +0600, Zhansaya Bagdauletkyzy wrote:
> Match next line with open parentheses by adding tabs/spaces
> to conform with Linux kernel coding style.
> Reported by checkpatch.
> 
> Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
> ---
>  drivers/staging/greybus/camera.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index cdbb42cd413b..5dca585694c0 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -220,7 +220,7 @@ static int gb_camera_operation_sync_flags(struct gb_connection *connection,
>  }
>  
>  static int gb_camera_get_max_pkt_size(struct gb_camera *gcam,
> -		struct gb_camera_configure_streams_response *resp)
> +				      struct gb_camera_configure_streams_response *resp)
>  {
>  	unsigned int max_pkt_size = 0;
>  	unsigned int i;
> @@ -378,8 +378,8 @@ struct ap_csi_config_request {
>  #define GB_CAMERA_CSI_CLK_FREQ_MARGIN		150000000U
>  
>  static int gb_camera_setup_data_connection(struct gb_camera *gcam,
> -		struct gb_camera_configure_streams_response *resp,
> -		struct gb_camera_csi_params *csi_params)
> +					   struct gb_camera_configure_streams_response *resp,
> +					   struct gb_camera_csi_params *csi_params)

And now you violate another coding style requirement, which means
someone will send another patch to fix that up and around and around it
goes...

Sorry, not going to take this.

greg k-h

