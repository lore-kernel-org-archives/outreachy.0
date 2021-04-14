X-GM-THRID: 6951081935014723584
X-Received: by 2002:ab0:60d5:: with SMTP id g21mr28830239uam.53.1618425213267;
        Wed, 14 Apr 2021 11:33:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:36cc:: with SMTP id p70ls289837uap.3.gmail; Wed, 14 Apr
 2021 11:33:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzBR1aq3ps6oRoAeCrwolM0VQbe5fu/7H/XD8+kCi1aLGdGI4HVhuxWFxpCCc8pWHIH+aQg
X-Received: by 2002:ab0:6d8c:: with SMTP id m12mr10713672uah.32.1618425212215;
        Wed, 14 Apr 2021 11:33:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618425212; cv=none;
        d=google.com; s=arc-20160816;
        b=EenhXkLfO9hZwmzBv8gqWqYvnB+t89tht9XSqJC0CX6LkCI+7dsdrZXlEAEGpcfVWk
         mx8G2YjMopTNVpSXeOTIFZu52YxGxiXrZLu/smezbztChO3kcshH1nvrGRvctPqxmJAr
         a+j3Y6FaxBZvZGXKJMTd77o35rwBJqQs37o+O3Gw/hp5tg+fNlN7v4iS7LT8UypGN1rB
         UGHRY8K++R+2koZd9mmVDTGGY6fckUyXefS3t+4HWCiOqstvAPTAB2lIK0Ebz+gPLdIu
         fLiscXTZseainnuUFXCWItaJt8udj9kf/XmQid1wFu+6pDjO22yacLInx3Z3D69iWkOv
         tdow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=TZwqFkufBDHQaSzfiPBYitUDYEfMJrl1TPhD+O4ju88=;
        b=CC1ixB44TXareyYEgMO9/aCefGjaM2OM5RooQlYnxcngqySkxtaKcdCIJi+GMYQDeE
         XRZEU6XbpOt0px6mWlJbXTN1MGs0Nu1q0WJPzUazUA3BgscBmaP8/qbhFP4jIjwg+khe
         pxhqsCVvIMDfICiU0gKSIGbW/DUIRdbRl/SxGxxnFtxLI0sy+7LWE51drv6kRd5gvwPv
         RQCqc4MPN6MC0k9wwryP9Xjvol2OqXXebqw10K5+2ht6hh0+/gU7F3TtOztjgsbXbXrr
         Wdx9ypabGzyhsGponQeWa7g2AOgn6wnZABKJjupcdWuPN2rjKOrvIbedgxHlOXz7aFvL
         Mf9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id o198si30127vkc.1.2021.04.14.11.33.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 11:33:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: KlY/xT3XMcZVPAGdlxLNVUWPqiRn3Zc0W37E6XNyPXpy+T6ul3RCTqR2E3Wb7sKt1eetDoo+dx
 FXcuyRZppvrg==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="174811616"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="scan'208";a="174811616"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 11:33:30 -0700
IronPort-SDR: QWUsGFJgdDqPIdf8WgwLE3snSAtlxd3nPW6cEcKKnSYoIgIfBTbFPG31qYfmXL+6RRgisHlsrP
 VPUpMILwql3Q==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="scan'208";a="532871296"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 11:33:28 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id E85DD200E8;
	Wed, 14 Apr 2021 21:33:25 +0300 (EEST)
Date: Wed, 14 Apr 2021 21:33:25 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: media: atomisp: pci: Format multi-line comments
 according to coding-style in file atomisp_cmd.c
Message-ID: <20210414183325.GD3@paasikivi.fi.intel.com>
References: <20210414182755.GA2799@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414182755.GA2799@focaruja>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Aline,

Thanks for the patch.

On Wed, Apr 14, 2021 at 03:27:55PM -0300, Aline Santana Cordeiro wrote:
> Format multi-line comments according to the coding-style.
> Issue detected by checkpatch.pl.
> 
> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> ---
>  drivers/staging/media/atomisp/pci/atomisp_cmd.c | 109 ++++++++++++++----------
>  1 file changed, 65 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> index 592ea99..6113785 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> @@ -67,7 +67,8 @@
>   * At 15fps this means 133ms. We set the timeout a bit longer.
>   * Each flash driver is supposed to set its own timeout, but
>   * just in case someone else changed the timeout, we set it
> - * here to make sure we don't damage the flash hardware. */
> + * here to make sure we don't damage the flash hardware.
> + */
>  #define FLASH_TIMEOUT 800 /* ms */
>  
>  union host {
> @@ -562,7 +563,8 @@ irqreturn_t atomisp_isr(int irq, void *dev)
>  			 * and driver needs to keep old sequence_temp value.
>  			 * NOTE: There is assumption here that ISP will not
>  			 * start processing next frame from sensor before old
> -			 * one is completely done. */
> +			 * one is completely done.
> +			 */
>  			if (atomic_read(&asd->sequence) == atomic_read(
>  				&asd->sequence_temp))
>  				atomic_set(&asd->sequence_temp,
> @@ -1247,7 +1249,8 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
>  
>  	if (IS_ISP2401) {
>  		/* If there are no buffers queued then

This should begin with:

		/*
		 *

And the same for the rest. Apart from this the patch seems fine.

-- 
Kind regards,

Sakari Ailus

