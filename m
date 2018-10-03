X-GM-THRID: 6608122280379678720
X-Received: by 2002:a1c:84:: with SMTP id 126-v6mr812365wma.4.1538574039988;
        Wed, 03 Oct 2018 06:40:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9a70:: with SMTP id z103-v6ls301346wrb.24.gmail; Wed, 03
 Oct 2018 06:40:39 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61j0bJS8KnTRo5LJNqYCRo7Edvgq8sYdhblE4fhk6cajTWF+ijx8WNAOXSj4iif2EE2On7q
X-Received: by 2002:adf:a653:: with SMTP id k77-v6mr59289wrc.9.1538574039065;
        Wed, 03 Oct 2018 06:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538574039; cv=none;
        d=google.com; s=arc-20160816;
        b=QUnvTIjWMSHEUfqXtjKrtex1nbr9iURUFIoMg2/vgu/EqxobqZUCsxqcWjotpmJLBs
         MWCT7x4x/08UtjVGjRyClX4lYr5uuYxNTrcabdooItmS3jiyG9V35cGAHdvNw2uiCv9e
         +IHVwlgxlorZyWT3XmHJ+8SYeQ1TJU/XG5+cIiiCfJSIjryy6i0vAGaOtlFO7tmbplGK
         aJucy8X+ypOmRPC3jFsyy/bGcHWtzWSqnXcVhjGvrteJJYdc6K8o+ugFB6nVUN0Xzd3z
         XAUQX+RIs94hIG1Os3oNvL5IkHjY/gbOJsqDh3etZSDBjP5TdPTqGySxP3BNrUoWEiAx
         8QiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Zar5fxx8PpPyIRDYjMsT9xY86Bs+i+lbUdT8+RNde4w=;
        b=kyHpCF5wT2Jyub4ZkTGI0drmCf1TmQdVCtKF1SslqiaMXSR34/CkYvdbgQglCP+1Gg
         gfjBzSom0TNORc3/1FweTeGS+JKxDOpZ3x7TASTQLnqFjG/PkqN5a5SnMiRNKFqXV0mg
         NkftWS9+fJXwowL/GgyN/n3dnFQIA8bfGO9cmzC8wsS8xTukDo1H55QIrelPqvyyq3rO
         65cAC215envAWHixUDUFR2rCDMNMR7QSDA8PExgk9lGjTYN0Ca9T9vzr0FI+BdYmU/12
         yc4p+xrLRg3Acg+PyKjlOkxdRFONP9kHYPCo+Agj+gRX4Qse4syypjL4/jbkbvbR94Wm
         IT7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 41-v6si47795wrb.3.2018.10.03.06.40.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 06:40:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,336,1534802400"; 
   d="scan'208";a="280840446"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Oct 2018 15:40:38 +0200
Date: Wed, 3 Oct 2018 15:40:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Adding spaces around
 '<<'
In-Reply-To: <20181003132917.GA29977@armorer>
Message-ID: <alpine.DEB.2.20.1810031540180.2839@hadrien>
References: <20181003132917.GA29977@armorer>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 3 Oct 2018, Mamta Shukla wrote:

> Adding spaces around '<<' to fix checkpatch issue.
> CHECK: spaces preferred around that '<<' (ctx:VxV)

It looks like the BIT macro could actually be mre useful here.

julia

>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft.h | 56 +++++++++++++++++++++----------------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 25302ff..a3db23b 100644
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
> +#define DEBUG_DRIVER_INIT_FUNCTIONS  (1 << 3)
> +#define DEBUG_TIME_FIRST_UPDATE      (1 << 4)
> +#define DEBUG_TIME_EACH_UPDATE       (1 << 5)
> +#define DEBUG_DEFERRED_IO            (1 << 6)
> +#define DEBUG_FBTFT_INIT_FUNCTIONS   (1 << 7)
>
>  /* fbops */
> -#define DEBUG_FB_READ               (1<<8)
> -#define DEBUG_FB_WRITE              (1<<9)
> -#define DEBUG_FB_FILLRECT           (1<<10)
> -#define DEBUG_FB_COPYAREA           (1<<11)
> -#define DEBUG_FB_IMAGEBLIT          (1<<12)
> -#define DEBUG_FB_SETCOLREG          (1<<13)
> -#define DEBUG_FB_BLANK              (1<<14)
> +#define DEBUG_FB_READ                (1 << 8)
> +#define DEBUG_FB_WRITE               (1 << 9)
> +#define DEBUG_FB_FILLRECT            (1 << 10)
> +#define DEBUG_FB_COPYAREA            (1 << 11)
> +#define DEBUG_FB_IMAGEBLIT           (1 << 12)
> +#define DEBUG_FB_SETCOLREG           (1 << 13)
> +#define DEBUG_FB_BLANK               (1 << 14)
>
> -#define DEBUG_SYSFS                 (1<<16)
> +#define DEBUG_SYSFS                  (1 << 16)
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
> +#define DEBUG_BACKLIGHT              (1 << 17)
> +#define DEBUG_READ                   (1 << 18)
> +#define DEBUG_WRITE                  (1 << 19)
> +#define DEBUG_WRITE_VMEM             (1 << 20)
> +#define DEBUG_WRITE_REGISTER         (1 << 21)
> +#define DEBUG_SET_ADDR_WIN           (1 << 22)
> +#define DEBUG_RESET                  (1 << 23)
> +#define DEBUG_MKDIRTY                (1 << 24)
> +#define DEBUG_UPDATE_DISPLAY         (1 << 25)
> +#define DEBUG_INIT_DISPLAY           (1 << 26)
> +#define DEBUG_BLANK                  (1 << 27)
> +#define DEBUG_REQUEST_GPIOS          (1 << 28)
> +#define DEBUG_FREE_GPIOS             (1 << 29)
> +#define DEBUG_REQUEST_GPIOS_MATCH    (1 << 30)
> +#define DEBUG_VERIFY_GPIOS           (1 << 31)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181003132917.GA29977%40armorer.
> For more options, visit https://groups.google.com/d/optout.
>

