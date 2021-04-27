X-GM-THRID: 6955860329873014784
X-Received: by 2002:a17:90b:3593:: with SMTP id mm19mr10012630pjb.146.1619538748812;
        Tue, 27 Apr 2021 08:52:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:f48e:: with SMTP id bx14ls3379684pjb.2.gmail; Tue,
 27 Apr 2021 08:52:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxKQJNqSWvmfBLbbBmDz4fEIOtv+fEK3QxDeNbtfriMsfDwErN94kRrG0XwyXAmVdOPkas7
X-Received: by 2002:a17:903:18e:b029:ec:7e58:fbe1 with SMTP id z14-20020a170903018eb02900ec7e58fbe1mr24803910plg.70.1619538747558;
        Tue, 27 Apr 2021 08:52:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619538747; cv=none;
        d=google.com; s=arc-20160816;
        b=LQXgfiV69P8gdIlytFjUrqgS4Yffqfdfc7Ehdc4JXxJESUyBJteQPAwyHHSKrG4Gx6
         B7sGZEfHNAdo6kNntY9YibUwmKiOq7BFIVI0GAWrznRtHHbp11vYtDJkQjctUC2gzS9W
         VwU0QzfmUwAu3ZkWC6CYz4D535wLln8OdYeDHRtENKzfIKm5yUcBzwHqFCVY+QYPBvek
         7LG4yC1pR8BbnrCxLpV42idKlu3+1bCKdQW92vBwyTBytj9sdiT/8iaApGTYL5+rkxNV
         h6I1fh/i5OrN4GFTSFWcbo8XOv0ucOabw0m+GWBucuyAof5KcDFYh0KizfuUkIL++p7P
         YnMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=saECcjS0Y05/ALGA9g7syeTqCR9W013rzdvrcxYTPAA=;
        b=aPp5iNNn3Eck5/07ge4ntm6GzKdxRoz1nUl71wWjrKWVP/QYUUbjKGawdtHDngVcL2
         vIRdIeVWghUosrIAJIbFH96EU93RfaDoycCwDK/z4i+M/OThvjOop34Gc1PtTYWM5k3D
         PdzY9/fFskcs/Iw9XimAv5bDer4heAoPej6lesTOeplLZLCfE7zCf3Rx5l7gH/osGvo8
         raWBSXI4ZyEsWgydXI8EarCWUP60wsnReKraBYhnyEC7WAHoarwDEHJb1RYER2hX+14Z
         6iOe/nKexMqHvHw9FrI1ztufRnErztuDtuG8H55w3F4ICWF+I6scHtPcvopZPv2CEmvt
         lr/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="bhGkNE/S";
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <johan@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s20si1751386pfw.6.2021.04.27.08.52.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 08:52:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="bhGkNE/S";
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B21C613E5;
	Tue, 27 Apr 2021 15:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1619538747;
	bh=p/84e+XzSMy35NKCCaDRwV3INL/eIHFKbGdp59o+x+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bhGkNE/SGJ/JNS466DWTivmyD+I91+teclVV/py0243AEAOWSYrbx1Fsmu3ru8Frz
	 GY5iy3/vICh082k1f0Brg9eVJi8QuOBGhrVBgPShQJRAQ+si3TpLqHIOZODmVDEKFr
	 4v4ZnudjgTrarvPfzNoc/t8bA2XxK+5aPk9b31W9wdXBMo9p6y2P9f7p6lsA1TKP6o
	 At4VER4k1BgW7SvvoKupZoyKVqGoV6+BkiXjvFSdrUpi2pPxZkxVzOapsXYO0jFPig
	 wpYEELyoT6N3hByaJyYpL5kPDFHr0nQws0+to3hWFU4pY9A0RpAp+5tKJppP4rfC29
	 5Af7Ih6QxydYg==
Received: from johan by xi.lan with local (Exim 4.93.0.4)
	(envelope-from <johan@kernel.org>)
	id 1lbQ0v-00037G-Ay; Tue, 27 Apr 2021 17:52:41 +0200
Date: Tue, 27 Apr 2021 17:52:41 +0200
From: Johan Hovold <johan@kernel.org>
To: tawahpeggy <tawahpeggy98@gmail.com>
Cc: Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging:greybus: Add () around gcam macro.
Message-ID: <YIgzSRmi41e8PjHH@hovoldconsulting.com>
References: <20210427153024.GA14574@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210427153024.GA14574@peggy-Lenovo-V130-15IKB>

On Tue, Apr 27, 2021 at 11:30:28AM -0400, tawahpeggy wrote:
> checkpatch.pl suggested parenthesis be added aroung gcam macro variable.
> 
> Signed-off-by: tawahpeggy <tawahpeggy98@gmail.com>
> 
> ---
>  drivers/staging/greybus/camera.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index cdbb42cd413b..324a26430f71 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -182,7 +182,7 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
>  
>  #define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
>  #define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
> -#define gcam_err(gcam, format...)	dev_err(&gcam->bundle->dev, format)
> +#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)

I'm pretty sure this is not what checkpatch suggested. You could add
parenthesis around gcam in the &gcam->bundle bit though.

Also doesn't make sense to change only one of the macros.

>  static int gb_camera_operation_sync_flags(struct gb_connection *connection,
>  					  int type, unsigned int flags,

Johan

