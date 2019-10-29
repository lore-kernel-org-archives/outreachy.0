X-GM-THRID: 6753369380801740800
X-Received: by 2002:a5b:38f:: with SMTP id k15mr1139980ybp.35.1572391350115;
        Tue, 29 Oct 2019 16:22:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d687:: with SMTP id n129ls683714ybg.13.gmail; Tue, 29
 Oct 2019 16:22:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxx/E1LGPnoi1c1X+7GeIDSXYQo8kppbunbHp17u3yIy8o7ZW/PhvFFgU7i5Jh4x4ZDDwIp
X-Received: by 2002:a25:3182:: with SMTP id x124mr1212542ybx.33.1572391348593;
        Tue, 29 Oct 2019 16:22:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572391348; cv=none;
        d=google.com; s=arc-20160816;
        b=pzWA5MBYprtvjYyevlTQqNz4QWuPabf3LYM6c/fEldggW8fJsFLo6o4O29cuIpspnC
         7YE0H9cos8qHgI6xjN2TrP0C1ffZf3x05hzynaz5Bn8ie6GZ6ALVa3wryHHnrccbZ6+7
         AWgISwPllrmfEX1Z3HFtUNI1W05TqGyJu3tPLbX+HVcxv4nU3cyikp18YIBY0/y0+F6G
         k3/QtUZZ6qVMlEKSZk3UCsnyjyDIR93AUALgsx3ThcXEnGJd9jMgWC6fk7g587G5klzr
         BUfZ0WrxvrP7q9otpISli9fKB7AvQZw41jwt5/3CdWwZF7tOc3jBKzygtVnM4aFflcYr
         VQBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NL5NHkQo49SzWvXcG4GM9cxAAP6UXPgbkUHRM9GwPRM=;
        b=oQMMR3FPl08KRd4Kqq9bGZEuhhuFDAOaK16HNOZzW5C/JV9zg6shiTsguzqJiTlU2b
         foM7QZeu4Xk4yt5mmKS4lyzvACoKCdac8WcBSlvF06WzPY8wSKpg0PoMq8jDEdve+BOb
         ic1/TrvjiuJ8auQUF6jb3YL/lV3VokjoU2P1yLn5wL+Hl4TYfGZcB8wCPPbGQlOTFgRb
         wIQ/2aD4+QhM3FghmCMohyK5zVmaS/rha5fPzSJ+SiAWrbG76fYPZHJm9c4KHmp2tobe
         Oe/aHZlGsQGM2YXw9Fl4eu48Hkc4lOBunrhq3q1/KCslYh97OjfVoc6to6KtxHGdZE5G
         S0UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="BNZPLsM/";
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id r185si39952ywe.2.2019.10.29.16.22.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 16:22:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="BNZPLsM/";
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id z17so612126qts.9
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 16:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NL5NHkQo49SzWvXcG4GM9cxAAP6UXPgbkUHRM9GwPRM=;
        b=BNZPLsM/pFTx/j8tsrlHokltVoy7lphtIngmNZpMI7tw7cLyH+x1Og5Vgy0PKhIRck
         +REO+9To7CtKlPkEIDVjccdwXUWJTlJNGr/cGUPguD838pybkp3K5eu0Tgt+CGGBSI7g
         94gPtvnJJszTMW58jNGi8VxZEG6Ikrv65kQzvWnyoJTi4enJoykJL5zCXe4KzHlhVUXt
         RC8d8W32ZWzNmI1UCnDKCQN/m1JONdnt8sIFpK4JfvrA47FuKMr+zgvg2ux5ym41wzUd
         aYBIhelWxNe+xOlF7jwb+bmMepE/jN2ZxbiTEwAZImGODD6m/MXYViD8tEBpxvbamKHD
         9TMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NL5NHkQo49SzWvXcG4GM9cxAAP6UXPgbkUHRM9GwPRM=;
        b=EY3H7Fib5T/lYKlR+Hkak2gcrmQSEX8XGoIeLp7nPENp7oJeNL20hzCnuFjvpkWO6C
         ssI89Tga0GHwksLL8+gajQS4FhZiPx2uDmlng8x04+SiXTDd9143jGQtdVk3817ZOYvO
         /IwAgqoT1jol2O7jfZsyPXf/iJL2sFED2zHypKY+b913rqhfnKGMtWWuQ9q7/bvf4J58
         A1BXLiY3FZmGegKrHWCki0Z6ExDYYvLZIodUi8/4CCqFP2Yrth1gCImhnHSkwU4OsFpP
         pLZNTTBq0vlDU7g9zwAX5uYliilZ5ntpN3/A3qq/SMvfiRywb+FEnr4m6MfI6ddGYbMV
         YWNg==
X-Gm-Message-State: APjAAAWlGrS7HHiWzf31luVx97GQJnfczhwbbdBtHaXPG+2OMm7nCAoN
	3dSLxi6Ni9I6aOH6VUhI56w/PBpN+o0=
X-Received: by 2002:ac8:117:: with SMTP id e23mr2054008qtg.82.1572391347698;
        Tue, 29 Oct 2019 16:22:27 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br. [177.220.85.136])
        by smtp.gmail.com with ESMTPSA id a18sm633940qkc.2.2019.10.29.16.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 16:22:27 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 2/2] staging: sm750fb: Replace multiple spaces with tabs when it suits
Date: Tue, 29 Oct 2019 20:22:07 -0300
Message-Id: <20191029232207.4113-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029232207.4113-1-gabrielabittencourt00@gmail.com>
References: <20191029232207.4113-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace multiple spaces before some comments with one tab. Aligning the
comment with the function below it.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 5925d7c7d464..8faa601c700b 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -243,21 +243,21 @@ int sm750_hw_copyarea(struct lynx_accel *accel,
 	 */
 	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, dBase); /* dpr44 */
 
-    /*
-     * Program pitch (distance between the 1st points of two adjacent lines).
-     * Note that input pitch is BYTE value, but the 2D Pitch register uses
-     * pixel values. Need Byte to pixel conversion.
-     */
+	/*
+	 * Program pitch (distance between the 1st points of two adjacent lines).
+	 * Note that input pitch is BYTE value, but the 2D Pitch register uses
+	 * pixel values. Need Byte to pixel conversion.
+	 */
 	write_dpr(accel, DE_PITCH,
 		  ((dPitch / Bpp << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
 		  (sPitch / Bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
 
-    /*
-     * Screen Window width in Pixels.
-     * 2D engine uses this value to calculate the linear address in frame buffer
-     * for a given point.
-     */
+	/*
+	 * Screen Window width in Pixels.
+	 * 2D engine uses this value to calculate the linear address in frame buffer
+	 * for a given point.
+	 */
 	write_dpr(accel, DE_WINDOW_WIDTH,
 		  ((dPitch / Bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
 		   DE_WINDOW_WIDTH_DST_MASK) |
-- 
2.20.1


