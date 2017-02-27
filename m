X-GM-THRID: 6391536108233031680
X-Received: by 10.129.105.130 with SMTP id e124mr7129382ywc.2.1488209762052;
        Mon, 27 Feb 2017 07:36:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.36.198 with SMTP id k189ls3514459iok.46.gmail; Mon, 27 Feb
 2017 07:36:01 -0800 (PST)
X-Received: by 10.98.18.89 with SMTP id a86mr4095063pfj.27.1488209761158;
        Mon, 27 Feb 2017 07:36:01 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id 13si1783945iti.0.2017.02.27.07.36.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:36:01 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id w185so11940933ita.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 07:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=MQWqP8qzaBoMc4OgpS4MauTY9jWV/5whjyaIR6+6SEY=;
        b=CZRMRChliwkfMPRSRjwmq+ZKtO3cD6uIex8bgozIiYaqga63icDxr2lNLUdQdtqV+g
         1Y03wiqn3hdCV3CDmcXC1N2CojlJKcQ5VONTfi0Ns7pNOQc0lvhbTc7AC46os26c4hlB
         9LMBc3HyVKkIdtzOccVtcuD05R6k/LHn0ZDyKHGwCvJg3WjG1di/Z0JTxy4W9gQvzy9O
         veJ5Oel1W5jE6CJTaDzj3CPWuZ/30pVsLtUjIv2uXmI1uDoIpjzxue6JeHGu14DZJ3WR
         3pXaVRl3mTZ2xbBODyoFta+VnyB6JhbD52nQKxJ2DtKc+oPX1dWtP0CR/YoX3H+NmKQg
         zCpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=MQWqP8qzaBoMc4OgpS4MauTY9jWV/5whjyaIR6+6SEY=;
        b=l6K69+kqmhjsUJ9ppzRvzv9cAXQKlCxBXl2Cwh67nV/Wxa0mfqxBGSb+SjTY7LTo9J
         kdtVoxImm1gzSt5P2kqThMfpQ/2q5HVPlJxfnicZfjWoPF4xpcnuVYcbylVuciuZ1ipu
         S3cmQxIggorzVAneRPaGzopyXXeSwh3winTTgmxwtcoJKtiSqP+j2jKN2tBDklGyMYdM
         qOkdH+yoPxnk1DW8LLYqY1/791oxG+HPHdLOnxwtMBN5pFVRaUufv9ewpwS/8beSZpa/
         wYl+pUU5c038bC91xSwNOqkzE8VPsHSx2haRJapiLMXQwRJl0bkwNs5s2d7/EkFA3Aqr
         sSfw==
X-Gm-Message-State: AMke39kVBOlEQjPCyXa9JsjqFHDOYiEBIU3djprYi8LvpSk6nAXj06tH61amEt8igaZxaQnn1sM792MUCYa9aw==
X-Received: by 10.36.4.84 with SMTP id 81mr4841330itb.19.1488209760883; Mon,
 27 Feb 2017 07:36:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.6.203 with HTTP; Mon, 27 Feb 2017 07:36:00 -0800 (PST)
