X-GM-THRID: 6754190139198537728
X-Received: by 2002:a19:f610:: with SMTP id x16mr5673157lfe.141.1572891578186;
        Mon, 04 Nov 2019 10:19:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:48f:: with SMTP id v15ls1342894lfq.14.gmail; Mon,
 04 Nov 2019 10:19:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqzIC96NVwq/SbPBTw2LoJqxy0a9A98oWCPkSXi37/eklBj1obRwj5q8zcgoOoQre/L876ds
X-Received: by 2002:a19:be92:: with SMTP id o140mr17944006lff.40.1572891577137;
        Mon, 04 Nov 2019 10:19:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572891577; cv=none;
        d=google.com; s=arc-20160816;
        b=QNX+ntw/pdC+gLEstKCYYscg7GfXWWCxK5oZLNjl0ylFfzQzyd02RGpkGsYR7npBU+
         Oe+ANcwkhmME5ADogMDrWc5ksAb4s0bMfQWxWY95WoNVGHRc+S95x5HnQjhKSyNya+JU
         IwXQdByTr4acnF4T4zQ2jA/gPr4ij+QZcQA0HjoQhEqdC9u9Rn82pAgYkkxBWtOljBWE
         ESk1yDUKeutEYSJhkuIkSIYWbMTGIn15Sasm9WbRgAHo3uuYQVBhwT262JCB9N9ySNSW
         MuoA1gISDpPyBK80o93fqRyUmi09zuidoO2hEAWkuepWhVLQiEBoeJj8HJdjIY/4cxBS
         Khpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Qfg3/OhENOhgHzvHvbxDHTYQ7dgyHpgpR3Q3h/hLkOE=;
        b=OrV6Zw0Gh2i5u33Yn45k50K7fETqSRs5v7+xkG3M3kMO2TYmyCfDZJ0jdui6yILw1P
         E/epXThrF8bXM5a0v7rjhRqA9ozuZbI7QtQatKtcawDKxzfei8L3veUAKifz478uAnDC
         AyNe6IyUskX+69Avh5bFHbDWaZCOn1LTHZJpSldDvLY/b+4/3/nyuaTWQ9fl1WZDSKI1
         ecYBg1a9mcv8iwvESNw0L/MzTrIFmWn1iGSmjddD0YOoha7aBclnUE6Niym2kNnCDgXM
         /78vrvSMH8TFazDvYLt5kbqsS2VpP1oQlbvf6otG19PlvvwQGnGbdDdpDtKRTBwVFEcs
         vU4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=fn+K0Jeb;
       spf=neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b22si1100887ljo.3.2019.11.04.10.19.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 10:19:36 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=fn+K0Jeb;
       spf=neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr1-x444.google.com with SMTP id b3so12482360wrs.13
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 10:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=Qfg3/OhENOhgHzvHvbxDHTYQ7dgyHpgpR3Q3h/hLkOE=;
        b=fn+K0JebeyPggpWIrakbcYMmMywkz8WCAdLPRUAUoAtqIBUspiPN7tD3QProjEFSDP
         nLRQVnCWYlJKioXnZylDFjZ9CvozxWOKgd65NLtZqd17WmgPpSzRe+AzdbWMQMwiKEAh
         Qm0FkocWIVWPD+J6wOxMRhwzLkNS66oy4IFOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=Qfg3/OhENOhgHzvHvbxDHTYQ7dgyHpgpR3Q3h/hLkOE=;
        b=kEGLF1k7nKjVYl/sRoe52cAorNCG5fDLO6Y3g4uY2wjlhFHL3Sx4hllR8/PLTzq+vJ
         J/Knb/4U2+4p8AvXR0wFHGJGdjfUpK+A4xAeLsfO6kPkEoFuUbKcePH6PJvd9GBK+PiZ
         7Voi6src92Nbov/3PhhuMRnaq3KXLZFspqgICXRuR6XODpJmIQrWKcRhHZCZWbBPkHEU
         4DstiZoMoGiHdqI2ZL7gtIGP24IrB8IUl93Opq1x8WOmdKzBWfi8OhMlPC/Q7BG6iedm
         cZuwqCcENtlci1k0LPMjFOQN8B8l8+XQcTiNvsZonvc1s4ZmCybDON6tRxI4cLuV6b06
         ywrA==
