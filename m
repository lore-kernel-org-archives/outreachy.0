X-GM-THRID: 6202672545102036992
X-Received: by 10.129.146.87 with SMTP id j84mr34313424ywg.18.1444194905920;
        Tue, 06 Oct 2015 22:15:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.227 with SMTP id b90ls94753qgb.72.gmail; Tue, 06 Oct
 2015 22:15:05 -0700 (PDT)
X-Received: by 10.129.51.86 with SMTP id z83mr32986734ywz.45.1444194905214;
        Tue, 06 Oct 2015 22:15:05 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id wl2si4654678pab.1.2015.10.06.22.15.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 22:15:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ex6so9588704pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 22:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=gU4nxEm2HqOIWq89RXI9NJ16WnolqFwGwlvy5aQYnhA=;
        b=RrGTfRsvPO+kGnnBAOpCcPnTjuySaoLXCbCVlZCVK6u440HKNUUKFtJ4mR8VDOfCB8
         MTnhjiAxsw7tXAH7LljPaNhTqT9QBBXiAK8xgGoFYRzwHUPHQx/r5bEtHiUZlzGB/DJo
         Saf7pxZ+esRNb0V8JX98NDHUcF01RHqHIm6cNI4OpzhjnG0aqGHWGK+0oJA8LBMbZJWy
         176ex+P5jsPCkQN8V8XpEWjk3QqibyfX9t0sElDNecVHoGqTzC4CoHpry44zkxTol3Nv
         vAIvxpkkigDmUNKU8X7NRmxBRRUv5I0LlatjC3QoFCEtvfJgdexPJdHnTxNH/NiYy5bj
         IqKw==
X-Received: by 10.68.93.133 with SMTP id cu5mr51779791pbb.71.1444194905025;
        Tue, 06 Oct 2015 22:15:05 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id xo2sm6687506pbb.48.2015.10.06.22.15.03
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 22:15:04 -0700 (PDT)
Date: Wed, 7 Oct 2015 10:44:59 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 08/10] staging: iio: adc: remove the
 use of CamelCase
Message-ID: <20151007051459.GC4070@sudip-pc>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
 <7b2dd35a1b76b4457bc85272f255b982e6003cfc.1444172066.git.ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7b2dd35a1b76b4457bc85272f255b982e6003cfc.1444172066.git.ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 07, 2015 at 01:57:08AM +0300, Ioana Ciornei wrote:
> Remove the use of CamelCase to follow the kernel naming conventions
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c      | 12 ++++++------
>  drivers/staging/iio/adc/ad7192.h      |  2 +-
>  drivers/staging/iio/adc/ad7280a.c     | 14 +++++++-------
>  drivers/staging/iio/adc/lpc32xx_adc.c |  6 +++---
>  4 files changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index f293dbd..f1d4911 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -118,13 +118,13 @@
>  /* GPOCON Register Bit Designations (AD7192_REG_GPOCON) */
>  #define AD7192_GPOCON_BPDSW	BIT(6) /* Bridge power-down switch enable */
>  #define AD7192_GPOCON_GP32EN	BIT(5) /* Digital Output P3 and P2 enable */
> -#define AD7192_GPOCON_GP10EN	BIT(4) /* Digital Output P1 and P0 enable */
> +#define AD7193_GPOCON_GP10EN	BIT(4) /* Digital Output P1 and P0 enable */
Why did you change AD7192_GPOCON_GP10EN to AD7193_GPOCON_GP10EN?

And I donot see any camelcase here, not even in the next few
conversions.

regards
sudip

