X-GM-THRID: 6203007824854777856
X-Received: by 10.112.169.34 with SMTP id ab2mr3140359lbc.23.1444981062650;
        Fri, 16 Oct 2015 00:37:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.23.39 with SMTP id n39ls282259lfi.33.gmail; Fri, 16 Oct
 2015 00:37:42 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr3241082lbb.16.1444981061969;
        Fri, 16 Oct 2015 00:37:41 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lb0-x22b.google.com (mail-lb0-x22b.google.com. [2a00:1450:4010:c04::22b])
        by gmr-mx.google.com with ESMTPS id b6si224476lbp.1.2015.10.16.00.37.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 00:37:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c04::22b as permitted sender) client-ip=2a00:1450:4010:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c04::22b as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-lb0-x22b.google.com with SMTP id ao8so92779072lbc.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 00:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=0GFCHd4MC64/lB0NPwWNWvGOsWMHZxqv/PRueznVsXg=;
        b=PA2kVFbRvD40dMw5uHP1lTGW0j6pkqqabA0P3TLt90jAnm0VJ+diCEOHTM+mgVZQLB
         lGZrj9vcEgbVQ4EmIChkR57roT9emsbbl1dq+9eOMOSiy3nNvxLeOMNbcKPu67DP86PY
         O1VKzBR95XM4k9D24cjf/UrQu0UK70UnA/QaY359NTN8Eov9eUWJ5dsk829TQ4rYxDrn
         Ftz/tzPZ1fBCs+Y+82VM9OQPBhTIYqPNS9k38iRG0kMJ35TMtMHb6DvDEGwjiY3J1+Cc
         4DJ8bJj1qdiAn3dAYmttbDd8cv3ISEmej3NXOyUhPy7bXNH3g3y3eLWCaW+9YmBjORYF
         ob2Q==
MIME-Version: 1.0
X-Received: by 10.194.236.200 with SMTP id uw8mr14763591wjc.126.1444981061797;
 Fri, 16 Oct 2015 00:37:41 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Fri, 16 Oct 2015 00:37:41 -0700 (PDT)
In-Reply-To: <1444972856-4624-1-git-send-email-shraddha.6596@gmail.com>
References: <1444972856-4624-1-git-send-email-shraddha.6596@gmail.com>
Date: Fri, 16 Oct 2015 10:37:41 +0300
Message-ID: <CAEnQRZAia7=-w55EwT6C36AXDdQnOcpdA4HAkBftSusFozoJfQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: cdc: Remove unused macros
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 16, 2015 at 8:20 AM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> Remove the macros since they are not used anywhere throughout the
> kernel.
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/iio/cdc/ad7746.c | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index 028b4e8..a4bb152 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -27,11 +27,7 @@
>
>  #define AD7746_REG_STATUS              0
>  #define AD7746_REG_CAP_DATA_HIGH       1
> -#define AD7746_REG_CAP_DATA_MID                2
> -#define AD7746_REG_CAP_DATA_LOW                3
>  #define AD7746_REG_VT_DATA_HIGH                4
> -#define AD7746_REG_VT_DATA_MID         5
> -#define AD7746_REG_VT_DATA_LOW         6
>  #define AD7746_REG_CAP_SETUP           7
>  #define AD7746_REG_VT_SETUP            8
>  #define AD7746_REG_EXC_SETUP           9
> @@ -39,11 +35,8 @@
>  #define AD7746_REG_CAPDACA             11
>  #define AD7746_REG_CAPDACB             12
>  #define AD7746_REG_CAP_OFFH            13
> -#define AD7746_REG_CAP_OFFL            14
>  #define AD7746_REG_CAP_GAINH           15
> -#define AD7746_REG_CAP_GAINL           16
>  #define AD7746_REG_VOLT_GAINH          17
> -#define AD7746_REG_VOLT_GAINL          18
>
>  /* Status Register Bit Designations (AD7746_REG_STATUS) */
>  #define AD7746_STATUS_EXCERR           BIT(3)
> --
> 2.1.4

