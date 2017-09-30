X-GM-THRID: 6470705412124442624
X-Received: by 10.99.111.11 with SMTP id k11mr1000341pgc.107.1506762609583;
        Sat, 30 Sep 2017 02:10:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.51.79 with SMTP id z76ls11578pgz.2.gmail; Sat, 30 Sep 2017
 02:10:08 -0700 (PDT)
X-Received: by 10.101.93.11 with SMTP id e11mr971532pgr.2.1506762608879;
        Sat, 30 Sep 2017 02:10:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506762608; cv=none;
        d=google.com; s=arc-20160816;
        b=zNdJ8gGeVM2/UsCaQrPfoKT2tiRNf/rK1Q8eF755Mh1lOcBwVMgzNgSKBseVwuJwV5
         Nc4h1Dfa8D3FdJXEuDt7VR4Ll4ZEeYuGPTht51Zw9glj2L3Rvmspzr4kakLslU1Z3qeS
         gPRt9FHwLayJEpveo9UTMVnt3e55oNe3IVIoCNNIM6cJ/kmR3ZZf4QEHXtdnZWvljnP8
         RwPwnnbgcn76BLd1fclZO/o5NC846kzaDT1PZJp+O4W/ORQzh6i3cjfWMzdXmSdpaw0Q
         hGNA9ZrFe6BSAgzoLA+asf72iPzAXfiQAkF0MkjPrQHcak0zU+KU7KF8nqOgThzFGzsg
         SsUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=/hnHmIsLF9RYNxsz9IGjcW/aN/2CigJax6evgHSFq9c=;
        b=AQslghOD1Fv92lcR0pYdeiVm0uRBet7evCTj2Zjnu27w1f3X+arvTy+mXeEFeIl8gN
         ft4FsmOuitr4sawmgBvwAY1Z5miJWLKEq9C9Zpo+fRw0HKc4jEkTgB8x8yJBpIqkb7Pj
         G3myHrPeO5e3UaBPe4G9ZE+GBGpjlNlV2sMHgul0+qmZANJ1IjiGlR+3uhYZWtDMt/WS
         0a2FfHkc1ZCVpeJj95xAxNukwinoj4leKbFQ/GCTKVXTIGkLAe6x9oCQ6JIyBRYJP5jS
         rDHvjR/Cew+PBu3SjLzMwvq2aq85cUJAaZ810LLpxVCVJsnMxYJa/rnD8pbX96sU1Tvn
         aEgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ksQvU1IR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id e80si137473pfb.8.2017.09.30.02.10.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ksQvU1IR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id u27so1162462pgn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 02:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/hnHmIsLF9RYNxsz9IGjcW/aN/2CigJax6evgHSFq9c=;
        b=ksQvU1IRmNQW/zrfIV1xJVvlZ/ZTF89UkYQZUwXVTIHklBMCD49b3gJCBg9pN84Se/
         WZLUzrC12bBoLgmr1B5IxhQjePd3GiOl4x0ssVIFzMrLTvozyarc9j4+EBS8Y2qorH1g
         t2qxkPDfnT9kEbE1qojV7E3lFQsR5AFQqPDrzkbBfSnIzC+9qxq3HajvPfrpIIKKyfkk
         FXQXhYOGV8QnVwLQFIFx3JirRfJMV7AKZDzWiwF126t/SMwRYycjRzqntZuqE7oQUjwF
         IoHAlIsDER1aZrWECfz2Ir1ZI94asEYbnhKkSmizurGbYiU9xME9ukETpS38rLLt0hFZ
         YIyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/hnHmIsLF9RYNxsz9IGjcW/aN/2CigJax6evgHSFq9c=;
        b=rP9JHJMiLPodGpf44dC6q7PRYicpY4LtPuvkdBmmB6xHL+LwLn5XkbfesQEeelcLAq
         SYzzyop7aI6lq3rBzQomLF9HejLs6BjZ5hmJcMG0vc39bAryO5zcYwCsMSaJRVeOPf9C
         lABEH5AWSg8Rt+KxwQOyvu3i2nBFKfj3AfI0gPufXIbkcxJdkGDo9eFuVWdn0yJPuq+K
         Q5CtJEPAj6SD8ikH5ZkkXP/Pq9m5QJw9XdyM0A3gRAInxwZ58RPIQ9Yk1nYUXY/A+eD3
         iUKE20tA3D3bRyvk2XNxgE7dK6RF71eD1j8vfAKKKVatOlbx4COPZzagIGMiaYeK5x/a
         EeTQ==
X-Gm-Message-State: AMCzsaVriClR6hCbKHSqk46RRMaYKXC0I4t1vLg+9a1ORJvcIlORmYSo
	btTekUa+cNi+dEGKt/Bsg+o=
X-Google-Smtp-Source: AOwi7QCd4DJSGc9XkRBq5pAss7/6TUHYbQGztjfYqIodHfPPLq3OCzr/LaGkBIoRg8lViTlmSnrS+w==
X-Received: by 10.159.194.197 with SMTP id u5mr3606742plz.142.1506762608686;
        Sat, 30 Sep 2017 02:10:08 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id 76sm9938756pfp.158.2017.09.30.02.10.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:10:07 -0700 (PDT)
Date: Sat, 30 Sep 2017 14:40:01 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 4/4] drm/tinydrm: select BACKLIGHT_LCD_SUPPORT,
 BACKLIGHT_CLASS_DEVICE
Message-ID: <a5ae26112f5e8d76e3ba46eae0c3137005496444.1506762029.git.meghana.madhyastha@gmail.com>
References: <cover.1506762028.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506762028.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add select BACKLIGHT_LCD_SUPPORT, BACKLIGHT_CLASS_DEVICE to
the Kconfig of drm. This is required for the successful build of
drm_of_find_backlight helpers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v5:
-This commit was not present in v4. Selecting BACKLIGHT_LCD_SUPPORT,
BACKLIGHT_CLASS_DEVICE in the Kconfig file under the symbol DRM seems
to fix the Kbuild error drm_of.c:(.text+0x3bc): undefined reference to
`of_find_backlight_by_node'.

 drivers/gpu/drm/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 83cb2a8..3ba5632 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -7,6 +7,8 @@
 menuconfig DRM
 	tristate "Direct Rendering Manager (XFree86 4.1.0 and higher DRI support)"
 	depends on (AGP || AGP=n) && !EMULATED_CMPXCHG && HAS_DMA
+	select BACKLIGHT_LCD_SUPPORT
+	select BACKLIGHT_CLASS_DEVICE
 	select HDMI
 	select FB_CMDLINE
 	select I2C
-- 
2.7.4


