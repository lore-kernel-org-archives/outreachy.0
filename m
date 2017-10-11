X-GM-THRID: 6475501667265544192
X-Received: by 10.99.111.7 with SMTP id k7mr101273pgc.109.1507758909624;
        Wed, 11 Oct 2017 14:55:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.111.68 with SMTP id k65ls584655pgc.22.gmail; Wed, 11 Oct
 2017 14:55:08 -0700 (PDT)
X-Received: by 10.98.134.12 with SMTP id x12mr149640pfd.24.1507758908375;
        Wed, 11 Oct 2017 14:55:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507758908; cv=none;
        d=google.com; s=arc-20160816;
        b=S7+GElJWU7B7uqasWZ6gfvno4AX/6t+xHnnq01ZsnaBfpYHyfM7bXTF+zAkoGkfe+/
         lhP2XEW200UbPaq9Zq/GmusqJ6uya7WIzj//64rJvqeLG7/0QPXENwZ5yPbTJ7tzwBRE
         8nwmIhoIuHLPe9b+hv9aTfMkWTwRa9fVkQrgeK29oNUIhmNi5IQG4zNg+aizoXrOu7H/
         m/xL9s/vGZqcppRZGd+ba15GDDRWc0YgsPN3fkq3xxNoEZkGwbzaalwHV1mvBJonRIbC
         tc/NE9rfBTDQczn0WN+XjiTuX45TebRTzVDWNpooNlQUgOIncg4hmSYjvTGZ6LTWpizk
         KXqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=yY1tkbxoUVTjc1+/kIZxvKCiPc9NyyU4s/fIvo58A8E=;
        b=KtTFbWbvZWj2esibqSMmyAeecA8h6JCjVY9Tu4V13RlQVdsXKkQQEk+gm96cfE2dek
         GC9FUgDa0oFLHyd+FO0LXz25h+dEVloRyCSbGiGFwHVmoBZp8hrP+hRKTOh8zXeBGPJ6
         BRZjfXLBqSrAMBaMIGjMarJjty5G5lprmfVe5dZX0OT/s2JtLuuFxViNx7gwCctFD3PN
         Zfyc9aYaST0eGfICSt6dX/5XpdTndWi6ONudJvJSUP9I9zddfp35Lwv/3wFZ6IPWemj9
         DVXOQ0/wdq7VE6RJnq4WqnHfRDNAMFXfr/y9PfHOh8M19SFPmxw4/fAahcqy2mbzDXnd
         6ZEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=klnn4NpW;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id c200si1591853pfb.14.2017.10.11.14.55.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 14:55:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=klnn4NpW;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id z11so2191311pfk.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 14:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yY1tkbxoUVTjc1+/kIZxvKCiPc9NyyU4s/fIvo58A8E=;
        b=klnn4NpWyyS+sKhdhYW800sZbx32rL7td3GtcWRZR0elBr3RMFxkSR/Y4dcEEYK5mj
         NfZaatMRkau33nEGWp4MEjdL18XBfKaul+zNH/6vOwA/uP7qJOKPIIFO8GYbSNuFmReA
         /02QOs2ckZhwSp9xb7E1vch0PVC2vZ4UZGxWdhaulOsoi5q1dM8ACIv3rRIxGz/CgotX
         xZzCQute+FHZwfVLYBDSpd/+qQ69DmTcvhLXr+8zB25lBGQfMbXWIJptRVey+RDxf+zB
         O6tXZceLSP7gpg1hHTPRJdoMn+Pic/ZRUifaKupuN5Q/QR1CNYEdTTIuevhPJAGrBul3
         f0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yY1tkbxoUVTjc1+/kIZxvKCiPc9NyyU4s/fIvo58A8E=;
        b=UtPDHvxCViy0x+UYyBybNWOwiVjqP1Ko1Cw0OEqNnYY8HByPYKlAHD9sU7YNXH4s7o
         YpmJhvZ4BNMay2p5xjxUx5qrD15N7NjFpReZ8t9rU5Vx07IZea5frX9tmuF10qovxHjl
         rkT6DFLxkNFN+XLkoNUhCJWOGYsR7eOiE5IzDVEUUWRY1LsVgCZ3QaMAKRQWZXtCwUK7
         E4OCgyh/mx3l4/Aqk8oG2RAjPWQKR5kSKKL6VwqrAwPjGhU8ecxNcT5LPOVeRrHsVjL2
         decHFtQq/myp/rIK8WvR7KJavPi5hA9IL0JF9KBMvdj7+GQ3OM6DsIBcRV0ERfOfCYUL
         e8xA==
