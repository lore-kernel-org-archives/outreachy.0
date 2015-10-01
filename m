X-GM-THRID: 6200499301082202112
X-Received: by 10.112.40.17 with SMTP id t17mr1008285lbk.10.1443669937488;
        Wed, 30 Sep 2015 20:25:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.137 with SMTP id hs9ls44193wib.37.gmail; Wed, 30 Sep
 2015 20:25:36 -0700 (PDT)
X-Received: by 10.194.59.166 with SMTP id a6mr1016707wjr.6.1443669936825;
        Wed, 30 Sep 2015 20:25:36 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id bn1si32095wib.0.2015.09.30.20.25.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 20:25:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id ge5so9614782wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 20:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=dafxs3Lf/PCs0tGvxaQcj4hFsEavIxzdca6Ie+lWzWQ=;
        b=anLLtM2vx66OTWd3/WGOkVTaPEuVt1C1J4fCEbK9fcSQE0vG9AdUzrRjUkVYtTSyDF
         nRDCH3SYUtRYokYESGKgTUlsm1qVdYhlWLj0fOGvoancafgT+t8zReytmrC7VbsR1cdE
         2WIjjbxn5eDjPLynHf0HuYMh3e4SBhkZZIW/CkvL5Y6/RcFCX+duXhyt0M/0QG9vxeWD
         EhOlEflNv6JvslmwMW5IK1BBjubDcg1TFgfouEdmHnfo8Hjfki3NN4ucodLty8e1qoYg
         9dt+yOIHK97BiL+noA13k4Y9m3g4tw7/G40poD1Udg6F7P8VIHvTUhLNZJVycDJjJYYw
         mWjQ==
MIME-Version: 1.0
X-Received: by 10.180.88.168 with SMTP id bh8mr658601wib.48.1443669936642;
 Wed, 30 Sep 2015 20:25:36 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Wed, 30 Sep 2015 20:25:36 -0700 (PDT)
In-Reply-To: <1443666230-8999-1-git-send-email-shraddha.6596@gmail.com>
References: <1443666230-8999-1-git-send-email-shraddha.6596@gmail.com>
Date: Thu, 1 Oct 2015 08:55:36 +0530
Message-ID: <CAK-LDbKWAOyYt_da2R7r-hyeR-Bmq=NiQXps8f9D6xUjdw2VYA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: iio: cdc: Use BIT and
 GENMASK macro
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 1, 2015 at 7:53 AM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> Use BIT()/GENMASK() macros for all register definitions instead of
> hand-writing bit masks.

Hi Shraddha,

I think this should come as a patch series as you are replacing things with
two different macros. You can go for one patch to replace all cases with
BIT macro and another one to handle cases where you can use
GENMASK macro.

Thanks

> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
> Changes in v2-
>  Used GENMASK macro; covered more cases of BIT macro and updated
>  commit message
>
>  drivers/staging/iio/cdc/ad7746.c | 52 ++++++++++++++++++++--------------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index 10fa372..a8049ef 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -52,42 +52,42 @@
>  #define AD7746_STATUS_RDYCAP           BIT(0)
>
>  /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
> -#define AD7746_CAPSETUP_CAPEN          (1 << 7)
> -#define AD7746_CAPSETUP_CIN2           (1 << 6) /* AD7746 only */
> -#define AD7746_CAPSETUP_CAPDIFF                (1 << 5)
> -#define AD7746_CAPSETUP_CACHOP         (1 << 0)
> +#define AD7746_CAPSETUP_CAPEN          BIT(7)
> +#define AD7746_CAPSETUP_CIN2           BIT(6) /* AD7746 only */
> +#define AD7746_CAPSETUP_CAPDIFF                BIT(5)
> +#define AD7746_CAPSETUP_CACHOP         BIT(0)
>
>  /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
> -#define AD7746_VTSETUP_VTEN            (1 << 7)
> -#define AD7746_VTSETUP_VTMD_INT_TEMP   (0 << 5)
> -#define AD7746_VTSETUP_VTMD_EXT_TEMP   (1 << 5)
> -#define AD7746_VTSETUP_VTMD_VDD_MON    (2 << 5)
> -#define AD7746_VTSETUP_VTMD_EXT_VIN    (3 << 5)
> -#define AD7746_VTSETUP_EXTREF          (1 << 4)
> -#define AD7746_VTSETUP_VTSHORT         (1 << 1)
> -#define AD7746_VTSETUP_VTCHOP          (1 << 0)
> +#define AD7746_VTSETUP_VTEN            BIT(7)
> +#define AD7746_VTSETUP_VTMD_INT_TEMP   0
> +#define AD7746_VTSETUP_VTMD_EXT_TEMP   BIT(5)
> +#define AD7746_VTSETUP_VTMD_VDD_MON    GENMASK(6, 0)
> +#define AD7746_VTSETUP_VTMD_EXT_VIN    GENMASK(6, 5)
> +#define AD7746_VTSETUP_EXTREF          BIT(4)
> +#define AD7746_VTSETUP_VTSHORT         BIT(1)
> +#define AD7746_VTSETUP_VTCHOP          BIT(0)
>
>  /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
> -#define AD7746_EXCSETUP_CLKCTRL                (1 << 7)
> -#define AD7746_EXCSETUP_EXCON          (1 << 6)
> -#define AD7746_EXCSETUP_EXCB           (1 << 5)
> -#define AD7746_EXCSETUP_NEXCB          (1 << 4)
> -#define AD7746_EXCSETUP_EXCA           (1 << 3)
> -#define AD7746_EXCSETUP_NEXCA          (1 << 2)
> -#define AD7746_EXCSETUP_EXCLVL(x)      (((x) & 0x3) << 0)
> +#define AD7746_EXCSETUP_CLKCTRL                BIT(7)
> +#define AD7746_EXCSETUP_EXCON          BIT(6)
> +#define AD7746_EXCSETUP_EXCB           BIT(5)
> +#define AD7746_EXCSETUP_NEXCB          BIT(4)
> +#define AD7746_EXCSETUP_EXCA           BIT(3)
> +#define AD7746_EXCSETUP_NEXCA          BIT(2)
> +#define AD7746_EXCSETUP_EXCLVL(x)      GENMASK(((x) & 0x3), 0)
>
>  /* Config Register Bit Designations (AD7746_REG_CFG) */
>  #define AD7746_CONF_VTFS(x)            ((x) << 6)
>  #define AD7746_CONF_CAPFS(x)           ((x) << 3)
> -#define AD7746_CONF_MODE_IDLE          (0 << 0)
> -#define AD7746_CONF_MODE_CONT_CONV     (1 << 0)
> -#define AD7746_CONF_MODE_SINGLE_CONV   (2 << 0)
> -#define AD7746_CONF_MODE_PWRDN         (3 << 0)
> -#define AD7746_CONF_MODE_OFFS_CAL      (5 << 0)
> -#define AD7746_CONF_MODE_GAIN_CAL      (6 << 0)
> +#define AD7746_CONF_MODE_IDLE          0
> +#define AD7746_CONF_MODE_CONT_CONV     GENMASK(1, 0)
> +#define AD7746_CONF_MODE_SINGLE_CONV   GENMASK(2, 0)
> +#define AD7746_CONF_MODE_PWRDN         GENMASK(3, 0)
> +#define AD7746_CONF_MODE_OFFS_CAL      GENMASK(5, 0)
> +#define AD7746_CONF_MODE_GAIN_CAL      GENMASK(6, 0)
>
>  /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
> -#define AD7746_CAPDAC_DACEN            (1 << 7)
> +#define AD7746_CAPDAC_DACEN            BIT(7)
>  #define AD7746_CAPDAC_DACP(x)          ((x) & 0x7F)
>
>  /*
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443666230-8999-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

