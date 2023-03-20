Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFFB1861
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 13:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=JTvhCv2ja0P154HgzM/URThQbRpNTcYOsWTb+nfNz0E=;
  b=O7KhG9Nk74v0QBEoL/l5ridEpLOn0qhtnQZcVmkG7oC6mwCJFOp3UsC5
   oTGiRYxHVgisFKI4hDEjIioy/YGOn+NQnPkKef+4Qwr+lrMm91t4Xtb0B
   5WOVgVPs/fqZDD+YtPfjNQX8StQxABLlOaDReu3lbLfgteAtjj1UHYLK/
   A=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,274,1673910000"; 
   d="scan'208";a="98085252"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 14:01:53 +0100
Date: Mon, 20 Mar 2023 14:01:53 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Help in setting module NVEC_PAZ00
In-Reply-To: <20230320120259.GA128219@sumitra.com>
Message-ID: <3e273f2-a86c-ab9-c791-b9ee5f447be3@inria.fr>
References: <20230320120259.GA128219@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-932276213-1679317313=:4121"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-932276213-1679317313=:4121
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT



On Mon, 20 Mar 2023, Sumitra Sharma wrote:

> Since, the thread - https://lore.kernel.org/outreachy/20230320095314.GC126429@sumitra.com/T/#t
> got very long so I thought of posting the issue here for better reach to get guidance.
>
> I want to configure NVEC_PAZ00 as 'm' and its dependencies are STAGING [=y] && MFD_NVEC [=n] && LEDS_CLASS [=y],
> Therefore, I tried to set MFD_NVEC as 'y', which depends on  STAGING [=y] && I2C [=y] && GPIOLIB [=y] && ARCH_TEGRA.
> Here ARCH_TEGRA is confusing. How can we set this in menuconfig . The following options appears:
>
> PS: I am sticking to resolve this issue and trying my best for it. I am very grateful to all of you for your kind help.

Did you try make ARCH=arm tegra_defconfig menuconfig

If you do that, more things will be y and you can select what is needed.

julia

