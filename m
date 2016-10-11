X-GM-THRID: 6339992797560438784
X-Received: by 10.66.138.106 with SMTP id qp10mr488352pab.71.1476166424822;
        Mon, 10 Oct 2016 23:13:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.10.13 with SMTP id 13ls378461itw.16.gmail; Mon, 10 Oct 2016
 23:13:42 -0700 (PDT)
X-Received: by 10.66.193.194 with SMTP id hq2mr473550pac.40.1476166422342;
        Mon, 10 Oct 2016 23:13:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z76si254641pff.1.2016.10.10.23.13.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 23:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [94.186.205.99])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9108B71;
	Tue, 11 Oct 2016 06:13:41 +0000 (UTC)
Date: Tue, 11 Oct 2016 08:13:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm750fb: Merge ddk750_help.* into ddk750_chip.*.
Message-ID: <20161011061349.GB3608@kroah.com>
References: <20161011000955.GA16743@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011000955.GA16743@lennorien.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Mon, Oct 10, 2016 at 09:09:55PM -0300, Elise Lennion wrote:
> The file ddk750_help.c contained only one function declaration,
> so it was merged into ddk750_chip.c to simplify the driver.
> 
> Also, ddk750_help.h was merged into ddk750_chip.h to keep consistency.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/sm750fb/Makefile         |  2 +-
>  drivers/staging/sm750fb/ddk750.h         |  1 -
>  drivers/staging/sm750fb/ddk750_chip.c    | 15 ++++++++++++++-
>  drivers/staging/sm750fb/ddk750_chip.h    | 10 ++++++++++
>  drivers/staging/sm750fb/ddk750_display.c |  2 +-
>  drivers/staging/sm750fb/ddk750_dvi.c     |  2 +-
>  drivers/staging/sm750fb/ddk750_help.c    | 17 -----------------
>  drivers/staging/sm750fb/ddk750_help.h    | 21 ---------------------
>  drivers/staging/sm750fb/ddk750_hwi2c.c   |  2 +-
>  drivers/staging/sm750fb/ddk750_mode.c    |  1 -
>  drivers/staging/sm750fb/ddk750_power.c   |  2 +-
>  drivers/staging/sm750fb/ddk750_swi2c.c   |  2 +-
>  12 files changed, 30 insertions(+), 47 deletions(-)
>  delete mode 100644 drivers/staging/sm750fb/ddk750_help.c
>  delete mode 100644 drivers/staging/sm750fb/ddk750_help.h
> 
> diff --git a/drivers/staging/sm750fb/Makefile b/drivers/staging/sm750fb/Makefile
> index dcce3f4..4d781f7 100644
> --- a/drivers/staging/sm750fb/Makefile
> +++ b/drivers/staging/sm750fb/Makefile
> @@ -1,4 +1,4 @@
>  obj-$(CONFIG_FB_SM750)	+= sm750fb.o
>  
>  sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o ddk750_chip.o ddk750_power.o ddk750_mode.o
> -sm750fb-objs		+= ddk750_display.o ddk750_help.o ddk750_swi2c.o ddk750_sii164.o ddk750_dvi.o ddk750_hwi2c.o
> +sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o ddk750_dvi.o ddk750_hwi2c.o
> diff --git a/drivers/staging/sm750fb/ddk750.h b/drivers/staging/sm750fb/ddk750.h
> index 2c10a08..0566911 100644
> --- a/drivers/staging/sm750fb/ddk750.h
> +++ b/drivers/staging/sm750fb/ddk750.h
> @@ -16,7 +16,6 @@
>  #include "ddk750_chip.h"
>  #include "ddk750_display.h"
>  #include "ddk750_power.h"
> -#include "ddk750_help.h"
>  #ifdef USE_HW_I2C
>  #include "ddk750_hwi2c.h"
>  #endif
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index c62ebc1..6c02f1d 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -1,13 +1,16 @@
>  #include <linux/kernel.h>
>  #include <linux/sizes.h>
>  
> -#include "ddk750_help.h"
>  #include "ddk750_reg.h"
>  #include "ddk750_chip.h"
>  #include "ddk750_power.h"
>  
>  #define MHz(x) ((x) * 1000000)
>  
> +void __iomem *mmio750;

Yes, this needs to be as-is, to make the horrid macros work properly.

> +char revId750;

This variable can be static, right?

> +unsigned short devId750;

As can this one?  And is this one even really needed?

Are either of them really needed?

thanks,

greg k-h

