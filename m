Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7926A4D
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 08:40:55 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id d10so4118247pgt.12
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 01:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679128855;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ENnFpNb9urNf5JawW57fevrFKLRmM2ohwbBGcVN/z6s=;
        b=kaQ4gsGTGdRAyHogo5ZmdEyCrpSYZ6Vm8ZzK9yoXnhFb8BuwcwOJZOqaprL1Q/9TqH
         C5TIjKilh0GAcV1RoDdpVUHTl6q+MUo8mpXUTtj+tpp2U0IDIQIpP3gsjGdCs9CbKVjt
         tdk4zS6e/dGX0YDOyFAv6ZuN+anAD07kA9pJmfI0Bl8hwGpg1JuzEMgb5ysnoXqqX5CP
         gp5bUHjttO82jubV/GQuEi9fPn6RXqvJSQRwAyuC5ejThI5zXM31mO80k1XEJRVc7NHO
         uowYAFO3iAFxtAg0wMUIKJlmjnkW5BslZxyDpmCN0QmXOJLCDNnpErxvUqgmw336tHMZ
         ImTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679128855;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ENnFpNb9urNf5JawW57fevrFKLRmM2ohwbBGcVN/z6s=;
        b=Tlii4mp4YSEf1Yo4IjhWm6NJlOqCE9Wvg7MGXhGuyf4eyzM5m872SynMrOhqW6Xbdq
         S+spuvXf8cGRBm4FGcK0MhCIl3SjMZEwFB9QK9gMtbtVjlI6Qt978oi3M1NHfEDayATv
         0SLibKXyqGoLPJT+kQEEqxImxplCPMlLcsjgCLaiaTzQp0bn7mjCY3vFKANjJ3UKzGjv
         jkvDhw6R1M1OUNI3Az2FQxoiUrJGmC/7A3/qTXDPwhBSuhDHEhP0C0u2NBEHPl/HDrUJ
         bxmeZa7AuR1WI/xz7/JiCyw5ObglaGic+G1kDyIMPJR/6qnS0D/lBVzDnE4Nuc6cwWg0
         7fmQ==
X-Gm-Message-State: AO0yUKU+8i3gPdvFiYRIZVXyyOkLgQIEGZtm8IywzzSoWguWrVfyioak
	a4hVIjmXwKztlFeaEOOAEHeiodU0S5Y=
X-Google-Smtp-Source: AK7set92NShtAPd/j+a9/9nLz9ae8b45zmYaNIvdDV67d5BrvN+Wvlk8vLRZzRvJ4C0DN+vXuiAY3g==
X-Received: by 2002:a62:5c4:0:b0:623:6131:66ca with SMTP id 187-20020a6205c4000000b00623613166camr8216671pff.32.1679128854868;
        Sat, 18 Mar 2023 01:40:54 -0700 (PDT)
Received: from sumitra.com ([117.245.170.249])
        by smtp.gmail.com with ESMTPSA id a7-20020a62bd07000000b006222a261188sm2780429pff.62.2023.03.18.01.40.51
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 01:40:54 -0700 (PDT)
Date: Sat, 18 Mar 2023 01:40:48 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: outreachy@lists.linux.dev
Subject: Unable to find module location
Message-ID: <20230318084048.GC4434@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

I was trying to recopmile the driver using the command "make menuconfig".
This opens the text-based UI and I wanted to locate and make NVEC_PAZ00
as a module whose location is as follows:

  │                                                                                                                  │
  │ Symbol: NVEC_PAZ00 [=n]                                                                                          │
  │ Type  : tristate                                                                                                 │
  │ Defined at drivers/staging/nvec/Kconfig:45                                                                       │
  │   Prompt: Support for OEM specific functions on Compal PAZ00 based devices                                       │
  │   Depends on: STAGING [=y] && MFD_NVEC [=n] && LEDS_CLASS [=y]                                                   │
  │   Location:                                                                                                      │
  │     -> Device Drivers                                                                                            │
  │ (3)   -> Staging drivers (STAGING [=y])                                                                          │
  │         -> NV Tegra Embedded Controller SMBus Interface (MFD_NVEC [=n])                                          │
  │           -> Support for OEM specific functions on Compal PAZ00 based devices (NVEC_PAZ00 [=n])

  But under "Staging drivers" there is no such thing called "NV Tegra Embedded Controller SMBus Interface (MFD_NVEC [=n])".

  --- Staging drivers                                                                       │ │
  │ │                    < >   RealTek RTL8192U Wireless LAN NIC driver                                            │ │
  │ │                    < >   Support for rtllib wireless devices                                                 │ │
  │ │                    < >   Realtek PCI-E Card Reader RTS5208/5288 support                                      │ │
  │ │                    < >   Silicon Motion SM750 framebuffer support                                            │ │
  │ │                    [*]   Media staging drivers  ----                                                         │ │
  │ │                    < >   GCT GDM724x LTE support                                                             │ │
  │ │                    < >   Support for small TFT LCD display modules  ----                                     │ │
  │ │                    < >   KeyStream KS7010 SDIO support                                                       │ │
  │ │                    <M>   Pi433 - a 433MHz radio module for Raspberry Pi                                      │ │
  │ │                    < >   Fieldbus Device Support  ----                                                       │ │
  │ │                    <M>   QLogic QLGE 10Gb Ethernet Driver Support                                            │ │
  │ │                    [*]   VME bridge support  --->
  

  Kindly guide me through this.

  Regards,
  
  Sumitra

