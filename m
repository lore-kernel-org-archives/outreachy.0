Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1E6184C
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 12:03:07 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id le6so12132454plb.12
        for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 05:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679313786;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3FSgbo+AEuA1aeb94tz0i8b5SrRWlUGx5f2rt/FrdJM=;
        b=OiMARslpbPy94hEx937G+QBwh0P8iA/hgcWJQIznQLruobIPgKWm18myKN7bu3FtIU
         UClqyLpTm0b272j4WYf4XXv2gn0avB9zRAVwf3+W2ycJ67MQjZ/ZEQ4xn0wjll/CR03G
         vq2TGFcK1bIY2gya0wcxDD7TZrSe0aPrgtv2J2/4HxiZmx58YtblMfKSzPCkJbvw1k2B
         +2mYyssBaXxFVFd1fHEeJ4zlqsv0PyDANgrD0MyqSqJIVClyqWWNYrm/KtAYbaqf412H
         TKFF/WJ5yxMuun3yFGsN292HQKqp6xE1UVcqUyz6zts9EFcrTZaw+p3QqoVAnyabfDdl
         ViMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679313786;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3FSgbo+AEuA1aeb94tz0i8b5SrRWlUGx5f2rt/FrdJM=;
        b=ODZJ8YXiOMHUDT1ewStptOYaPIID/p7c49Xe5wkkw8vDYmbxt/yR6pHGfgzRvReqlp
         Dakc1YpDRFXuuCFAE1i74QxS39XwA0FlOSvPpKEbw/CuxYR0up8AlTYlWf1u26QDDoLR
         EREDsapWEMiClsckZTMfcMJaGuWPOI7/6Rgsxzz9scB35ZPXqtAzZZL/ExIzseRzrjMv
         /IJUf8mKYn/J8oCicJm6AupVE84035rbPTR8uv6nHLgvnrh/IZmQZSQpLe1GNzGsIu0c
         eHy72bJoavX73zZD1onaq3A7wB2kPJ4V1jU6YgcFIVxOx3G3gz3GtFglplg+5rwEzbG/
         /qnw==
X-Gm-Message-State: AO0yUKU1a24u/v3NJCB5Y7a4+/UnPz9ufT/6XbgoK6xp4FX4aAPjGWUH
	OhEvQE7oiXaeubmQ5aL7WcpsmW9z4WpuQw==
X-Google-Smtp-Source: AK7set/Rl4gxvUThYyGKHRKka5CMk4Fi6/zRsVPTC18SmNI13br6t6BBD6Q/+uWOHJFyXzJLXQ+zBQ==
X-Received: by 2002:a05:6a20:8c06:b0:d9:9053:397 with SMTP id j6-20020a056a208c0600b000d990530397mr3169828pzh.6.1679313786285;
        Mon, 20 Mar 2023 05:03:06 -0700 (PDT)
Received: from sumitra.com ([210.212.97.176])
        by smtp.gmail.com with ESMTPSA id s22-20020aa78296000000b00625d56355fesm6204080pfm.191.2023.03.20.05.03.02
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 05:03:04 -0700 (PDT)
Date: Mon, 20 Mar 2023 05:02:59 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: outreachy@lists.linux.dev
Subject: Help in setting module NVEC_PAZ00
Message-ID: <20230320120259.GA128219@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Since, the thread - https://lore.kernel.org/outreachy/20230320095314.GC126429@sumitra.com/T/#t
got very long so I thought of posting the issue here for better reach to get guidance.

I want to configure NVEC_PAZ00 as 'm' and its dependencies are STAGING [=y] && MFD_NVEC [=n] && LEDS_CLASS [=y],
Therefore, I tried to set MFD_NVEC as 'y', which depends on  STAGING [=y] && I2C [=y] && GPIOLIB [=y] && ARCH_TEGRA.
Here ARCH_TEGRA is confusing. How can we set this in menuconfig . The following options appears:

PS: I am sticking to resolve this issue and trying my best for it. I am very grateful to all of you for your kind help.


