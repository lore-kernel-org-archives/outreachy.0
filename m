X-GM-THRID: 6202672545102036992
X-Received: by 10.112.181.10 with SMTP id ds10mr1144554lbc.3.1444849807260;
        Wed, 14 Oct 2015 12:10:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.79 with SMTP id s76ls80203lfs.29.gmail; Wed, 14 Oct 2015
 12:10:06 -0700 (PDT)
X-Received: by 10.112.144.99 with SMTP id sl3mr1150313lbb.12.1444849806473;
        Wed, 14 Oct 2015 12:10:06 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id q6si958099wif.2.2015.10.14.12.10.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:10:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x242.google.com with SMTP id uk10so9918596wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=fu59REzXunZkE1E24KbijJz6PVP0NJQyA5foGK+Zolc=;
        b=oa/19fEQaWUsjdnMLAYv04nv68/OKnd1NgxuKTXMwSDgsSc+f9KfCmci2A8q3uIrfy
         qa3sB+bkNn87x/6ny/1Ba74zUGdHhPMx2jUTmWVApYZRE2x2+O4PbM4c6zWJOxbC3mJ9
         MMiM+XxSf7l69lnfUDemsi6QhsX1pIUu+0C65/f0RnPX/2cJBniO6/Rko/Da+IUKOl3S
         h0N+ud07WV3ov2JQLbS+qjZdoaGDoqyhIUx5QGHnwe7L1IQN/fIH0JJvOEt7pSJ9sw/C
         fTlbxLdPb6IXlwTuikJfhLuZWLwq7mOnuTAP/MLnIE/wDzwbScute145cT63saUAH1Uq
         rocA==
MIME-Version: 1.0
X-Received: by 10.180.86.231 with SMTP id s7mr28424882wiz.15.1444849806307;
 Wed, 14 Oct 2015 12:10:06 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 12:10:06 -0700 (PDT)
In-Reply-To: <d3276213a23191fd2c018c6d9b0bdbcc4710d5c2.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
	<d3276213a23191fd2c018c6d9b0bdbcc4710d5c2.1444845354.git.ciorneiioana@gmail.com>
Date: Wed, 14 Oct 2015 22:10:06 +0300
Message-ID: <CAEnQRZCMk62Jz_E=sqmKEvE4pFLU9aVAMExa4qvREmA=o4kEtA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 8/9] staging: iio: adc: remove the
 use of CamelCase
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:14 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Remove the use of CamelCase to follow the kernel naming conventions
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> Changes in v2:
>     - remove change added by mistake in v1
> Changes in v3:
>     - nothing
> Changes in v4:
>     - invert some changes in order to improve readability
>     (some of them are just abbreviation: ACQ, AVG)
>
>  drivers/staging/iio/adc/ad7192.c  | 10 +++++-----
>  drivers/staging/iio/adc/ad7192.h  |  2 +-
>  drivers/staging/iio/adc/ad7280a.c |  4 ++--
>  3 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index f3d793c..bb76096 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -124,7 +124,7 @@
>  #define AD7192_GPOCON_P1DAT    BIT(1) /* P1 state */
>  #define AD7192_GPOCON_P0DAT    BIT(0) /* P0 state */
>
> -#define AD7192_INT_FREQ_MHz    4915200
> +#define AD7192_INT_FREQ_MHZ    4915200
>
>  /* NOTE:
>   * The AD7190/2/5 features a dual use data out ready DOUT/RDY output.
> @@ -228,14 +228,14 @@ static int ad7192_setup(struct ad7192_state *st,
>         switch (pdata->clock_source_sel) {
>         case AD7192_CLK_EXT_MCLK1_2:
>         case AD7192_CLK_EXT_MCLK2:
> -               st->mclk = AD7192_INT_FREQ_MHz;
> +               st->mclk = AD7192_INT_FREQ_MHZ;
>                 break;
>         case AD7192_CLK_INT:
>         case AD7192_CLK_INT_CO:
> -               if (pdata->ext_clk_Hz)
> -                       st->mclk = pdata->ext_clk_Hz;
> +               if (pdata->ext_clk_hz)
> +                       st->mclk = pdata->ext_clk_hz;
>                 else
> -                       st->mclk = AD7192_INT_FREQ_MHz;
> +                       st->mclk = AD7192_INT_FREQ_MHZ;
>                         break;
>         default:
>                 ret = -EINVAL;
> diff --git a/drivers/staging/iio/adc/ad7192.h b/drivers/staging/iio/adc/ad7192.h
> index a0a5b61..7433a43 100644
> --- a/drivers/staging/iio/adc/ad7192.h
> +++ b/drivers/staging/iio/adc/ad7192.h
> @@ -34,7 +34,7 @@
>  struct ad7192_platform_data {
>         u16             vref_mv;
>         u8              clock_source_sel;
> -       u32             ext_clk_Hz;
> +       u32             ext_clk_hz;
>         bool            refin2_en;
>         bool            rej60_en;
>         bool            sinc3_en;
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index d37e8a4..45df714 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -89,7 +89,7 @@
>
>  #define AD7280A_ALL_CELLS                              (0xAD << 16)
>
> -#define AD7280A_MAX_SPI_CLK_Hz         700000 /* < 1MHz */
> +#define AD7280A_MAX_SPI_CLK_HZ         700000 /* < 1MHz */
>  #define AD7280A_MAX_CHAIN              8
>  #define AD7280A_CELLS_PER_DEV          6
>  #define AD7280A_BITS                   12
> @@ -853,7 +853,7 @@ static int ad7280_probe(struct spi_device *spi)
>
>         ad7280_crc8_build_table(st->crc_tab);
>
> -       st->spi->max_speed_hz = AD7280A_MAX_SPI_CLK_Hz;
> +       st->spi->max_speed_hz = AD7280A_MAX_SPI_CLK_HZ;
>         st->spi->mode = SPI_MODE_1;
>         spi_setup(st->spi);
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d3276213a23191fd2c018c6d9b0bdbcc4710d5c2.1444845354.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

