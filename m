X-GM-THRID: 6391035517840916480
X-Received: by 10.200.49.238 with SMTP id i43mr4165863qte.21.1488724645169;
        Sun, 05 Mar 2017 06:37:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.98.11 with SMTP id d11ls1855543itc.1.canary-gmail; Sun, 05
 Mar 2017 06:37:24 -0800 (PST)
X-Received: by 10.98.160.25 with SMTP id r25mr2554213pfe.25.1488724644390;
        Sun, 05 Mar 2017 06:37:24 -0800 (PST)
Received: by 10.55.9.18 with SMTP id 18msqkj;
        Sun, 5 Mar 2017 02:08:21 -0800 (PST)
X-Received: by 10.46.20.27 with SMTP id u27mr1748180ljd.4.1488708500744;
        Sun, 05 Mar 2017 02:08:20 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id e72si514201wma.0.2017.03.05.02.08.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 02:08:20 -0800 (PST)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id CD2A6405E1;
	Sun,  5 Mar 2017 10:08:19 +0000 (GMT)
Subject: Re: [PATCH v2] staging: iio: Single source header file reorganization
To: Sreya Mittal <sreyamittal5@gmail.com>, outreachy-kernel@googlegroups.com
References: <20170225140429.21506-1-sreyamittal5@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <1ea6cdb8-bdea-9cea-e4bc-dd5006de4f1b@kernel.org>
Date: Sun, 5 Mar 2017 10:08:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170225140429.21506-1-sreyamittal5@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 25/02/17 14:04, Sreya Mittal wrote:
> The contents of the header file are used only by this single
> source file. Move content into .c and remove .h.
> Also alphabetize the #includes.
> 
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
Hi,

The issue here is similar to that seen in other patches recently.
It appears to be moving the platform data structure into the c file.
Whilst this is only used in the mainline kernel within this single
c file, that is not true in general.  This platform data file is
included and used in board files for boards that have this device and
hence needs to remain in the header.

Jonathan
> ---
> 
> Changes in v2:
> Correct the indentation.
> 
>  drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 33 +++++++++++++++++------
>  drivers/staging/iio/trigger/iio-trig-bfin-timer.h | 24 -----------------
>  2 files changed, 25 insertions(+), 32 deletions(-)
>  delete mode 100644 drivers/staging/iio/trigger/iio-trig-bfin-timer.h
> 
> diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> index 4e0b4ee..5a7ff57 100644
> --- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> +++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> @@ -5,21 +5,38 @@
>   *
>   */
>  
> +#include <asm/gptimers.h>
> +#include <asm/portmux.h>
> +#include <linux/delay.h>
> +#include <linux/interrupt.h>
> +#include <linux/irq.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
> -#include <linux/interrupt.h>
> -#include <linux/irq.h>
> -#include <linux/delay.h>
> -
> -#include <asm/gptimers.h>
> -#include <asm/portmux.h>
> -
>  #include <linux/iio/iio.h>
>  #include <linux/iio/trigger.h>
>  
> -#include "iio-trig-bfin-timer.h"
> +/**
> + * struct iio_bfin_timer_trigger_pdata - timer trigger platform data
> + * @output_enable: Enable external trigger pulse generation.
> + * @active_low: Whether the trigger pulse is active low.
> + * @duty_ns: Length of the trigger pulse in nanoseconds.
> + * 
> + * This struct is used to configure the output pulse generation of the blackfin
> + * timer trigger. If output_enable is set to true an external trigger signal
> + * will generated on the pin corresponding to the timer. This is useful for
> + * converters which needs an external signal to start conversion. active_low and
> + * duty_ns are used to configure the type of the trigger pulse. If output_enable
> + * is set to false no external trigger pulse will be generated and active_low
> + * and duty_ns are ignored.
> + **/
> +
> +struct iio_bfin_timer_trigger_pdata {
> +		bool output_enable;
> +		bool active_low;
> +		unsigned int duty_ns;
> +};
>  
>  struct bfin_timer {
>  	unsigned short id, bit;
> diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.h b/drivers/staging/iio/trigger/iio-trig-bfin-timer.h
> deleted file mode 100644
> index c07321f..0000000
> --- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.h
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -#ifndef __IIO_BFIN_TIMER_TRIGGER_H__
> -#define __IIO_BFIN_TIMER_TRIGGER_H__
> -
> -/**
> - * struct iio_bfin_timer_trigger_pdata - timer trigger platform data
> - * @output_enable: Enable external trigger pulse generation.
> - * @active_low: Whether the trigger pulse is active low.
> - * @duty_ns: Length of the trigger pulse in nanoseconds.
> - *
> - * This struct is used to configure the output pulse generation of the blackfin
> - * timer trigger. If output_enable is set to true an external trigger signal
> - * will generated on the pin corresponding to the timer. This is useful for
> - * converters which needs an external signal to start conversion. active_low and
> - * duty_ns are used to configure the type of the trigger pulse. If output_enable
> - * is set to false no external trigger pulse will be generated and active_low
> - * and duty_ns are ignored.
> - **/
> -struct iio_bfin_timer_trigger_pdata {
> -	bool output_enable;
> -	bool active_low;
> -	unsigned int duty_ns;
> -};
> -
> -#endif
> 


