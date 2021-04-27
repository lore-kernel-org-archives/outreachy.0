X-GM-THRID: 6955860329873014784
X-Received: by 2002:a17:902:d64f:b029:e7:1f02:5741 with SMTP id y15-20020a170902d64fb02900e71f025741mr25245566plh.48.1619546922034;
        Tue, 27 Apr 2021 11:08:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:da81:: with SMTP id j1ls1444975plx.2.gmail; Tue, 27
 Apr 2021 11:08:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJznfjdHayc/2MxHn01l7N+gBfxkNU5W3RdM7jUg1PgGaIgpWVog3fzUR0oAoeF+I871QtvM
X-Received: by 2002:a17:902:854c:b029:ec:f7a9:9feb with SMTP id d12-20020a170902854cb02900ecf7a99febmr18886483plo.59.1619546920805;
        Tue, 27 Apr 2021 11:08:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619546920; cv=none;
        d=google.com; s=arc-20160816;
        b=Bzt1aZNR2da2F6pf1IG+SU+weC7SKRM1pB70E+Myl5soq4v480+iRbuGZ/QIScWydW
         z79SsS64hDyZW+Y1CGpErj8ZkrkYcs6RKLHg4FUcwswGMIb2zqrPSGXHmuTZRrc3R1Bt
         /o2qcY/1xAGUwGq9ugFWyp8l0IGK0DrNxacuZXyO1ssYjhKo+dcc9EmI0jwSKXb8i30O
         jFlpjj86Db4QXLTFvwmtMS1pdEicrcQUgZKjM51ZA2N+PF92PaPehUcj39XCDk+9BqOT
         ftim1/ChEaxijQ9Q3ZV6faWCft2MoB5UIlM62lHU4+0DePze6QDh5glHfF2gQnEyMtDh
         7zGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fw74KQc6g6PNnMIZOENPZzLX8KFH6kTroqj2DoVJAeo=;
        b=ndyBJ1zSzwJcaswLMsp9fIu58KGApUk68ByGSJ5cyYz+d5tLgb6Rvrn92swlS0mhV0
         phjgrfXB6cWNpPx5uyPdpIim9s+S741b4kSwlXMTOcN7NhyuIOZJTOCKsLwv9yyzGuji
         UPWuVVv47tOIBRikaBWQCXyE++ZP59eHKOwdrLfYXpvjUIuwCGCcHxCmCbyvAhU0u4X3
         WFNhBi9xbor2I2rs+DqTzQrQIG9AY9CcjQzVOTL7t8nxFLaSSyHMNWjJfyOeeKcipwR7
         cvEVdLjIHDT2+CKxDQvKmbaEBYhkRh5LbianYlvRQFYjKpN2NK42+aoH/hx0FavL+Xt0
         uacg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=K7BVpFGy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q16si1405358plx.3.2021.04.27.11.08.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 11:08:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=K7BVpFGy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id E8E3660BBB;
	Tue, 27 Apr 2021 18:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1619546920;
	bh=00QgD553CCYpWV/DkBrayE9F6wFC8pw8q9U2wlrV2us=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K7BVpFGyMdkLE9K3L0DWA3AomUHsd3KUEjDvIANlac72Z0NEqaHzh0XFS1fs7cJm7
	 XzLpu+6oBCFYAoMIAYsVQc03YAgy5Era5Huy9/hJCbJ4dEyqJDatcCDr1TgFfPZrVq
	 AJTtK9fTBXw8LeGeA8wJg82qIS4/ESb9S7phS2UA=
Date: Tue, 27 Apr 2021 20:08:38 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tawah Peggy <tawahpeggy98@gmail.com>
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: greybus: Add () around gcam macro.
Message-ID: <YIhTJkPeSObYqdHE@kroah.com>
References: <20210427175922.GA24978@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210427175922.GA24978@peggy-Lenovo-V130-15IKB>

On Tue, Apr 27, 2021 at 01:59:27PM -0400, Tawah Peggy wrote:
> checkpatch.pl suggest addition of parenthesis around the gcam macro.
> 
> Signed-off-by: Tawah Peggy <tawahpeggy98@gmail.com>
> 
> ---
>  drivers/staging/greybus/camera.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index 324a26430f71..ae49e37a87e9 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
>  
>  #define GB_CAMERA_MAX_SETTINGS_SIZE	8192
>  
> -#define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
> -#define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
> -#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)
> +#define gcam_dbg(gcam, format...)	dev_dbg(&(gcam)->bundle->dev, format)
> +#define gcam_info(gcam, format...)	dev_info(&(gcam)->bundle->dev, format)
> +#define gcam_err(gcam, format...)	dev_err(&(gcam)->bundle->dev, format)

This change makes no sense at all.  Please look at what this is doing
and consider if it is actually a valid thing to do.

checkpatch is a perl script, and isn't always right...

thanks,

greg k-h

