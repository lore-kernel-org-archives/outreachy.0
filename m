X-GM-THRID: 6202672545102036992
X-Received: by 10.112.150.229 with SMTP id ul5mr1212223lbb.2.1444668829385;
        Mon, 12 Oct 2015 09:53:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.6.6 with SMTP id cq6ls870758wid.41.canary; Mon, 12 Oct
 2015 09:53:48 -0700 (PDT)
X-Received: by 10.180.81.165 with SMTP id b5mr3123123wiy.1.1444668828955;
        Mon, 12 Oct 2015 09:53:48 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id w4si599922wiz.0.2015.10.12.09.53.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 09:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ge5so25359662wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 09:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=5VE3kPXss1tB6XPHYlJ4D+jQv1h1TWi0/65RGajqu7k=;
        b=Yy9Ohhr/c89aAN0dYl1qRkyu0OAZPw2CbUr3O5lrqYMgRdY/f2D7PVTTKIXdfqqTxo
         QyAvgns6/9sJ9Nq2jVVx6NSNWm99VHvK5Sl5Y7hG2LuYzCycBn5WswVp7sjiSB6qnCPU
         rNYFiWUVmrQpSwuOGa3TTgwdl1/zHXmzsstb+I4h1zkgpkbh44P+dSwnYLbROTYJ4GAK
         5sZ4HQy7EpDg3ew9FpU76nZ+c3tSRIiarlIYTS76gYiWqMsT7/X0fqOTrRPIsOuVYceS
         DepqUAyhxP+jGtGt45bTr/PG6w+mEuEJi9D0czbxjFFpfzBbjZrGl8RZNsrjcTU/1rwN
         AmsQ==
MIME-Version: 1.0
X-Received: by 10.194.175.104 with SMTP id bz8mr31562691wjc.42.1444668828809;
 Mon, 12 Oct 2015 09:53:48 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 09:53:48 -0700 (PDT)
In-Reply-To: <96555246f1fed941753791823bec2b0d9b28e303.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<96555246f1fed941753791823bec2b0d9b28e303.1444419393.git.ciorneiioana@gmail.com>
Date: Mon, 12 Oct 2015 19:53:48 +0300
Message-ID: <CAEnQRZBsfc99h6bktmBHG=5zvnEvj6jF2EUv=k9_3m1_a3cy7w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 9/9] staging: iio: adc: properly
 indent block comments
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Rework block comments in order to follow
> kernel coding style
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
> Changes in v2:
>     - nothing
> Changes in v3:
>     - nothing
>
>  drivers/staging/iio/adc/ad7192.c | 30 ++++++++++++++++++++----------
>  1 file changed, 20 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index c9a706a..1adfe00 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -35,10 +35,14 @@
>  #define AD7192_REG_DATA                3 /* Data Register           (RO, 24/32-bit) */
>  #define AD7192_REG_ID          4 /* ID Register             (RO, 8-bit) */
>  #define AD7192_REG_GPOCON      5 /* GPOCON Register         (RO, 8-bit) */
> -#define AD7192_REG_OFFSET      6 /* Offset Register         (RW, 16-bit
> -                                  * (AD7792)/24-bit (AD7192)) */
> -#define AD7192_REG_FULLSALE    7 /* Full-Scale Register
> -                                  * (RW, 16-bit (AD7792)/24-bit (AD7192)) */
> +#define AD7192_REG_OFFSET      6 /*
> +                                  * Offset Register         (RW, 16-bit
> +                                  * (AD7792)/24-bit (AD7192))
> +                                  */
> +#define AD7192_REG_FULLSALE    7 /*
> +                                  * Full-Scale Register
> +                                  * (RW, 16-bit (AD7792)/24-bit (AD7192))
> +                                  */
>
>  /* Communications Register Bit Designations (AD7192_REG_COMM) */
>  #define AD7192_COMM_WEN                BIT(7) /* Write Enable */
> @@ -80,13 +84,19 @@
>  #define AD7192_MODE_CAL_SYS_FULL       7 /* System Full-Scale Calibration */
>
>  /* Mode Register: AD7192_MODE_CLKSRC options */
> -#define AD7192_CLK_EXT_MCLK1_2         0 /* External 4.92 MHz Clock connected
> -                                          * from MCLK1 to MCLK2 */
> +#define AD7192_CLK_EXT_MCLK1_2         0 /*
> +                                          * External 4.92 MHz Clock connected
> +                                          * from MCLK1 to MCLK2
> +                                          */
>  #define AD7192_CLK_EXT_MCLK2           1 /* External Clock applied to MCLK2 */
> -#define AD7192_CLK_INT                 2 /* Internal 4.92 MHz Clock not
> -                                          * available at the MCLK2 pin */
> -#define AD7192_CLK_INT_CO              3 /* Internal 4.92 MHz Clock available
> -                                          * at the MCLK2 pin */
> +#define AD7192_CLK_INT                 2 /*
> +                                          * Internal 4.92 MHz Clock not
> +                                          * available at the MCLK2 pin
> +                                          */
> +#define AD7192_CLK_INT_CO              3 /*
> +                                          * Internal 4.92 MHz Clock available
> +                                          * at the MCLK2 pin
> +                                          */
>
>  /* Configuration Register Bit Designations (AD7192_REG_CONF) */
>
> --

This patch is correct. Anyhow, I think it is better to add the
comments above the macro def.

thanks,
Daniel.