X-Gm-Message-State: AMCzsaXsbW0r8d/zUHflYjYvypb1TTe0cC3+XFWJQ1iMAwRuQGMvxpq1
	Q8x/byFRSDKmRKj20/LE+mPUen+u
X-Google-Smtp-Source: AOwi7QA6FB3pCOuKILEyxIMkd7lV18Kbo4S4gyY2rFLdqu9zGTwbxZJhwaiRatb50XmGukFBFV0l9A==
X-Received: by 10.98.21.86 with SMTP id 83mr350178pfv.290.1507758907866;
        Wed, 11 Oct 2017 14:55:07 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id o9sm14163288pfk.162.2017.10.11.14.55.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 14:55:07 -0700 (PDT)
Date: Wed, 11 Oct 2017 15:55:05 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: Re: [PATCH 1/2] drm: Extract drm_debug.[hc]
Message-ID: <20171011215505.GB27169@Haneen>
References: <cover.1507693829.git.hamohammed.sa@gmail.com>
 <830fcacb4513dc2ca7f44cb1828d8cfa0e4e15ae.1507693829.git.hamohammed.sa@gmail.com>
 <20171011114047.af5kyccy3epxf7ke@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171011114047.af5kyccy3epxf7ke@phenom.ffwll.local>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 11, 2017 at 01:40:47PM +0200, Daniel Vetter wrote:
> On Tue, Oct 10, 2017 at 10:13:36PM -0600, Haneen Mohammed wrote:
> > Extract DRM_* debug macros from drmP.h to drm_debug.h and move printting
> > related functions from drm_drv.[hc] to drm_debug.[hc].
> > 
> > Update kerneldoc include directives accordingly.
> > 
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> >  Documentation/gpu/drm-uapi.rst |   9 ++
> >  drivers/gpu/drm/Makefile       |   2 +-
> >  drivers/gpu/drm/drm_debug.c    |  75 ++++++++++++++++
> >  drivers/gpu/drm/drm_drv.c      |  47 ----------
> >  include/drm/drmP.h             | 149 +------------------------------
> >  include/drm/drm_debug.h        | 193 +++++++++++++++++++++++++++++++++++++++++
> >  include/drm/drm_drv.h          |   7 --
> >  7 files changed, 279 insertions(+), 203 deletions(-)
> >  create mode 100644 drivers/gpu/drm/drm_debug.c
> >  create mode 100644 include/drm/drm_debug.h
> > 
> > diff --git a/Documentation/gpu/drm-uapi.rst b/Documentation/gpu/drm-uapi.rst
> > index 679373b..9a374e6 100644
> > --- a/Documentation/gpu/drm-uapi.rst
> > +++ b/Documentation/gpu/drm-uapi.rst
> > @@ -235,6 +235,15 @@ Debugfs Support
> >  .. kernel-doc:: drivers/gpu/drm/drm_debugfs.c
> >     :export:
> >  
> > +Debug Support
> > +-------------
> > +
> > +.. kernel-doc:: include/drm/drm_debug.h
> > +   :internal:
> > +
> > +.. kernel-doc:: drivers/gpu/drm/drm_debug.c
> > +   :export:
> 
> debug output isn't really userspace interfaces. Why did you place it here?
> 
> I think finding a suitable place somewhere in drm-internal.rst would be
> better.
> -Daniel
> 

I wasn't sure where to place it, I've just followed the example of drm_debugfs.[hc].
Sure, will fix that. 

Haneen

