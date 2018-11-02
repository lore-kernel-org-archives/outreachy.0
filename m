X-GM-THRID: 6619343178555195392
X-Received: by 2002:adf:f5ce:: with SMTP id k14-v6mr362216wrp.8.1541192432111;
        Fri, 02 Nov 2018 14:00:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d46:: with SMTP id t67-v6ls553117wmt.12.gmail; Fri, 02
 Nov 2018 14:00:30 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dSWW/mmsueO8aylVpMU65Qf3qMeG30sWwrvuThjLWljs6hKcVO1Vpy6CrscKdYa0+zbLbx
X-Received: by 2002:a1c:49:: with SMTP id 70-v6mr18238wma.15.1541192429989;
        Fri, 02 Nov 2018 14:00:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541192429; cv=none;
        d=google.com; s=arc-20160816;
        b=0ZwAOoQ5ua0435CpGUSrPBiKezolk8850QQh8e52UA4JcVQnRrioib3hg/VBrbM7pf
         F/ceWf0b7Bn4cKZfxMmhWBxqW18w0ys5BliI1M3O+IDE+JCCBzHnbWHxX0Vd8b/w18+t
         c2BUS2yeiHleRyT9qj7wOuNEmISNHdE8xrBdAy6mKETst3m4BS7jcltiFPEN3sj7ZmgH
         7wDMU26pjSOXD9+LZCH2xVBnWxCaazV00xK+0dE2x1WE4s2Ui2BUErONfnzvuHOa4dIZ
         svnyvZ2oUuUG8MlHbJPQcSep/qRObBY9MJYyabD2ZEJ0gIf3f9NVNHc+kNnofM8D/PlE
         kfwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2P+YD/tD2OlJ4ul8CApqCh3yDDr6M3Skm+FlI8ZoHfk=;
        b=eDwQYex0mNEGTOMszxC/qo/TRdqnjmu1me65aBJbMYZRyYWoJGy30V9dPLAEv5SNjZ
         qx7n8++YW2GdPDbcro+S8Qe1cWUbL4PZZsmH104pIB8jc4xbHU6edpV1owpFO75Ac7Fd
         KIvs0EfERvEYizCnnrSTnM1vnt5QtQ68W6vKd2eP5niEBSFEYCtKgtjRHovb539O+iBR
         JDF0Uq5tEYAa9ZSobKxfjkmZM/9SqH/4Ic4VWSxkjMqV3c0rTTUT9H0gXe4FGblI9xUX
         4M182NrGkGIMres3u8Bvqq2UajllyhBusF/sAeffmWBdSIe3q1IRnAuPCvBuCspLhWry
         qg2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u13-v6si909524wrn.3.2018.11.02.14.00.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 14:00:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,457,1534802400"; 
   d="scan'208";a="284203369"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2018 22:00:29 +0100
Date: Fri, 2 Nov 2018 22:00:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Irenge Jules Bashizi <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    mchehab@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] Staging:media:Add paragraph about
 the config symbol
In-Reply-To: <20181102200838.11193-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1811022159060.2385@hadrien>
References: <20181102200838.11193-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1577274702-1541192429=:2385"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1577274702-1541192429=:2385
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

The subject line does not look as it should.  Do git log --oneline to see
what others have done rather than making something up on your own.

Note that for this file, what you see is:

68afa17322f2 media: zoran: move to staging in preparation for removal

so it's probably not worth investing much time in this driver.

julia

On Fri, 2 Nov 2018, Irenge Jules Bashizi wrote:

