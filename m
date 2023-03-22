Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A2F15BA
	for <outreachy@lists.linux.dev>; Wed, 22 Mar 2023 04:15:28 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id h31so9839492pgl.6
        for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 21:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679458527;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kbCf+LCDc13AC6Y40jcetnxmb+BuKjMY70I8wuS4eAY=;
        b=arUK++OngP1VXYNRyji2kBZHC8gGOSZP96X3NmmQ3MzplBKyx8Bz/TfdJ77++cjYj5
         RzlfxZUcd+4wCl0JA7YwQ/vgPmLRU5QgTz4G9I1OAj1XM/yhZUrOmD2Jn+8VJsGS472R
         JWtC+GAKlE9gCsu8RUZnexlQcu35+lkq8khHkihZuQHT1l0SucJpQKD4oX82yS5d2Pom
         udj4of9QS2Pi4u9RRYZbXDDgUIPqa8m5m8iaMzW3TL5LIE/W4iT4FlYHT6e9N9ItGkSY
         ycX+HWB1+qPof28qC3e2JwE7cg6eUP2U9OuUpvMaqwO1zykm98N3yaCRAgEdY90jGPGU
         Ooxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679458527;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kbCf+LCDc13AC6Y40jcetnxmb+BuKjMY70I8wuS4eAY=;
        b=lroMMXk0tSK/sszmUTF/zTpR3JsGoZa5uSMhdIGw2oPusjzCVTyOQLNF1hfcHcVYtH
         Iot9jrSQoTOm6f6TJNdCgi5XgR2MeZk2H+EiL64ROQ+DsRBYLtkDUgB9Xu/pOX5+hsa/
         6JmiLobCAFpQeKZXsTBB7iInP0DutGXOidbPx8uACgzhHN9OEDiRa+KWssI3k6oHyhsi
         N3aU1/BqfyIUNi3cDtgrihZIAvscsYR2J/Jp74cKFNMfcYjiHpN8JuJBGObXAs0Y/vQ3
         LV+5lgefFiAhSBYMpseX1SyRLdoY3EozKqTXLlEV/0fZodhyw0kV3twj4hQVJS5XKU3n
         1JCA==
X-Gm-Message-State: AO0yUKV3DHwyhA7gQnB1D2bPmiLj0W0qJE/gnbi1visg9yaCxFcl6qQA
	F4LbVOIz9OEbr3RRgSTHdSC4p2fN78WdDQ==
X-Google-Smtp-Source: AK7set+Z45WHKbR0tgR9/MnYWbnFgBKyHHcdKqWpsdk8AKDDaiKe5SupIKVP1uxAQbJQT0r5mhqgbw==
X-Received: by 2002:aa7:981c:0:b0:625:e3c0:8a58 with SMTP id e28-20020aa7981c000000b00625e3c08a58mr2121952pfl.4.1679458527446;
        Tue, 21 Mar 2023 21:15:27 -0700 (PDT)
Received: from sumitra.com ([117.245.171.219])
        by smtp.gmail.com with ESMTPSA id s1-20020aa78d41000000b005d3399efd80sm8835606pfe.136.2023.03.21.21.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 21:15:27 -0700 (PDT)
Date: Tue, 21 Mar 2023 21:15:23 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Help in setting module NVEC_PAZ00
Message-ID: <20230322041523.GC149888@sumitra.com>
References: <20230320120259.GA128219@sumitra.com>
 <3e273f2-a86c-ab9-c791-b9ee5f447be3@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3e273f2-a86c-ab9-c791-b9ee5f447be3@inria.fr>

On Mon, Mar 20, 2023 at 02:01:53PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 20 Mar 2023, Sumitra Sharma wrote:
> 
> > Since, the thread - https://lore.kernel.org/outreachy/20230320095314.GC126429@sumitra.com/T/#t
> > got very long so I thought of posting the issue here for better reach to get guidance.
> >
> > I want to configure NVEC_PAZ00 as 'm' and its dependencies are STAGING [=y] && MFD_NVEC [=n] && LEDS_CLASS [=y],
> > Therefore, I tried to set MFD_NVEC as 'y', which depends on  STAGING [=y] && I2C [=y] && GPIOLIB [=y] && ARCH_TEGRA.
> > Here ARCH_TEGRA is confusing. How can we set this in menuconfig . The following options appears:
> >
> > PS: I am sticking to resolve this issue and trying my best for it. I am very grateful to all of you for your kind help.
> 
> Did you try make ARCH=arm tegra_defconfig menuconfig
> 
> If you do that, more things will be y and you can select what is needed.
>

