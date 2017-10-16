X-GM-THRID: 6475500386308325376
X-Received: by 10.28.217.201 with SMTP id q192mr38036wmg.20.1508144508961;
        Mon, 16 Oct 2017 02:01:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.51.149 with SMTP id z143ls74737wmz.0.experimental-gmail;
 Mon, 16 Oct 2017 02:01:47 -0700 (PDT)
X-Received: by 10.28.0.7 with SMTP id 7mr35057wma.26.1508144507769;
        Mon, 16 Oct 2017 02:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508144507; cv=none;
        d=google.com; s=arc-20160816;
        b=BymRW6TKY23qV5yBkIEosnOaiNm09aOcnPxXx++8//HneOJYL+UYxvMc7IsjYXdKjq
         MQyRXf53TwPXgWENxXhN44lVm/qF6V532vUw13TTPNUVgA1GhlvEt8siBIHMz+8GR4jc
         o7Qe9tzjUS02htmb2AGPdXkh9//Ayzlh9e3vYum9T5+StieRGmWIO3afXNwKcu/KOj+X
         zCo1kr28OBfroqRG048UXlZj0Opnq4sOIOnf+ryumLz9rNnCPM2r/EM5SngdGGroU3Kg
         a+mq45/A3AkF5TPAaPpZSlCnUjcrFkmAwpRfj6+KACHfIyM6f5q/LNt1OmzkKCD3bcMG
         WrSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=GXDRFEFyW1+mLq2rN9S6KaUqDYQfMaLBXt7oM/pwVZk=;
        b=Wsb4R4OxWg9k+uI/hBCJWLQpK8nUH1Ak5A9gii+JyeUysy74ZwIGC5j4eIpb+JB7fV
         9v0mEH05WRt6pv2xehrx3ZTGRU4dVZpOKZa8lF/zQFK8+5F0D89Bwf9uwkSdVIPnqF3w
         /Ee2FJYi6tU3DXW8zNVwaLGB23wx9tUNWnx9pxxACAZJa/t1JVj+2JPnhh7hGfGV2r9A
         5Me4ntoBwHwSTC6Yb6Qj336aGy2b8tVDUy3X40RKiNNCBAZ4OmdaXBiahoV86Pehe32g
         dkWeq6JrTbySjgzZSP0EhK68oS+KAmjkKHhUu1qwdTEwyu49Ze6BqUS2cxkdbSEbDein
         2SVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=cMYsL3YA;
       spf=neutral (google.com: 2a00:1450:400c:c09::22f is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id r15si424792wrc.1.2017.10.16.02.01.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 02:01:47 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::22f is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=cMYsL3YA;
       spf=neutral (google.com: 2a00:1450:400c:c09::22f is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x22f.google.com with SMTP id b189so781121wmd.4
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 02:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GXDRFEFyW1+mLq2rN9S6KaUqDYQfMaLBXt7oM/pwVZk=;
        b=cMYsL3YAp4XbBO27ZddbsUDAvbg3pQTxc2TLjwdcItQ8r2PQZR/CLpgJgj/+8EEdW9
         pqJ4eC8+/HmMqlo9yW610n8C9g5zp+10xjaTezwv7S6WVRU8YKq4OvDF0ebZaf1+eStU
         4HOWfzJpEcvDFgzyRykQXAqMKtJX/uDoee+ls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=GXDRFEFyW1+mLq2rN9S6KaUqDYQfMaLBXt7oM/pwVZk=;
        b=dJwawFxatDXtVzVh6ni6TxatqnkowGz+/EFj26xqZWb+Rt7HTsf/57Pk4X5C0KVOk+
         SAI2pvqCvqxtt2FuRVf9PRPkKCWPJl3pGUo6oKw3Vdsj9Psqt6oCeFrr4xiYyxwrLW+L
         aqsrSvB6HomRFVRBqk7CNh3jkVoLvSz45/shc3ijL9Pla4G0H7gzrUfI30yEqDPaa73c
         igwAmuK6aHwQRLwMedhQuX+uG1gZyf6hEGdfoQfZx4s9H2VuhohUd3QuScXk9WKyg8Pc
         G3Evzk7Z9z7TQP8bYDJi8sWWZFLIQD1qO4FZi7NEg1x49ZqpqFV8Cj87zOGTnxPPWLKB
         QpbA==
X-Gm-Message-State: AMCzsaXICJTorQngcrfT16Eai/UZlH+ohY7DOVxm7IBOjiDkKkZ1haCc
	KSjPCoBTPAOl28OVBV9CBxeC49MM
X-Google-Smtp-Source: AOwi7QAhxH4sxRKke56TFTEsPi/z8iwT8EzbGyF3w8A1eZJWpW3R9QA/2mFaONTSanHmPX8JoVXjhg==
X-Received: by 10.80.165.149 with SMTP id a21mr12757819edc.83.1508144507163;
        Mon, 16 Oct 2017 02:01:47 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id 33sm5408166edt.4.2017.10.16.02.01.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Oct 2017 02:01:46 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 16 Oct 2017 11:01:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>,
	dri-devel@lists.freedesktop.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Daniel Vetter <daniel.vetter@intel.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/3] drm: Extract drm_debug.[hc]
Message-ID: <20171016090123.puuxigdlgmf6btrx@phenom.ffwll.local>
References: <cover.1507773977.git.hamohammed.sa@gmail.com>
 <61b5de2721575d5fded00cce1944a6369dc93c24.1507773977.git.hamohammed.sa@gmail.com>
 <150780451244.17631.15078779959438842429@mail.alporthouse.com>
 <20171013212119.GB20223@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171013212119.GB20223@Haneen>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Fri, Oct 13, 2017 at 03:21:19PM -0600, Haneen Mohammed wrote:
> On Thu, Oct 12, 2017 at 11:35:12AM +0100, Chris Wilson wrote:
> > Quoting Haneen Mohammed (2017-10-12 03:32:53)
> > > diff --git a/drivers/gpu/drm/drm_debug.c b/drivers/gpu/drm/drm_debug.c
> > > new file mode 100644
> > > index 0000000..a79593f
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/drm_debug.c
> > > @@ -0,0 +1,75 @@
> > > +/*
> > > + * Copyright 2001 VA Linux Systems, Inc., Sunnyvale, California.
> > > + * All Rights Reserved.
> > > + *
> > > + * Author Rickard E. (Rik) Faith <faith@valinux.com>
> > > + *
> > > + * Permission is hereby granted, free of charge, to any person obtaining a
> > > + * copy of this software and associated documentation files (the "Software"),
> > > + * to deal in the Software without restriction, including without limitation
> > > + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
> > > + * and/or sell copies of the Software, and to permit persons to whom the
> > > + * Software is furnished to do so, subject to the following conditions:
> > > + *
> > > + * The above copyright notice and this permission notice (including the next
> > > + * paragraph) shall be included in all copies or substantial portions of the
> > > + * Software.
> > > + *
> > > + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> > > + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> > > + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
> > > + * PRECISION INSIGHT AND/OR ITS SUPPLIERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
> > > + * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
> > > + * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
> > > + * DEALINGS IN THE SOFTWARE.
> > > + */
> > > +
> > > +#include <drm/drm_debug.h>
> > > +#include <drm/drmP.h>
> > > +
> > > +#define DRM_PRINTK_FMT "[" DRM_NAME ":%s]%s %pV"
> > > +
> > > +void drm_dev_printk(const struct device *dev, const char *level,
> > > +                   unsigned int category, const char *function_name,
> > > +                   const char *prefix, const char *format, ...)
> > > +{
> > > +       struct va_format vaf;
> > > +       va_list args;
> > > +
> > > +       if (category != DRM_UT_NONE && !(drm_debug & category))
> > > +               return;
> > > +
> > > +       va_start(args, format);
> > > +       vaf.fmt = format;
> > > +       vaf.va = &args;
> > > +
> > > +       if (dev)
> > > +               dev_printk(level, dev, DRM_PRINTK_FMT, function_name, prefix,
> > > +                          &vaf);
> > > +       else
> > > +               printk("%s" DRM_PRINTK_FMT, level, function_name, prefix, &vaf);
> > > +
> > > +       va_end(args);
> > > +}
> > > +EXPORT_SYMBOL(drm_dev_printk);
> > > +
> > > +void drm_printk(const char *level, unsigned int category,
> > > +               const char *format, ...)
> > > +{
> > > +       struct va_format vaf;
> > > +       va_list args;
> > > +
> > > +       if (category != DRM_UT_NONE && !(drm_debug & category))
> > > +               return;
> > > +
> > > +       va_start(args, format);
> > > +       vaf.fmt = format;
> > > +       vaf.va = &args;
> > > +
> > > +       printk("%s" "[" DRM_NAME ":%ps]%s %pV",
> > > +              level, __builtin_return_address(0),
> > > +              strcmp(level, KERN_ERR) == 0 ? " *ERROR*" : "", &vaf);
> > > +
> > > +       va_end(args);
> > > +}
> > > +EXPORT_SYMBOL(drm_printk);
> > 
> > We already have drm_print.c, currently used to house drm_printf and the
> > drm_printer. It might be a bit confusing to have drm_printk and
> > drm_printf next to each other, but less confusing that calling user
> > error messages drm_debug.c.
> > -Chris
> 
> I didn't notice that. 
> Should I move these functions and macros to drm_print.[hc] instead then?

Yeah I think this makes sense, instead of having yet another file with
some big overlap with drm_print.[hc]. That also solves the problem of
where to put the kerneldoc include :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

