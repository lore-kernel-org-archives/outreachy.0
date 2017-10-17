X-GM-THRID: 6475500386308325376
X-Received: by 10.36.17.67 with SMTP id 64mr1559137itf.51.1508272164842;
        Tue, 17 Oct 2017 13:29:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.183.212 with SMTP id h203ls569720iof.12.gmail; Tue, 17 Oct
 2017 13:29:24 -0700 (PDT)
X-Received: by 10.36.50.19 with SMTP id j19mr281111ita.6.1508272164136;
        Tue, 17 Oct 2017 13:29:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508272164; cv=none;
        d=google.com; s=arc-20160816;
        b=rBkODG5R7NSt9wsYRH3ZAEOjrs1Th12eexCLvqn8m4s3X/jEKkJJWnrJamCyT7ND8f
         6BUxNX/jYJGEsOV9yPREi7m9mmiU9xCw1XZUUbIVlfcM8+ijFaqWlAvljDEWMkdML1C0
         VPnaKtyvI/aytF+x67yAOA9orE8liyYVIlGl2wgV+IV+LVFJLDDuQkq84yKCCpwNzI5B
         k+LLZe0liUrGGye7CBLiGVCe2/WMKr61f1Hsot5Qkf+asoG2YARg9eWPofJ14J46tlgV
         cx8CiZf1FbKq58grhM4U+XSp1kl6YOnIly12iRNLs4rVWsonwwJ+3rlNip3Ol/o5HuiN
         Xx6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=MKLvE+gQXnSMhxsUOGbmrFkujm3iI0tzmVTbfuCV/PM=;
        b=GvPdQag6d150MOC9ESSSS1E9kCxKvnrhgnClk61iu71wnYW4uxLv94xP2JrSiEuHra
         tUQinHXbN+Id/rM2CfZ9N2NDkeWBIYntrnyDEOacIHI8gKEF9oSokBlU6WnV3kKhgrHA
         YbwH2y9CmE2DyvS5IJZAd0vcFm3nz3UTdDvGyINvxA9Q2cJCRodT0k57cEPD/KJwihzV
         2A12B3tKCK5+jdTRe9fFiu1z6+Zc175s5gLfqcbE4CKcP97YOZL07vwrlT+ClSqNkyG1
         zQlbBJ1CGiRTZ+4LTSDiFs5R27T+QCJhSFcTawS+ItfCNKNud5CecuIXxLhtJi+fnCKt
         3O+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mKkkX5az;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id d125si136608itg.0.2017.10.17.13.29.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 13:29:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mKkkX5az;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id x7so2188086pfa.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MKLvE+gQXnSMhxsUOGbmrFkujm3iI0tzmVTbfuCV/PM=;
        b=mKkkX5azIwX2XTjFD8TiCmKr6Lt4xz6GgyQBEpOLC93zCUJyQyR6buHm5RjpmY+x03
         f0RS3Ux0pLWvsrWppRnOyeFriRRpg/1jMA1iCr59vdMB6CB3WmnvBr/AGBR3GIWv64v4
         e1fZcynZDsYKMlLrfS59fsdWYAAFubqPVlF2BcgERWLmtAI6CdiliJmfG3nezyaTN2nN
         zjw81VfK+YZ3EyKZzGTysa4fo7tQNbSGfOX6miS/L/30bCiSp0jPMjETQ4j3cesdG/de
         3wWvBQH0KV5VErn7n6j40CWTDdGOTuGBQsicFICefhNbIUBSa98SNBJaEvBs7mXk8TPd
         J0fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MKLvE+gQXnSMhxsUOGbmrFkujm3iI0tzmVTbfuCV/PM=;
        b=G7v46NCle+dmWH8Cf15xt2RPpCqid+gx4dx/V6bTO1ESJg5WtfKMTX3Q/TM9Kh5/sd
         v9GVZzGS9C1aYvKXFsCv+sVdA6HRlFo67QvBuDcF1DQaS9DXNlH2S6Aly+GY5uFnGwq8
         zUry8myt7Rd+nKnEZA38Ri7mqgCHR1ZtQuZf5hlVjWMod7A1bFUfdsbO0wYmAV+fpTgs
         xa1zLwrZteDCzp98p3nwJXOtcs437sB/uva/FejNXAYttTpqBJYMd9Pz9gFqa7bpMGdd
         BALxQaACFbpe80GNXPtvBkW1a6Kvk2do8gv04YCRtgtQyfUX1JGhOdZU7JfkZ0FTxvhB
         WWRg==
