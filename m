X-GM-THRID: 6753369380801740800
X-Received: by 2002:a9f:26c1:: with SMTP id 59mr13148550uay.90.1572391344040;
        Tue, 29 Oct 2019 16:22:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:d40e:: with SMTP id c14ls2067325vsj.1.gmail; Tue, 29 Oct
 2019 16:22:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxRX3zmkQmZYhAG7gV/N8FzBLmizjMl+86GJ/WXlWUMdXWoDjSItjBUFxCIBGVAmyveS97G
X-Received: by 2002:a67:2d8b:: with SMTP id t133mr3593344vst.17.1572391343380;
        Tue, 29 Oct 2019 16:22:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572391343; cv=none;
        d=google.com; s=arc-20160816;
        b=NWtMv2mbBh7Z6nbs8moxU4Uk+rmBNLx7MeaJhwns4ArCtQYLp7QvFeJ6IqmiWh/alt
         plxmCClzLHZh/KUnKSC5LzrArnUsDZ7akF/W29IMXACza3TTQjbCtw+c3KwuYBSXE4UT
         /IkHTwvfV5avrOYaGPEJf5jsTA4m7xPYyjC6Hx70kCr8ujlwV/6G++6p+HvvJNdprnFm
         toKupZmkwxqUUSGajJxCbRCJs3Wc5vLus6XjKDztenht2SCHr2kjjH+cvOoc+AgzJL1M
         UqXzflJjbwABdSIo+Olgg400wjAMNwZdi4Wouekd0+Hu8hL8dIfqQGYoTqqraRzTwcdM
         B0sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3hCkAbcriS9RlIsXdXAS7BOo4yVJsRg6vFvTMkZt0zA=;
        b=Lx3pkfYNzgTgJTeC11wM+cFb2vdGg+HjQA0HoE6v4R9vK0QDSqX3Hu43IOjy4+8YJR
         YAI63gqZjJLMZbsc5A3+SZavCnQruaSv7qPLyhzhbTJkC7jM3jYZE+sihQdNyvnpsPsx
         1nZnyeLy9wuMmZJlaO5YvbCt9vYxpovqJR5l22LBlGzuEOKeqK40IgmPMdcXMlClRNft
         4zFmDG7M+cqIT5dM+t7E2IW9MmL6gbgoB4rmeX4gaGUJS9mFv8u5pvbR3TQ00QjR3wLS
         ggxjkoGsG44OWjM4z5txRMZCxz3RuHsIIvliD8tEnlBYF+GAT5m+p63WauQzcSXKbT6M
         6/hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iyhf2LDw;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id y8si4558vsg.2.2019.10.29.16.22.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 16:22:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iyhf2LDw;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x742.google.com with SMTP id e2so725971qkn.5
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 16:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3hCkAbcriS9RlIsXdXAS7BOo4yVJsRg6vFvTMkZt0zA=;
        b=Iyhf2LDwrJ7hlSqQSnW+N75bzt41kj0wuqTEQk9se2IajbQTHLaDrxokn885sBN/SG
         QDs82ykMG2hcooPX+0+ClpV4v1Ckjo55y7ad0Nb457PVcWBoxsnCaL+hsHY+Nw3mgEXr
         jMx1I0D+pYVWIxa1C7cyLlfvHslI05QVnR+tnEjLlg4E3pybl3tLLoSecAboypaGK8fB
         K90T5UU6H2/71o1vDPdKH6AOR6BD9TFqGT88AWiPU9C8Qk2XwxC3oU5EjMhQtztPIlFq
         R7sSGwM9Z7gqLUxhL/OBEt3OcC88zSqQj23cH4185GKtF5GmX5FPgTgvIB1hC2fpNg3H
         Y6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3hCkAbcriS9RlIsXdXAS7BOo4yVJsRg6vFvTMkZt0zA=;
        b=YMD9YgSpY3qrWTyrHTd9TcwlwYmFe0KwfdN3EuKxitEo6sNGIw3lTtxrrIKZciNqEu
         CJYXT120/ZAfoLPuQbI27Sld9n23QReD8g9oizvx/bZtsK2SI71SpSlDshPHNCXYRRHQ
         qbJtDgGYqDfMyi0EQ7y03sSP54SwIyDNszjy1vOtXWB578WyY1v3wX1RLOwcyLd1o05d
         W60G1NRDW04/JjbtMzCD+HWqR5d5kEtNev74A6Cgli5IyHlaN0g0oXPko4GZud4+9DP+
         KjZM3NbrGLaGLXlW+nrv5T7SWXn8ib3x3TZHDjO88j8yhHC53GMrAkvOXsbqCCBiYk9D
         920w==
X-Gm-Message-State: APjAAAXMmk6SKE9YrECjxGjyMHYVeMbAnalpzcpCX85bxg/FLxBTwSVC
	FOq2iQzdJlYK8nwyvUHG7DXkIyf3pYA=
X-Received: by 2002:a37:6891:: with SMTP id d139mr24311946qkc.213.1572391342722;
        Tue, 29 Oct 2019 16:22:22 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br. [177.220.85.136])
        by smtp.gmail.com with ESMTPSA id a18sm633940qkc.2.2019.10.29.16.22.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 16:22:22 -0700 (PDT)
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
Subject: [PATCH 1/2] staging: sm750fb: Fix typo in comment
Date: Tue, 29 Oct 2019 20:22:06 -0300
Message-Id: <20191029232207.4113-2-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029232207.4113-1-gabrielabittencourt00@gmail.com>
References: <20191029232207.4113-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixing typo in word 'and'.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 645813a87490..5925d7c7d464 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -224,7 +224,7 @@ int sm750_hw_copyarea(struct lynx_accel *accel,
 
 	/*
 	 * Note:
-	 * DE_FOREGROUND are DE_BACKGROUND are don't care.
+	 * DE_FOREGROUND and DE_BACKGROUND are don't care.
 	 * DE_COLOR_COMPARE and DE_COLOR_COMPARE_MAKS
 	 * are set by set deSetTransparency().
 	 */
-- 
2.20.1


