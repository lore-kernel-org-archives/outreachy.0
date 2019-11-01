X-GM-THRID: 6754471161205096448
X-Received: by 2002:a25:72c1:: with SMTP id n184mr11715856ybc.388.1572647868419;
        Fri, 01 Nov 2019 15:37:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d98d:: with SMTP id q135ls1299970ybg.9.gmail; Fri, 01
 Nov 2019 15:37:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzO8sNJVzEx25hvmUb5u/AAInZQBONfEnPV91tsquysMXq8RQgZTbAA2nMzshQjLBMZNK1P
X-Received: by 2002:a25:e696:: with SMTP id d144mr7276544ybh.173.1572647867071;
        Fri, 01 Nov 2019 15:37:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572647867; cv=none;
        d=google.com; s=arc-20160816;
        b=R4J3ArYA+pimdnOIG+RbuZDw0WKZyOKho7wPlJ8aHtZJXAO1427JdI4EzFg/3SNsqB
         Pp6IvolP9K/UkHQNV/3fvXwdXm3kISEiOGxpNRhupLHUL/Q6AIeki3KtQlMbg0Yktqm+
         S8bgxhDgrAmyACwjli1ksEWA7WN/WwR6fZ5U654qIB42npTfNLvmk4nz7WsptcxBHOiS
         4VdG1HCByv77RO4dP4FTleYbg9w3TuHkOVxxT9I67i6ktkZLUVfuGha6vt0LacGfhnl5
         Dl6R8zqj+PCLjzI60AmcymQYTLsJjFr7TLJl5Bx0Ir6TWLkd23G6Nr/IA+yHcQ92LEKn
         g9YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LGdeY7oWB17TnAUMaa0RtkRNLL4fGiuy6QxiZRPpPP8=;
        b=n5vX56pvSz9TiqA4Zy91fczLKZosCLz3+Xqz/tTwvdhfwCy89m12aVGk84x1gKN0he
         EnSW7IJHh5+hMH4Z3mX2d6H++e4pR0u8vLERpzWl/FuBAoa78L2h5LHbrRkY05m/ZBdO
         j8eageFO6OTc3cNrurXSjQa3gtD3ioGL4Hfez5o0X6vGDEK9MAmrjtrxgh4st5HLKlvy
         DiIqLVPdoh6czTE7062nMC/2iXvplzoEtxHaUmzvkrfawr5gVZTJDa5gidCq/+D+RC4R
         IZC9EWyaMK4GyQn66ZV93Mry6pM0YL1ZWZiQaJ+JHZi6gZQu+NZ0S9buJGbboWx7ATaA
         +lKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TNdD3ggU;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id u8si638416ybc.2.2019.11.01.15.37.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:37:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TNdD3ggU;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id y10so8253906qto.3
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 15:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LGdeY7oWB17TnAUMaa0RtkRNLL4fGiuy6QxiZRPpPP8=;
        b=TNdD3ggUUn77JBgZbx0bJOfzDhFbOZLSfI7IOLdB//bieFBARrcHiwoIH87O7YgV0R
         ak+TPpvIhrrItkHz93pykSwRFdmCQr7bbo+ajQetvP4F4HGS7mB+HIZ/VcnUoPZDFkeg
         bNN3HibPUGLwJ5C6qD+vjY+bp4BuGxABAxOQGxjk7Uh10EX13HCgH3NCLo1Qa/QFNEu5
         37RNjHO7LDFzouXUAilGxaIiuZOmhX4QNavQEZI8SKa03uD0mhO7npP0qqjO5Crh0/r5
         IkQpglJqe5tf/aqELFE4swyCAt5BQLVluT11BfqBPve6t5hS1Lh+iUPpYNtUi7w0NDQo
         2DYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LGdeY7oWB17TnAUMaa0RtkRNLL4fGiuy6QxiZRPpPP8=;
        b=WHrtNUtEYo60++T6aUgUFYeLzuBa4AVkStpfYQW96JUDz4gNv7qewE8ROUTCiYjPjQ
         zAtTYDanwHaSNim9BTA7BLMepZ3DMjIHSinK49DNkjRL+EDGgnGX85AVT1M1sXewFYP6
         JZyZ69VKwEar6gZMS/i8NQXYr4OhG/30Q3df45Xy6XpG+Q8O8gMC8GOnnaoo04mv3MlR
         3HY+z2qpV4V06JtesWWV/AH4P7XZxZ3pwFsg9ss8VaS6yIH7mf0PJ0HYyUl3g201WBG8
         lPTpuXu1LtN8bhjWNGe+v4mmCoB0vIHzJWfWpoHTp/Occ6lg/iw+nL00Sb5eyX5BSgFM
         eDjg==
X-Gm-Message-State: APjAAAXA0kWnKSnTqN6EtsE15rqRj++jqeQ69kCnVeOOeEINrgquqPt1
	9sCooI9r+gTrE9+HTnC1axU0UWDxXQY=
X-Received: by 2002:ac8:74c3:: with SMTP id j3mr1871355qtr.113.1572647866452;
        Fri, 01 Nov 2019 15:37:46 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain (179-241-199-14.3g.claro.net.br. [179.241.199.14])
        by smtp.gmail.com with ESMTPSA id x64sm4192780qkd.88.2019.11.01.15.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 15:37:45 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com,
	hamohammed.sa@gmail.com,
	daniel@ffwll.ch,
	airlied@linux.ie,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] drm/vkms: Update VKMS documentation
Date: Fri,  1 Nov 2019 19:37:35 -0300
Message-Id: <20191101223735.2425-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Small changes in the driver documentation, clarifing the description.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

Tested using: make htmldocs
---
 drivers/gpu/drm/vkms/vkms_drv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
index 80524a22412a..52e761bd6c2d 100644
--- a/drivers/gpu/drm/vkms/vkms_drv.c
+++ b/drivers/gpu/drm/vkms/vkms_drv.c
@@ -3,10 +3,10 @@
 /**
  * DOC: vkms (Virtual Kernel Modesetting)
  *
- * vkms is a software-only model of a kms driver that is useful for testing,
- * or for running X (or similar) on headless machines and be able to still
- * use the GPU. vkms aims to enable a virtual display without the need for
- * a hardware display capability.
+ * VKMS is a software-only model of a KMS driver that is useful for testing
+ * and for running X (or similar) on headless machines. VKMS aims to enable
+ * a virtual display with no need of a hardware display capability, releasing
+ * the GPU in DRM API tests.
  */
 
 #include <linux/module.h>
-- 
2.20.1


