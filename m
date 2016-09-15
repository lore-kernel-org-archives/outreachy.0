X-GM-THRID: 6330577059983654912
X-Received: by 10.129.179.130 with SMTP id r124mr6741324ywh.27.1473953869195;
        Thu, 15 Sep 2016 08:37:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.91.212 with SMTP id g203ls464992itb.13.gmail; Thu, 15 Sep
 2016 08:37:46 -0700 (PDT)
X-Received: by 10.36.225.200 with SMTP id n191mr2659827ith.12.1473953866840;
        Thu, 15 Sep 2016 08:37:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 142si2976958pfx.2.2016.09.15.08.37.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 08:37:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 06586722;
	Thu, 15 Sep 2016 15:37:45 +0000 (UTC)
Date: Thu, 15 Sep 2016 17:37:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jon.nettleton@gmail.com
Subject: Re: [PATCH] staging: olpc_dcon: Prefer using the BIT macro
Message-ID: <20160915153752.GA28595@kroah.com>
References: <20160915151150.GA6172@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160915151150.GA6172@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 15, 2016 at 08:41:58PM +0530, Anchal Jain wrote:
> Replace all occurences of (1<<x) by BIT(x) in the file olpc_dcon.h to get rid
> of checkpatch.pl "CHECK" output "Prefer using the BIT macro"
> 
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/olpc_dcon/olpc_dcon.h | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/staging/olpc_dcon/olpc_dcon.h b/drivers/staging/olpc_dcon/olpc_dcon.h
> index 215e7ec..23a48a1 100644
> --- a/drivers/staging/olpc_dcon/olpc_dcon.h
> +++ b/drivers/staging/olpc_dcon/olpc_dcon.h
> @@ -9,18 +9,18 @@
>  #define DCON_REG_ID		 0
>  #define DCON_REG_MODE		 1
>  
> -#define MODE_PASSTHRU	(1<<0)
> -#define MODE_SLEEP	(1<<1)
> -#define MODE_SLEEP_AUTO	(1<<2)
> -#define MODE_BL_ENABLE	(1<<3)
> -#define MODE_BLANK	(1<<4)
> -#define MODE_CSWIZZLE	(1<<5)
> -#define MODE_COL_AA	(1<<6)
> -#define MODE_MONO_LUMA	(1<<7)
> -#define MODE_SCAN_INT	(1<<8)
> -#define MODE_CLOCKDIV	(1<<9)
> -#define MODE_DEBUG	(1<<14)
> -#define MODE_SELFTEST	(1<<15)
> +#define MODE_PASSTHRU	bit(0)
> +#define MODE_SLEEP	bit(1)
> +#define MODE_SLEEP_AUTO	bit(2)
> +#define MODE_BL_ENABLE	bit(3)
> +#define MODE_BLANK	bit(4)
> +#define MODE_CSWIZZLE	bit(5)
> +#define MODE_COL_AA	bit(6)
> +#define MODE_MONO_LUMA	bit(7)
> +#define MODE_SCAN_INT	bit(8)
> +#define MODE_CLOCKDIV	bit(9)
> +#define MODE_DEBUG	bit(14)
> +#define MODE_SELFTEST	bit(15)

did you build this patch?

Please do so before sending in changes, it will save everyone a lot of
time :)

thanks,

greg k-h

