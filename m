X-GM-THRID: 6475500386308325376
X-Received: by 10.107.182.139 with SMTP id g133mr7619278iof.20.1508270055703;
        Tue, 17 Oct 2017 12:54:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.211 with SMTP id l202ls519405ita.8.canary-gmail; Tue, 17
 Oct 2017 12:54:14 -0700 (PDT)
X-Received: by 10.107.197.197 with SMTP id v188mr10596610iof.68.1508270054952;
        Tue, 17 Oct 2017 12:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508270054; cv=none;
        d=google.com; s=arc-20160816;
        b=BczmrXfzIbcSEOwLt5BoeeSH6nU3b4FOHX0mfumN59oNYRe12QceBuRzZ1AvTPAYd1
         kTzjeAW54FbT0yFrljs/gOyCaFnnyfn0CSQRba+05MOn9s5tgpC7znr8WTIsmsYf0yVs
         T/30rrSZSlendSGvCN4X8glUF8T/9qHrDxXUCAwSFhTdo520SVafEe60+uz7dePME+A1
         STifgGoaNwoCrAww2aIaVXX5oRugwcafiLEmlLhmQVZ0c9J4SVp6QdQCCnMFvb5wVf6P
         AevZ/arZEHGCKGu3eK9/OTZDmeV5BaqqBqyljGgd9gT7qkkEgWP9AxEKE5/jtruEBpmz
         1ONA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=hGOgOsj2k/DWWbXgp2d7iNN4PwiZpJcapdMsx1+iQ4M=;
        b=HGDCl0zmBBfIDVGwZT9sgFxGTsLd5zTR3JaoHzFx8IEOtbPO5Hr8pGEpWFCgZjGZLn
         k6ND5HzxvRxa5pQsKRZOwgVpP3AifaT/2E3SCFz/EnHG7Pu04cMRi+m6eYF3BI5md7ZB
         1B45DRgA1zqMIoTyf4o2Pg2iPUCw+ItGq3lre5HhioDcFmL/9u8rGqMX7PsfvrggCudh
         J/tsYjG7GYDS7Dzpg75PZM5w2OzyQ5wJcFqT2OV7rSYsOtYlIVew7JEyzTcaAWs9tP/S
         uKn0icgSBejNQPyNFuEwQZRN0imFXlG62q7uI1+8gfcviXD+c3KEMVnCDKUtZzCo/0g+
         +/5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IgkcGtL4;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::235 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x235.google.com (mail-qt0-x235.google.com. [2607:f8b0:400d:c0d::235])
        by gmr-mx.google.com with ESMTPS id w8si496099iof.1.2017.10.17.12.54.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 12:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::235 as permitted sender) client-ip=2607:f8b0:400d:c0d::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IgkcGtL4;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::235 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x235.google.com with SMTP id j58so6176639qtj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 12:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hGOgOsj2k/DWWbXgp2d7iNN4PwiZpJcapdMsx1+iQ4M=;
        b=IgkcGtL4wwZIOogvoqEKGq9NXEzgOJeAoMkoFSm7a7pP1pxwTfJdqGs9R8ZIvx1oNB
         BSr3hOIfQ1xaSqTZIKqmJdFd++gIQTk0q7n8ICIHQzQHVeM2GCaAG9WAe4ibxVNjj9sU
         Mw/3trvVl9QdRUNQd10+UqjzBeJFqgC55F/Ag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hGOgOsj2k/DWWbXgp2d7iNN4PwiZpJcapdMsx1+iQ4M=;
        b=hbcH8/T3YgniBj6dG/JY6Bv0W/GGa9Bn9xR6V9QqdA+j2zwolI3T0cpY1UhSecPVsw
         L5PASA/aHMAm9kjPBvGs1NMlS89vBKGVqcgRXsUo+fq07hfysaNhiK/DfUsuR81mkJbX
         /g5v//Qn6iWGIWapWuFRpYvqyMwwatDmXAMmgdZ3kMuwVE+ndVn9Hl8aZjirBTs8+K4b
         AkZhNhIIgzOxJakeIANrQz8dkJ15mOvHX95PIQynkWt6Srrqy6iufozrCRYphhiotT7G
         jd8j72occT3RdsNiNrkyRyy4UMBxCyBYFLwNQOIjx495hCBNlomDbKSc0PM6nqZcyAh2
         kzyA==
