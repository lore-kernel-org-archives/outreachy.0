X-GM-THRID: 6608144919941873664
X-Received: by 2002:a5d:4f88:: with SMTP id d8-v6mr341737wru.29.1538593110768;
        Wed, 03 Oct 2018 11:58:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a60d:: with SMTP id k13-v6ls512216wrc.16.gmail; Wed, 03
 Oct 2018 11:58:29 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60WknnU9m/E/D7my+IGuuGbkNtjZPH4FjjxMBQkgZI0nQYCFOC5/TgelXRQrcKy4Bjyux0C
X-Received: by 2002:adf:ec4b:: with SMTP id w11-v6mr337763wrn.20.1538593109830;
        Wed, 03 Oct 2018 11:58:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538593109; cv=none;
        d=google.com; s=arc-20160816;
        b=RNuuATSU/nqTGYKX8cUcTjat9pnfQ9kSyMx49KpNNT+2x5qu24PLKrlDZ7Y6hIHd4s
         P7WLOd8l45b5bvWFpTDx3LmfNloIWrwZ3Dc/jCseaFQzW/71lpL0JewT0bMG3pZ20d/b
         cKUkGbJI4sgpjBZXImKgE3AhGNLQFbqw69WzAIV6Ur6C79zmh6moD75/IYOyQSWlBZEU
         iu6PzUU7YLNcyV5+A5SFHY1CWrdc+PnChUf5LS6lZj7KwucW5SRIrJpQ2dIimH8aeIVL
         f13FDxHW0cEwYXv7vV8OcqPh7B0Z14/+J+9Y5hV9woSm/XTHjN749NmfpIteEFdhHuve
         tdeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=kWQKs8Jx7VebV1Q88ASxauWoJiFtAtxDacnYeprzv2M=;
        b=yxYRH/nRVBTY47KvxXk1/fB2gWaKs2tghcd7I74DPtN+YMPfBpF3VMrQHEHTW5rdSi
         tAZC/UPJL8GP1aQr3H/6CYhezg2fqaTzmruMLix8U0+p7mmX9C2rz6AnRSs5vDEeo++z
         WLPlI3WX8G2lzKlHZod6rKkM6Zv1IvFKNUEDXAQ/owE4nupcAsFhcqiFUMyj84oj28iL
         brL/RWKZNPyoHu1lLcFC3YvSuyrvLO129RwKcNJinvK1I2ijfFymZvwVzcxGTpmZIcyh
         zuYcjvOV7EKDLE63bDAc/ZcWAxH6HrWSo5F4lc2Hu8nJ4lg4YCiwXbZx2te03FRFSCi5
         N3Og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 191-v6si249979wmv.0.2018.10.03.11.58.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 11:58:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,336,1534802400"; 
   d="scan'208";a="280876352"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Oct 2018 20:58:29 +0200
Date: Wed, 3 Oct 2018 20:58:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Prefer using the BIT
 macro
In-Reply-To: <20181003144015.GA31815@armorer>
Message-ID: <alpine.DEB.2.21.1810032057390.2527@hadrien>
References: <20181003144015.GA31815@armorer>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 3 Oct 2018, Mamta Shukla wrote:

> Replacing all occurrences of (1<<x) with BIT(x) to fix checkpatch issue.
> CHECK:Prefer using the BIT macro

Replacing should be Replace.  That is, you should use the imperative.

> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/fbtft/fbtft.h | 56 +++++++++++++++++++++----------------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 25302ff..ac427ba 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -355,39 +355,39 @@ static void __exit fbtft_driver_module_exit(void)                          \
>  #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
>  #define DEBUG_LEVEL_7	0xFFFFFFFF
>
> -#define DEBUG_DRIVER_INIT_FUNCTIONS (1<<3)
> -#define DEBUG_TIME_FIRST_UPDATE     (1<<4)
> -#define DEBUG_TIME_EACH_UPDATE      (1<<5)
> -#define DEBUG_DEFERRED_IO           (1<<6)
> -#define DEBUG_FBTFT_INIT_FUNCTIONS  (1<<7)
> +#define DEBUG_DRIVER_INIT_FUNCTIONS BIT(3)
> +#define DEBUG_TIME_FIRST_UPDATE     BIT(4)
> +#define DEBUG_TIME_EACH_UPDATE      BIT(5)
> +#define DEBUG_DEFERRED_IO           BIT(6)
> +#define DEBUG_FBTFT_INIT_FUNCTIONS  BIT(7)
>
>  /* fbops */
> -#define DEBUG_FB_READ               (1<<8)
> -#define DEBUG_FB_WRITE              (1<<9)
> -#define DEBUG_FB_FILLRECT           (1<<10)
> -#define DEBUG_FB_COPYAREA           (1<<11)
> -#define DEBUG_FB_IMAGEBLIT          (1<<12)
> -#define DEBUG_FB_SETCOLREG          (1<<13)
> -#define DEBUG_FB_BLANK              (1<<14)
> +#define DEBUG_FB_READ               BIT(8)
> +#define DEBUG_FB_WRITE              BIT(9)
> +#define DEBUG_FB_FILLRECT           BIT(10)
> +#define DEBUG_FB_COPYAREA           BIT(11)
> +#define DEBUG_FB_IMAGEBLIT          BIT(12)
> +#define DEBUG_FB_SETCOLREG          BIT(13)
> +#define DEBUG_FB_BLANK              BIT(14)
>
> -#define DEBUG_SYSFS                 (1<<16)
> +#define DEBUG_SYSFS                 BIT(16)
>
>  /* fbtftops */
> -#define DEBUG_BACKLIGHT             (1<<17)
> -#define DEBUG_READ                  (1<<18)
> -#define DEBUG_WRITE                 (1<<19)
> -#define DEBUG_WRITE_VMEM            (1<<20)
> -#define DEBUG_WRITE_REGISTER        (1<<21)
> -#define DEBUG_SET_ADDR_WIN          (1<<22)
> -#define DEBUG_RESET                 (1<<23)
> -#define DEBUG_MKDIRTY               (1<<24)
> -#define DEBUG_UPDATE_DISPLAY        (1<<25)
> -#define DEBUG_INIT_DISPLAY          (1<<26)
> -#define DEBUG_BLANK                 (1<<27)
> -#define DEBUG_REQUEST_GPIOS         (1<<28)
> -#define DEBUG_FREE_GPIOS            (1<<29)
> -#define DEBUG_REQUEST_GPIOS_MATCH   (1<<30)
> -#define DEBUG_VERIFY_GPIOS          (1<<31)
> +#define DEBUG_BACKLIGHT             BIT(17)
> +#define DEBUG_READ                  BIT(18)
> +#define DEBUG_WRITE                 BIT(19)
> +#define DEBUG_WRITE_VMEM            BIT(20)
> +#define DEBUG_WRITE_REGISTER        BIT(21)
> +#define DEBUG_SET_ADDR_WIN          BIT(22)
> +#define DEBUG_RESET                 BIT(23)
> +#define DEBUG_MKDIRTY               BIT(24)
> +#define DEBUG_UPDATE_DISPLAY        BIT(25)
> +#define DEBUG_INIT_DISPLAY          BIT(26)
> +#define DEBUG_BLANK                 BIT(27)
> +#define DEBUG_REQUEST_GPIOS         BIT(28)
> +#define DEBUG_FREE_GPIOS            BIT(29)
> +#define DEBUG_REQUEST_GPIOS_MATCH   BIT(30)
> +#define DEBUG_VERIFY_GPIOS          BIT(31)
>
>  #define fbtft_init_dbg(dev, format, arg...)                  \
>  do {                                                         \
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181003144015.GA31815%40armorer.
> For more options, visit https://groups.google.com/d/optout.
>

