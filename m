X-GM-THRID: 6664861839759769600
X-Received: by 2002:adf:ce07:: with SMTP id p7mr1252639wrn.24.1551790148268;
        Tue, 05 Mar 2019 04:49:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:574d:: with SMTP id q13ls4151930wrw.7.gmail; Tue, 05 Mar
 2019 04:49:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqz2EW1zXRPdoZ/HxziQhD6XyM8DoDlrXd0M5X8vjdfNvpWDCwEw+FeaqhNZJONBAzs/WG5m
X-Received: by 2002:adf:e702:: with SMTP id c2mr1308369wrm.31.1551790147514;
        Tue, 05 Mar 2019 04:49:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551790147; cv=none;
        d=google.com; s=arc-20160816;
        b=d2kcThOkcaZHzUyw1qKWp+i5IvThYl7DibrkbDjvHrx6VioljpkX74J93OikLm9GLJ
         UFfKINLfAow4R819uC7rzKYTgfPO/CzjwiXyT/2B6okPQmHsIRhWP6zK6cWLGlTw/PhB
         WY/m7vgdX9WHGDwOWTUa2TwC/zN/vKoRSY/F5P0pLSfd5+94puJ4AOC10DJizCqnVjvf
         MFCscRjRwz3k0qCWPkd89IJsF4BhEq/lKo0wwSv/56t6hmawxWYQ/vBAa1g20QXinkYm
         e8CBe2v4JtSvQgTuNXeczRaz//tmuKVnl5i7U8LHYWHCQCnyVIYm3FNDxyYCwULFDa+O
         zZDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=XAU+oqXXtyH7vx765v0nEL/e9uRTTTJTFAYXog2ggzk=;
        b=E0s1dfFtk/pdQppl1g0ZrDNhjJZoZHS3/pPx2vAgl8U2LdlDw3kgBXKEs3dCqM8Pog
         ijQC+fxBSEKCm7FnmItjTzB8ZxArdoJ8o6Guu8G1bwtYiOOlmImiv2fRK1pxlfPvoJHL
         9MfQY+xq7+sP5bRNBEatAHjcVTgBS8f8u2JDaRyfJBZVKmJpBTesxZqQMcrBlOdirrTd
         A6UnTwlysQOoehvoW3/AxCY+61mx+/tq6Cfki9Ta2oPHspaU5GZFlRwAzGqel2d9ey3Y
         UkhtHE7vdDa3m0EyB4DJEVmBjHe9Qv8prNmmCO4aJCcj3J3NkURqmwOoRJ4PKESwl9D8
         1MOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kLw0YUO1;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id f185si379450wme.1.2019.03.05.04.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 04:49:07 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kLw0YUO1;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id x7so2450406wmj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 04:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XAU+oqXXtyH7vx765v0nEL/e9uRTTTJTFAYXog2ggzk=;
        b=kLw0YUO1iYn8eYYU2wxtOoD+UBU0WFnLsZ8UfPCUOx6f21GM9Bq4CaVFotJ57VCduI
         wO/GETpx2Y4VG91gLivpqLcWr+IT8zt5udvL1rPUOMCKfo1w5XnZxcfte8Ufq+iFv0wI
         bOaa4nPlKElGtkC/qtzq0smD8fHELWIcdYOUuBqAHmjo0h1PP3kgtrn7yV+eHvdMfJlo
         oPKqqH3BeV5VNyai9cB4ph7zzhISczMYdFdZvHVwRV5injpnNLmXRmej++piBWwmkYuC
         z/dTRyIWZVn8Ci2KMoAxn8gNmkXXUgpU10NYmvrX2kxsrHL4X05bAxwfEyQLkk5GVPGK
         VjLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XAU+oqXXtyH7vx765v0nEL/e9uRTTTJTFAYXog2ggzk=;
        b=e1dF97vTtH8n+288xa2sUetVKxCSriZHJgxyp/ELVR6kzQMsVtKsb0Ivd1xuM1CR1b
         HpC6DRUOzO+eJg/6NMUfyiL7Zmy7TFtK9CuzbIcmzvAkGA2TOpv6JRNmfuI105soq9AU
         StA4jq9UePY9bUYMP6BL6/d4DEtwKWbitR8lzIg195CUs7ggFMr3cGd5kkgdvKX2Mj0k
         uDNgjNMXvjInUppax0Ffu7BsDQCrliTZr5qi7r1bvEVVSatPAtiPiSUkOWqzaHxSQ4a7
         2pL0F2kblUodGY5256p0KqK+wiX5SzWMOdFrM+sRV6eutSZ+HuiqGTykUsjgIw7cSZxY
         EShA==
X-Gm-Message-State: APjAAAUcYi1Hqk4RgbRmc9F7HDx1akegCfbiu9mXnwikVLfi85JgYPq9
	zOuH2ihDW6CFZ2lab6alLKw=
X-Received: by 2002:a7b:c74b:: with SMTP id w11mr2590046wmk.79.1551790147121;
        Tue, 05 Mar 2019 04:49:07 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id x3sm8501479wru.76.2019.03.05.04.49.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 04:49:06 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v2 0/4] staging: ralink-gdma: Fix type warning
Date: Tue,  5 Mar 2019 14:49:00 +0200
Message-Id: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

Complete unsigned int type as indicated by checkpatch

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---

Changes in v2:
-make these a patch series

 drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index d78042e..7dada05 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -164,7 +164,7 @@ static inline uint32_t gdma_dma_read(struct gdma_dma_dev *dma_dev,
 }
 
 static inline void gdma_dma_write(struct gdma_dma_dev *dma_dev,
-				  unsigned reg, uint32_t val)
+				  unsigned int reg, uint32_t val)
 {
 	writel(val, dma_dev->base + reg);
 }
-- 
2.7.4


