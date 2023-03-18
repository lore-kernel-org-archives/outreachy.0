Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE0F92560
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 13:02:17 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id ix20so7963649plb.3
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 06:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679144537;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dK0H3Sf3gWSALxj2X6HplxtT/WOWbNDyFb/2lk0SFKU=;
        b=QTS+PfZ57oDNAI2/0QeDt0BbUEFMTWiDr+gCiDRciv/M8haq1wrbssQODY/Lp0j4TF
         qY5FxLXDUVLNdE3SSFjp/j5ry1ivUjgB4z5hO5KzZbsUbKpFuEoWrngzWw0UdtGdWLWc
         n/e14B5Wq3ZXMQStUt673ZrzX0/8+Ubl2L2HuYh9masBy+JqpfIiVFt6FsrCwatUyZpH
         qEXqmDVP5OHd3WM6mJgnnMDvch76r4AgzgbyKSz0iQHRqz1/pxpZQa0XPD9Yg7KijK8t
         AVaKgFo85zBjOQAZ7+AGvPqWMdkhOzprwfQXiSo0nEff3tmVzSpcm7HVresqX8RGLkRL
         nV7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679144537;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dK0H3Sf3gWSALxj2X6HplxtT/WOWbNDyFb/2lk0SFKU=;
        b=mOxtUS9UkLEm0Bw0qFspJ7SLyp/h0fEf3lWKkOX8095Tk8P8jrKtxzusfP69Ko6AiD
         /aS0RyIv4hXHY6IDMYyvQ1su5PLa45s9rb8AIewzqNVtFK9Wgeyf4GigqiRYbz6lg9vi
         nXiC+bZZTsnjK3zloj0W/yQBB+kObub5gkjFa+LyiWI2KulDGiDo8xSCgDQqYwIsRK0/
         vkXBMh+NAtIvdL18lmAorlVgA5f4FfEW0d2xMbwB83L3MFWpHGxaTL1Q/Gme7fK8jLtG
         8b4xwJsgEz+K/fV8pO8BiFbRRNEc0FRhYPQuRxPEWWnaUiOB8Gw1dKWGKTOrKy52IV64
         spRA==
X-Gm-Message-State: AO0yUKW2K51BRrY3eHLHBrAPDK0S6uzoA8iY7T5DU5U2vFotGvtUnMYV
	xuKrDgga4EbaxgqAThE+i04=
X-Google-Smtp-Source: AK7set9NEBt/Tm9NTJAQaIdKcdakCykYNhgPB5kH7hq+Gt3N30AjmDQ9l6plXLAALW43E44TJzWHrg==
X-Received: by 2002:a17:902:e54d:b0:19a:70f9:affb with SMTP id n13-20020a170902e54d00b0019a70f9affbmr13145254plf.2.1679144536937;
        Sat, 18 Mar 2023 06:02:16 -0700 (PDT)
Received: from sumitra.com ([117.199.163.158])
        by smtp.gmail.com with ESMTPSA id p8-20020a1709026b8800b001a19bac463fsm3257211plk.42.2023.03.18.06.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 06:02:16 -0700 (PDT)
Date: Sat, 18 Mar 2023 06:02:11 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230318130211.GB39892@sumitra.com>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWAsdC5UOEkbedF@ubun2204.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBWAsdC5UOEkbedF@ubun2204.myguest.virtualbox.org>

On Sat, Mar 18, 2023 at 02:43:21PM +0530, Deepak R Varma wrote:
> On Sat, Mar 18, 2023 at 01:40:48AM -0700, Sumitra Sharma wrote:
> > Hi,
> > 
> > I was trying to recopmile the driver using the command "make menuconfig".
> > This opens the text-based UI and I wanted to locate and make NVEC_PAZ00
> > as a module whose location is as follows:
> > 
> >   │                                                                                                                  │
> >   │ Symbol: NVEC_PAZ00 [=n]                                                                                          │
> >   │ Type  : tristate                                                                                                 │
> >   │ Defined at drivers/staging/nvec/Kconfig:45                                                                       │
> >   │   Prompt: Support for OEM specific functions on Compal PAZ00 based devices                                       │
> >   │   Depends on: STAGING [=y] && MFD_NVEC [=n] && LEDS_CLASS [=y]                                                   │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers                                                                                            │
> >   │ (3)   -> Staging drivers (STAGING [=y])                                                                          │
> >   │         -> NV Tegra Embedded Controller SMBus Interface (MFD_NVEC [=n])                                          │
> >   │           -> Support for OEM specific functions on Compal PAZ00 based devices (NVEC_PAZ00 [=n])
> > 
> >   But under "Staging drivers" there is no such thing called "NV Tegra Embedded Controller SMBus Interface (MFD_NVEC [=n])".
> > 
> >   --- Staging drivers                                                                       │ │
> >   │ │                    < >   RealTek RTL8192U Wireless LAN NIC driver                                            │ │
> >   │ │                    < >   Support for rtllib wireless devices                                                 │ │
> >   │ │                    < >   Realtek PCI-E Card Reader RTS5208/5288 support                                      │ │
> >   │ │                    < >   Silicon Motion SM750 framebuffer support                                            │ │
> >   │ │                    [*]   Media staging drivers  ----                                                         │ │
> >   │ │                    < >   GCT GDM724x LTE support                                                             │ │
> >   │ │                    < >   Support for small TFT LCD display modules  ----                                     │ │
> >   │ │                    < >   KeyStream KS7010 SDIO support                                                       │ │
> >   │ │                    <M>   Pi433 - a 433MHz radio module for Raspberry Pi                                      │ │
> >   │ │                    < >   Fieldbus Device Support  ----                                                       │ │
> >   │ │                    <M>   QLogic QLGE 10Gb Ethernet Driver Support                                            │ │
> >   │ │                    [*]   VME bridge support  --->
> >   
> > 
> >   Kindly guide me through this.
> 
> Hi Sumitra,
> You will need to use a arch specific config file and cross compile to configure
> and build this driver module.
> I just tried it with arch/arm64/configs/defconfig file and the
> aarch64-linux-gnu- compiler for my host system and was able to configure the
> driver for build.
>

Hi deepak,

Can you tell me command you are using because when adding the
arch/arm64/configs/defconfig file. I am receiving the invalid options
error.

It will be of much help. Thank you.

Regards,

Sumitra

> Deepak.
> 
> 
> 
> > 
> >   Regards,
> >   
> >   Sumitra
> > 
> > 
> 
> 
