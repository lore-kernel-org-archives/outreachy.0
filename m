X-GM-THRID: 6470705412124442624
X-Received: by 10.223.135.59 with SMTP id a56mr1174793wra.30.1506930995251;
        Mon, 02 Oct 2017 00:56:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.130 with SMTP id r124ls1839924wmb.12.gmail; Mon, 02 Oct
 2017 00:56:34 -0700 (PDT)
X-Received: by 10.28.228.11 with SMTP id b11mr1360772wmh.17.1506930994651;
        Mon, 02 Oct 2017 00:56:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506930994; cv=none;
        d=google.com; s=arc-20160816;
        b=s/Ds/ceSAqMdEQxv05ONEWrXUQhJLfHjcaUQfHvMt3Iyl8j9pM/zGRoHaiAbmYTApE
         Vr0jXXwP21HMC7rb+ciPV6ZixqPOvOZfIQoLeg+yLtbTmaBSaDeKrTmGnxbWb15XX2K3
         JU2wCeVMDTXLMJgGbkWOa60aJI0K+5r/Ika+ko1BhdpmVhY/usDhrmNnArHflAF3X58A
         pk3U2nfPe1hITqCQZP+aO1mdPaIyjl44F0UIlinszJwD/I5KIMscifCyDbUA2YBBuoz4
         J3QjiC+ER+3ILTe2CY1O/7OQM0X6TIueAgfdxee02ZuKlYuXMIyyB6RELMZhtP7S3OTQ
         2BOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=+cFTvVDHz28t7Uh8csa88wF5/fKdOLCgAj8aZl4Vq7s=;
        b=FrAW4cPL2v4vsKlr9UljhD9lSIYPnDBj5ZhWTV4SDk9xzZE+jgmJp8u3ohdDkbXtCJ
         UIt4eQgwJ0IvoBAmdYkbmxDjQC21T2ttfsv+uEGGpYtkERgaBtdyRE0CILTdDNHud0mQ
         qr8SCK2CCvJPOnhn0SgH2V4F27GKhj8ZyUMUOt/Av6kcl40/vUfxrZeL2RbI8XzINUyb
         485yxDiOkmVgoK+EZFnzQDHsiRpehJ4nf5NrEK2heugh5Wxe9wRxfgR/LlYoIyiSps6A
         7m9zeQcYxc4arZfWnfwdTkMZKUpUvEqu2v/wYeaNmBxBb++F51ckUIxnzdAZw3T9Gcup
         SuKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=lYGrfBNq;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id d82si1006482wmd.1.2017.10.02.00.56.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 00:56:34 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=lYGrfBNq;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x243.google.com with SMTP id b189so2992591wmd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 00:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+cFTvVDHz28t7Uh8csa88wF5/fKdOLCgAj8aZl4Vq7s=;
        b=lYGrfBNqxFRR5g+Vi53I/9ZGI98kZaykuU+FFyc1I0MH1NRFWxkFABg8wN9oIm2s9f
         LSbrcKTxkNnXQrqYpVCMLJhREQOpXj+NEY+MdYM2XW5RdRs/87itZ12cFI7r/s2oRXWE
         Kl3HO356LBzR3pS43gN5ARgQSKPr3Qs3msvbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=+cFTvVDHz28t7Uh8csa88wF5/fKdOLCgAj8aZl4Vq7s=;
        b=IC4DHAPOjJyy78IuJ10rMIIKnTBdP6wz9f6tOXWnA2TBfkGE+G1VPoJYeW21ByOjMO
         vvyq//5JdHWlo4Nl8PFeqSDowimvUpb9ILHqTnS2tNS9odpEGBv7qvxhAIkt8MKRiA1B
         rhK2uvGs+8Poj6RU2YODrTRGNFTViasU3E/og8WlXPNrc/htBUIuimDlDT6jC9x5hJn+
         bAC54nTDkCeKEct6+SVsD/+tATl3KgafasWKdNS5THAMmr//rqk9v1qwsGLGmgShM3RA
         YF3rmucvMTJnzshbZ1qyv1R92iUosIHut9EHYmRSy/31zGtka/frJjh22Hoi6rADHbGV
         Z6qg==
X-Gm-Message-State: AHPjjUibYVrOu1dQsiFsOVVcuYUtnWNQNEtjnvw3FuRdDcao6fu4V0xF
	0KDX2zhMZwDAeP/GfDSQVilHOA==
X-Google-Smtp-Source: AOwi7QAeMq/nS0MTQ5QvU/zRPwekK7yQJr0EgLN0Ejca8MQgpaDuWNKwzsWDLg+BtBBlmIPSVHkghg==
X-Received: by 10.80.181.88 with SMTP id z24mr19648820edd.101.1506930994272;
        Mon, 02 Oct 2017 00:56:34 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id x14sm2955297edd.10.2017.10.02.00.56.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Oct 2017 00:56:33 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 2 Oct 2017 09:56:31 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: kbuild test robot <lkp@intel.com>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, kbuild-all@01.org,
	daniel@ffwll.ch, noralf@tronnes.org,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 3/3] drm/tinydrm: Add the dummy versions of
 drm_of_find_backlight functions
Message-ID: <20171002075631.k5dklpuxfmv7qzbr@phenom.ffwll.local>
References: <aa492420b933fd8f189a4577949cbeb8b13cd066.1506698677.git.meghana.madhyastha@gmail.com>
 <201709301309.DCWPmynw%fengguang.wu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <201709301309.DCWPmynw%fengguang.wu@intel.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Sat, Sep 30, 2017 at 01:18:53PM +0800, kbuild test robot wrote:
> Hi Meghana,
> 
> [auto build test WARNING on drm/drm-next]
> [also build test WARNING on v4.14-rc2 next-20170929]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Meghana-Madhyastha/drm-tinydrm-drm_of_find_backlight-helper/20170930-122931
> base:   git://people.freedesktop.org/~airlied/linux.git drm-next
> config: x86_64-randconfig-x017-201739 (attached as .config)
> compiler: gcc-6 (Debian 6.2.0-3) 6.2.0 20160901
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from drivers/gpu//drm/tinydrm/mi0283qt.c:15:0:
>    include/drm/drm_of.h:74:1: error: expected identifier or '(' before '{' token
>     {
>     ^
>    include/drm/drm_of.h:80:1: error: expected identifier or '(' before '{' token
>     {
>     ^
>    include/drm/drm_of.h:72:40: warning: 'drm_of_find_backlight' declared 'static' but never defined [-Wunused-function]
>     static inline struct backlight_device *drm_of_find_backlight(
>                                            ^~~~~~~~~~~~~~~~~~~~~
> >> include/drm/drm_of.h:78:40: warning: 'devm_drm_of_find_backlight' used but never defined
>     static inline struct backlight_device *devm_drm_of_find_backlight(

You need to squash the dummy version into the patch that introduces the
first usage, otherwise compilation can fail and break bisecting. And looks
liek this doesn't compile. It takes a bit of playing around until you have
a Kconfig that hits this. Luckily 0day has constructed one for you
already.
-Daniel

>                                            ^~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> vim +/devm_drm_of_find_backlight +78 include/drm/drm_of.h
> 
>     71	
>     72	static inline struct backlight_device *drm_of_find_backlight(
>     73						struct device *dev);
>   > 74	{
>     75		return -EINVAL;
>     76	}
>     77	
>   > 78	static inline struct backlight_device *devm_drm_of_find_backlight(
>     79							struct device *dev);
>     80	{
>     81		return -EINVAL;
>     82	}
>     83	#endif
>     84	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