HI julia, 

Your idea worked. Now I am able to locate as well as make the module. 
Thank you for your time. :)

REgards,
Sumitra

> julia
> 
> >
> >
> > Symbol: ARCH_TEGRA [=ARCH_TEGRA]                                                                                 │
> >   │ Type  : unknown                                                                                                  │
> >   │                                                                                                                  │
> >   │                                                                                                                  │
> >   │ Symbol: ARCH_TEGRA_114_SOC [=n]                                                                                  │
> >   │ Type  : bool                                                                                                     │
> >   │ Defined at drivers/soc/tegra/Kconfig:38                                                                          │
> >   │   Prompt: Enable support for Tegra114 family                                                                     │
> >   │   Depends on: ARCH_TEGRA && ARM                                                                                  │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers
> >  (1)   -> SOC (System On Chip) specific Drivers                                                                   │
> >   │         -> Enable support for Tegra114 family (ARCH_TEGRA_114_SOC [=n])                                          │
> >   │ Selects: ARM_ERRATA_798181 && HAVE_ARM_ARCH_TIMER && PINCTRL_TEGRA114 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEG │
> >   │                                                                                                                  │
> >   │                                                                                                                  │
> >   │ Symbol: ARCH_TEGRA_124_SOC [=n]                                                                                  │
> >   │ Type  : bool                                                                                                     │
> >   │ Defined at drivers/soc/tegra/Kconfig:50                                                                          │
> >   │   Prompt: Enable support for Tegra124 family                                                                     │
> >   │   Depends on: ARCH_TEGRA && ARM                                                                                  │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers                                                                                            │
> >   │ (2)   -> SOC (System On Chip) specific Drivers                                                                   │
> >   │         -> Enable support for Tegra124 family (ARCH_TEGRA_124_SOC [=n])                                          │
> >   │ Selects: HAVE_ARM_ARCH_TIMER && PINCTRL_TEGRA124 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEGRA_PMC [=n] && TEGRA_ │
> >   │                                                                                                                  │
> >   │                                                                                                                  │
> >   │ Symbol: ARCH_TEGRA_132_SOC [=n]                                                                                  │
> >   │ Type  : bool                                                                                                     │
> >   │ Defined at drivers/soc/tegra/Kconfig:66                                                                          │
> >   │   Prompt: NVIDIA Tegra132 SoC                                                                                    │
> >   │   Depends on: ARCH_TEGRA && ARM64                                                                                │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers
> > (3)   -> SOC (System On Chip) specific Drivers                                                                   │
> >   │         -> NVIDIA Tegra132 SoC (ARCH_TEGRA_132_SOC [=n])                                                         │
> >   │ Selects: PINCTRL_TEGRA124 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEGRA_PMC [=n]                                  │
> >   │                                                                                                                  │
> >   │                                                                                                                  │
> >   │ Symbol: ARCH_TEGRA_186_SOC [=n]                                                                                  │
> >   │ Type  : bool                                                                                                     │
> >   │ Defined at drivers/soc/tegra/Kconfig:96                                                                          │
> >   │   Prompt: NVIDIA Tegra186 SoC                                                                                    │
> >   │   Depends on: ARCH_TEGRA && ARM64 && !CPU_BIG_ENDIAN                                                             │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers                                                                                            │
> >   │ (4)   -> SOC (System On Chip) specific Drivers                                                                   │
> >   │         -> NVIDIA Tegra186 SoC (ARCH_TEGRA_186_SOC [=n])                                                         │
> >   │ Selects: MAILBOX [=y] && TEGRA_BPMP [=n] && TEGRA_HSP_MBOX [=n] && TEGRA_IVC [=n] && SOC_TEGRA_PMC [=n]          │
> >   │                                                                                                                  │
> >   │                                                                                                                  │
> >   │ Symbol: ARCH_TEGRA_194_SOC [=n]                                                                                  │
> >   │ Type  : bool                                                                                                     │
> >   │ Defined at drivers/soc/tegra/Kconfig:112                                                                         │
> >   │   Prompt: NVIDIA Tegra194 SoC                                                                                    │
> >   │   Depends on: ARCH_TEGRA && ARM64 && !CPU_BIG_ENDIAN                                                             │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers
> >
> > (5)   -> SOC (System On Chip) specific Drivers                                                                   │
> >   │         -> NVIDIA Tegra194 SoC (ARCH_TEGRA_194_SOC [=n])                                                         │
> >   │ Selects: MAILBOX [=y] && PINCTRL_TEGRA194 [=n] && TEGRA_BPMP [=n] && TEGRA_HSP_MBOX [=n] && TEGRA_IVC [=n] && SO │
> >   │                                                                                                                  │
> >   │                                                                                                                  │
> >   │ Symbol: ARCH_TEGRA_210_SOC [=n]                                                                                  │
> >   │ Type  : bool                                                                                                     │
> >   │ Defined at drivers/soc/tegra/Kconfig:77                                                                          │
> >   │   Prompt: NVIDIA Tegra210 SoC                                                                                    │
> >   │   Depends on: ARCH_TEGRA && ARM64                                                                                │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers                                                                                            │
> >   │ (6)   -> SOC (System On Chip) specific Drivers                                                                   │
> >   │         -> NVIDIA Tegra210 SoC (ARCH_TEGRA_210_SOC [=n])                                                         │
> >   │ Selects: PINCTRL_TEGRA210 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEGRA_PMC [=n] && TEGRA_TIMER [=n]              │
> >   │                                                                                                                  │
> >   │                                                                                                                  │
> >   │ Symbol: ARCH_TEGRA_234_SOC [=n]                                                                                  │
> >   │ Type  : bool                                                                                                     │
> >   │ Defined at drivers/soc/tegra/Kconfig:124                                                                         │
> >   │   Prompt: NVIDIA Tegra234 SoC                                                                                    │
> >   │   Depends on: ARCH_TEGRA && ARM64 && !CPU_BIG_ENDIAN                                                             │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers
> >
> >  (7)   -> SOC (System On Chip) specific Drivers                                                                   │
> >   │         -> NVIDIA Tegra234 SoC (ARCH_TEGRA_234_SOC [=n])                                                         │
> >   │ Selects: MAILBOX [=y] && TEGRA_BPMP [=n] && TEGRA_HSP_MBOX [=n] && TEGRA_IVC [=n] && SOC_TEGRA_PMC [=n]          │
> >   │                                                                                                                  │
> >   │                                                                                                                  │
> >   │ Symbol: ARCH_TEGRA_2x_SOC [=n]                                                                                   │
> >   │ Type  : bool                                                                                                     │
> >   │ Defined at drivers/soc/tegra/Kconfig:7                                                                           │
> >   │   Prompt: Enable support for Tegra20 family                                                                      │
> >   │   Depends on: ARCH_TEGRA && ARM                                                                                  │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers                                                                                            │
> >   │ (8)   -> SOC (System On Chip) specific Drivers                                                                   │
> >   │         -> Enable support for Tegra20 family (ARCH_TEGRA_2x_SOC [=n])                                            │
> >   │ Selects: ARCH_NEEDS_CPU_IDLE_COUPLED [=n] && ARM_ERRATA_720789 && ARM_ERRATA_754327 && ARM_ERRATA_764369 && PINC │
> >   │                                                                                                                  │
> >   │                                                                                                                  │
> >   │ Symbol: ARCH_TEGRA_3x_SOC [=n]                                                                                   │
> >   │ Type  : bool                                                                                                     │
> >   │ Defined at drivers/soc/tegra/Kconfig:24                                                                          │
> >   │   Prompt: Enable support for Tegra30 family                                                                      │
> >   │   Depends on: ARCH_TEGRA && ARM                                                                                  │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers                                                                                            │
> >   │ (9)   -> SOC (System On Chip) specific Drivers                                                                   │
> >   │         -> Enable support for Tegra30 family (ARCH_TEGRA_3x_SOC [=n])                                            │
> >   │ Selects: ARM_ERRATA_754322 && ARM_ERRATA_764369 && PINCTRL_TEGRA30 [=n] && PL310_ERRATA_769419 && SOC_TEGRA_FLOW
> >
> >
> >
> >   Regards,
> >   Sumitra
> >
> >

