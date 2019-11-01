X-GM-THRID: 6754405077776072704
X-Received: by 2002:a1f:608a:: with SMTP id u132mr6136855vkb.95.1572632481810;
        Fri, 01 Nov 2019 11:21:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f652:: with SMTP id u18ls640275vso.16.gmail; Fri, 01 Nov
 2019 11:21:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwBEgmPeh1jK/XBGIHsMfWuHcP/cG8vkVlLeCVZlxpkRNzBONxaDnLLLqAjd0HFurWKHiiE
X-Received: by 2002:a67:ef4e:: with SMTP id k14mr1261589vsr.165.1572632480822;
        Fri, 01 Nov 2019 11:21:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572632480; cv=none;
        d=google.com; s=arc-20160816;
        b=jja68lCBHo4AHEMiii6iD2e+5tT8X77fpHZyfrojF0ex7CqZ7fOrXAOe7opFbcnMzq
         YsjEniexK4q03uW00o5UKEAZOHcxhU7NW6sNgnzNMKiP+NSW9FZCgaSGMA5h8y+H7s0O
         r7ZbwALQquuseTMO+l+Xz+Sd1pexIK5TsuD9VHXYCluRg8TwofzP+GWavSIDZV/nKY8S
         7KmUIxk4/SIpNNyPekcXGdql8aEwlttg/TKh3icll2afd4w6aHLgva/ydjZTm1gUnR9G
         BMHr7Ggbnl6HK+5ZkX6DT8EkIGaetCX3R5GVuVRQexBQA5t9XWRZOPEBBGvgADt3rar6
         U08w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=xfChniPxmFbZU2S4qrE7c3GqiFqrYlUdrzoxXGWQIRg=;
        b=iJ670Yu4Co1rhNLls6MlUuEUekEkktiqILKSFCLt0ZfX6E53mEkMmhniwWe4Mz4ukz
         R4YPEDqB5trLlp7NK2e9jFv8fCJ9W11AmcFpS6P1Jcu3Y0DLnpF+TgQdFt+IBwv2ihXU
         eCBtNfV09WJCgPzhSOvDC1PxkxYI3CqNNRvIsO9mXZ9K6SpodjfuZDTHcqd03e0v/23v
         A04BVmYxCYqTEUY5ZxhNpt+fS3bfhbQgEUf4DgnjyJ4IlsCGbmCZwrur/g7/vdHOux0r
         dv+E2A4lo0m+sAOVyK8e7O3OleMGIEPGajuot4fqBm2BxwXujL5ugEHyBaefVMpfwZ8Z
         P0/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I3SMuVHn;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id o206si489176vka.4.2019.11.01.11.21.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 11:21:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I3SMuVHn;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id h15so1841512qka.13
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 11:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xfChniPxmFbZU2S4qrE7c3GqiFqrYlUdrzoxXGWQIRg=;
        b=I3SMuVHnefRGev7pKBa/p/vIdpNEst8AexAfUrQVntypTFJVSOseXJZcgDIgmsGXAu
         cmQ89JtTQy3tV7nJmJSSSCu2kN5AbiWclNGyInwZ+03vGsEw1Fht3wC53e4eokh/j8Zb
         JrI0B+PU7qmLMAlxCXiYY3BNoX9XEZZkHyvUEErAI8XoNu4k12MUMDK81fyYkVKRsDf/
         v3GW+n4KTacJVvKZKAnnUsAmfx8KxoCBiCZBCxf0XGxn/EWOVRDtHsGFN7hwzQXWjAht
         TJiML7FmEkeePOp6uv6E7gPfPfdrLtkU23vwXgdnNWyy9n5D9Q8/CG/+76SzYZV8eLCL
         F23Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xfChniPxmFbZU2S4qrE7c3GqiFqrYlUdrzoxXGWQIRg=;
        b=UUb+TyScovZ2/fgZMu4yfy5g4upngcBzsQYqj5IsU1OiGGOYkU3UKY9oZY3byz4xLf
         bt/zBe/UT4F6/OrJPRcfYB+fGPXwRK1nvKt71HgLpqkHc51LFi+03xqAAskfPEAYcHZe
         Wh+dbf0I6MhHKWYyBpJHh8U/eGXUrfUw8o0kdFi7478vA3fk4sw/kiD3mx7FvDKoBbyv
         5Uqxq3d6+xW5HEZOnU5MpzBm3UzcIHynYs40mP0ah12UtVvo8WYhaEYRW9GqYrEAagoN
         doxKImWBZj3lK+Ti9X7XtU813jFLiVI2uniT+TZ7RLzQxG9OJl6ONIEsiJ/gqFZNG8K3
         vunw==
X-Gm-Message-State: APjAAAViCQWjyAzoNy1TPdzl9O1Lw+SrGiqems7YZeIXJJGT6BFFWhv5
	c6QIcXwsW44CkPCKF+FwMXtfuKPJS9U=
X-Received: by 2002:a37:b046:: with SMTP id z67mr1749300qke.343.1572632480189;
        Fri, 01 Nov 2019 11:21:20 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-84-14.wifi.ic.unicamp.br. [177.220.84.14])
        by smtp.gmail.com with ESMTPSA id x38sm5106688qtc.64.2019.11.01.11.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 11:21:19 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com,
	hamohammed.sa@gmail.com,
	daniel@ffwll.ch,
	airlied@linux.ie,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] drm/vkms: Fix typo in function documentation
Date: Fri,  1 Nov 2019 15:21:02 -0300
Message-Id: <20191101182102.30358-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix typo in word 'blend' in function 'compute_crc' documentation.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/gpu/drm/vkms/vkms_composer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vkms/vkms_composer.c b/drivers/gpu/drm/vkms/vkms_composer.c
index d5585695c64d..15efccdcce1b 100644
--- a/drivers/gpu/drm/vkms/vkms_composer.c
+++ b/drivers/gpu/drm/vkms/vkms_composer.c
@@ -43,7 +43,7 @@ static uint32_t compute_crc(void *vaddr_out, struct vkms_composer *composer)
 }
 
 /**
- * blend - belnd value at vaddr_src with value at vaddr_dst
+ * blend - blend value at vaddr_src with value at vaddr_dst
  * @vaddr_dst: destination address
  * @vaddr_src: source address
  * @dest_composer: destination framebuffer's metadata
-- 
2.20.1


