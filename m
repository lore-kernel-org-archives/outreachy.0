X-GM-THRID: 6616747745212366848
X-Received: by 2002:a19:6d08:: with SMTP id i8-v6mr370379lfc.17.1540821279980;
        Mon, 29 Oct 2018 06:54:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9999:: with SMTP id w25-v6ls73833lji.20.gmail; Mon, 29
 Oct 2018 06:54:38 -0700 (PDT)
X-Google-Smtp-Source: AJdET5crl/M22jDGlylvdUra/JyBkM0DZDQGaL+Q7Coy6aYFqZB3R3Pjeve2digKE5TdxGUpL95m
X-Received: by 2002:a2e:7c17:: with SMTP id x23-v6mr1280676ljc.7.1540821278543;
        Mon, 29 Oct 2018 06:54:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540821278; cv=none;
        d=google.com; s=arc-20160816;
        b=oQ7UPLU/s1Vontpt1jf7//DY10ZBT+VAq93PC08cgdVlfeMGRAQXJaIh28MVhTnQUl
         UzG0URW7Eva0xtrS6V9rKNuphjHhAnXv8+pCBYABp01EMbAzjGE5OIq3ZWhWQURQLKAN
         UU/WsiM6SXy4GXj3UUn7+LQnyouUHmc6lp2lLkAkNwoj0dWSVVGyYJWGkCmVi0b6wqFA
         RqQIfstW4xBMXdvNEt4oaSu0WwfrCeTQ1MmqSEY+BfJginaZo1SKewWmShKPlgoDXpKS
         j6Q5JosYa1MwdYwhjVN2wXHO+JXAyL73p5++uj6kQkLWGN+YlzdVXdMWjqM0bDRpt2ti
         TX4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iPs4Gs3Y/n3f7pwNOhpWRAjaXS8uccko7yxxth6Lx2E=;
        b=LVA5WDBOYMBOcqYmQwhbR1rlSC4RZlk1nTBHkHKezpvK0NecQZx4Fr8f0GvOlYQouo
         tWMUucOqLwLKZJWnhcSBaUpHNjKJ1jn1ZDE1f4S9+O9W7/5rF5GQbKjLC2Ibq96+Xjwo
         D4U8lt3XOzTS2y/sZGamU6ZczSDP0GiFHDFVbwzKaaS+3AZC6bSb9/dJsRJT0j3rrvKr
         YFCeO8gCE3x38+EoKX/fX27UuFzZ8HfgO1teGPZjFVJFxGeG+3TVAxntqrgUfOQqJWkX
         4fDCNzbw952KyfgjpxtxSP9VRzlxWLXX7k2+m0t2HYoUaUuMv69Fnj7/Res1LTLSbWOU
         JVJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=CYU+kcJO;
       spf=neutral (google.com: 2a00:1450:4864:20::531 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id r79-v6si778642ljr.3.2018.10.29.06.54.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 06:54:38 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::531 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=CYU+kcJO;
       spf=neutral (google.com: 2a00:1450:4864:20::531 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-x531.google.com with SMTP id v18-v6so7338956edq.13
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Oct 2018 06:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=iPs4Gs3Y/n3f7pwNOhpWRAjaXS8uccko7yxxth6Lx2E=;
        b=CYU+kcJOlGafaF/e+lNnsWWVqWQqJIkBUC8HbyCOzZYXfihaJ3xvfYW26Tboomt0cZ
         SffenIjkg2AY0VK25hPVl2xqC/T+km0hywOQjYtLi65zeLylcbGpjsP6YNj5uTHht3L0
         RHe1pZ2N3BKTLvyGPg6xBREwceA0yO0lZhQ1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=iPs4Gs3Y/n3f7pwNOhpWRAjaXS8uccko7yxxth6Lx2E=;
        b=KhK5iZZNTaoMnfgU5t8RcpCr07l39t2fBJKiMr7rEOZQ6+g7UuRdgnCZ1qjRrWQtcK
         y/CQom66SZyMk8L6hTldC2VbNq8eycPyW9OAorm3BnSWjHd7q7yGXZ5VKrEMplcjGczG
         7+7HwW7G8DNix+IL1KTmugz8+SruYCgg1TvfdkhYVG4TBMAKL9iFn6z46Njdp2g7j1F1
         5/uiq3DV9R/WJW5+dc9SrC0TuGapvgyQHNzLdmMTwaR0V4SiPsS+esw0UZsLwryPL3SZ
         GhhoC9Aad/NSwAJ5YbKPZCxOVkiAbY71mltXKAK0B0z7vWpnKoq1thGOnwagcWSml03x
         Vb7w==
X-Gm-Message-State: AGRZ1gKiHbpAT+CCZdHzPePMuOe/u97BRE1a9VL4m2yP4T3NXT4AJSXS
	BLVBVE2ReAuKh/bMR4mGZsNkQpd7atU=
X-Received: by 2002:a50:afa2:: with SMTP id h31-v6mr13990219edd.169.1540821277694;
        Mon, 29 Oct 2018 06:54:37 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id k13-v6sm471625edi.37.2018.10.29.06.54.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 29 Oct 2018 06:54:36 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 29 Oct 2018 14:54:34 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
Cc: Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
	David Airlie <airlied@linux.ie>,
	virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] drm/qxl: Remove checkpatch issues
Message-ID: <20181029135434.GY21967@phenom.ffwll.local>
Mail-Followup-To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>,
	Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
	David Airlie <airlied@linux.ie>,
	virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1540579956.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540579956.git.shayenneluzmoura@gmail.com>
X-Operating-System: Linux phenom 4.18.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Oct 26, 2018 at 04:20:30PM -0300, Shayenne da Luz Moura wrote:
> This series cleans the following checkpatch.pl issues:
> 
> ERROR: trailing whitespace
> WARNING: Missing a blank line after declarations
> CHECK: Please don't use multiple blank lines
> WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
> ERROR: space required before the open parenthesis '('
> CHECK: Avoid using bool structure members because of possible alignment issues

I looked through the patches, all fine, great work. I've pinged
maintainers and will merge it all as soon as they've acked it.

Assuming you want to continue hacking on gpu drivers, we have a todo list
with more advanced tasks:

https://dri.freedesktop.org/docs/drm/gpu/todo.html

Best to discuss those on #dri-devel irc before getting started, to make
sure scope and all is clear.

Cheers, Daniel

> 
> Shayenne da Luz Moura (6):
>   drm/qxl: Remove trailing whitespace
>   drm/qxl: Add line after variable declarations
>   drm/qxl: Remove exceding whiteline
>   drm/qxl: Use 'unsigned int' instead of 'usigned'
>   drm/qxl: Add space before open parentheses
>   drm/qxl: Use 'unsigned int' instead of bool
> 
>  drivers/gpu/drm/qxl/qxl_cmd.c     |  7 +++++--
>  drivers/gpu/drm/qxl/qxl_debugfs.c |  5 ++---
>  drivers/gpu/drm/qxl/qxl_dev.h     |  1 -
>  drivers/gpu/drm/qxl/qxl_display.c | 19 ++++++++++---------
>  drivers/gpu/drm/qxl/qxl_draw.c    | 11 ++++++-----
>  drivers/gpu/drm/qxl/qxl_drv.h     | 31 ++++++++++++++-----------------
>  drivers/gpu/drm/qxl/qxl_dumb.c    |  3 ++-
>  drivers/gpu/drm/qxl/qxl_fb.c      |  4 ++--
>  drivers/gpu/drm/qxl/qxl_image.c   |  4 +++-
>  drivers/gpu/drm/qxl/qxl_ioctl.c   |  2 ++
>  drivers/gpu/drm/qxl/qxl_kms.c     |  2 +-
>  drivers/gpu/drm/qxl/qxl_object.c  |  5 ++---
>  drivers/gpu/drm/qxl/qxl_object.h  |  2 ++
>  drivers/gpu/drm/qxl/qxl_prime.c   |  1 -
>  drivers/gpu/drm/qxl/qxl_release.c |  1 -
>  drivers/gpu/drm/qxl/qxl_ttm.c     | 12 +++++-------
>  16 files changed, 56 insertions(+), 54 deletions(-)
> 
> -- 
> 2.19.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1540579956.git.shayenneluzmoura%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