>
>
> Symbol: ARCH_TEGRA [=ARCH_TEGRA]                                                                                 │
>   │ Type  : unknown                                                                                                  │
>   │                                                                                                                  │
>   │                                                                                                                  │
>   │ Symbol: ARCH_TEGRA_114_SOC [=n]                                                                                  │
>   │ Type  : bool                                                                                                     │
>   │ Defined at drivers/soc/tegra/Kconfig:38                                                                          │
>   │   Prompt: Enable support for Tegra114 family                                                                     │
>   │   Depends on: ARCH_TEGRA && ARM                                                                                  │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers
>  (1)   -> SOC (System On Chip) specific Drivers                                                                   │
>   │         -> Enable support for Tegra114 family (ARCH_TEGRA_114_SOC [=n])                                          │
>   │ Selects: ARM_ERRATA_798181 && HAVE_ARM_ARCH_TIMER && PINCTRL_TEGRA114 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEG │
>   │                                                                                                                  │
>   │                                                                                                                  │
>   │ Symbol: ARCH_TEGRA_124_SOC [=n]                                                                                  │
>   │ Type  : bool                                                                                                     │
>   │ Defined at drivers/soc/tegra/Kconfig:50                                                                          │
>   │   Prompt: Enable support for Tegra124 family                                                                     │
>   │   Depends on: ARCH_TEGRA && ARM                                                                                  │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers                                                                                            │
>   │ (2)   -> SOC (System On Chip) specific Drivers                                                                   │
>   │         -> Enable support for Tegra124 family (ARCH_TEGRA_124_SOC [=n])                                          │
>   │ Selects: HAVE_ARM_ARCH_TIMER && PINCTRL_TEGRA124 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEGRA_PMC [=n] && TEGRA_ │
>   │                                                                                                                  │
>   │                                                                                                                  │
>   │ Symbol: ARCH_TEGRA_132_SOC [=n]                                                                                  │
>   │ Type  : bool                                                                                                     │
>   │ Defined at drivers/soc/tegra/Kconfig:66                                                                          │
>   │   Prompt: NVIDIA Tegra132 SoC                                                                                    │
>   │   Depends on: ARCH_TEGRA && ARM64                                                                                │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers
> (3)   -> SOC (System On Chip) specific Drivers                                                                   │
>   │         -> NVIDIA Tegra132 SoC (ARCH_TEGRA_132_SOC [=n])                                                         │
>   │ Selects: PINCTRL_TEGRA124 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEGRA_PMC [=n]                                  │
>   │                                                                                                                  │
>   │                                                                                                                  │
>   │ Symbol: ARCH_TEGRA_186_SOC [=n]                                                                                  │
>   │ Type  : bool                                                                                                     │
>   │ Defined at drivers/soc/tegra/Kconfig:96                                                                          │
>   │   Prompt: NVIDIA Tegra186 SoC                                                                                    │
>   │   Depends on: ARCH_TEGRA && ARM64 && !CPU_BIG_ENDIAN                                                             │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers                                                                                            │
>   │ (4)   -> SOC (System On Chip) specific Drivers                                                                   │
>   │         -> NVIDIA Tegra186 SoC (ARCH_TEGRA_186_SOC [=n])                                                         │
>   │ Selects: MAILBOX [=y] && TEGRA_BPMP [=n] && TEGRA_HSP_MBOX [=n] && TEGRA_IVC [=n] && SOC_TEGRA_PMC [=n]          │
>   │                                                                                                                  │
>   │                                                                                                                  │
>   │ Symbol: ARCH_TEGRA_194_SOC [=n]                                                                                  │
>   │ Type  : bool                                                                                                     │
>   │ Defined at drivers/soc/tegra/Kconfig:112                                                                         │
>   │   Prompt: NVIDIA Tegra194 SoC                                                                                    │
>   │   Depends on: ARCH_TEGRA && ARM64 && !CPU_BIG_ENDIAN                                                             │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers
>
> (5)   -> SOC (System On Chip) specific Drivers                                                                   │
>   │         -> NVIDIA Tegra194 SoC (ARCH_TEGRA_194_SOC [=n])                                                         │
>   │ Selects: MAILBOX [=y] && PINCTRL_TEGRA194 [=n] && TEGRA_BPMP [=n] && TEGRA_HSP_MBOX [=n] && TEGRA_IVC [=n] && SO │
>   │                                                                                                                  │
>   │                                                                                                                  │
>   │ Symbol: ARCH_TEGRA_210_SOC [=n]                                                                                  │
>   │ Type  : bool                                                                                                     │
>   │ Defined at drivers/soc/tegra/Kconfig:77                                                                          │
>   │   Prompt: NVIDIA Tegra210 SoC                                                                                    │
>   │   Depends on: ARCH_TEGRA && ARM64                                                                                │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers                                                                                            │
>   │ (6)   -> SOC (System On Chip) specific Drivers                                                                   │
>   │         -> NVIDIA Tegra210 SoC (ARCH_TEGRA_210_SOC [=n])                                                         │
>   │ Selects: PINCTRL_TEGRA210 [=n] && SOC_TEGRA_FLOWCTRL [=n] && SOC_TEGRA_PMC [=n] && TEGRA_TIMER [=n]              │
>   │                                                                                                                  │
>   │                                                                                                                  │
>   │ Symbol: ARCH_TEGRA_234_SOC [=n]                                                                                  │
>   │ Type  : bool                                                                                                     │
>   │ Defined at drivers/soc/tegra/Kconfig:124                                                                         │
>   │   Prompt: NVIDIA Tegra234 SoC                                                                                    │
>   │   Depends on: ARCH_TEGRA && ARM64 && !CPU_BIG_ENDIAN                                                             │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers
>
>  (7)   -> SOC (System On Chip) specific Drivers                                                                   │
>   │         -> NVIDIA Tegra234 SoC (ARCH_TEGRA_234_SOC [=n])                                                         │
>   │ Selects: MAILBOX [=y] && TEGRA_BPMP [=n] && TEGRA_HSP_MBOX [=n] && TEGRA_IVC [=n] && SOC_TEGRA_PMC [=n]          │
>   │                                                                                                                  │
>   │                                                                                                                  │
>   │ Symbol: ARCH_TEGRA_2x_SOC [=n]                                                                                   │
>   │ Type  : bool                                                                                                     │
>   │ Defined at drivers/soc/tegra/Kconfig:7                                                                           │
>   │   Prompt: Enable support for Tegra20 family                                                                      │
>   │   Depends on: ARCH_TEGRA && ARM                                                                                  │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers                                                                                            │
>   │ (8)   -> SOC (System On Chip) specific Drivers                                                                   │
>   │         -> Enable support for Tegra20 family (ARCH_TEGRA_2x_SOC [=n])                                            │
>   │ Selects: ARCH_NEEDS_CPU_IDLE_COUPLED [=n] && ARM_ERRATA_720789 && ARM_ERRATA_754327 && ARM_ERRATA_764369 && PINC │
>   │                                                                                                                  │
>   │                                                                                                                  │
>   │ Symbol: ARCH_TEGRA_3x_SOC [=n]                                                                                   │
>   │ Type  : bool                                                                                                     │
>   │ Defined at drivers/soc/tegra/Kconfig:24                                                                          │
>   │   Prompt: Enable support for Tegra30 family                                                                      │
>   │   Depends on: ARCH_TEGRA && ARM                                                                                  │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers                                                                                            │
>   │ (9)   -> SOC (System On Chip) specific Drivers                                                                   │
>   │         -> Enable support for Tegra30 family (ARCH_TEGRA_3x_SOC [=n])                                            │
>   │ Selects: ARM_ERRATA_754322 && ARM_ERRATA_764369 && PINCTRL_TEGRA30 [=n] && PL310_ERRATA_769419 && SOC_TEGRA_FLOW
>
>
>
>   Regards,
>   Sumitra
>
>
--8323329-932276213-1679317313=:4121--