> > +
> >  Sysfs Support
> >  =============
> >  
> > diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> > index a8acc19..d09bd06 100644
> > --- a/drivers/gpu/drm/Makefile
> > +++ b/drivers/gpu/drm/Makefile
> > @@ -3,7 +3,7 @@
> >  # Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and higher.
> >  
> >  drm-y       :=	drm_auth.o drm_bufs.o drm_cache.o \
> > -		drm_context.o drm_dma.o \
> > +		drm_context.o drm_dma.o drm_debug.o \
> >  		drm_file.o drm_gem.o drm_ioctl.o drm_irq.o \
> >  		drm_lock.o drm_memory.o drm_drv.o \
> >  		drm_scatter.o drm_pci.o \
> > diff --git a/drivers/gpu/drm/drm_debug.c b/drivers/gpu/drm/drm_debug.c
> > new file mode 100644
> > index 0000000..a79593f
> > --- /dev/null
> > +++ b/drivers/gpu/drm/drm_debug.c
> > @@ -0,0 +1,75 @@
> > +/*
> > + * Copyright 2001 VA Linux Systems, Inc., Sunnyvale, California.
> > + * All Rights Reserved.
> > + *
> > + * Author Rickard E. (Rik) Faith <faith@valinux.com>
> > + *
> > + * Permission is hereby granted, free of charge, to any person obtaining a
> > + * copy of this software and associated documentation files (the "Software"),
> > + * to deal in the Software without restriction, including without limitation
> > + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
> > + * and/or sell copies of the Software, and to permit persons to whom the
> > + * Software is furnished to do so, subject to the following conditions:
> > + *
> > + * The above copyright notice and this permission notice (including the next
> > + * paragraph) shall be included in all copies or substantial portions of the
> > + * Software.
> > + *
> > + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> > + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> > + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
> > + * PRECISION INSIGHT AND/OR ITS SUPPLIERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
> > + * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
> > + * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
> > + * DEALINGS IN THE SOFTWARE.
> > + */
> > +
> > +#include <drm/drm_debug.h>
> > +#include <drm/drmP.h>
> > +
> > +#define DRM_PRINTK_FMT "[" DRM_NAME ":%s]%s %pV"
> > +
> > +void drm_dev_printk(const struct device *dev, const char *level,
> > +		    unsigned int category, const char *function_name,
> > +		    const char *prefix, const char *format, ...)
> > +{
> > +	struct va_format vaf;
> > +	va_list args;
> > +
> > +	if (category != DRM_UT_NONE && !(drm_debug & category))
> > +		return;
> > +
> > +	va_start(args, format);
> > +	vaf.fmt = format;
> > +	vaf.va = &args;
> > +
> > +	if (dev)
> > +		dev_printk(level, dev, DRM_PRINTK_FMT, function_name, prefix,
> > +			   &vaf);
> > +	else
> > +		printk("%s" DRM_PRINTK_FMT, level, function_name, prefix, &vaf);
> > +
> > +	va_end(args);
> > +}
> > +EXPORT_SYMBOL(drm_dev_printk);
> > +
> > +void drm_printk(const char *level, unsigned int category,
> > +		const char *format, ...)
> > +{
> > +	struct va_format vaf;
> > +	va_list args;
> > +
> > +	if (category != DRM_UT_NONE && !(drm_debug & category))
> > +		return;
> > +
> > +	va_start(args, format);
> > +	vaf.fmt = format;
> > +	vaf.va = &args;
> > +
> > +	printk("%s" "[" DRM_NAME ":%ps]%s %pV",
> > +	       level, __builtin_return_address(0),
> > +	       strcmp(level, KERN_ERR) == 0 ? " *ERROR*" : "", &vaf);
> > +
> > +	va_end(args);
> > +}
> > +EXPORT_SYMBOL(drm_printk);
> > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > index be38ac7..9710c78 100644
> > --- a/drivers/gpu/drm/drm_drv.c
> > +++ b/drivers/gpu/drm/drm_drv.c
> > @@ -74,53 +74,6 @@ static bool drm_core_init_complete = false;
> >  
> >  static struct dentry *drm_debugfs_root;
> >  
> > -#define DRM_PRINTK_FMT "[" DRM_NAME ":%s]%s %pV"
> > -
> > -void drm_dev_printk(const struct device *dev, const char *level,
> > -		    unsigned int category, const char *function_name,
> > -		    const char *prefix, const char *format, ...)
> > -{
> > -	struct va_format vaf;
> > -	va_list args;
> > -
> > -	if (category != DRM_UT_NONE && !(drm_debug & category))
> > -		return;
> > -
> > -	va_start(args, format);
> > -	vaf.fmt = format;
> > -	vaf.va = &args;
> > -
> > -	if (dev)
> > -		dev_printk(level, dev, DRM_PRINTK_FMT, function_name, prefix,
> > -			   &vaf);
> > -	else
> > -		printk("%s" DRM_PRINTK_FMT, level, function_name, prefix, &vaf);
> > -
> > -	va_end(args);
> > -}
> > -EXPORT_SYMBOL(drm_dev_printk);
> > -
> > -void drm_printk(const char *level, unsigned int category,
> > -		const char *format, ...)
> > -{
> > -	struct va_format vaf;
> > -	va_list args;
> > -
> > -	if (category != DRM_UT_NONE && !(drm_debug & category))
> > -		return;
> > -
> > -	va_start(args, format);
> > -	vaf.fmt = format;
> > -	vaf.va = &args;
> > -
> > -	printk("%s" "[" DRM_NAME ":%ps]%s %pV",
> > -	       level, __builtin_return_address(0),
> > -	       strcmp(level, KERN_ERR) == 0 ? " *ERROR*" : "", &vaf);
> > -
> > -	va_end(args);
> > -}
> > -EXPORT_SYMBOL(drm_printk);
> > -
> >  /*
> >   * DRM Minors
> >   * A DRM device can provide several char-dev interfaces on the DRM-Major. Each
> > diff --git a/include/drm/drmP.h b/include/drm/drmP.h
> > index 7277783a..8186a96 100644
> > --- a/include/drm/drmP.h
> > +++ b/include/drm/drmP.h
> > @@ -77,6 +77,7 @@
> >  #include <drm/drm_prime.h>
> >  #include <drm/drm_pci.h>
> >  #include <drm/drm_file.h>
> > +#include <drm/drm_debug.h>
> >  #include <drm/drm_debugfs.h>
> >  #include <drm/drm_ioctl.h>
> >  #include <drm/drm_sysfs.h>
> > @@ -142,154 +143,6 @@ struct pci_controller;
> >  /*@{*/
> >  
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
> > diff --git a/include/drm/drm_debug.h b/include/drm/drm_debug.h
> > new file mode 100644
> > index 0000000..24fbea4
> > --- /dev/null
> > +++ b/include/drm/drm_debug.h
> > @@ -0,0 +1,193 @@
> > +/*
> > + * Internal Header for the Direct Rendering Manager
> > + *
> > + * Copyright 1999 Precision Insight, Inc., Cedar Park, Texas.
> > + * Copyright 2000 VA Linux Systems, Inc., Sunnyvale, California.
> > + * Copyright (c) 2009-2010, Code Aurora Forum.
> > + * All rights reserved.
> > + *
> > + * Author: Rickard E. (Rik) Faith <faith@valinux.com>
> > + * Author: Gareth Hughes <gareth@valinux.com>
> > + *
> > + * Permission is hereby granted, free of charge, to any person obtaining a
> > + * copy of this software and associated documentation files (the "Software"),
> > + * to deal in the Software without restriction, including without limitation
> > + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
> > + * and/or sell copies of the Software, and to permit persons to whom the
> > + * Software is furnished to do so, subject to the following conditions:
> > + *
> > + * The above copyright notice and this permission notice (including the next
> > + * paragraph) shall be included in all copies or substantial portions of the
> > + * Software.
> > + *
> > + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> > + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> > + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
> > + * VA LINUX SYSTEMS AND/OR ITS SUPPLIERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
> > + * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
> > + * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> > + * OTHER DEALINGS IN THE SOFTWARE.
> > + */
> > +
> > +#ifndef _DRM_DEBUG_H_
> > +#define _DRM_DEBUG_H_
> > +
> > +#include <linux/kernel.h>
> > +
> > +__printf(6, 7)
> > +void drm_dev_printk(const struct device *dev, const char *level,
> > +		    unsigned int category, const char *function_name,
> > +		    const char *prefix, const char *format, ...);
> > +__printf(3, 4)
> > +void drm_printk(const char *level, unsigned int category,
> > +		const char *format, ...);
> > +
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
> > +#endif /* _DRM_DEBUG_H_ */
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
> > -- 
> > 2.7.4
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

