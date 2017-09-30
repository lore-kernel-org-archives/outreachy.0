X-GM-THRID: 6470705412124442624
X-Received: by 10.25.17.102 with SMTP id g99mr425074lfi.14.1506779389301;
        Sat, 30 Sep 2017 06:49:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls1440121ljd.12.gmail; Sat, 30 Sep
 2017 06:49:48 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA9qBlNb2TsP6qko+hvxa+TnRrLJO/eGutVYqX0/FnwjQr7HyVDL9m6RrVpot4LpuemJVKO
X-Received: by 10.25.142.81 with SMTP id q78mr432520lfd.40.1506779388544;
        Sat, 30 Sep 2017 06:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506779388; cv=none;
        d=google.com; s=arc-20160816;
        b=osi0qbRn5nQ0uxcMuE528TMAGLXg4OD2e2o9PwqSj1Xs3fPHipsCn5/fCDmuksrGdQ
         GEmJUV2bWYzfCFDUgyHNcud5TQneI4eUaGsXEIvFYlHJRgORF4eV0wTk0ZEWdTK4iPQP
         JMA9xyEKFhoeKGgpe5EhUrLWYAF78PqOjq67l7Mhzh4RNSLppvbT+mcKsl+MRiJP/2fk
         OMMR616AUDRwtoGgQOpX6Pg6KoexDFOBQ7TO2HEcehs8ZyLcao8rKj96ZfHTPQvL9aSl
         L+Fh0dhDy4BhrowdUzLcTSl9N1xJoLLxpcrYHouY7slGDh57jh07nD3EcoDeK1wcHDBB
         iTbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=gAS/atPDuAiv3A+OAB1DS653xygnjLgn7Q1K73uDpck=;
        b=FIxeGvLR3gV47a8fqq6gZK+g/KZqvfcAhqXFlgFleTdjjgYXVERQ8xLLJlxnqjxn8u
         MhHM6IU6rP4ziaEsrBmOuVH9xsJ7N8ubhjapwDUsFYMP1M6lfWKP9ArCRCR1of8sUa+l
         o0BWjItpgTeH2Z21n0/zuU6ZPHsbIhVmdmfP/KSzddRQ4ubuKhV6tUKBR4P8dAH5Z42l
         t7M7iQX/l9UCzh4Z6gjrVEXeQoGNdPwqeItOSW87xfNWCG3W8inYX6dA+2+qOH20jDPE
         FkRETeDZXex4Y7Aqbn0ml//Y4zEwDoJQ2dLs1SNNfCsipRuMaGS7AszFn3LUIYkU3PdR
         fAvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id w64si233407lff.1.2017.09.30.06.49.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 06:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:49599 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dyI9L-0004Ag-Ii; Sat, 30 Sep 2017 15:49:47 +0200
Subject: Re: [PATCH v5 4/4] drm/tinydrm: select BACKLIGHT_LCD_SUPPORT,
 BACKLIGHT_CLASS_DEVICE
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506762028.git.meghana.madhyastha@gmail.com>
 <a5ae26112f5e8d76e3ba46eae0c3137005496444.1506762029.git.meghana.madhyastha@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <be741e6d-e5a2-a0ba-7ab8-9d07f8f36f99@tronnes.org>
Date: Sat, 30 Sep 2017 15:49:43 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <a5ae26112f5e8d76e3ba46eae0c3137005496444.1506762029.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 30.09.2017 11.10, skrev Meghana Madhyastha:
> Add select BACKLIGHT_LCD_SUPPORT, BACKLIGHT_CLASS_DEVICE to
> the Kconfig of drm. This is required for the successful build of
> drm_of_find_backlight helpers.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v5:
> -This commit was not present in v4. Selecting BACKLIGHT_LCD_SUPPORT,
> BACKLIGHT_CLASS_DEVICE in the Kconfig file under the symbol DRM seems
> to fix the Kbuild error drm_of.c:(.text+0x3bc): undefined reference to
> `of_find_backlight_by_node'.
>
>   drivers/gpu/drm/Kconfig | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index 83cb2a8..3ba5632 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -7,6 +7,8 @@
>   menuconfig DRM
>   	tristate "Direct Rendering Manager (XFree86 4.1.0 and higher DRI support)"
>   	depends on (AGP || AGP=n) && !EMULATED_CMPXCHG && HAS_DMA
> +	select BACKLIGHT_LCD_SUPPORT
> +	select BACKLIGHT_CLASS_DEVICE
>   	select HDMI
>   	select FB_CMDLINE
>   	select I2C

A night's sleep has made this more clear, we don't need 'depends on'
or select as you have tried here, it's enough that we make a change in
the backlight subsystem as I outlined earlier:

include/linux/backlight.h:

-#ifdef CONFIG_OF
+#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
  struct backlight_device *of_find_backlight_by_node(struct device_node 
*node);
  #else
  static inline struct backlight_device *
  of_find_backlight_by_node(struct device_node *node)
  {
      return NULL;
  }
  #endif

Now we don't have to care about backlight being built-in, module or 
disabled.

This patch has to be the first in the patchset. No single patch can 
break anything
even if it's fixed later. This is so people can bisect.

Noralf.

