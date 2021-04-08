X-GM-THRID: 6948889025177452544
X-Received: by 2002:a92:d68c:: with SMTP id p12mr8927715iln.73.1617917679402;
        Thu, 08 Apr 2021 14:34:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9acb:: with SMTP id x11ls1097537ion.10.gmail; Thu, 08
 Apr 2021 14:34:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwxF9x0IA5Nc2DL/s0cgcF9YybUXwhZfvCyXMF5mZCcKp0DrdZSZzzXZzEkiVvZbNpkbqV0
X-Received: by 2002:a05:6602:2432:: with SMTP id g18mr8792449iob.86.1617917678656;
        Thu, 08 Apr 2021 14:34:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617917678; cv=none;
        d=google.com; s=arc-20160816;
        b=WbvDMfYQzQkMa9a+ELbNdWNaj3xjcGgYTG6ugSxK3R8V9lS98loi4RZ8DI+H1aUPSr
         LxXWIb4dGwTV6ucgX/udp/mzb3JtNofp9ZMtVGfQupLkz6t5BRrJHixW4l+axYigcVzn
         x7qLqU9MaxuMTyaK/Xsa6sXkqXl33Dsp62Qt6LgkuRGgqHN1utN5ldqUQ4X/1ChsW4ty
         m6lDhAPd1u6RogAKbFoIq4wSj8URFTY4rnAl/niG89spgdwGmhM7ms6a7GPqGY0FWUvu
         Aw26/D+Hm3Ao9FPkASxPmq0hl2q7GavG/ByU4ah+uSbCQKC7c2Qvurp5NE5laLSWisli
         1qIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=y+PxuwGIyeW4oHOMlrWipwVHOGtXMFa2LYI1MnFtX9o=;
        b=WTaP3sp5OXmizQGqFu4C9h/38MSQ9dEmshVHRJlR5LVRMegTLGsxF0CIsDSENYj7QK
         e2PaIYRZMIIV91GskOB/+IwWuWWUFe93PHMyoI/yRHcW04LeG5TE3HuIzMF/jRJdNFri
         ETkFdmHWqN88E8XNgPQodfhhmeP7vRChwlJcQ+RUbv3HZBFB9HP76oYlvzS9lf1B+loO
         /+5ACxiG0it9mg0PlLrdai9PNnBqvQLhqqXgSN14h1ygPEr8hURfEavuPsXxeA32AG6I
         il+pNegHa6TwlOpLX9pn8VcO6ol5wGyMfYRHwUGwdCPBrX0818S57HqcTKEZTqXdhV0q
         Fdjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WxuXKRi4;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id 12si31661ilz.1.2021.04.08.14.34.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 14:34:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WxuXKRi4;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id l76so2318291pga.6
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 14:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=y+PxuwGIyeW4oHOMlrWipwVHOGtXMFa2LYI1MnFtX9o=;
        b=WxuXKRi4dHO7pKQVkIYyAvEfHjXzr3pp4HATc7/w4DeUuWLqUdWBZKKgMkw5Vm0pcg
         28HhB7Bf6c7hL5ZAP+l1ZW05K04AihtUvwEL/6n0EpVEvJwz1E3DKK0bpgutRpGmA5BY
         wXlegv2YFKRRbD9Nia67d+OIsxlRxuQGOc6mBhZ5Z13dCcj39XoeDleJYegPNyJs+lnM
         tySi6K/HWk2bTQRGU0zbJ/GY8A460fD0ItohJJuAgWViQ7CCGXIL8WgJxD8lYRMpwiLj
         KaGFUxyiU6lFMr0C7AAxHyK8PaoUSqdiGbjYcnMOIpSj3QpTgWRv6n/rJCpJTL9Ps4Ot
         57yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=y+PxuwGIyeW4oHOMlrWipwVHOGtXMFa2LYI1MnFtX9o=;
        b=TesWMvp24X68wQpM0j8KvJnAl1Tk7k2AcCK+b+wqXJTea533YXKh7xYL3tyrSS2nyu
         4lIsdC/2ibPmf6eDHTPMNu8kLgUIaiqLZV9jRqwsvU7XhATY0mUcGiN70oeAduAfMukw
         QwD7HaBKNPPsFFrBjBzCadsjQJCGOvZAFOs/OFQ8ez1dmjnl/IE5pqO2LULxO95qAcrP
         Mu7yPGUamG+m8uZ7mtOSlxPA0/EAIsw4KNZATBE+OqQU8xwcn+5d6vcO89Tz3vveuCTK
         HHtEegBnbser/xTjBf5taxpVHvKjY/OFFajXRFj99f7bwAeTESLFigfA1yddOpzz0scE
         +u+g==
X-Gm-Message-State: AOAM532Gfr6TGMsZQukaiqy+0dNfJ3JQn4THRue+vDRUqBj0Afila0kK
	WCZ1MEAnku3HlHk8OYQBnRY=
X-Received: by 2002:a63:c446:: with SMTP id m6mr9586932pgg.71.1617917678281;
        Thu, 08 Apr 2021 14:34:38 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.243.224])
        by smtp.gmail.com with ESMTPSA id s2sm305833pjs.49.2021.04.08.14.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 14:34:37 -0700 (PDT)
Date: Fri, 9 Apr 2021 03:04:27 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH 1/2] media: zoran: add spaces around
 '<<'
Message-ID: <YG9242K4F5xjaOq8@kali>
References: <cover.1617912177.git.mitaliborkar810@gmail.com>
 <8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1617912177.git.mitaliborkar810@gmail.com>
 <alpine.DEB.2.22.394.2104082315560.21785@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104082315560.21785@hadrien>

On Thu, Apr 08, 2021 at 11:16:41PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 9 Apr 2021, Mitali Borkar wrote:
> 
> > Added spaces around '<<' operator to improve readability and meet linux
> > kernel coding style.
> > Reported by checkpatch
> >
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  drivers/staging/media/zoran/zr36057.h | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> > index 71b651add35a..a2a75fd9f535 100644
> > --- a/drivers/staging/media/zoran/zr36057.h
> > +++ b/drivers/staging/media/zoran/zr36057.h
> > @@ -30,13 +30,13 @@
> >  #define ZR36057_VFESPFR_HOR_DCM          14
> >  #define ZR36057_VFESPFR_VER_DCM          8
> >  #define ZR36057_VFESPFR_DISP_MODE        6
> > -#define ZR36057_VFESPFR_YUV422          (0<<3)
> > -#define ZR36057_VFESPFR_RGB888          (1<<3)
> > -#define ZR36057_VFESPFR_RGB565          (2<<3)
> > -#define ZR36057_VFESPFR_RGB555          (3<<3)
> > -#define ZR36057_VFESPFR_ERR_DIF          (1<<2)
> > -#define ZR36057_VFESPFR_PACK24          (1<<1)
> > -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1<<0)
> > +#define ZR36057_VFESPFR_YUV422          (0 << 3)
> > +#define ZR36057_VFESPFR_RGB888          (1 << 3)
> > +#define ZR36057_VFESPFR_RGB565          (2 << 3)
> > +#define ZR36057_VFESPFR_RGB555          (3 << 3)
> > +#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> > +#define ZR36057_VFESPFR_PACK24          (1 << 1)
> > +#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
> 
> Are these all aligned in the actual file?
>
No Ma'am, they were not aligned in the actual file.

> julia
> 
> >  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> >
> > --
> > 2.30.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1617912177.git.mitaliborkar810%40gmail.com.
> >