In-Reply-To: <1488209351-351-1-git-send-email-narcisaanamaria12@gmail.com>
References: <1488145439-32728-1-git-send-email-narcisaanamaria12@gmail.com> <1488209351-351-1-git-send-email-narcisaanamaria12@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 27 Feb 2017 17:36:00 +0200
Message-ID: <CAEnQRZDr5xF3QNYgEFeyvXwZ4Vh5wHJFmRhvYbAjDn3ZGYtTig@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: iio: ad9832: Moved
 contents of header file to source file
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, "Hennerich, Michael" <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 27, 2017 at 5:29 PM, Narcisa Ana Maria Vasile
<narcisaanamaria12@gmail.com> wrote:
> The contents of the header file are used only by this single source
> file.
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
> Changes in v2:
>     Removed the platform data struct from the ad9832.c file and added it
>     back to the ad9832.h header file, since this struct is supposed to be
>     used from somewhere else, other than the driver.
> ---
>  drivers/staging/iio/frequency/ad9832.c | 27 ++-----------------------
>  drivers/staging/iio/frequency/ad9832.h | 36 ++++++++++++++++++++++++++++++++++
>  2 files changed, 38 insertions(+), 25 deletions(-)
>  create mode 100644 drivers/staging/iio/frequency/ad9832.h
>
> diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
> index 1b26843..8d40c8e 100644
> --- a/drivers/staging/iio/frequency/ad9832.c
> +++ b/drivers/staging/iio/frequency/ad9832.c
> @@ -20,6 +20,8 @@
>  #include <linux/iio/sysfs.h>
>  #include "dds.h"
>
> +#include "ad9832.h"
> +
>  /* Registers */
>
>  #define AD9832_FREQ0LL         0x0
> @@ -112,31 +114,6 @@ struct ad9832_state {
>         };
>  };
>
> -/*
> - * TODO: struct ad9832_platform_data needs to go into include/linux/iio
> - */
> -
> -/**
> - * struct ad9832_platform_data - platform specific information
> - * @mclk:              master clock in Hz
> - * @freq0:             power up freq0 tuning word in Hz
> - * @freq1:             power up freq1 tuning word in Hz
> - * @phase0:            power up phase0 value [0..4095] correlates with 0..2PI
> - * @phase1:            power up phase1 value [0..4095] correlates with 0..2PI
> - * @phase2:            power up phase2 value [0..4095] correlates with 0..2PI
> - * @phase3:            power up phase3 value [0..4095] correlates with 0..2PI
> - */
> -
> -struct ad9832_platform_data {
> -       unsigned long           mclk;
> -       unsigned long           freq0;
> -       unsigned long           freq1;
> -       unsigned short          phase0;
> -       unsigned short          phase1;
> -       unsigned short          phase2;
> -       unsigned short          phase3;
> -};
> -
>  static unsigned long ad9832_calc_freqreg(unsigned long mclk, unsigned long fout)
>  {
>         unsigned long long freqreg = (u64)fout *
> diff --git a/drivers/staging/iio/frequency/ad9832.h b/drivers/staging/iio/frequency/ad9832.h
> new file mode 100644
> index 0000000..39d326c
> --- /dev/null
> +++ b/drivers/staging/iio/frequency/ad9832.h
> @@ -0,0 +1,36 @@
> +/*
> + * AD9832 SPI DDS driver
> + *
> + * Copyright 2011 Analog Devices Inc.
> + *
> + * Licensed under the GPL-2 or later.
> + */
> +#ifndef IIO_DDS_AD9832_H_
> +#define IIO_DDS_AD9832_H_
> +
> +/*
> + * TODO: struct ad9832_platform_data needs to go into include/linux/iio
> + */
> +
> +/**
> + * struct ad9832_platform_data - platform specific information
> + * @mclk:              master clock in Hz
> + * @freq0:             power up freq0 tuning word in Hz
> + * @freq1:             power up freq1 tuning word in Hz
> + * @phase0:            power up phase0 value [0..4095] correlates with 0..2PI
> + * @phase1:            power up phase1 value [0..4095] correlates with 0..2PI
> + * @phase2:            power up phase2 value [0..4095] correlates with 0..2PI
> + * @phase3:            power up phase3 value [0..4095] correlates with 0..2PI
> + */
> +
> +struct ad9832_platform_data {
> +       unsigned long           mclk;
> +       unsigned long           freq0;
> +       unsigned long           freq1;
> +       unsigned short          phase0;
> +       unsigned short          phase1;
> +       unsigned short          phase2;
> +       unsigned short          phase3;
> +};
> +
> +#endif /* IIO_DDS_AD9832_H_ */

Hi,

It seems that you have sent a diff relative to v1. This isn't OK,
because v1 isn't already applied
to maintainers tree.

Please send a patch against the original code.

thanks,
Daniel.

