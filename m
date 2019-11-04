X-GM-THRID: 6754471161205096448
X-Received: by 2002:a05:6402:110c:: with SMTP id u12mr30959049edv.127.1572889213426;
        Mon, 04 Nov 2019 09:40:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c790:: with SMTP id n16ls4555222eds.5.gmail; Mon, 04 Nov
 2019 09:40:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqz3OTCesYpFFrXbxOkFBpPAyMUOjEtnC2w29kpa2qwPtYsM/2OWX8cSWJbliJtrbfd/tPvM
X-Received: by 2002:aa7:c0c8:: with SMTP id j8mr7537348edp.235.1572889212352;
        Mon, 04 Nov 2019 09:40:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572889212; cv=none;
        d=google.com; s=arc-20160816;
        b=uC9JuJCs1NcZO34SPcC9K3bxGyj5Ssum+2MHzngMQ6GQMCFrOnucn83ef/1xmQHkIJ
         4i3CzK21VhvcwvEVXJENTr7nU8ZwYDCw2/2PQ0Xc3SQjbUYV+XH36cEh14jI0H+dd2GQ
         L0gtSIlE/Lfam3fxWCFVWIWbvF3cIPRV53CcUAZ8mqbLE7ZkwcLfuuoKegdu9Nx4YgN1
         HHiIuNkMWuN8VoVbYTrBfDlvtAF0KpGs6GrPRZzXLc3qgTWJShBhnDHAoks6Xjsj4uIQ
         s8VWhEksEDTszrwmMGthN/VyocgKqdIsz89voB3qpkPQykdJp2eTfpTwf+VypuC46YGs
         kxBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qFzvOj2kIekmlBTNitL0550GXXjfDa5dHZ2hXfb84nE=;
        b=HzbN5J1PxQVexE1B6BjPP+P52tW8mWD72udwEFVDJvnA2n3D5TRiPrmQdRRpuyX4tl
         xrKMzAEYCMEcotbBsnM62YrwRTiP3wB2dbJZyFBbJS2JkHOaAYoBhBu0puK269CF5Rns
         NPSyGjJkK6huCVwsM9W7jqWUTBoKUgS4It0TH2Aa0KlMifL8L9pASdatGjzxM2+OLanG
         kZEQbu7OZmf/NjpVSzPxQFbL/gi0XqqrfyYSwkVA4cH9uQQi7UJE0pnR42g2OLHcBRpQ
         zl32vmQzQP0nKlY8jPIbDGq9lYANvL5VETD4uCmD8y7AF2hbyc75u2fFNwIU5eXZryWO
         dYlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b="gdP/u/Z2";
       spf=neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z18si951255edd.5.2019.11.04.09.40.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 09:40:12 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b="gdP/u/Z2";
       spf=neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr1-x444.google.com with SMTP id p4so18090299wrm.8
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 09:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=qFzvOj2kIekmlBTNitL0550GXXjfDa5dHZ2hXfb84nE=;
        b=gdP/u/Z2502qMOMIX5Abj0e+tGILbSh4sD07/PoMKUAftazcuxy2XTGaZjYj+8Y19c
         jl5h1aJYvLfqDcB8eqkoKVzhyat5T/4msDgTalhzxCq2SVhe9oHqkxd/+PjOAxGwl3Ed
         qpZOsqJ65cSsHMYFmVqVPi64e8qn3nq44jM5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=qFzvOj2kIekmlBTNitL0550GXXjfDa5dHZ2hXfb84nE=;
        b=l4tfUIH0KyUSs87AOtKojovlqi4rHHTKdPfs+FIIJue7WtbYfGp0sQ34HJimR2wLaJ
         iuujGECFIT5yBy2Wiyunf/RhtzG8Dr6S7lYQH2slcM7c3tbrMQUu9AOWKZRgAiKXNQef
         fc8wLNMNBAJ6Okyqx7i5WYv8xvO9a64lL1VkOgVhBzUK7M8DboqvqL/g2YgvBxxMTS4E
         XIVz8yz8qVqc+oVpd5RScsGD0Urri09d7hR9nn1M5u83Y3rE0bFZyrASbl9tv4SEdrFS
         UBu8pvBj+ydj8wi5R3+PByIUiu17qOKszD0vXMZPcA/dIpyU/zoZx5VNF6qfeJmHFbIj
         jBRA==
X-Gm-Message-State: APjAAAWLAthRfKP598Y/4ZzPLcCKN9uQOZgOjhX2lys7PqbIDJArpRoy
	JwpVh2HrbsJDV8evrRYB3hexFg==
X-Received: by 2002:adf:e747:: with SMTP id c7mr24315449wrn.384.1572889211910;
        Mon, 04 Nov 2019 09:40:11 -0800 (PST)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net. [212.51.149.96])
        by smtp.gmail.com with ESMTPSA id b17sm8647949wru.36.2019.11.04.09.40.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 09:40:10 -0800 (PST)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 4 Nov 2019 18:40:08 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com, hamohammed.sa@gmail.com,
	daniel@ffwll.ch, airlied@linux.ie, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: Re: [PATCH] drm/vkms: Update VKMS documentation
Message-ID: <20191104174008.GK10326@phenom.ffwll.local>
Mail-Followup-To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
	outreachy-kernel@googlegroups.com, manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com, hamohammed.sa@gmail.com,
	airlied@linux.ie, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
References: <20191101223735.2425-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191101223735.2425-1-gabrielabittencourt00@gmail.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Nov 01, 2019 at 07:37:35PM -0300, Gabriela Bittencourt wrote:
> Small changes in the driver documentation, clarifing the description.
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

lgtm, applied.
-Daniel

> 
> ---
> 
> Tested using: make htmldocs
> ---
>  drivers/gpu/drm/vkms/vkms_drv.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
> index 80524a22412a..52e761bd6c2d 100644
> --- a/drivers/gpu/drm/vkms/vkms_drv.c
> +++ b/drivers/gpu/drm/vkms/vkms_drv.c
> @@ -3,10 +3,10 @@
>  /**
>   * DOC: vkms (Virtual Kernel Modesetting)
>   *
> - * vkms is a software-only model of a kms driver that is useful for testing,
> - * or for running X (or similar) on headless machines and be able to still
> - * use the GPU. vkms aims to enable a virtual display without the need for
> - * a hardware display capability.
> + * VKMS is a software-only model of a KMS driver that is useful for testing
> + * and for running X (or similar) on headless machines. VKMS aims to enable
> + * a virtual display with no need of a hardware display capability, releasing
> + * the GPU in DRM API tests.
>   */
>  
>  #include <linux/module.h>
> -- 
> 2.20.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