Symbol: ARCH_TEGRA [=ARCH_TEGRA]                                                                                 │
  │ Type  : unknown                                                                                                  │
  │                                                                                                                  │
  │                                                                                                                  │
  │ Symbol: ARCH_TEGRA_114_SOC [=n]                                                                                  │
  │ Type  : bool                                                                                                     │
  │ Defined at drivers/soc/tegra/Kconfig:38                                                                          │
  │   Prompt: Enable support for Tegra114 family                                                                     │
  │   Depends on: ARCH_TEGRA && ARM                                                                                  │
  │   Location:                                                                                                      │
  │     -> Device Drivers
 (1)   -> SOC (System On Chip) specific Drivers                                                                   │
  │         -> Enable support for Tegra114 family (ARCH_TEGRA_114_SOC [=n])                                          │
  │ Selects: ARM_ERRATA_798181 && HAVE_ARM_ARCH_TIMER && PINCTRL_TEGRA114 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEG │
  │                                                                                                                  │
  │                                                                                                                  │
  │ Symbol: ARCH_TEGRA_124_SOC [=n]                                                                                  │
  │ Type  : bool                                                                                                     │
  │ Defined at drivers/soc/tegra/Kconfig:50                                                                          │
  │   Prompt: Enable support for Tegra124 family                                                                     │
  │   Depends on: ARCH_TEGRA && ARM                                                                                  │
  │   Location:                                                                                                      │
  │     -> Device Drivers                                                                                            │
  │ (2)   -> SOC (System On Chip) specific Drivers                                                                   │
  │         -> Enable support for Tegra124 family (ARCH_TEGRA_124_SOC [=n])                                          │
  │ Selects: HAVE_ARM_ARCH_TIMER && PINCTRL_TEGRA124 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEGRA_PMC [=n] && TEGRA_ │
  │                                                                                                                  │
  │                                                                                                                  │
  │ Symbol: ARCH_TEGRA_132_SOC [=n]                                                                                  │
  │ Type  : bool                                                                                                     │
  │ Defined at drivers/soc/tegra/Kconfig:66                                                                          │
  │   Prompt: NVIDIA Tegra132 SoC                                                                                    │
  │   Depends on: ARCH_TEGRA && ARM64                                                                                │
  │   Location:                                                                                                      │
  │     -> Device Drivers
(3)   -> SOC (System On Chip) specific Drivers                                                                   │
  │         -> NVIDIA Tegra132 SoC (ARCH_TEGRA_132_SOC [=n])                                                         │
  │ Selects: PINCTRL_TEGRA124 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEGRA_PMC [=n]                                  │
  │                                                                                                                  │
  │                                                                                                                  │
  │ Symbol: ARCH_TEGRA_186_SOC [=n]                                                                                  │
  │ Type  : bool                                                                                                     │
  │ Defined at drivers/soc/tegra/Kconfig:96                                                                          │
  │   Prompt: NVIDIA Tegra186 SoC                                                                                    │
  │   Depends on: ARCH_TEGRA && ARM64 && !CPU_BIG_ENDIAN                                                             │
  │   Location:                                                                                                      │
  │     -> Device Drivers                                                                                            │
  │ (4)   -> SOC (System On Chip) specific Drivers                                                                   │
  │         -> NVIDIA Tegra186 SoC (ARCH_TEGRA_186_SOC [=n])                                                         │
  │ Selects: MAILBOX [=y] && TEGRA_BPMP [=n] && TEGRA_HSP_MBOX [=n] && TEGRA_IVC [=n] && SOC_TEGRA_PMC [=n]          │
  │                                                                                                                  │
  │                                                                                                                  │
  │ Symbol: ARCH_TEGRA_194_SOC [=n]                                                                                  │
  │ Type  : bool                                                                                                     │
  │ Defined at drivers/soc/tegra/Kconfig:112                                                                         │
  │   Prompt: NVIDIA Tegra194 SoC                                                                                    │
  │   Depends on: ARCH_TEGRA && ARM64 && !CPU_BIG_ENDIAN                                                             │
  │   Location:                                                                                                      │
  │     -> Device Drivers