X-Gm-Message-State: APjAAAUO8DQPoS3+UyvMUT1kdbKG8THNVwt12yTC4C6kXTE1l70oWSdz
	+2nj0dvVL9PnhT6fR8Fr7Lgk1g==
X-Received: by 2002:adf:f70f:: with SMTP id r15mr25585980wrp.262.1572891576303;
        Mon, 04 Nov 2019 10:19:36 -0800 (PST)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net. [212.51.149.96])
        by smtp.gmail.com with ESMTPSA id p12sm19639397wrm.62.2019.11.04.10.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 10:19:35 -0800 (PST)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 4 Nov 2019 19:19:33 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, sean@poorly.run, airlied@linux.ie,
	daniel@ffwll.ch, corbet@lwn.net, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Subject: Re: [PATCH] drm/doc: Adding VKMS module description and use to
 "Testing and Validation"
Message-ID: <20191104181933.GR10326@phenom.ffwll.local>
Mail-Followup-To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
	outreachy-kernel@googlegroups.com, manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, sean@poorly.run, airlied@linux.ie,
	corbet@lwn.net, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
References: <20191101042706.2602-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191101042706.2602-1-gabrielabittencourt00@gmail.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Nov 01, 2019 at 01:27:06AM -0300, Gabriela Bittencourt wrote:
> Add a description on VKMS module and the cases in which it should be used.
> There's a brief explanation on how to set it and use it in a VM, along with
> an example of running an igt-test.
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> 
> ---
> 
> Hi DRM-community,
> this is my first (of many, I hope)  patch in this subsystem. I hope to have
> a lot of learning (and fun :)) working with you guys.
> I'm starting by documenting the VKMS driver in "Userland interfaces", if I
> have been inaccurate in my description or if I misunderstood some concept,
> please let me know.

Oh awesome, this sounds great, really looking for more people hacking on
vkms. Docs lgtm, but I'll let Siqueira have a look and merge it. Pls ping
in case this patch gets lost.
-Daniel


> ---
>  Documentation/gpu/drm-uapi.rst | 38 ++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/Documentation/gpu/drm-uapi.rst b/Documentation/gpu/drm-uapi.rst
> index 94f90521f58c..7d6c86b7af76 100644
> --- a/Documentation/gpu/drm-uapi.rst
> +++ b/Documentation/gpu/drm-uapi.rst
> @@ -285,6 +285,44 @@ run-tests.sh is a wrapper around piglit that will execute the tests matching
>  the -t options. A report in HTML format will be available in
>  ./results/html/index.html. Results can be compared with piglit.
>  
> +Using VKMS to test DRM API
> +--------------------------
> +
> +VKMS is a software-only model of a KMS driver that is useful for testing
> +and for running compositors. VKMS aims to enable a virtual display without
> +the need for a hardware display capability. These characteristics made VKMS
> +a perfect tool for validating the DRM core behavior and also support the
> +compositor developer. VKMS helps us to test DRM core function in a virtual
> +machine, which makes it easy to test some of the core changes.
> +
> +To Validate changes in DRM API with VKMS, start setting the kernel. The
> +VKMS module is not enabled by defaut, so enable it in the menuconfig::
> +
> +	$ make menuconfig
> +
> +Compile the kernel with the VKMS enabled and install it in the target
> +machine. VKMS can be run in a Virtual Machine (QEMU, virtme or similar).
> +It's recommended the use of KVM with the minimum of 1GB of RAM and four
> +cores.
> +
> +It's possible to run the IGT-tests in a VM in two ways:
> +1. Use IGT inside a VM
> +2. Use IGT from the host machine and write the results in a shared directory.
> +
> +As follow, there is an example of using a VM with a shared directory with
> +the host machine to run igt-tests. As example it's used virtme::
> +
> +	$ virtme-run --rwdir /path/for/shared_dir --kdir=path/for/kernel/directory --mods=auto
> +
> +Run the igt-tests, as example it's ran the 'kms_flip' tests::
> +
> +	$ /path/for/igt-gpu-tools/scripts/run-tests.sh -p -s -t "kms_flip.*" -v
> +
> +In this example instead of build the igt_runner it's used Piglit
> +(-p option); it's created html summary of the tests results and it's saved
> +in the folder "igt-gpu-tools/results"; it's executed only the igt-tests
> +matching the -t option.
> +
>  Display CRC Support
>  -------------------
>  
> -- 
> 2.20.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

