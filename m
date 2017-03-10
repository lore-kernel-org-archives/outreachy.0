X-GM-THRID: 6395062111177801728
X-Received: by 10.157.63.153 with SMTP id r25mr7140210otc.112.1489149502199;
        Fri, 10 Mar 2017 04:38:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.64.142 with SMTP id n136ls492863ita.2.gmail; Fri, 10 Mar
 2017 04:38:21 -0800 (PST)
X-Received: by 10.99.44.66 with SMTP id s63mr8729407pgs.14.1489149501318;
        Fri, 10 Mar 2017 04:38:21 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id y63si1217908ywe.5.2017.03.10.04.38.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 04:38:21 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id p77so3265074ywg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 04:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=2z3cGrYIPFeCvqkABrEEIbOWp7lkv8AOraeW2xXbSb4=;
        b=DWJVsyKcgMu++LQmcNBNRWv43u2PgDVuMp0ZVkiqM5u+xI2zqubcsluPdy9Lan9bAJ
         MLNR9zNWpApPcYJK6zYQjU8cwGsp8LsJWyOMgvVZQmZymKCSvNXgdk7GBfT+g9dh9abE
         19d1mBercW4rrV+Txzvt+qrrJjLGyIxXiNumqE3GCLwp/i+UN7QbUt2Gc90qtWtwYsLi
         tM8Xt9Dq70vtVnL8sIIjDF+IuahVgURBOEu97YsNI2rYYAf4Y3PT8Wg8Pvh3aC01eJy9
         jjriqfd1iAYKJ5xlagj8klUBZrwt3RRkftCq5mBpBRkZP5eASCLVA1o7Bz4mOjYH6uwn
         f7YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=2z3cGrYIPFeCvqkABrEEIbOWp7lkv8AOraeW2xXbSb4=;
        b=llqLmc0GrULmTD+uVsGW+PNS7UBLQYVnFJC2zyBlagBemW2931mAWGToWN0UBR/nAF
         942xiSP4akdLT0Aud1kGupnK7PMKtNktw58h2zjh7GLvDxgNwu9lR+f4EQM1efR/t5Jb
         vQqpyv9iNo9DK8rTGRCurWOvhOMQs68yStoA2dyIlhvkNdhyIfYAAocuZscKurIit0py
         8oU95KrrQFHhzhXv2CUBwsBk4DzKJU5nhdCFbviOEQmFq6S4VcbVOZdht6nAwKGuwqEN
         +n6tpPrBWD7M91Vbq67tPPCpLmnz2ftbOXuB9jhSNBmu6Kwks5oHG2+WpxZLNh+uX3dO
         VK1g==
X-Gm-Message-State: AMke39nvTBPFEQaok9l9PhEPW369dWdGbBcnpaevRRf/tlHFj2BmoK3mYdCv+bUjRuxpN9ck3LlVUU46aB6qbA==
X-Received: by 10.37.161.2 with SMTP id z2mr7324154ybh.50.1489149500753; Fri,
 10 Mar 2017 04:38:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Fri, 10 Mar 2017 04:37:40 -0800 (PST)
