X-GM-THRID: 6475500386308325376
X-Received: by 10.200.52.154 with SMTP id w26mr2073183qtb.36.1507929683794;
        Fri, 13 Oct 2017 14:21:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.50.68 with SMTP id y62ls2226477qtd.5.gmail; Fri, 13 Oct
 2017 14:21:23 -0700 (PDT)
X-Received: by 10.55.81.86 with SMTP id f83mr2000473qkb.23.1507929683293;
        Fri, 13 Oct 2017 14:21:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507929683; cv=none;
        d=google.com; s=arc-20160816;
        b=jKL0s4rkpISdgjL9kvkp4+4tziEnRa1g0qsdXUoaKm8b3ZKn+ybCXloXzyrOdDkPab
         eKWMSy6tluW5sU/na+2b1gscuK5yD5HQEZmUSTAhPGaKYK1DL6g7lmqjlBKC9J1YvRew
         uADlV5u1QSPK5C97QCLLUbFucpMmSqy3MtktI0/uxCq22+j0+mPELF1eRAPqZL2saDHG
         LKt9lp7ZeJqSmZji2Wrq+cLRB6vxUK1R/wPVf3PUpABS+NWKV1YgqQ00bh9Lq0IgrSWD
         Z5sHOLjHRc24HWUSQzwfOsjLOGigiVWdVBRkXhHKno53zO9SC/V2upGzMLGrVInoBEU1
         AX2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=mSRP1WQZvic91533wIx8JERElmZirNulrUvxmnel6OU=;
        b=aa7CYMatMNbFc19DHycIbKy0j2N4DnEh1Gn6dmuRxHkGWr6wgs1F1L8IBP4wVWR3no
         ZXrv5+1XmONXywKD0Rk9cAQyH8+YW5F4rudFlzfmofYDH5i9BCoGhygXGRmQRK03ACiG
         Y3nqi4pzJyYfyWuKUFMSfElJpqYhe6quPKHe6d91cRtBq5toe0/r/lE4dR8Moqm7otnx
         IAsmlWU1N6EzX/s3XWeXSey8kLFhaS0wvhvEbKLtg/UX01BaoCf0vsGoaTQpHRVPy2Hh
         /rP263MAKJ60viab7xqcmijOV3V8UN3vCVFCbFYTKyXf+wplF2VKuzdldWPKZQUN+Ove
         uGWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BNhJ9VKo;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x235.google.com (mail-pg0-x235.google.com. [2607:f8b0:400e:c05::235])
        by gmr-mx.google.com with ESMTPS id v50si126330qta.0.2017.10.13.14.21.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 14:21:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) client-ip=2607:f8b0:400e:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BNhJ9VKo;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x235.google.com with SMTP id b11so2136460pgn.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 14:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mSRP1WQZvic91533wIx8JERElmZirNulrUvxmnel6OU=;
        b=BNhJ9VKobzFNNLfcCNDuJtexGuNEjN5kqs9blTbMY9ue+cW/fJL1S6ndIMYYanSwHV
         DHEhaefpcu8vbLXNFhbCr0Q0X3WjwEaA157mSAvKdmxi6+hha+LrNBOj2yruZNVApyD3
         jeQoNCI2JmNZWavPxo3C2VbM+ehigilBiQ/ijVCV9CwUr15RuRNi+38usExvqSppti+Z
         4ghr4pzzNkZvMzU13Xo5AQiPWcJjGeu3hLNos8L1XzUi2vVEQZQ9IRBcbE9E3zdyAWzs
         J82rZedF9AFKTT07b97APBaN2OAfuDLWXGPcMdo1XRJA1C3qRfaIIyuLw/LRy+C6k+Gf
         m9uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mSRP1WQZvic91533wIx8JERElmZirNulrUvxmnel6OU=;
        b=LGoGN0YZDwQbzydLTY2sQQ5XaGoaQDXoq3F7G82F2RjDfd+zDt+DccmfkOXt3Q9IQ/
         0FjtTk+ZbxBNQhUjgZ9j/jUgAiOhZhVM8Fuacrgs0H/oIQo2+7UiKsX8enqdZfCd1BYw
         cvEVsklLJq2fbH5Ph7dYVP8X1HcLpX7WSubHzRe1OkVLec2WCXxCXaEx7ULTvjWhCDEc
         egKeZMF12W25cjdA2TEoiHdllM/D3/QfNaT4/J+Y+ff6pAlK0W1GyY2BmbvLx9cIWcLU
         uFJ+VdmVhQXSXia7GVBqTjqfWWDRC6BWQFOM68z6hZYJqBTmIndn/kaa0qL+GKyJW3PT
         5hGg==
