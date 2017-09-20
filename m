X-GM-THRID: 6466935626239311872
X-Received: by 10.36.16.14 with SMTP id 14mr1651536ity.9.1505929149735;
        Wed, 20 Sep 2017 10:39:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.120.78 with SMTP id t75ls215202pgc.15.gmail; Wed, 20 Sep
 2017 10:39:08 -0700 (PDT)
X-Received: by 10.84.233.2 with SMTP id j2mr1606917plk.14.1505929148545;
        Wed, 20 Sep 2017 10:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505929148; cv=none;
        d=google.com; s=arc-20160816;
        b=yLqNxRZYfpXBnDN5+Ls0zzxiDW2L7fYJd2XrpExbdFDp4Zz+PYkAs5yMrY9A3k2zoV
         s/GlcQxnbdp+Ryn//EUCFt+nHOUJHicxVHHG5ifpoPY7JW64HeLWDoVaFjE7G1trZ5d9
         W6xyEgvtQ73DwXVQtV5R/ocj3fvLYHb++3BR81xf2YIIxohEMWIJl/917PG76q96yoCE
         WvxivOowZx4RYKRRa2QcZwgV7SJLVSjcMSYxxFMDkOPpCTDl0xoa3m0YYv02g4Cmny/P
         JF1rs0psd/LlN5nyhg2j2uk4XTh8j9uH3YacDIfyxM92kpL/w01W5QQ5yXQCItLbXjbE
         LREA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=WXlHGjNFFZeIEyzJ/I4p2OyezE0zUDJfpnCUVDPJ3mQ=;
        b=Mo8jxy50EGANSXuwrLLPjOU7d5bkC0wt9NryojQ/vLOO3qCIoCMviYAWSeEWZsAexx
         waCL2IfQhlpwzB6xdVkPN+ShvaJ6D4g19+M5d9H7vnWXzIHNimJfW4lVZDeMdR7ij2V0
         s1Jsu1nG7DQez1h57uYgfozjNmJ5v1KhDIoVfMh/S1dqtzDEzrNJDyKFdDoWQaI9e8to
         SFgspOhy1xGmDmq+e7h0DSrDRLBfYPl9x3M+huXBmXuRpW8kMln5+/OKh+iIXEWTBDcW
         OF2RVBRPIg2LbbIxA9aLpJr/3lqrOpILRvSBYo1Ro94FhwPoLO3ekEMw6wEDuRfstVrJ
         /HnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=WJUrMll5;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::243 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Return-Path: <daniel.vetter@ffwll.ch>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id z207si112685ywz.6.2017.09.20.10.39.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 10:39:08 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c0b::243 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=WJUrMll5;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::243 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-it0-x243.google.com with SMTP id d6so1786860itc.4
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 10:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=WXlHGjNFFZeIEyzJ/I4p2OyezE0zUDJfpnCUVDPJ3mQ=;
        b=WJUrMll5OjxoS9ZEU+zJlCWNf+72noRPTbn0YlN6nPHF2AhYR1Hp6UEGGZa1MRa6Hv
         gbJbOc/jhpdIAgSuYDbFJKqsWjFf+ypyOLxZySbM9Vc44EofmB5WGEXgh+IA9U0JCBV7
         VkUAWZsKkE5fltf5YKPWHNoPHs5Jh0Jzb+iYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=WXlHGjNFFZeIEyzJ/I4p2OyezE0zUDJfpnCUVDPJ3mQ=;
        b=t7vuy9w0cG6V5j/obe69zAZx1N6mIL82vbZm1cg8+c4Km8YwJvPWDB7+S1mLPCS+p8
         Z9iJEzaCH1tmWx67zXu2yiAZKgsZcfNyYsTJbbvrPYhWszUlfySdoJgGLvMXgfBPqt7s
         nl51nhUUL86MMTXiUNJoHwf8gdoAAeW/nNpraqEy4VmF3soQ/pkqkLwvWIhdiwS4C+XA
         AAGlpwXrQ7TL2D73DgDDnEV8RGHkqrITpn+JzIzwQKVGf54dBDl16B8IfPjRZkrQeDHW
         QlWTiB5cIfIKtmWOGiGcFUCslxiXvXe0tAsD2Pfw4/MpY7iNbEFhM8TMwcvdwAw6zGE8
         A2qw==
X-Gm-Message-State: AHPjjUjEmz24pxE06IhW1Xq7K3ToOAI9bhjz7Kp+9IqcylBHZZoFDNqM
	5cBbzf+QKXxA0dh1dPqWArdsbzngx4xS0vfEJiP8jw==
X-Google-Smtp-Source: AOwi7QBemttcpIhrmDFxxiKpsObE0uNJw9oiNV3taTUfrA5KvAza10c2z3A3V1m4MgeK9ARqDYbs+WXDVZxwv5EfZys=
X-Received: by 10.36.178.17 with SMTP id u17mr4002520ite.64.1505929148094;
 Wed, 20 Sep 2017 10:39:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.196.218 with HTTP; Wed, 20 Sep 2017 10:39:07 -0700 (PDT)
X-Originating-IP: [104.132.1.106]
In-Reply-To: <cover.1505699582.git.hamohammed.sa@gmail.com>
References: <cover.1505699582.git.hamohammed.sa@gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 20 Sep 2017 19:39:07 +0200
Message-ID: <CAKMK7uGK5xbo869tdR1dpWTiHpUq7MztSYduji8TyNuQcxM0Uw@mail.gmail.com>
Subject: Re: [PATCH 0/2] drm/armada: Replace _reference/unreference() with _get/put()
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	David Airlie <airlied@linux.ie>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Hi Haneen,

For dri-devel patches, can you pls also cc dri-devel? Means these need
to be resend.
-Daniel

On Mon, Sep 18, 2017 at 4:13 AM, Haneen Mohammed
<hamohammed.sa@gmail.com> wrote:
> This patchset replace instances of *_reference/unreference() with *_get/put(),
> because get/put is shorter and consistent with the kernel use of *_get/put suffixes.
>
> Haneen Mohammed (2):
>   drm/armada: Replace drm_gem_object_reference/unreference() with
>     _get/put()
>   drm/armada: Replace drm_framebuffer_reference/unreference() with
>     _get/put()
>
>  drivers/gpu/drm/armada/armada_crtc.c    | 22 +++++++++++-----------
>  drivers/gpu/drm/armada/armada_drv.c     |  2 +-
>  drivers/gpu/drm/armada/armada_fb.c      |  8 ++++----
>  drivers/gpu/drm/armada/armada_fbdev.c   |  6 +++---
>  drivers/gpu/drm/armada/armada_gem.c     | 14 +++++++-------
>  drivers/gpu/drm/armada/armada_overlay.c |  4 ++--
>  6 files changed, 28 insertions(+), 28 deletions(-)
>
> --
> 2.7.4
>



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