X-Gm-Message-State: AMCzsaUYAN5ldjwFp4EIoRj/wWrbBTedg8JFBbtHGKqDf4qaK8weIGr6
	MrTfaAXOS5LxSqK1gn36nms=
X-Google-Smtp-Source: AOwi7QBMFO2AkekkrGLydLNwa/yPSvnbhLLpRfq06+upNV1V6+Ff/r1zJXGNt+MLAlS1YyyJ/FldWw==
X-Received: by 10.99.44.208 with SMTP id s199mr11805375pgs.80.1508272163588;
        Tue, 17 Oct 2017 13:29:23 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id g16sm21273025pfd.87.2017.10.17.13.29.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 13:29:22 -0700 (PDT)
Date: Tue, 17 Oct 2017 14:29:20 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Sean Paul <seanpaul@chromium.org>
Cc: dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: Re: [PATCH v3 1/2] drm: Move debug macros out of drmP.h
Message-ID: <20171017202920.GA15615@Haneen>
References: <cover.1508228315.git.hamohammed.sa@gmail.com>
 <c20e22c2a478cc0be5d23458dea9375a89bf5f80.1508228315.git.hamohammed.sa@gmail.com>
 <20171017195413.rlzmpurlk6cqho2z@art_vandelay>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171017195413.rlzmpurlk6cqho2z@art_vandelay>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 17, 2017 at 03:54:13PM -0400, Sean Paul wrote:
> On Tue, Oct 17, 2017 at 02:43:38AM -0600, Haneen Mohammed wrote:
> > This patch extract DRM_* debug macros from drmP.h to drm_print.h and
> > move printing related functions used by these macros from drm_drv.[hc]
> > to drm_print.[hc].
> > 
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> > Changes in v3:
> > - Move debug macros and print functions into drm_print.[hc] instead of
> > introducing drm_debug.[hc].
> > 
> >  drivers/gpu/drm/drm_drv.c   |  47 -------------
> >  drivers/gpu/drm/drm_print.c |  47 +++++++++++++
> >  include/drm/drmP.h          | 150 +-----------------------------------------
> >  include/drm/drm_drv.h       |   7 --
> >  include/drm/drm_print.h     | 156 ++++++++++++++++++++++++++++++++++++++++++++
> >  5 files changed, 204 insertions(+), 203 deletions(-)
> > 
> 
> <snip />
> 
> > diff --git a/include/drm/drmP.h b/include/drm/drmP.h
> > index 7277783a..2ba73ff4 100644
> > --- a/include/drm/drmP.h
> > +++ b/include/drm/drmP.h
> > @@ -75,6 +75,7 @@
> >  #include <drm/drm_sarea.h>
> >  #include <drm/drm_drv.h>
> >  #include <drm/drm_prime.h>
> > +#include <drm/drm_print.h>
> >  #include <drm/drm_pci.h>
> >  #include <drm/drm_file.h>
> >  #include <drm/drm_debugfs.h>
> > @@ -142,160 +143,11 @@ struct pci_controller;
> >  /*@{*/
> >  
> 
> Any reason why you didn't move the DRM_UT_* defines as well? They're sprinkled
> through a couple drivers, but it's all related to debug messaging.
> 
> Sean
> 

No, I didn't know they are specifically related to debug messaging.
I will include them then in a revised patch.

Thank you,
Haneen

