X-GM-THRID: 6202672545102036992
X-Received: by 10.112.136.99 with SMTP id pz3mr1177034lbb.11.1444849991686;
        Wed, 14 Oct 2015 12:13:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.133 with SMTP id o127ls68074lfo.38.gmail; Wed, 14 Oct
 2015 12:13:11 -0700 (PDT)
X-Received: by 10.112.159.4 with SMTP id wy4mr1154214lbb.15.1444849991183;
        Wed, 14 Oct 2015 12:13:11 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id q6si958385wif.2.2015.10.14.12.13.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:13:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id gb1so243495622wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=+6EvrfAut9ztvvR360Y8wRdd7K7M8NUBregllXSuEG0=;
        b=XGkKCUTbq5S5TK5J5NEXLbMBuOjCzH7t9SgNQlzDsBZsy5sSgb5Z4MDwzmJnNoGM/4
         9OKTPEwQgnzzL4SyksgegxDVv/XPQzIuhw7eq79lDZ+3wJRQt8s0hHk3iA+q7hHWCHsW
         VGIogeUdKPu0RSR1zuJN5r0LiCaz7Bkro7OrFvkiCSX2E6FYKcfDoMtYhpaMOFR5mTXp
         2J/dlHLW0h4pynEPpPZPmYSN0O2YUlF4l9eTw7bsfBPD2ZUhn5qIFl2pkapAhX1TIb2E
         V5+vyVU6Ls1JvY5K3kZR0C1K+PQApHlrR5kD1fhFkvbG6PhtnPS8G/rDUy/ib3lRnSnd
         2Erw==
MIME-Version: 1.0
X-Received: by 10.180.184.232 with SMTP id ex8mr6132747wic.15.1444849991084;
 Wed, 14 Oct 2015 12:13:11 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 12:13:11 -0700 (PDT)
In-Reply-To: <b0696c7845ebe157a07b0303e46832752b309574.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
	<b0696c7845ebe157a07b0303e46832752b309574.1444845354.git.ciorneiioana@gmail.com>
Date: Wed, 14 Oct 2015 22:13:11 +0300
Message-ID: <CAEnQRZDE-qxLfhzjSymEmCW09Qprqca5ZeW6HvB_7==ioOpViQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 9/9] staging: iio: adc: properly
 indent block comments
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:14 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Rework block comments in order to follow
> kernel coding style
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
> Changes in v2:
>     - nothing
> Changes in v3:
>     - nothing
> Changes in v4:
>     - move comment block above the macro def and not inline with it
>
>  drivers/staging/iio/adc/ad7192.c | 35 +++++++++++++++++++++++++----------
>  1 file changed, 25 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index bb76096..bb58fda 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -35,10 +35,16 @@
>  #define AD7192_REG_DATA                3 /* Data Register           (RO, 24/32-bit) */
>  #define AD7192_REG_ID          4 /* ID Register             (RO, 8-bit) */
>  #define AD7192_REG_GPOCON      5 /* GPOCON Register         (RO, 8-bit) */
> -#define AD7192_REG_OFFSET      6 /* Offset Register         (RW, 16-bit
> -                                  * (AD7792)/24-bit (AD7192)) */
> -#define AD7192_REG_FULLSALE    7 /* Full-Scale Register
> -                                  * (RW, 16-bit (AD7792)/24-bit (AD7192)) */
> +/*
> + * Offset Register          (RW, 16-bit
> + * (AD7792)/24-bit (AD7192))
> + */
> +#define AD7192_REG_OFFSET      6
> +/*
> + * Full-Scale Register
> + * (RW, 16-bit (AD7792)/24-bit (AD7192))
> + */
> +#define AD7192_REG_FULLSALE    7
>
>  /* Communications Register Bit Designations (AD7192_REG_COMM) */
>  #define AD7192_COMM_WEN                BIT(7) /* Write Enable */
> @@ -80,13 +86,22 @@
>  #define AD7192_MODE_CAL_SYS_FULL       7 /* System Full-Scale Calibration */
>
>  /* Mode Register: AD7192_MODE_CLKSRC options */
> -#define AD7192_CLK_EXT_MCLK1_2         0 /* External 4.92 MHz Clock connected
> -                                          * from MCLK1 to MCLK2 */
> +/*
> + * External 4.92 MHz Clock connected
> + * from MCLK1 to MCLK2
> + */
> +#define AD7192_CLK_EXT_MCLK1_2         0
>  #define AD7192_CLK_EXT_MCLK2           1 /* External Clock applied to MCLK2 */
> -#define AD7192_CLK_INT                 2 /* Internal 4.92 MHz Clock not
> -                                          * available at the MCLK2 pin */
> -#define AD7192_CLK_INT_CO              3 /* Internal 4.92 MHz Clock available
> -                                          * at the MCLK2 pin */
> +/*
> + * Internal 4.92 MHz Clock not
> + * available at the MCLK2 pin
> + */
> +#define AD7192_CLK_INT                 2
> +/*
> + * Internal 4.92 MHz Clock available
> + * at the MCLK2 pin
> + */
> +#define AD7192_CLK_INT_CO              3
>
>  /* Configuration Register Bit Designations (AD7192_REG_CONF) */
>

Comments here can be placed on a single line. Since this is the last patch
in the series, it's safe to resend it alone after Greg applies all other patches
from this patchseries.