X-Gm-Message-State: AMCzsaVlR6zz++ma1iv0m/3S2hZBXr0CZxOtKXgpHcWIB3Wd3iU9hAR6
	OpYm0wJsTrjI+qZCQzguhVke+Q==
X-Google-Smtp-Source: ABhQp+SbL5TiHUQUhiI1Nz0b4kBJStOvgqVLyW9zOTmK/GnBSYo5/J9VVqEsHxl4QAT1jo7niGptYQ==
X-Received: by 10.129.4.77 with SMTP id 74mr3404003ywe.137.1508270054488;
        Tue, 17 Oct 2017 12:54:14 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:0:f685:3152:9ba1:429a])
        by smtp.gmail.com with ESMTPSA id n134sm9494245ywn.27.2017.10.17.12.54.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Oct 2017 12:54:13 -0700 (PDT)
Date: Tue, 17 Oct 2017 15:54:13 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: Re: [PATCH v3 1/2] drm: Move debug macros out of drmP.h
Message-ID: <20171017195413.rlzmpurlk6cqho2z@art_vandelay>
References: <cover.1508228315.git.hamohammed.sa@gmail.com>
 <c20e22c2a478cc0be5d23458dea9375a89bf5f80.1508228315.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c20e22c2a478cc0be5d23458dea9375a89bf5f80.1508228315.git.hamohammed.sa@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)

On Tue, Oct 17, 2017 at 02:43:38AM -0600, Haneen Mohammed wrote:
> This patch extract DRM_* debug macros from drmP.h to drm_print.h and
> move printing related functions used by these macros from drm_drv.[hc]
> to drm_print.[hc].
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> Changes in v3:
> - Move debug macros and print functions into drm_print.[hc] instead of
> introducing drm_debug.[hc].
> 
>  drivers/gpu/drm/drm_drv.c   |  47 -------------
>  drivers/gpu/drm/drm_print.c |  47 +++++++++++++
>  include/drm/drmP.h          | 150 +-----------------------------------------
>  include/drm/drm_drv.h       |   7 --
>  include/drm/drm_print.h     | 156 ++++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 204 insertions(+), 203 deletions(-)
> 

<snip />

> diff --git a/include/drm/drmP.h b/include/drm/drmP.h
> index 7277783a..2ba73ff4 100644
> --- a/include/drm/drmP.h
> +++ b/include/drm/drmP.h
> @@ -75,6 +75,7 @@
>  #include <drm/drm_sarea.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_prime.h>
> +#include <drm/drm_print.h>
>  #include <drm/drm_pci.h>
>  #include <drm/drm_file.h>
>  #include <drm/drm_debugfs.h>
> @@ -142,160 +143,11 @@ struct pci_controller;
>  /*@{*/
>  

Any reason why you didn't move the DRM_UT_* defines as well? They're sprinkled
through a couple drivers, but it's all related to debug messaging.

Sean

