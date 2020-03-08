X-GM-THRID: 6801839515695579136
X-Received: by 2002:ac8:5484:: with SMTP id h4mr10786651qtq.209.1583676672179;
        Sun, 08 Mar 2020 07:11:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:e2c7:: with SMTP id t7ls1715185qvl.1.gmail; Sun, 08 Mar
 2020 07:11:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuJ/frn6D19x3MkdGK56sE0aFQdpexn5WGM3oZoYEtqSmiN8PGqxYlJ0Or20g8rQGRwnCUB
X-Received: by 2002:a05:6214:20c:: with SMTP id i12mr11127353qvt.48.1583676671018;
        Sun, 08 Mar 2020 07:11:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583676671; cv=none;
        d=google.com; s=arc-20160816;
        b=di6unfgTZga1awPPiQWRhUos0k8voIWjZf2HtaCXD7ppZ6ERoB32AAREjBnbKRPO2Z
         7/yiDo+U/dTsDpabis0mtcfz/sGo7TmRgeuYl//mDeaIax1jNoAXr6YFih4uQPd1olmD
         KnE2CgLwqvrDg9SRZCgLEnHsyTNWtE1qkz3LeDL7Re0iFQ5mappz2LcVptzQ/fb6MOND
         Mof45jB4vMLWyG/OBMNgRb4UODXfRomrROS6dIjruXdQbzRsUtwuACfXYQjPnHGSyrUf
         7qmuo8BPp1tPvwSngpkE/kBT3sUZ9ip9K/EfTWdHTO1AKM5H6kjc5JxZwRa8gyknXQzQ
         6i0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jjJ9y1QSomsNK3eqzc/rhlTs1lNvN1tKCakRmDWd88E=;
        b=YkAa2NMX16y5cegjLUOtL0Kn/nYz+n+r1oRMaIprvEfa37mZ3iW+dYqP5Kd6tBqtx3
         0FkQpV7TePf4WKqZ4GaCPA431eEiFL+TmPzyQ2fSVJoKIkauVFLXRfEB/3iARYn+x4cQ
         6ZIZm99brM3vMSAcsD+uB5ZjWHRKjXXupnuUNrzikw182xy+vHES6M8g2p5Me3TKPj/m
         Ru8xNc6v7PQLLe5cGJJ0hrKTjEwwAR2n2B4ZewIH2YYaBbFxguZZfdkuAp5a6bHlv8GU
         k02mWoiC3JACsVLAqAmSENbzOuTo1ZH5HAVdEByfXZzEl+vP7CBjxw57H/Er6GoouzpB
         h1Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kzx4YaW9;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id g23si363854qki.4.2020.03.08.07.11.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 07:11:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kzx4YaW9;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id w12so2910243pll.13
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 07:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jjJ9y1QSomsNK3eqzc/rhlTs1lNvN1tKCakRmDWd88E=;
        b=Kzx4YaW9696pVI4pYtzExJTGIzPpZJnEvJq57NM9D5vz5QbENo+5eGgj6z8Mw5+oGV
         6hSqCgcS7Im2FBjN/BDfTP6qBDHMb3I++mz178Y9OG2UG2et9T5zybowuhUqGxRe22AB
         kY15MmJy+vnzVMSiHP0sQ4hUGYk9mf6Xa1wPIoNSiIbnmrG7YkvCjodM2kSWH2QLWwUX
         4CvEQ5YtKDVOjWVz/v+mVdpQAz5KXYdRUMJa3znOei7HsMe2sNXvfkVLrQLoEvTWALzA
         GKqvpAg/Zz55gxtgo3IdwbNyJ9ccxt/OY7fV4Ugh6aDicGA9sMXejzJW6f+oeyOMbXTO
         I8fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jjJ9y1QSomsNK3eqzc/rhlTs1lNvN1tKCakRmDWd88E=;
        b=F/tya5n2ewOS0shmkm/Ln2tpoeChvZYszlMnrHcNsBaEoPU6mENUGHnz1cYPhuJbNQ
         UzFi+xABLG7Tjo7KuiMxRLCS9SnxCFkIXN2snQTzMpAAFRooHSjjHoUWP6mLEe65thjd
         Ekpsfh3G7os7aAn0YfTD27ed49zw3rKFQmUXC+3Wkc7XaKcrqGqFRHRrKAD//H0GoO8n
         CSwdkmXdyJr83/KCLccd1vTwbuOOU3UDHiD2zxAw0XGGQir8eWqVqimmv/w405wPeIzS
         ABpnetPfUK4BCnmb5qzGDX8PPRIPJin6NXVewbZewIh1ZETrk3orrXhGj8E4jfx+Rvol
         kLrA==
X-Gm-Message-State: ANhLgQ3otqJcpeyo59I+AlLQUzwbqJwqfw4YAt8qYlX9uhUli7kgyXPf
	nRVTX9FgtObQTVgLDXBK6k0=
X-Received: by 2002:a17:902:82cc:: with SMTP id u12mr11894194plz.237.1583676670027;
        Sun, 08 Mar 2020 07:11:10 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id u24sm40770392pgo.83.2020.03.08.07.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 07:11:09 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: rts5208: Replace bit shifting with BIT macro
Date: Sun,  8 Mar 2020 19:40:57 +0530
Message-Id: <20200308141057.5857-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Prefer using BIT macro and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/rts5208/rtsx_card.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_card.h b/drivers/staging/rts5208/rtsx_card.h
index 39727371cd7a..9d2504fddb13 100644
--- a/drivers/staging/rts5208/rtsx_card.h
+++ b/drivers/staging/rts5208/rtsx_card.h
@@ -338,7 +338,7 @@
 #define DMA_DIR_FROM_CARD		0x02
 #define DMA_EN				0x01
 #define DMA_128				(0 << 4)
-#define DMA_256				(1 << 4)
+#define DMA_256				BIT(4)
 #define DMA_512				(2 << 4)
 #define DMA_1024			(3 << 4)
 #define DMA_PACK_SIZE_MASK		0x30
@@ -542,7 +542,7 @@
 
 #define BLINK_EN			0x08
 #define LED_GPIO0			(0 << 4)
-#define LED_GPIO1			(1 << 4)
+#define LED_GPIO1			BIT(4)
 #define LED_GPIO2			(2 << 4)
 
 #define SDIO_BUS_CTRL		0x01
-- 
2.17.1


