X-GM-THRID: 6748167848535785472
X-Received: by 2002:ac2:555e:: with SMTP id l30mr25387312lfk.163.1571248689736;
        Wed, 16 Oct 2019 10:58:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:7102:: with SMTP id m2ls2096457lfc.15.gmail; Wed, 16 Oct
 2019 10:58:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIdqJG05CkXaTpZisJHiJ01G6owDL8dBLcQ/5NQjBojL4pR4r0mJWGWzogjLlhcXXa4M5N
X-Received: by 2002:ac2:4902:: with SMTP id n2mr23955527lfi.42.1571248688631;
        Wed, 16 Oct 2019 10:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571248688; cv=none;
        d=google.com; s=arc-20160816;
        b=xxQ7mRnB2W9jNuL4WHBCGVzdi1IqynJdJj+S1vkDnRSt4cfWz89T8ZiM3JLPjnuPdy
         +P9WMdsaiFuOU3yiBicslXe5Ya1SvneUqzERWtSbnULnyDzPyrOr6/V3RCa5TCSAuHVx
         Gm5ipp51N6Nh827US/Qol3g+nXRDQFY17Xmn1F1an/WWCv9t5hFTwCM4nTlx+uuexq/I
         5xuKRZ+0t32Zqr7p+B2FDtgSY5enGPJ8FAO2tvjdFjFZBz/RU1XuLiALgnE5I4xlPNU0
         ipyMEPt4jcuq8oh2/TwuPxm4nNSZfWKbHZBaTq4eRpVGbMr26P8tdUF/f7D5EWNE8JLV
         m/cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=nFz4T0vFX9I/roldji38Wknwl/JNJ6KhqR7kFUGrr+8=;
        b=ABJ6bgDNK9wz5nKLJno/a1h0iOlECamVow1uIOG7GC057gk2aKOJ57WG35mEpF8jrK
         AEaAbfGNctVkOOLxgFqEzFDpD1jn+paSJKECQz08cPFHb+Gyy71pkvIqcLepPjKh3LSU
         p3Lkn9jl/ldl1aq5TddM2foPPBm+x0aKlkvAofAg2Dwokj6NiyGPLvJ98VIPrQEAr3KB
         Up72o+tO/8f6zZWmG/hntIUr/MwgQvobM+jiksPMzQFMAWvp3zaC/Wix+KqdgrKXe6sn
         ftplHq/9Fver9SGZi5m0cPze+ImNqqiL5IYffS6wiq6X7qiGOLMEOJeR8MB81uczcqsC
         G3cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MG8kkB/m";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id o30si581117lfi.0.2019.10.16.10.58.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 10:58:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MG8kkB/m";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id v17so3734872wml.4
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 10:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=nFz4T0vFX9I/roldji38Wknwl/JNJ6KhqR7kFUGrr+8=;
        b=MG8kkB/maSXdkwrwZNVgc+Xt3j8g2HWexcftmSC0vzdBO837oFQKzV2Hlniy6PE0yH
         WI40Q0LAOwT9M9yDnx6e0NCvpSy4g4fh8iUCaLzH/ciRPfS9YHMPj6bgX234D+yhGdse
         ZYMPpMe5M3HTAg6sMw0/Jw/gVWMTJCypdNTDrqjnLixFJIQT3uvbrEfcWCHPxuFfMcwi
         kRwt4w2lZLppVnDv6jcrUjfbaaRIZFEqlJj/qA0AazdcIEf8bOsvGhUCdpB2RRrexIMC
         PlRL465867YiyQtZ8NfvBTsriVq6F11OzW1hvwIB/JKliHP5V8RHHXIpJjyolospeWtQ
         r9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=nFz4T0vFX9I/roldji38Wknwl/JNJ6KhqR7kFUGrr+8=;
        b=Gxh/JHEboIEvXLXoXLdIGIQwwrNWCioBjZ7QVzfhjHYL2jlZqoVAe3KXoEH4kJ2ZCU
         xqHGJHMV3mhxcBbhDXbEoD9rKGf8G2NDFcbXAhMmaDYMZ7PV1fd50s440aRgHY0GydgN
         ipNBuuZx2LNmC4ITm3QXKaLY+mOJN5pKG4of4JGRKPa3STT7Qpj3nbfAnkx14s79AIbE
         NfXPrGcnzTRxVFFpPSBulWfk7lCHh/NDK7TyI6RvJSd9YQmvHfT6oTjstntkVX4KI8V0
         FIWvjaYxpZki4tjXrZclsBBDmZr7fvcZEjPZQRQxrx9QOUSGKiZ1t6U3HBspaHklcozy
         7FuQ==
X-Gm-Message-State: APjAAAVOMqvpXr43eiXqr0DOHTNXPet37VPiXJZe0oo6AzVTirnX7fha
	nZ1OrPGKlhphyuLCripp4g==
X-Received: by 2002:a1c:e455:: with SMTP id b82mr4444588wmh.41.1571248687904;
        Wed, 16 Oct 2019 10:58:07 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.gmail.com with ESMTPSA id 143sm4430952wmb.33.2019.10.16.10.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 10:58:06 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Wed, 16 Oct 2019 18:57:42 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org, 
    bcm-kernel-feedback-list@broadcom.com, 
    linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix line over
 80 characters checks warning
In-Reply-To: <alpine.DEB.2.21.1910160713140.2732@hadrien>
Message-ID: <alpine.LFD.2.21.1910161855320.8071@ninjahub.org>
References: <20191015225716.10563-1-jbi.octave@gmail.com> <alpine.DEB.2.21.1910160713140.2732@hadrien>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 16 Oct 2019, Julia Lawall wrote:

> >  #ifndef VCHI_BULK_GRANULARITY
> >  #   if __VCCOREVER__ >= 0x04000000
> > -#       define VCHI_BULK_GRANULARITY 32 // Allows for the need to do cache cleans
> > +#	define VCHI_BULK_GRANULARITY 32 // Allows for the need of cache cleans
> >  #   else
> >  #       define VCHI_BULK_GRANULARITY 16
> >  #   endif
> 
> The branches should be indented to the same degree.
> 
> julia
> 
> -- 

Thanks, I have just  updated. 