(5)   -> SOC (System On Chip) specific Drivers                                                                   │
  │         -> NVIDIA Tegra194 SoC (ARCH_TEGRA_194_SOC [=n])                                                         │
  │ Selects: MAILBOX [=y] && PINCTRL_TEGRA194 [=n] && TEGRA_BPMP [=n] && TEGRA_HSP_MBOX [=n] && TEGRA_IVC [=n] && SO │
  │                                                                                                                  │
  │                                                                                                                  │
  │ Symbol: ARCH_TEGRA_210_SOC [=n]                                                                                  │
  │ Type  : bool                                                                                                     │
  │ Defined at drivers/soc/tegra/Kconfig:77                                                                          │
  │   Prompt: NVIDIA Tegra210 SoC                                                                                    │
  │   Depends on: ARCH_TEGRA && ARM64                                                                                │
  │   Location:                                                                                                      │
  │     -> Device Drivers                                                                                            │
  │ (6)   -> SOC (System On Chip) specific Drivers                                                                   │
  │         -> NVIDIA Tegra210 SoC (ARCH_TEGRA_210_SOC [=n])                                                         │
  │ Selects: PINCTRL_TEGRA210 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEGRA_PMC [=n] && TEGRA_TIMER [=n]              │
  │                                                                                                                  │
  │                                                                                                                  │
  │ Symbol: ARCH_TEGRA_234_SOC [=n]                                                                                  │
  │ Type  : bool                                                                                                     │
  │ Defined at drivers/soc/tegra/Kconfig:124                                                                         │
  │   Prompt: NVIDIA Tegra234 SoC                                                                                    │
  │   Depends on: ARCH_TEGRA && ARM64 && !CPU_BIG_ENDIAN                                                             │
  │   Location:                                                                                                      │
  │     -> Device Drivers

 (7)   -> SOC (System On Chip) specific Drivers                                                                   │
  │         -> NVIDIA Tegra234 SoC (ARCH_TEGRA_234_SOC [=n])                                                         │
  │ Selects: MAILBOX [=y] && TEGRA_BPMP [=n] && TEGRA_HSP_MBOX [=n] && TEGRA_IVC [=n] && SOC_TEGRA_PMC [=n]          │
  │                                                                                                                  │
  │                                                                                                                  │
  │ Symbol: ARCH_TEGRA_2x_SOC [=n]                                                                                   │
  │ Type  : bool                                                                                                     │
  │ Defined at drivers/soc/tegra/Kconfig:7                                                                           │
  │   Prompt: Enable support for Tegra20 family                                                                      │
  │   Depends on: ARCH_TEGRA && ARM                                                                                  │
  │   Location:                                                                                                      │
  │     -> Device Drivers                                                                                            │
  │ (8)   -> SOC (System On Chip) specific Drivers                                                                   │
  │         -> Enable support for Tegra20 family (ARCH_TEGRA_2x_SOC [=n])                                            │
  │ Selects: ARCH_NEEDS_CPU_IDLE_COUPLED [=n] && ARM_ERRATA_720789 && ARM_ERRATA_754327 && ARM_ERRATA_764369 && PINC │
  │                                                                                                                  │
  │                                                                                                                  │
  │ Symbol: ARCH_TEGRA_3x_SOC [=n]                                                                                   │
  │ Type  : bool                                                                                                     │
  │ Defined at drivers/soc/tegra/Kconfig:24                                                                          │
  │   Prompt: Enable support for Tegra30 family                                                                      │
  │   Depends on: ARCH_TEGRA && ARM                                                                                  │
  │   Location:                                                                                                      │
  │     -> Device Drivers                                                                                            │
  │ (9)   -> SOC (System On Chip) specific Drivers                                                                   │
  │         -> Enable support for Tegra30 family (ARCH_TEGRA_3x_SOC [=n])                                            │
  │ Selects: ARM_ERRATA_754322 && ARM_ERRATA_764369 && PINCTRL_TEGRA30 [=n] && PL310_ERRATA_769419 && SOC_TEGRA_FLOW



  Regards,
  Sumitra
