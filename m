X-GM-THRID: 6335085342079582208
X-Received: by 10.176.2.18 with SMTP id 18mr2100311uas.1.1475042445533;
        Tue, 27 Sep 2016 23:00:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.198 with SMTP id s64ls220920otb.15.gmail; Tue, 27 Sep
 2016 23:00:45 -0700 (PDT)
X-Received: by 10.200.54.1 with SMTP id m1mr7622747qtb.7.1475042445087;
        Tue, 27 Sep 2016 23:00:45 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e66si1696182pfk.2.2016.09.27.23.00.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 23:00:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 49617724;
	Wed, 28 Sep 2016 06:00:44 +0000 (UTC)
Date: Wed, 28 Sep 2016 08:00:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com,
	daniel.baluta@intel.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com
Subject: Re: [PATCH v2] staging: sm750fb: rename camelCase macro
Message-ID: <20160928060048.GB23304@kroah.com>
References: <20160927184632.GA2811@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927184632.GA2811@localhost>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 27, 2016 at 11:46:34AM -0700, Elizabeth Ferdman wrote:
> This patch renames a camelcase macro roundedDiv to rounded_div. Error found by checkpatch.

please wrap your changelog comments at 72 columns.

> 
> Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> ---
> Changes in v2:
> 	- Revise commit message and description
> 
>  drivers/staging/sm750fb/ddk750_chip.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index f557b6d..81df4c4 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -7,7 +7,7 @@
>  #include "ddk750_power.h"
>  
>  /* n / d + 1 / 2 = (2n + d) / 2d */
> -#define roundedDiv(num, denom)	((2 * (num) + (denom)) / (2 * (denom)))
> +#define rounded_div(num, denom)	((2 * (num) + (denom)) / (2 * (denom)))

Ick, now it looks like a function, which it isn't :(

I think the kernel already has this function somewhere, can you just use
a built-in one instead?  Dig around in the include/linux/ directory.

And if not, can you change this to an inline function, that way you
don't accidentally evaluate denom twice, potentially causing bad problems.

thanks,

greg k-h