>  /***********************************************************************/
> -/** \name Macros to make printk easier */
> -/*@{*/
> -
> -#define _DRM_PRINTK(once, level, fmt, ...)				\
> -	do {								\
> -		printk##once(KERN_##level "[" DRM_NAME "] " fmt,	\
> -			     ##__VA_ARGS__);				\
> -	} while (0)
> -
> -#define DRM_INFO(fmt, ...)						\
> -	_DRM_PRINTK(, INFO, fmt, ##__VA_ARGS__)
> -#define DRM_NOTE(fmt, ...)						\
> -	_DRM_PRINTK(, NOTICE, fmt, ##__VA_ARGS__)
> -#define DRM_WARN(fmt, ...)						\
> -	_DRM_PRINTK(, WARNING, fmt, ##__VA_ARGS__)
> -
> -#define DRM_INFO_ONCE(fmt, ...)						\
> -	_DRM_PRINTK(_once, INFO, fmt, ##__VA_ARGS__)
> -#define DRM_NOTE_ONCE(fmt, ...)						\
> -	_DRM_PRINTK(_once, NOTICE, fmt, ##__VA_ARGS__)
> -#define DRM_WARN_ONCE(fmt, ...)						\
> -	_DRM_PRINTK(_once, WARNING, fmt, ##__VA_ARGS__)
> -
> -/**
> - * Error output.
> - *
> - * \param fmt printf() like format string.
> - * \param arg arguments
> - */
> -#define DRM_DEV_ERROR(dev, fmt, ...)					\
> -	drm_dev_printk(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*",\
> -		       fmt, ##__VA_ARGS__)
> -#define DRM_ERROR(fmt, ...)						\
> -	drm_printk(KERN_ERR, DRM_UT_NONE, fmt,	##__VA_ARGS__)
> -
> -/**
> - * Rate limited error output.  Like DRM_ERROR() but won't flood the log.
> - *
> - * \param fmt printf() like format string.
> - * \param arg arguments
> - */
> -#define DRM_DEV_ERROR_RATELIMITED(dev, fmt, ...)			\
> -({									\
> -	static DEFINE_RATELIMIT_STATE(_rs,				\
> -				      DEFAULT_RATELIMIT_INTERVAL,	\
> -				      DEFAULT_RATELIMIT_BURST);		\
> -									\
> -	if (__ratelimit(&_rs))						\
> -		DRM_DEV_ERROR(dev, fmt, ##__VA_ARGS__);			\
> -})
> -#define DRM_ERROR_RATELIMITED(fmt, ...)					\
> -	DRM_DEV_ERROR_RATELIMITED(NULL, fmt, ##__VA_ARGS__)
> -
> -#define DRM_DEV_INFO(dev, fmt, ...)					\
> -	drm_dev_printk(dev, KERN_INFO, DRM_UT_NONE, __func__, "", fmt,	\
> -		       ##__VA_ARGS__)
> -
> -#define DRM_DEV_INFO_ONCE(dev, fmt, ...)				\
> -({									\
> -	static bool __print_once __read_mostly;				\
> -	if (!__print_once) {						\
> -		__print_once = true;					\
> -		DRM_DEV_INFO(dev, fmt, ##__VA_ARGS__);			\
> -	}								\
> -})
> -
> -/**
> - * Debug output.
> - *
> - * \param fmt printf() like format string.
> - * \param arg arguments
> - */
> -#define DRM_DEV_DEBUG(dev, fmt, args...)				\
> -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_CORE, __func__, "", fmt,	\
> -		       ##args)
> -#define DRM_DEBUG(fmt, ...)						\
> -	drm_printk(KERN_DEBUG, DRM_UT_CORE, fmt, ##__VA_ARGS__)
> -
> -#define DRM_DEV_DEBUG_DRIVER(dev, fmt, args...)				\
> -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_DRIVER, __func__, "",	\
> -		       fmt, ##args)
> -#define DRM_DEBUG_DRIVER(fmt, ...)					\
> -	drm_printk(KERN_DEBUG, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
> -
> -#define DRM_DEV_DEBUG_KMS(dev, fmt, args...)				\
> -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_KMS, __func__, "", fmt,	\
> -		       ##args)
> -#define DRM_DEBUG_KMS(fmt, ...)					\
> -	drm_printk(KERN_DEBUG, DRM_UT_KMS, fmt, ##__VA_ARGS__)
> -
> -#define DRM_DEV_DEBUG_PRIME(dev, fmt, args...)				\
> -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_PRIME, __func__, "",	\
> -		       fmt, ##args)
> -#define DRM_DEBUG_PRIME(fmt, ...)					\
> -	drm_printk(KERN_DEBUG, DRM_UT_PRIME, fmt, ##__VA_ARGS__)
> -
> -#define DRM_DEV_DEBUG_ATOMIC(dev, fmt, args...)				\
> -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ATOMIC, __func__, "",	\
> -		       fmt, ##args)
> -#define DRM_DEBUG_ATOMIC(fmt, ...)					\
> -	drm_printk(KERN_DEBUG, DRM_UT_ATOMIC, fmt, ##__VA_ARGS__)
> -
> -#define DRM_DEV_DEBUG_VBL(dev, fmt, args...)				\
> -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_VBL, __func__, "", fmt,	\
> -		       ##args)
> -#define DRM_DEBUG_VBL(fmt, ...)					\
> -	drm_printk(KERN_DEBUG, DRM_UT_VBL, fmt, ##__VA_ARGS__)
> -
> -#define _DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, level, fmt, args...)	\
> -({									\
> -	static DEFINE_RATELIMIT_STATE(_rs,				\
> -				      DEFAULT_RATELIMIT_INTERVAL,	\
> -				      DEFAULT_RATELIMIT_BURST);		\
> -	if (__ratelimit(&_rs))						\
> -		drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ ## level,	\
> -			       __func__, "", fmt, ##args);		\
> -})
> -
> -/**
> - * Rate limited debug output. Like DRM_DEBUG() but won't flood the log.
> - *
> - * \param fmt printf() like format string.
> - * \param arg arguments
> - */
> -#define DRM_DEV_DEBUG_RATELIMITED(dev, fmt, args...)			\
> -	DEV__DRM_DEFINE_DEBUG_RATELIMITED(dev, CORE, fmt, ##args)
> -#define DRM_DEBUG_RATELIMITED(fmt, args...)				\
> -	DRM_DEV_DEBUG_RATELIMITED(NULL, fmt, ##args)
> -#define DRM_DEV_DEBUG_DRIVER_RATELIMITED(dev, fmt, args...)		\
> -	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, DRIVER, fmt, ##args)
> -#define DRM_DEBUG_DRIVER_RATELIMITED(fmt, args...)			\
> -	DRM_DEV_DEBUG_DRIVER_RATELIMITED(NULL, fmt, ##args)
> -#define DRM_DEV_DEBUG_KMS_RATELIMITED(dev, fmt, args...)		\
> -	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, KMS, fmt, ##args)
> -#define DRM_DEBUG_KMS_RATELIMITED(fmt, args...)				\
> -	DRM_DEV_DEBUG_KMS_RATELIMITED(NULL, fmt, ##args)
> -#define DRM_DEV_DEBUG_PRIME_RATELIMITED(dev, fmt, args...)		\
> -	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, PRIME, fmt, ##args)
> -#define DRM_DEBUG_PRIME_RATELIMITED(fmt, args...)			\
> -	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##args)
> -
> -/* Format strings and argument splitters to simplify printing
> - * various "complex" objects
> - */
> -
> -/*@}*/
> -
> -/***********************************************************************/
>  /** \name Internal types and structures */
>  /*@{*/
>  
>  #define DRM_IF_VERSION(maj, min) (maj << 16 | min)
>  
> -
>  /**
>   * drm_drv_uses_atomic_modeset - check if the driver implements
>   * atomic_commit()
> diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
> index 71bbaae..4f3cc25 100644
> --- a/include/drm/drm_drv.h
> +++ b/include/drm/drm_drv.h
> @@ -592,13 +592,6 @@ struct drm_driver {
>  	int dev_priv_size;
>  };
>  
> -__printf(6, 7)
> -void drm_dev_printk(const struct device *dev, const char *level,
> -		    unsigned int category, const char *function_name,
> -		    const char *prefix, const char *format, ...);
> -__printf(3, 4)
> -void drm_printk(const char *level, unsigned int category,
> -		const char *format, ...);
>  extern unsigned int drm_debug;
>  
>  int drm_dev_init(struct drm_device *dev,
> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> index ca4d7c6..9dacc5e 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -128,4 +128,160 @@ static inline struct drm_printer drm_debug_printer(const char *prefix)
>  	};
>  	return p;
>  }
> +
> +__printf(6, 7)
> +void drm_dev_printk(const struct device *dev, const char *level,
> +		    unsigned int category, const char *function_name,
> +		    const char *prefix, const char *format, ...);
> +__printf(3, 4)
> +void drm_printk(const char *level, unsigned int category,
> +		const char *format, ...);
> +/***********************************************************************/
> +/** \name Macros to make printk easier */
> +/*@{*/
> +
> +#define _DRM_PRINTK(once, level, fmt, ...)				\
> +	do {								\
> +		printk##once(KERN_##level "[" DRM_NAME "] " fmt,	\
> +			     ##__VA_ARGS__);				\
> +	} while (0)
> +
> +#define DRM_INFO(fmt, ...)						\
> +	_DRM_PRINTK(, INFO, fmt, ##__VA_ARGS__)
> +#define DRM_NOTE(fmt, ...)						\
> +	_DRM_PRINTK(, NOTICE, fmt, ##__VA_ARGS__)
> +#define DRM_WARN(fmt, ...)						\
> +	_DRM_PRINTK(, WARNING, fmt, ##__VA_ARGS__)
> +
> +#define DRM_INFO_ONCE(fmt, ...)						\
> +	_DRM_PRINTK(_once, INFO, fmt, ##__VA_ARGS__)
> +#define DRM_NOTE_ONCE(fmt, ...)						\
> +	_DRM_PRINTK(_once, NOTICE, fmt, ##__VA_ARGS__)
> +#define DRM_WARN_ONCE(fmt, ...)						\
> +	_DRM_PRINTK(_once, WARNING, fmt, ##__VA_ARGS__)
> +
> +/**
> + * Error output.
> + *
> + * \param fmt printf() like format string.
> + * \param arg arguments
> + */
> +#define DRM_DEV_ERROR(dev, fmt, ...)					\
> +	drm_dev_printk(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*",\
> +		       fmt, ##__VA_ARGS__)
> +#define DRM_ERROR(fmt, ...)						\
> +	drm_printk(KERN_ERR, DRM_UT_NONE, fmt,	##__VA_ARGS__)
> +
> +/**
> + * Rate limited error output.  Like DRM_ERROR() but won't flood the log.
> + *
> + * \param fmt printf() like format string.
> + * \param arg arguments
> + */
> +#define DRM_DEV_ERROR_RATELIMITED(dev, fmt, ...)			\
> +({									\
> +	static DEFINE_RATELIMIT_STATE(_rs,				\
> +				      DEFAULT_RATELIMIT_INTERVAL,	\
> +				      DEFAULT_RATELIMIT_BURST);		\
> +									\
> +	if (__ratelimit(&_rs))						\
> +		DRM_DEV_ERROR(dev, fmt, ##__VA_ARGS__);			\
> +})
> +#define DRM_ERROR_RATELIMITED(fmt, ...)					\
> +	DRM_DEV_ERROR_RATELIMITED(NULL, fmt, ##__VA_ARGS__)
> +
> +#define DRM_DEV_INFO(dev, fmt, ...)					\
> +	drm_dev_printk(dev, KERN_INFO, DRM_UT_NONE, __func__, "", fmt,	\
> +		       ##__VA_ARGS__)
> +
> +#define DRM_DEV_INFO_ONCE(dev, fmt, ...)				\
> +({									\
> +	static bool __print_once __read_mostly;				\
> +	if (!__print_once) {						\
> +		__print_once = true;					\
> +		DRM_DEV_INFO(dev, fmt, ##__VA_ARGS__);			\
> +	}								\
> +})
> +
> +/**
> + * Debug output.
> + *
> + * \param fmt printf() like format string.
> + * \param arg arguments
> + */
> +#define DRM_DEV_DEBUG(dev, fmt, args...)				\
> +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_CORE, __func__, "", fmt,	\
> +		       ##args)
> +#define DRM_DEBUG(fmt, ...)						\
> +	drm_printk(KERN_DEBUG, DRM_UT_CORE, fmt, ##__VA_ARGS__)
> +
> +#define DRM_DEV_DEBUG_DRIVER(dev, fmt, args...)				\
> +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_DRIVER, __func__, "",	\
> +		       fmt, ##args)
> +#define DRM_DEBUG_DRIVER(fmt, ...)					\
> +	drm_printk(KERN_DEBUG, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
> +
> +#define DRM_DEV_DEBUG_KMS(dev, fmt, args...)				\
> +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_KMS, __func__, "", fmt,	\
> +		       ##args)
> +#define DRM_DEBUG_KMS(fmt, ...)					\
> +	drm_printk(KERN_DEBUG, DRM_UT_KMS, fmt, ##__VA_ARGS__)
> +
> +#define DRM_DEV_DEBUG_PRIME(dev, fmt, args...)				\
> +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_PRIME, __func__, "",	\
> +		       fmt, ##args)
> +#define DRM_DEBUG_PRIME(fmt, ...)					\
> +	drm_printk(KERN_DEBUG, DRM_UT_PRIME, fmt, ##__VA_ARGS__)
> +
> +#define DRM_DEV_DEBUG_ATOMIC(dev, fmt, args...)				\
> +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ATOMIC, __func__, "",	\
> +		       fmt, ##args)
> +#define DRM_DEBUG_ATOMIC(fmt, ...)					\
> +	drm_printk(KERN_DEBUG, DRM_UT_ATOMIC, fmt, ##__VA_ARGS__)
> +
> +#define DRM_DEV_DEBUG_VBL(dev, fmt, args...)				\
> +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_VBL, __func__, "", fmt,	\
> +		       ##args)
> +#define DRM_DEBUG_VBL(fmt, ...)					\
> +	drm_printk(KERN_DEBUG, DRM_UT_VBL, fmt, ##__VA_ARGS__)
> +
> +#define _DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, level, fmt, args...)	\
> +({									\
> +	static DEFINE_RATELIMIT_STATE(_rs,				\
> +				      DEFAULT_RATELIMIT_INTERVAL,	\
> +				      DEFAULT_RATELIMIT_BURST);		\
> +	if (__ratelimit(&_rs))						\
> +		drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ ## level,	\
> +			       __func__, "", fmt, ##args);		\
> +})
> +
> +/**
> + * Rate limited debug output. Like DRM_DEBUG() but won't flood the log.
> + *
> + * \param fmt printf() like format string.
> + * \param arg arguments
> + */
> +#define DRM_DEV_DEBUG_RATELIMITED(dev, fmt, args...)			\
> +	DEV__DRM_DEFINE_DEBUG_RATELIMITED(dev, CORE, fmt, ##args)
> +#define DRM_DEBUG_RATELIMITED(fmt, args...)				\
> +	DRM_DEV_DEBUG_RATELIMITED(NULL, fmt, ##args)
> +#define DRM_DEV_DEBUG_DRIVER_RATELIMITED(dev, fmt, args...)		\
> +	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, DRIVER, fmt, ##args)
> +#define DRM_DEBUG_DRIVER_RATELIMITED(fmt, args...)			\
> +	DRM_DEV_DEBUG_DRIVER_RATELIMITED(NULL, fmt, ##args)
> +#define DRM_DEV_DEBUG_KMS_RATELIMITED(dev, fmt, args...)		\
> +	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, KMS, fmt, ##args)
> +#define DRM_DEBUG_KMS_RATELIMITED(fmt, args...)				\
> +	DRM_DEV_DEBUG_KMS_RATELIMITED(NULL, fmt, ##args)
> +#define DRM_DEV_DEBUG_PRIME_RATELIMITED(dev, fmt, args...)		\
> +	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, PRIME, fmt, ##args)
> +#define DRM_DEBUG_PRIME_RATELIMITED(fmt, args...)			\
> +	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##args)
> +
> +/* Format strings and argument splitters to simplify printing
> + * various "complex" objects
> + */
> +
> +/*@}*/
> +
>  #endif /* DRM_PRINT_H_ */
> -- 
> 2.7.4
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