In-Reply-To: <20170308094321.GA11025@sayli-HP-15-Notebook-PC>
References: <20170308094321.GA11025@sayli-HP-15-Notebook-PC>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Fri, 10 Mar 2017 18:07:40 +0530
Message-ID: <CAKG5xWgQyJ65gfd3c82CoyQPw74HP=-Cb78OPo7ZpfEOc2BPxw@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: ade7759: Move contents of header file to
 source file
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 8, 2017 at 3:16 PM, sayli karnik <karniksayli1995@gmail.com> wrote:
> The contents of ade7759.h are only used in ade7759.c. Move the header
> contents to the source file and delete the header file.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7759.c | 50 +++++++++++++++++++++++++++++++++-
>  drivers/staging/iio/meter/ade7759.h | 53 -------------------------------------
>  2 files changed, 49 insertions(+), 54 deletions(-)
>  delete mode 100644 drivers/staging/iio/meter/ade7759.h
>
> diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
> index 944ee34..0b65f18 100644
> --- a/drivers/staging/iio/meter/ade7759.c
> +++ b/drivers/staging/iio/meter/ade7759.c
> @@ -21,7 +21,55 @@
>  #include <linux/iio/iio.h>
>  #include <linux/iio/sysfs.h>
>  #include "meter.h"
> -#include "ade7759.h"
> +
> +#define ADE7759_WAVEFORM  0x01
> +#define ADE7759_AENERGY   0x02
> +#define ADE7759_RSTENERGY 0x03
> +#define ADE7759_STATUS    0x04
> +#define ADE7759_RSTSTATUS 0x05
> +#define ADE7759_MODE      0x06
> +#define ADE7759_CFDEN     0x07
> +#define ADE7759_CH1OS     0x08
> +#define ADE7759_CH2OS     0x09
> +#define ADE7759_GAIN      0x0A
> +#define ADE7759_APGAIN    0x0B
> +#define ADE7759_PHCAL     0x0C
> +#define ADE7759_APOS      0x0D
> +#define ADE7759_ZXTOUT    0x0E
> +#define ADE7759_SAGCYC    0x0F
> +#define ADE7759_IRQEN     0x10
> +#define ADE7759_SAGLVL    0x11
> +#define ADE7759_TEMP      0x12
> +#define ADE7759_LINECYC   0x13
> +#define ADE7759_LENERGY   0x14
> +#define ADE7759_CFNUM     0x15
> +#define ADE7759_CHKSUM    0x1E
> +#define ADE7759_DIEREV    0x1F
> +
> +#define ADE7759_READ_REG(a)    a
> +#define ADE7759_WRITE_REG(a) ((a) | 0x80)
> +
> +#define ADE7759_MAX_TX    6
> +#define ADE7759_MAX_RX    6
> +#define ADE7759_STARTUP_DELAY 1000
> +
> +#define ADE7759_SPI_SLOW       (u32)(300 * 1000)
> +#define ADE7759_SPI_BURST      (u32)(1000 * 1000)
> +#define ADE7759_SPI_FAST       (u32)(2000 * 1000)
> +
> +/**
> + * struct ade7759_state - device instance specific data
> + * @us:                        actual spi_device
> + * @buf_lock:          mutex to protect tx and rx
> + * @tx:                        transmit buffer
> + * @rx:                        receive buffer
> + **/
> +struct ade7759_state {
> +       struct spi_device       *us;
> +       struct mutex            buf_lock;
> +       u8                      tx[ADE7759_MAX_TX] ____cacheline_aligned;
> +       u8                      rx[ADE7759_MAX_RX];
> +};
>
>  static int ade7759_spi_write_reg_8(struct device *dev,
>                 u8 reg_address,
> diff --git a/drivers/staging/iio/meter/ade7759.h b/drivers/staging/iio/meter/ade7759.h
> deleted file mode 100644
> index f0716d2..0000000
> --- a/drivers/staging/iio/meter/ade7759.h
> +++ /dev/null
> @@ -1,53 +0,0 @@
> -#ifndef _ADE7759_H
> -#define _ADE7759_H
> -
> -#define ADE7759_WAVEFORM  0x01
> -#define ADE7759_AENERGY   0x02
> -#define ADE7759_RSTENERGY 0x03
> -#define ADE7759_STATUS    0x04
> -#define ADE7759_RSTSTATUS 0x05
> -#define ADE7759_MODE      0x06
> -#define ADE7759_CFDEN     0x07
> -#define ADE7759_CH1OS     0x08
> -#define ADE7759_CH2OS     0x09
> -#define ADE7759_GAIN      0x0A
> -#define ADE7759_APGAIN    0x0B
> -#define ADE7759_PHCAL     0x0C
> -#define ADE7759_APOS      0x0D
> -#define ADE7759_ZXTOUT    0x0E
> -#define ADE7759_SAGCYC    0x0F
> -#define ADE7759_IRQEN     0x10
> -#define ADE7759_SAGLVL    0x11
> -#define ADE7759_TEMP      0x12
> -#define ADE7759_LINECYC   0x13
> -#define ADE7759_LENERGY   0x14
> -#define ADE7759_CFNUM     0x15
> -#define ADE7759_CHKSUM    0x1E
> -#define ADE7759_DIEREV    0x1F
> -
> -#define ADE7759_READ_REG(a)    a
> -#define ADE7759_WRITE_REG(a) ((a) | 0x80)
> -
> -#define ADE7759_MAX_TX    6
> -#define ADE7759_MAX_RX    6
> -#define ADE7759_STARTUP_DELAY 1000
> -
> -#define ADE7759_SPI_SLOW       (u32)(300 * 1000)
> -#define ADE7759_SPI_BURST      (u32)(1000 * 1000)
> -#define ADE7759_SPI_FAST       (u32)(2000 * 1000)
> -
> -/**
> - * struct ade7759_state - device instance specific data
> - * @us:                        actual spi_device
> - * @buf_lock:          mutex to protect tx and rx
> - * @tx:                        transmit buffer
> - * @rx:                        receive buffer
> - **/
> -struct ade7759_state {
> -       struct spi_device       *us;
> -       struct mutex            buf_lock;
> -       u8                      tx[ADE7759_MAX_TX] ____cacheline_aligned;
> -       u8                      rx[ADE7759_MAX_RX];
> -};
> -
> -#endif

Is this a valid change?

thanks,
sayli
> --
> 2.7.4
>

