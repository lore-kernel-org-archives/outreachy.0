X-GM-THRID: 6753896393761357824
X-Received: by 2002:a62:1953:: with SMTP id 80mr19557974pfz.72.1572690776940;
        Sat, 02 Nov 2019 03:32:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:b90c:: with SMTP id p12ls2356528pjr.5.canary-gmail;
 Sat, 02 Nov 2019 03:32:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzGDOjHJ1DmpOvcy99muBz5wks8fP3S9De097XZayg68nDsNWTMgIrV9SMP97ykWhnW3yu
X-Received: by 2002:a17:90a:5898:: with SMTP id j24mr21841571pji.7.1572690776000;
        Sat, 02 Nov 2019 03:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572690775; cv=none;
        d=google.com; s=arc-20160816;
        b=FXS94PaeoEQlGz0YAp0fIeCGdXXvMvpl/hFAsok8YKTWwOchpwAmNMtX8XUis1ehIg
         ZFPzchXwQOn89FNknroIH++S3GfUylEIsZ3BHmx6gK+lw1RSWYILIi8i2iIF7gAt/CgC
         lEdpGofUjEjL5mX//DsoTSGmI436GBN6/qMmSK1szG6k6YwmDLpHk1Wkw/hc1PRrjJwl
         azWOilWHVXCfOwWw/pdZ80hz1xFRWxfzKrNHlW1LmjNwgnUHyP01nV8z3axyfo+vhjJ4
         mFCOeF5tfrm53kJ7HqKu2mX937KjZhLPsTz+HFP0VE6xx0cjXXUyZnFpYON1b2UxBABP
         ZZCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vuVgDm9/mA5n+Q4mGtr/Aro5hR1aCaRw/7TqqxVs+WU=;
        b=WDLxXM178AyEC+mXPDu1ufJjf5j5/P4lDlRFrVZzOIp5KL83y8F+CRIdhLkA9As+of
         NU8effz8eZ3vZ9cTF+ogvd6h2yPLU+HHoKPUUy9OxbkcFWtIVaDWaTeDcCudHtn3uw2u
         JjXUwuNgYeVx4s7LY2hBidIkB13UDu3Q/ld69LH8xMgOv3ccQWtyHfWYn3SPITVdY+8d
         BJ98FUIXYW6ggvSM3Mj8ozk38u0jpuLS7PgccpFBSU2IEJeQHSaEg+A9Pm432bPLKgFn
         zwgMnmANWKvv/zBOYqYVJvJtmES0ZEhGmRGj34ogP+MlR1+9yBZoifV0LHo2y5oqwr5X
         gMQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AFY7maUS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f17si610559pgk.3.2019.11.02.03.32.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 03:32:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AFY7maUS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3A1F120679;
	Sat,  2 Nov 2019 10:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572690775;
	bh=FPSvKR+3v0g4psJ7dzTLhywJPskVsvXieBU0vdfAb6E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AFY7maUSil/Eh6ph1r6hSherXlxLsrpeCg5pbLOwApG5TBK7vlUDgHQwVfVILksHk
	 YcVVi2B0loJR3p3H7EQwr4y45reU/fepn5KerU1FdAXE2eruZzS36eSOR26lLN9rDd
	 64K7iL4YP7dqFbdK6PBSvy5K51u9xxw6t2CiHukk=
Date: Sat, 2 Nov 2019 11:32:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net
Subject: Re: [PATCH v4 6/8] staging: vc04_services: Remove callback typedef
Message-ID: <20191102103253.GB135025@kroah.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>
 <4b819da2956430f84ca34d3065a5897804385542.1572652827.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4b819da2956430f84ca34d3065a5897804385542.1572652827.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Nov 01, 2019 at 05:04:18PM -0700, Jamal Shareef wrote:
> Removes callback typedefs. Issue found by checkpatch.
> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  .../interface/vchiq_arm/vchiq_core.h             |  6 ++----
>  .../vc04_services/interface/vchiq_arm/vchiq_if.h | 16 +++++++---------
>  2 files changed, 9 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> index d33d6bd96617..311c7578f02e 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> @@ -207,8 +207,6 @@ enum vchiq_bulk_dir {
>  	VCHIQ_BULK_RECEIVE
>  };
>  
> -typedef void (*VCHIQ_USERDATA_TERM_T)(void *userdata);
> -

The one place typedefs are allows in kernel code are to define functions
like this.

This should just be redone a bit, to be a sane name, like:

	typedef void (*vchiq_userdata_term)(void *userdata);

thanks,

greg k-h