X-Gm-Message-State: AMCzsaUX7iNdx28Lmwdsfq8tRvfyy0dYJsFbvuWyzjSnvy0fFy2u3UTF
	T/8AIIvWmFia+iOqVadmu2Q=
X-Google-Smtp-Source: AOwi7QCYtdrkjisBC0ZbFn9++VwsjXcPwHlkIootMuHiClct8EvgDK/1xmRIQK+UNsDUZJLJm/lj4A==
X-Received: by 10.84.198.164 with SMTP id p33mr2444767pld.89.1507929682959;
        Fri, 13 Oct 2017 14:21:22 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id 133sm3889962pfy.2.2017.10.13.14.21.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 14:21:22 -0700 (PDT)
Date: Fri, 13 Oct 2017 15:21:19 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: dri-devel@lists.freedesktop.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Daniel Vetter <daniel.vetter@intel.com>
Subject: Re: [PATCH v2 1/3] drm: Extract drm_debug.[hc]
Message-ID: <20171013212119.GB20223@Haneen>
References: <cover.1507773977.git.hamohammed.sa@gmail.com>
 <61b5de2721575d5fded00cce1944a6369dc93c24.1507773977.git.hamohammed.sa@gmail.com>
 <150780451244.17631.15078779959438842429@mail.alporthouse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <150780451244.17631.15078779959438842429@mail.alporthouse.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 12, 2017 at 11:35:12AM +0100, Chris Wilson wrote:
> Quoting Haneen Mohammed (2017-10-12 03:32:53)
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
> > +                   unsigned int category, const char *function_name,
> > +                   const char *prefix, const char *format, ...)
> > +{
> > +       struct va_format vaf;
> > +       va_list args;
> > +
> > +       if (category != DRM_UT_NONE && !(drm_debug & category))
> > +               return;
> > +
> > +       va_start(args, format);
> > +       vaf.fmt = format;
> > +       vaf.va = &args;
> > +
> > +       if (dev)
> > +               dev_printk(level, dev, DRM_PRINTK_FMT, function_name, prefix,
> > +                          &vaf);
> > +       else
> > +               printk("%s" DRM_PRINTK_FMT, level, function_name, prefix, &vaf);
> > +
> > +       va_end(args);
> > +}
> > +EXPORT_SYMBOL(drm_dev_printk);
> > +
> > +void drm_printk(const char *level, unsigned int category,
> > +               const char *format, ...)
> > +{
> > +       struct va_format vaf;
> > +       va_list args;
> > +
> > +       if (category != DRM_UT_NONE && !(drm_debug & category))
> > +               return;
> > +
> > +       va_start(args, format);
> > +       vaf.fmt = format;
> > +       vaf.va = &args;
> > +
> > +       printk("%s" "[" DRM_NAME ":%ps]%s %pV",
> > +              level, __builtin_return_address(0),
> > +              strcmp(level, KERN_ERR) == 0 ? " *ERROR*" : "", &vaf);
> > +
> > +       va_end(args);
> > +}
> > +EXPORT_SYMBOL(drm_printk);
> 
> We already have drm_print.c, currently used to house drm_printf and the
> drm_printer. It might be a bit confusing to have drm_printk and
> drm_printf next to each other, but less confusing that calling user
> error messages drm_debug.c.
> -Chris

I didn't notice that. 
Should I move these functions and macros to drm_print.[hc] instead then?

Haneen

