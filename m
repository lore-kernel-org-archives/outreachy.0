X-GM-THRID: 6393297831380123648
X-Received: by 10.46.82.157 with SMTP id n29mr1361626lje.29.1488648943901;
        Sat, 04 Mar 2017 09:35:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.198.77 with SMTP id w74ls197090lff.26.gmail; Sat, 04 Mar
 2017 09:35:43 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr1077904lfe.28.1488648943406;
        Sat, 04 Mar 2017 09:35:43 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id y19si859610wmd.0.2017.03.04.09.35.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:35:43 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id D730040619;
	Sat,  4 Mar 2017 17:35:42 +0000 (GMT)
Subject: Re: [PATCH v2 2/2] staging: iio: meter: ade7753: Clean up includes
To: Katie Dunne <kdunne@mail.ccsf.edu>, outreachy-kernel@googlegroups.com
References: <cover.1488553341.git.kdunne@mail.ccsf.edu>
 <20170303153837.GC29234@katie-Inspiron-5748>
Cc: knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <a8c0e8bf-7efb-22ee-8079-c1649ec179ba@kernel.org>
Date: Sat, 4 Mar 2017 17:35:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170303153837.GC29234@katie-Inspiron-5748>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 03/03/17 15:38, Katie Dunne wrote:
> Alphabetize header files.
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
Applied to the togreg branch of iio.git and pushed out as testing for the autobuilders
to play with it.

Thanks,

Jonathan
> ---
>  drivers/staging/iio/meter/ade7753.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> index 063ff27..dfd8b71 100644
> --- a/drivers/staging/iio/meter/ade7753.c
> +++ b/drivers/staging/iio/meter/ade7753.c
> @@ -6,20 +6,19 @@
>   * Licensed under the GPL-2 or later.
>   */
>  
> -#include <linux/interrupt.h>
> -#include <linux/irq.h>
>  #include <linux/delay.h>
> -#include <linux/mutex.h>
>  #include <linux/device.h>
> +#include <linux/interrupt.h>
> +#include <linux/irq.h>
>  #include <linux/kernel.h>
> -#include <linux/spi/spi.h>
> -#include <linux/slab.h>
> -#include <linux/sysfs.h>
>  #include <linux/list.h>
>  #include <linux/module.h>
> -
> +#include <linux/mutex.h>
> +#include <linux/slab.h>
> +#include <linux/sysfs.h>
>  #include <linux/iio/iio.h>
>  #include <linux/iio/sysfs.h>
> +#include <linux/spi/spi.h>
>  #include "meter.h"
>  
>  #define ADE7753_WAVEFORM   0x01
> 