> Add more information about config symbol
> to fix multiple checkpatch warnings.
>
> Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
> ---
>  drivers/staging/media/zoran/Kconfig | 54 ++++++++++++++++++++++++++---
>  1 file changed, 50 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
> index 34a18135ede0..129d1d21b7c9 100644
> --- a/drivers/staging/media/zoran/Kconfig
> +++ b/drivers/staging/media/zoran/Kconfig
> @@ -6,8 +6,9 @@ config VIDEO_ZORAN
>  	  Say Y for support for MJPEG capture cards based on the Zoran
>  	  36057/36067 PCI controller chipset. This includes the Iomega
>  	  Buz, Pinnacle DC10+ and the Linux Media Labs LML33. There is
> -	  a driver homepage at <http://mjpeg.sf.net/driver-zoran/>. For
> -	  more information, check <file:Documentation/media/v4l-drivers/zoran.rst>.
> +	  a driver homepage at <http://mjpeg.sf.net/driver-zoran/>.
> +          For more information,
> +          check <file:Documentation/media/v4l-drivers/zoran.rst>.
>
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called zr36067.
> @@ -20,7 +21,19 @@ config VIDEO_ZORAN_DC30
>  	help
>  	  Support for the Pinnacle/Miro DC30(+) MJPEG capture/playback
>  	  card. This also supports really old DC10 cards based on the
> -	  zr36050 MJPEG codec and zr36016 VFE.
> +	  zr36050 MJPEG codec and zr36016 VFE. In newer Linux kernels
> +          the following modules are built :adv7175,vpx3220,zr36016,
> +          zr36016,zr36016,zr36016,zr36050,zr36050,zr36050,zr36050.
> +          Pinnacle/Miro DC30: Zoran zr36057 PCI controller, Zoran
> +          zr36050 MJPEG codec, Zoran zr36016 Video Front End,
> +          Micronas vpx3225d/vpx3220a/vpx3216b TV decoder  Analog
> +          Devices adv7176 TV encoder
> +          Drivers to use: videodev, i2c-core, i2c-algo-bit,videocodec,
> +          vpx3220/vpx3224, adv7175, zr36050, zr36016, zr36067
> +          Inputs/outputs: Composite, S-video and Internal
> +          Norms: PAL, SECAM (768x576 @ 25 fps), NTSC (640x480 @ 29.97 fps)
> +          Card number: 3
> +
>
>  config VIDEO_ZORAN_ZR36060
>  	tristate "Zoran ZR36060"
> @@ -29,6 +42,8 @@ config VIDEO_ZORAN_ZR36060
>  	  Say Y to support Zoran boards based on 36060 chips.
>  	  This includes Iomega Buz, Pinnacle DC10, Linux media Labs 33
>  	  and 33 R10 and AverMedia 6 boards.
> +          Modules built: zr36060, zr36060, zr36060, zr36060
> +
>
>  config VIDEO_ZORAN_BUZ
>  	tristate "Iomega Buz support"
> @@ -37,6 +52,15 @@ config VIDEO_ZORAN_BUZ
>  	select VIDEO_SAA7185 if MEDIA_SUBDRV_AUTOSELECT
>  	help
>  	  Support for the Iomega Buz MJPEG capture/playback card.
> +          Modules built(in newer kernels):saa7111, saa7185 and zr36060.
> +          Iomega Buz: Zoran zr36067 PCI controller, Zoran zr36060 MJPEG codec
> +          Philips saa7111 TV decoder, Philips saa7185 TV encoder
> +          Drivers to use: videodev, i2c-core, i2c-algo-bit,
> +          videocodec, saa7111, saa7185, zr36060, zr36067
> +          Inputs/outputs: Composite and S-video
> +          Norms: PAL, SECAM (720x576 @ 25 fps), NTSC (720x480 @ 29.97 fps)
> +          Card number: 7
> +
>
>  config VIDEO_ZORAN_DC10
>  	tristate "Pinnacle/Miro DC10(+) support"
> @@ -46,6 +70,9 @@ config VIDEO_ZORAN_DC10
>  	help
>  	  Support for the Pinnacle/Miro DC10(+) MJPEG capture/playback
>  	  card.
> +          Found in Linux kernels: 2.6.28–2.6.39, 3.0–3.6
> +          Modules built: adv7175, saa7110, zr36060
> +
>
>  config VIDEO_ZORAN_LML33
>  	tristate "Linux Media Labs LML33 support"
> @@ -55,6 +82,8 @@ config VIDEO_ZORAN_LML33
>  	help
>  	  Support for the Linux Media Labs LML33 MJPEG capture/playback
>  	  card.
> +          Found in Linux kernels: 3.7–3.19, 4.0–4.17, 4.17+HEAD
> +          Modules built: bt819, bt856, zr36060
>
>  config VIDEO_ZORAN_LML33R10
>  	tristate "Linux Media Labs LML33R10 support"
> @@ -63,7 +92,15 @@ config VIDEO_ZORAN_LML33R10
>  	select VIDEO_ADV7170 if MEDIA_SUBDRV_AUTOSELECT
>  	help
>  	  support for the Linux Media Labs LML33R10 MJPEG capture/playback
> -	  card.
> +	  card. Found in Linux kernels: 3.7–3.19, 4.0–4.17, 4.17+HEAD
> +          Modules built: adv7170, saa7114, zr36060
> +          Zoran zr36067 PCI controller Zoran zr36060 MJPEG codec
> +          Philips saa7114 TV decoder Analog Devices adv7170 TV encoder
> +          Drivers to use: videodev, i2c-core, i2c-algo-bit,videocodec,
> +          saa7114, adv7170, zr36060, zr36067 Inputs/outputs: Composite
> +          and S-video. Norms: PAL (720x576 @ 25 fps),
> +          NTSC (720x480 @ 29.97 fps). Card number: 6
> +
>
>  config VIDEO_ZORAN_AVS6EYES
>  	tristate "AverMedia 6 Eyes support"
> @@ -73,3 +110,12 @@ config VIDEO_ZORAN_AVS6EYES
>  	select VIDEO_KS0127 if MEDIA_SUBDRV_AUTOSELECT
>  	help
>  	  Support for the AverMedia 6 Eyes video surveillance card.
> +          AverMedia 6 Eyes AVS6EYES:zoran zr36067 PCI controller,
> +          Zoran zr36060 MJPEG codec, Samsung ks0127 TV decoder,
> +          Conexant bt866  TV encoder. Drivers to use: videodev, i2c-core,
> +          i2c-algo-bit,videocodec, ks0127, bt866, zr36060, zr36067
> +          Inputs/outputs: Six physical inputs.
> +          1-6 are composite,1-2, 3-4, 5-6 doubles as S-video,
> +          1-3 triples as component. One composite output.
> +          Norms:PAL,SECAM(720x576 @ 25 fps),NTSC(720x480 @ 29.97 fps)
> +          Card number: 8. If not autodetected, card=8 is necessary.
> --
> 2.17.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181102200838.11193-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1577274702-1541192429=:2385--

