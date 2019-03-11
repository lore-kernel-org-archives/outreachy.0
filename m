X-GM-THRID: 6667148493451165696
X-Received: by 2002:a1c:c60c:: with SMTP id w12mr21146wmf.3.1552318220707;
        Mon, 11 Mar 2019 08:30:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d49:: with SMTP id t70ls417486wmt.12.canary-gmail; Mon,
 11 Mar 2019 08:30:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwYnZ/HZJ4d8B8G7I3gmmT/st+k64NWYtT9hsM9P8bW4608fLZWK3pw2F7GRvblvQZRN40E
X-Received: by 2002:a1c:a741:: with SMTP id q62mr21266wme.7.1552318219867;
        Mon, 11 Mar 2019 08:30:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552318219; cv=none;
        d=google.com; s=arc-20160816;
        b=gMFQOcOss1g/UPHaIA9z8kDpfA3ZRBM7YHhVBURplDUDzlTViioAzh0tciagvtnXl9
         nVoEFVe1HBiZ/YiJOJYjQhC5XVzpzFukQeufK4xiQR1txCcatSgY8rSziDWvJtxeZzlW
         79d3x6iRXevQegIvAyatSTaqdnRNHKoxEhZOcqehO+GXg01UnQn7hlynUtjiZwKOy/LK
         n1LgZpap91ItbgK4V835Yue+Y6pYyJiBRVoviF7ueZK7UB8f+avT4Ra09tGjXNhnMn9o
         o5hPRXancdWKcnU81gTMwXXcDcR0H3KC3HbdMwNBvlNu/J1ujJ8+fyHTfaOuZ5xbPIKk
         Ql1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=lJSWG8/SRR5RDiEXJoiQCe/pBtrEropAU58FsNEVYGI=;
        b=sw581OVZKVZgK5H7WS1bx/lzG12dTUXbvRTAPzr70t6VsRk7Ji0GR20rMNCf2r94Gx
         WZJLnmNHldhOKUzcemACnoTQc+u0Ifd2Q0xyKzGjSGuRF3I1Wly/HMhhRP8BdedKojSb
         wghdfnH0nInZAYN3bMLhuOTgMh5/mi7poddmR2tZc3Ek8duQOaNkt6tChDbjiBhWeGjP
         eJrc8RsMtbeXTMb6JqLaVf5MwxDYAlsi/N2b1+IAlGpzwpGUfyrqimRHDXGnGPoNTdEH
         eMQhXvw4DHSN/uUjq5+lMBb7591DoCVvcDZGPnub8Ql7Wecg3PF/WCEbzARnHaHAasxV
         hynQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o184si595023wma.0.2019.03.11.08.30.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:30:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,468,1544482800"; 
   d="scan'208";a="372867128"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2019 16:30:19 +0100
Date: Mon, 11 Mar 2019 16:30:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wentao Cai <etsai042@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: Replace '--help--' in
 Kconfig file
In-Reply-To: <20190311151307.5498-1-etsai042@gmail.com>
Message-ID: <alpine.DEB.2.20.1903111629460.3491@hadrien>
References: <20190311151307.5498-1-etsai042@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Mar 2019, Wentao Cai wrote:

> Replace '--help--' with 'help' to silence checkpatch.pl warning:
> WARNING: prefer 'help' over '---help---' for new help texts

Even though you have gone from 5 patches down to one, it is still the next
version of your previous change.

julia

>
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/most/i2c/Kconfig   | 2 +-
>  drivers/staging/most/net/Kconfig   | 2 +-
>  drivers/staging/most/sound/Kconfig | 2 +-
>  drivers/staging/most/usb/Kconfig   | 2 +-
>  drivers/staging/most/video/Kconfig | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/most/i2c/Kconfig b/drivers/staging/most/i2c/Kconfig
> index 79d0ff27f56d..f723f99711bd 100644
> --- a/drivers/staging/most/i2c/Kconfig
> +++ b/drivers/staging/most/i2c/Kconfig
> @@ -5,7 +5,7 @@
>  config MOST_I2C
>  	tristate "I2C"
>  	depends on I2C
> -	---help---
> +	help
>  	  Say Y here if you want to connect via I2C to network tranceiver.
>
>  	  To compile this driver as a module, choose M here: the
> diff --git a/drivers/staging/most/net/Kconfig b/drivers/staging/most/net/Kconfig
> index 795330ba94ef..28040931f7e7 100644
> --- a/drivers/staging/most/net/Kconfig
> +++ b/drivers/staging/most/net/Kconfig
> @@ -6,7 +6,7 @@ config MOST_NET
>  	tristate "Net"
>  	depends on NET
>
> -	---help---
> +	help
>  	  Say Y here if you want to commumicate via a networking device.
>
>  	  To compile this driver as a module, choose M here: the
> diff --git a/drivers/staging/most/sound/Kconfig b/drivers/staging/most/sound/Kconfig
> index 115262a58a42..5614a999b54e 100644
> --- a/drivers/staging/most/sound/Kconfig
> +++ b/drivers/staging/most/sound/Kconfig
> @@ -6,7 +6,7 @@ config MOST_SOUND
>  	tristate "Sound"
>  	depends on SND
>  	select SND_PCM
> -	---help---
> +	help
>  	  Say Y here if you want to commumicate via ALSA/sound devices.
>
>  	  To compile this driver as a module, choose M here: the
> diff --git a/drivers/staging/most/usb/Kconfig b/drivers/staging/most/usb/Kconfig
> index ebbdb573a9a6..539b38fb3d88 100644
> --- a/drivers/staging/most/usb/Kconfig
> +++ b/drivers/staging/most/usb/Kconfig
> @@ -5,7 +5,7 @@
>  config MOST_USB
>  	tristate "USB"
>  	depends on USB && NET
> -	---help---
> +	help
>  	  Say Y here if you want to connect via USB to network tranceiver.
>  	  This device driver depends on the networking AIM.
>
> diff --git a/drivers/staging/most/video/Kconfig b/drivers/staging/most/video/Kconfig
> index ce6af4f951a6..a458d0c74a0f 100644
> --- a/drivers/staging/most/video/Kconfig
> +++ b/drivers/staging/most/video/Kconfig
> @@ -5,7 +5,7 @@
>  config MOST_VIDEO
>  	tristate "Video"
>  	depends on VIDEO_V4L2
> -	---help---
> +	help
>  	  Say Y here if you want to commumicate via Video 4 Linux.
>
>  	  To compile this driver as a module, choose M here: the
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190311151307.5498-1-etsai042%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