> >  /***********************************************************************/
> > -/** \name Macros to make printk easier */
> > -/*@{*/
> > -
> > -#define _DRM_PRINTK(once, level, fmt, ...)				\
> > -	do {								\
> > -		printk##once(KERN_##level "[" DRM_NAME "] " fmt,	\
> > -			     ##__VA_ARGS__);				\
> > -	} while (0)
> > -
> > -#define DRM_INFO(fmt, ...)						\
> > -	_DRM_PRINTK(, INFO, fmt, ##__VA_ARGS__)
> > -#define DRM_NOTE(fmt, ...)						\
> > -	_DRM_PRINTK(, NOTICE, fmt, ##__VA_ARGS__)
> > -#define DRM_WARN(fmt, ...)						\
> > -	_DRM_PRINTK(, WARNING, fmt, ##__VA_ARGS__)
> > -
> > -#define DRM_INFO_ONCE(fmt, ...)						\
> > -	_DRM_PRINTK(_once, INFO, fmt, ##__VA_ARGS__)
> > -#define DRM_NOTE_ONCE(fmt, ...)						\
> > -	_DRM_PRINTK(_once, NOTICE, fmt, ##__VA_ARGS__)
> > -#define DRM_WARN_ONCE(fmt, ...)						\
> > -	_DRM_PRINTK(_once, WARNING, fmt, ##__VA_ARGS__)
> > -
> > -/**
> > - * Error output.
> > - *
> > - * \param fmt printf() like format string.
> > - * \param arg arguments
> > - */
> > -#define DRM_DEV_ERROR(dev, fmt, ...)					\
> > -	drm_dev_printk(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*",\
> > -		       fmt, ##__VA_ARGS__)
> > -#define DRM_ERROR(fmt, ...)						\
> > -	drm_printk(KERN_ERR, DRM_UT_NONE, fmt,	##__VA_ARGS__)
> > -
> > -/**
> > - * Rate limited error output.  Like DRM_ERROR() but won't flood the log.
> > - *
> > - * \param fmt printf() like format string.
> > - * \param arg arguments
> > - */
> > -#define DRM_DEV_ERROR_RATELIMITED(dev, fmt, ...)			\
> > -({									\
> > -	static DEFINE_RATELIMIT_STATE(_rs,				\
> > -				      DEFAULT_RATELIMIT_INTERVAL,	\
> > -				      DEFAULT_RATELIMIT_BURST);		\
> > -									\
> > -	if (__ratelimit(&_rs))						\
> > -		DRM_DEV_ERROR(dev, fmt, ##__VA_ARGS__);			\
> > -})
> > -#define DRM_ERROR_RATELIMITED(fmt, ...)					\
> > -	DRM_DEV_ERROR_RATELIMITED(NULL, fmt, ##__VA_ARGS__)
> > -
> > -#define DRM_DEV_INFO(dev, fmt, ...)					\
> > -	drm_dev_printk(dev, KERN_INFO, DRM_UT_NONE, __func__, "", fmt,	\
> > -		       ##__VA_ARGS__)
> > -
> > -#define DRM_DEV_INFO_ONCE(dev, fmt, ...)				\
> > -({									\
> > -	static bool __print_once __read_mostly;				\
> > -	if (!__print_once) {						\
> > -		__print_once = true;					\
> > -		DRM_DEV_INFO(dev, fmt, ##__VA_ARGS__);			\
> > -	}								\
> > -})
> > -
> > -/**
> > - * Debug output.
> > - *
> > - * \param fmt printf() like format string.
> > - * \param arg arguments
> > - */
> > -#define DRM_DEV_DEBUG(dev, fmt, args...)				\
> > -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_CORE, __func__, "", fmt,	\
> > -		       ##args)
> > -#define DRM_DEBUG(fmt, ...)						\
> > -	drm_printk(KERN_DEBUG, DRM_UT_CORE, fmt, ##__VA_ARGS__)
> > -
> > -#define DRM_DEV_DEBUG_DRIVER(dev, fmt, args...)				\
> > -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_DRIVER, __func__, "",	\
> > -		       fmt, ##args)
> > -#define DRM_DEBUG_DRIVER(fmt, ...)					\
> > -	drm_printk(KERN_DEBUG, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
> > -
> > -#define DRM_DEV_DEBUG_KMS(dev, fmt, args...)				\
> > -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_KMS, __func__, "", fmt,	\
> > -		       ##args)
> > -#define DRM_DEBUG_KMS(fmt, ...)					\
> > -	drm_printk(KERN_DEBUG, DRM_UT_KMS, fmt, ##__VA_ARGS__)
> > -
> > -#define DRM_DEV_DEBUG_PRIME(dev, fmt, args...)				\
> > -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_PRIME, __func__, "",	\
> > -		       fmt, ##args)
> > -#define DRM_DEBUG_PRIME(fmt, ...)					\
> > -	drm_printk(KERN_DEBUG, DRM_UT_PRIME, fmt, ##__VA_ARGS__)
> > -
> > -#define DRM_DEV_DEBUG_ATOMIC(dev, fmt, args...)				\
> > -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ATOMIC, __func__, "",	\
> > -		       fmt, ##args)
> > -#define DRM_DEBUG_ATOMIC(fmt, ...)					\
> > -	drm_printk(KERN_DEBUG, DRM_UT_ATOMIC, fmt, ##__VA_ARGS__)
> > -
> > -#define DRM_DEV_DEBUG_VBL(dev, fmt, args...)				\
> > -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_VBL, __func__, "", fmt,	\
> > -		       ##args)
> > -#define DRM_DEBUG_VBL(fmt, ...)					\
> > -	drm_printk(KERN_DEBUG, DRM_UT_VBL, fmt, ##__VA_ARGS__)
> > -
> > -#define _DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, level, fmt, args...)	\
> > -({									\
> > -	static DEFINE_RATELIMIT_STATE(_rs,				\
> > -				      DEFAULT_RATELIMIT_INTERVAL,	\
> > -				      DEFAULT_RATELIMIT_BURST);		\
> > -	if (__ratelimit(&_rs))						\
> > -		drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ ## level,	\
> > -			       __func__, "", fmt, ##args);		\
> > -})
> > -
> > -/**
> > - * Rate limited debug output. Like DRM_DEBUG() but won't flood the log.
> > - *
> > - * \param fmt printf() like format string.
> > - * \param arg arguments
> > - */
> > -#define DRM_DEV_DEBUG_RATELIMITED(dev, fmt, args...)			\
> > -	DEV__DRM_DEFINE_DEBUG_RATELIMITED(dev, CORE, fmt, ##args)
> > -#define DRM_DEBUG_RATELIMITED(fmt, args...)				\
> > -	DRM_DEV_DEBUG_RATELIMITED(NULL, fmt, ##args)
> > -#define DRM_DEV_DEBUG_DRIVER_RATELIMITED(dev, fmt, args...)		\
> > -	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, DRIVER, fmt, ##args)
> > -#define DRM_DEBUG_DRIVER_RATELIMITED(fmt, args...)			\
> > -	DRM_DEV_DEBUG_DRIVER_RATELIMITED(NULL, fmt, ##args)
> > -#define DRM_DEV_DEBUG_KMS_RATELIMITED(dev, fmt, args...)		\
> > -	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, KMS, fmt, ##args)
> > -#define DRM_DEBUG_KMS_RATELIMITED(fmt, args...)				\
> > -	DRM_DEV_DEBUG_KMS_RATELIMITED(NULL, fmt, ##args)
> > -#define DRM_DEV_DEBUG_PRIME_RATELIMITED(dev, fmt, args...)		\
> > -	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, PRIME, fmt, ##args)
> > -#define DRM_DEBUG_PRIME_RATELIMITED(fmt, args...)			\
> > -	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##args)
> > -
> > -/* Format strings and argument splitters to simplify printing
> > - * various "complex" objects
> > - */
> > -
> > -/*@}*/
> > -
> > -/***********************************************************************/
> >  /** \name Internal types and structures */
> >  /*@{*/
> >  
> >  #define DRM_IF_VERSION(maj, min) (maj << 16 | min)
> >  
> > -
> >  /**
> >   * drm_drv_uses_atomic_modeset - check if the driver implements
> >   * atomic_commit()
> > diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
> > index 71bbaae..4f3cc25 100644
> > --- a/include/drm/drm_drv.h
> > +++ b/include/drm/drm_drv.h
> > @@ -592,13 +592,6 @@ struct drm_driver {
> >  	int dev_priv_size;
> >  };
> >  
> > -__printf(6, 7)
> > -void drm_dev_printk(const struct device *dev, const char *level,
> > -		    unsigned int category, const char *function_name,
> > -		    const char *prefix, const char *format, ...);
> > -__printf(3, 4)
> > -void drm_printk(const char *level, unsigned int category,
> > -		const char *format, ...);
> >  extern unsigned int drm_debug;
> >  
> >  int drm_dev_init(struct drm_device *dev,
> > diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> > index ca4d7c6..9dacc5e 100644
> > --- a/include/drm/drm_print.h
> > +++ b/include/drm/drm_print.h
> > @@ -128,4 +128,160 @@ static inline struct drm_printer drm_debug_printer(const char *prefix)
> >  	};
> >  	return p;
> >  }
> > +
> > +__printf(6, 7)
> > +void drm_dev_printk(const struct device *dev, const char *level,
> > +		    unsigned int category, const char *function_name,
> > +		    const char *prefix, const char *format, ...);
> > +__printf(3, 4)
> > +void drm_printk(const char *level, unsigned int category,
> > +		const char *format, ...);
> > +/***********************************************************************/
> > +/** \name Macros to make printk easier */
> > +/*@{*/
> > +
> > +#define _DRM_PRINTK(once, level, fmt, ...)				\
> > +	do {								\
> > +		printk##once(KERN_##level "[" DRM_NAME "] " fmt,	\
> > +			     ##__VA_ARGS__);				\
> > +	} while (0)
> > +
> > +#define DRM_INFO(fmt, ...)						\
> > +	_DRM_PRINTK(, INFO, fmt, ##__VA_ARGS__)
> > +#define DRM_NOTE(fmt, ...)						\
> > +	_DRM_PRINTK(, NOTICE, fmt, ##__VA_ARGS__)
> > +#define DRM_WARN(fmt, ...)						\
> > +	_DRM_PRINTK(, WARNING, fmt, ##__VA_ARGS__)
> > +
> > +#define DRM_INFO_ONCE(fmt, ...)						\
> > +	_DRM_PRINTK(_once, INFO, fmt, ##__VA_ARGS__)
> > +#define DRM_NOTE_ONCE(fmt, ...)						\
> > +	_DRM_PRINTK(_once, NOTICE, fmt, ##__VA_ARGS__)
> > +#define DRM_WARN_ONCE(fmt, ...)						\
> > +	_DRM_PRINTK(_once, WARNING, fmt, ##__VA_ARGS__)
> > +
> > +/**
> > + * Error output.
> > + *
> > + * \param fmt printf() like format string.
> > + * \param arg arguments
> > + */
> > +#define DRM_DEV_ERROR(dev, fmt, ...)					\
> > +	drm_dev_printk(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*",\
> > +		       fmt, ##__VA_ARGS__)
> > +#define DRM_ERROR(fmt, ...)						\
> > +	drm_printk(KERN_ERR, DRM_UT_NONE, fmt,	##__VA_ARGS__)
> > +
> > +/**
> > + * Rate limited error output.  Like DRM_ERROR() but won't flood the log.
> > + *
> > + * \param fmt printf() like format string.
> > + * \param arg arguments
> > + */
> > +#define DRM_DEV_ERROR_RATELIMITED(dev, fmt, ...)			\
> > +({									\
> > +	static DEFINE_RATELIMIT_STATE(_rs,				\
> > +				      DEFAULT_RATELIMIT_INTERVAL,	\
> > +				      DEFAULT_RATELIMIT_BURST);		\
> > +									\
> > +	if (__ratelimit(&_rs))						\
> > +		DRM_DEV_ERROR(dev, fmt, ##__VA_ARGS__);			\
> > +})
> > +#define DRM_ERROR_RATELIMITED(fmt, ...)					\
> > +	DRM_DEV_ERROR_RATELIMITED(NULL, fmt, ##__VA_ARGS__)
> > +
> > +#define DRM_DEV_INFO(dev, fmt, ...)					\
> > +	drm_dev_printk(dev, KERN_INFO, DRM_UT_NONE, __func__, "", fmt,	\
> > +		       ##__VA_ARGS__)
> > +
> > +#define DRM_DEV_INFO_ONCE(dev, fmt, ...)				\
> > +({									\
> > +	static bool __print_once __read_mostly;				\
> > +	if (!__print_once) {						\
> > +		__print_once = true;					\
> > +		DRM_DEV_INFO(dev, fmt, ##__VA_ARGS__);			\
> > +	}								\
> > +})
> > +
> > +/**
> > + * Debug output.
> > + *
> > + * \param fmt printf() like format string.
> > + * \param arg arguments
> > + */
> > +#define DRM_DEV_DEBUG(dev, fmt, args...)				\
> > +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_CORE, __func__, "", fmt,	\
> > +		       ##args)
> > +#define DRM_DEBUG(fmt, ...)						\
> > +	drm_printk(KERN_DEBUG, DRM_UT_CORE, fmt, ##__VA_ARGS__)
> > +
> > +#define DRM_DEV_DEBUG_DRIVER(dev, fmt, args...)				\
> > +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_DRIVER, __func__, "",	\
> > +		       fmt, ##args)
> > +#define DRM_DEBUG_DRIVER(fmt, ...)					\
> > +	drm_printk(KERN_DEBUG, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
> > +
> > +#define DRM_DEV_DEBUG_KMS(dev, fmt, args...)				\
> > +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_KMS, __func__, "", fmt,	\
> > +		       ##args)
> > +#define DRM_DEBUG_KMS(fmt, ...)					\
> > +	drm_printk(KERN_DEBUG, DRM_UT_KMS, fmt, ##__VA_ARGS__)
> > +
> > +#define DRM_DEV_DEBUG_PRIME(dev, fmt, args...)				\
> > +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_PRIME, __func__, "",	\
> > +		       fmt, ##args)
> > +#define DRM_DEBUG_PRIME(fmt, ...)					\
> > +	drm_printk(KERN_DEBUG, DRM_UT_PRIME, fmt, ##__VA_ARGS__)
> > +
> > +#define DRM_DEV_DEBUG_ATOMIC(dev, fmt, args...)				\
> > +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ATOMIC, __func__, "",	\
> > +		       fmt, ##args)
> > +#define DRM_DEBUG_ATOMIC(fmt, ...)					\
> > +	drm_printk(KERN_DEBUG, DRM_UT_ATOMIC, fmt, ##__VA_ARGS__)
> > +
> > +#define DRM_DEV_DEBUG_VBL(dev, fmt, args...)				\
> > +	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_VBL, __func__, "", fmt,	\
> > +		       ##args)
> > +#define DRM_DEBUG_VBL(fmt, ...)					\
> > +	drm_printk(KERN_DEBUG, DRM_UT_VBL, fmt, ##__VA_ARGS__)
> > +
> > +#define _DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, level, fmt, args...)	\
> > +({									\
> > +	static DEFINE_RATELIMIT_STATE(_rs,				\
> > +				      DEFAULT_RATELIMIT_INTERVAL,	\
> > +				      DEFAULT_RATELIMIT_BURST);		\
> > +	if (__ratelimit(&_rs))						\
> > +		drm_dev_printk(dev, KERN_DEBUG, DRM_UT_ ## level,	\
> > +			       __func__, "", fmt, ##args);		\
> > +})
> > +
> > +/**
> > + * Rate limited debug output. Like DRM_DEBUG() but won't flood the log.
> > + *
> > + * \param fmt printf() like format string.
> > + * \param arg arguments
> > + */
> > +#define DRM_DEV_DEBUG_RATELIMITED(dev, fmt, args...)			\
> > +	DEV__DRM_DEFINE_DEBUG_RATELIMITED(dev, CORE, fmt, ##args)
> > +#define DRM_DEBUG_RATELIMITED(fmt, args...)				\
> > +	DRM_DEV_DEBUG_RATELIMITED(NULL, fmt, ##args)
> > +#define DRM_DEV_DEBUG_DRIVER_RATELIMITED(dev, fmt, args...)		\
> > +	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, DRIVER, fmt, ##args)
> > +#define DRM_DEBUG_DRIVER_RATELIMITED(fmt, args...)			\
> > +	DRM_DEV_DEBUG_DRIVER_RATELIMITED(NULL, fmt, ##args)
> > +#define DRM_DEV_DEBUG_KMS_RATELIMITED(dev, fmt, args...)		\
> > +	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, KMS, fmt, ##args)
> > +#define DRM_DEBUG_KMS_RATELIMITED(fmt, args...)				\
> > +	DRM_DEV_DEBUG_KMS_RATELIMITED(NULL, fmt, ##args)
> > +#define DRM_DEV_DEBUG_PRIME_RATELIMITED(dev, fmt, args...)		\
> > +	_DRM_DEV_DEFINE_DEBUG_RATELIMITED(dev, PRIME, fmt, ##args)
> > +#define DRM_DEBUG_PRIME_RATELIMITED(fmt, args...)			\
> > +	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##args)
> > +
> > +/* Format strings and argument splitters to simplify printing
> > + * various "complex" objects
> > + */
> > +
> > +/*@}*/
> > +
> >  #endif /* DRM_PRINT_H_ */
> > -- 
> > 2.7.4
> > 
> 
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS

