X-GM-THRID: 6341957980641034240
X-Received: by 10.66.12.168 with SMTP id z8mr5966864pab.63.1476689674146;
        Mon, 17 Oct 2016 00:34:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.213 with SMTP id r21ls11997869otr.17.gmail; Mon, 17 Oct
 2016 00:34:33 -0700 (PDT)
X-Received: by 10.157.38.146 with SMTP id l18mr2791214otb.50.1476689673782;
        Mon, 17 Oct 2016 00:34:33 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a143si4987201pfa.2.2016.10.17.00.34.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 00:34:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EFA6671;
	Mon, 17 Oct 2016 07:34:32 +0000 (UTC)
Date: Mon, 17 Oct 2016 09:34:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: vc04_services: vchiq_arm: Use ARRAY_SIZE
 macro
Message-ID: <20161017073440.GA27518@kroah.com>
References: <20161016133051.GA28472@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161016133051.GA28472@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Sun, Oct 16, 2016 at 07:00:51PM +0530, sayli karnik wrote:
> This patch uses ARRAY_SIZE macro instead of division of two sizeofs to
> find array size.
> Done using coccinelle.
> @@
> type T;
> T[] E;
> @@
> (
> - (sizeof(E)/sizeof(*E))
> + ARRAY_SIZE(E)
> |
> - (sizeof(E)/sizeof(E[...]))
> + ARRAY_SIZE(E)
> |
> - (sizeof(E)/sizeof(T))
> + ARRAY_SIZE(E)
> )
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
> Changes in v2:
> Adjusted the changed part in one line
> 
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 5ec7c96..7fee140 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -190,8 +190,7 @@ static const char *const ioctl_names[] = {
>  	"CLOSE_DELIVERED"
>  };
>  
> -vchiq_static_assert((sizeof(ioctl_names)/sizeof(ioctl_names[0])) ==
> -	(VCHIQ_IOC_MAX + 1));
> +vchiq_static_assert(ARRAY_SIZE(ioctl_names) == (VCHIQ_IOC_MAX + 1));

How were you able to test build this change?  The code is currently
broken in the build unless you add a number of external patches at the
moment :(

thanks,

greg k-h

