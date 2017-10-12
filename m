X-GM-THRID: 6475500386308325376
X-Received: by 10.28.19.5 with SMTP id 5mr94600wmt.7.1507804520455;
        Thu, 12 Oct 2017 03:35:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.50.138 with SMTP id y132ls788378wmy.9.gmail; Thu, 12 Oct
 2017 03:35:19 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBM47QXyxE8dde7t2snDJBQTT8/NxRwE7OtetsblyyudJde/xnMaMc0MxDuebusrSoijCdQ
X-Received: by 10.28.136.12 with SMTP id k12mr187258wmd.10.1507804519493;
        Thu, 12 Oct 2017 03:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507804519; cv=none;
        d=google.com; s=arc-20160816;
        b=DWwXz8REAs8iAWLTtb5v9dtDOrJLXF3KoR6gDWciVZIqM9bYguWZUdnK4ttAjrBToY
         P01h/rYOtfOznynb/rhm27SHdbXDOVQuO5ptKJ0ZH4Teh37arzYAPXxEsxGe1HA9M0Dz
         uw3Kh2l6YfWbo8Gki/LjiuY0YrOctorc5bRdqHpg1cXerhpEqn0bmqBS4CC+ZTew0mWc
         FZcQjRBricVGqJg02GMcGZtYNKhBk9Ws+SbbnuPak8r8lJLy8DLI6gIiHWDKn59RSV8p
         eV8ss94fXr3XpOgnRXPYeaKrYXWDI3Jul57QWGQzqezPAnGl//aAa1ucz3BHPW+tYGe5
         4IeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:user-agent:message-id:references:cc:in-reply-to:from
         :to:content-transfer-encoding:mime-version
         :arc-authentication-results;
        bh=1J/mMQ7qTRyiAWaXHnzPWOHciZ6/vgscLn5hFXcPvsc=;
        b=qfF+66ASk+52jGPIoJvq4z1Fq0LIZ2+Nh84vKMWkFffz9b5wCGNsyNgGyUY1Vs+s1G
         GX2Psrj05undlN5fHpt+x2h4ZCTKuLo9+UTXZPi5j/X5bGgKtPmh+vGm6O31eFd4ZVqO
         sYgepsuMwofcggUGTS2xe3svaUMtb2imO71QR1Z51auk6yUooroPWO+BX7PsVbTg1L+7
         xl0HDvf/FnJ2Y3YrlSC6hxMpY7Hj21johF508YWPHfMZXZaKZ/g+ZwBF3+5K0V3eQWkb
         XL0sLV9g2aZWX7a1upQcsLIbIFTaL4QThMv0saXOzhzRqPChpzWDxWT/l4LpUgq1auqH
         7Xuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Return-Path: <chris@chris-wilson.co.uk>
Received: from fireflyinternet.com (mail.fireflyinternet.com. [109.228.58.192])
        by gmr-mx.google.com with ESMTPS id p70si1711792wma.1.2017.10.12.03.35.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 03:35:19 -0700 (PDT)
Received-SPF: neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=109.228.58.192;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 9142171-1500050 
	for multiple; Thu, 12 Oct 2017 11:35:14 +0100
Return-Path: <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
To: Haneen Mohammed <hamohammed.sa@gmail.com>,  dri-devel@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <61b5de2721575d5fded00cce1944a6369dc93c24.1507773977.git.hamohammed.sa@gmail.com>
Cc: gregkh@linuxfoundation.org,
 "outreachy-kernel" <outreachy-kernel@googlegroups.com>,
 "Daniel Vetter" <daniel.vetter@intel.com>
References: <cover.1507773977.git.hamohammed.sa@gmail.com>
 <61b5de2721575d5fded00cce1944a6369dc93c24.1507773977.git.hamohammed.sa@gmail.com>
Message-ID: <150780451244.17631.15078779959438842429@mail.alporthouse.com>
User-Agent: alot/0.3.6
Subject: Re: [PATCH v2 1/3] drm: Extract drm_debug.[hc]
Date: Thu, 12 Oct 2017 11:35:12 +0100

Quoting Haneen Mohammed (2017-10-12 03:32:53)
> diff --git a/drivers/gpu/drm/drm_debug.c b/drivers/gpu/drm/drm_debug.c
> new file mode 100644
> index 0000000..a79593f
> --- /dev/null
> +++ b/drivers/gpu/drm/drm_debug.c
> @@ -0,0 +1,75 @@
> +/*
> + * Copyright 2001 VA Linux Systems, Inc., Sunnyvale, California.
> + * All Rights Reserved.
> + *
> + * Author Rickard E. (Rik) Faith <faith@valinux.com>
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * PRECISION INSIGHT AND/OR ITS SUPPLIERS BE LIABLE FOR ANY CLAIM, DAMAG=
ES OR
> + * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
> + * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR=
 OTHER
> + * DEALINGS IN THE SOFTWARE.
> + */
> +
> +#include <drm/drm_debug.h>
> +#include <drm/drmP.h>
> +
> +#define DRM_PRINTK_FMT "[" DRM_NAME ":%s]%s %pV"
> +
> +void drm_dev_printk(const struct device *dev, const char *level,
> +                   unsigned int category, const char *function_name,
> +                   const char *prefix, const char *format, ...)
> +{
> +       struct va_format vaf;
> +       va_list args;
> +
> +       if (category !=3D DRM_UT_NONE && !(drm_debug & category))
> +               return;
> +
> +       va_start(args, format);
> +       vaf.fmt =3D format;
> +       vaf.va =3D &args;
> +
> +       if (dev)
> +               dev_printk(level, dev, DRM_PRINTK_FMT, function_name, pre=
fix,
> +                          &vaf);
> +       else
> +               printk("%s" DRM_PRINTK_FMT, level, function_name, prefix,=
 &vaf);
> +
> +       va_end(args);
> +}
> +EXPORT_SYMBOL(drm_dev_printk);
> +
> +void drm_printk(const char *level, unsigned int category,
> +               const char *format, ...)
> +{
> +       struct va_format vaf;
> +       va_list args;
> +
> +       if (category !=3D DRM_UT_NONE && !(drm_debug & category))
> +               return;
> +
> +       va_start(args, format);
> +       vaf.fmt =3D format;
> +       vaf.va =3D &args;
> +
> +       printk("%s" "[" DRM_NAME ":%ps]%s %pV",
> +              level, __builtin_return_address(0),
> +              strcmp(level, KERN_ERR) =3D=3D 0 ? " *ERROR*" : "", &vaf);
> +
> +       va_end(args);
> +}
> +EXPORT_SYMBOL(drm_printk);

We already have drm_print.c, currently used to house drm_printf and the
drm_printer. It might be a bit confusing to have drm_printk and
drm_printf next to each other, but less confusing that calling user
error messages drm_debug.c.
-Chris

