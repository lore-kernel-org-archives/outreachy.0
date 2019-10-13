X-GM-THRID: 6747361372541026304
X-Received: by 2002:a25:8b0a:: with SMTP id i10mr17578681ybl.459.1570992491572;
        Sun, 13 Oct 2019 11:48:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c7c9:: with SMTP id w192ls1984670ybe.8.gmail; Sun, 13
 Oct 2019 11:48:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyEN54w2pT7gZnXLzreNHl3Sf9i+9m4kw0G6rXIanwICHHroGypzKTYc2tS3Ht8LPsypzzI
X-Received: by 2002:a5b:60e:: with SMTP id d14mr5819567ybq.521.1570992489997;
        Sun, 13 Oct 2019 11:48:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570992489; cv=none;
        d=google.com; s=arc-20160816;
        b=bH5BfOqT6RuK+qldF86Bsh0lgJtnqmh5IyubpzmKu+xr4jBhG1cCjNLLxnVZMLnfaj
         /E5561ly81eEY+rmkSZPDEsm3ArwWcRYGYcHvpXeYE8P1PFAFJaZBvtLr9vYHfDCkJJY
         1mlrR2UXTGBKYG0BhvJey5nV/UWxb9UglOr1b2LTYhG1otA3H6o3fgKS/asrjaDVoN+8
         pak6PnCUCCZq4HxZ9i4Rp1iLgmwpyk6laVNTX90HvkFgqOIfPTx0XCrcwaGNjUYxJo4U
         agvfyQRyQkTiGo0H1t1iv5rgvLXjP4uD4UBaVH7MGiy5I/FT2fSTp4OvUou9Vw6QHJdn
         BlBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=CeolOloPmeT1KftxvZqohSF0GTQr4950rvmG7EqO4RI=;
        b=DnCnXRAZLT9DAP6Kjw8IK/oORidJLawhMEb/iuAkmWtqBwLIV2dcAtiLf2aW4nSiAy
         XeAyS1Ae9lkzpmrJcWMXAIq8guw0GlTF8p+59iWyjDgTtBIAti4/8nYoronKKYLib6if
         6gdLlzKCHeSJ/Jq8+I0B4BxYVPYg+ea/dOrZlc7kZRbbo9wynKv54JMOfiXTcf0ZUlir
         zROIIR+0/nr5ObjJO7U+/Xsgpu/K8C8AXBVx2HPfiEdYU1ZcEx34NBFwShqXVyu4hSUD
         Hf93gKzHTmgto0iFptLHYiayKRNSOUtya6eqMUkBSUy0r1Nxq9fImiE8yGaghBzSGEtH
         jzHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LMJEV2Lh;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id p140si1572335ywg.4.2019.10.13.11.48.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 11:48:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LMJEV2Lh;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id u12so6972133pls.12
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Oct 2019 11:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CeolOloPmeT1KftxvZqohSF0GTQr4950rvmG7EqO4RI=;
        b=LMJEV2LhnI60/Nw7SKRueRtun4v6UR9IX/6grkybDx8B+B0v9Ehmq6AwMQD3EnrlLz
         T31x4qCb0dMOf96n28fKNB7hh9OLhM+Gen0FZnmcaQi5qagwAWTwUurck+1UcqCNvQJm
         eKkovSONyDfHxxNvIVqjDHRfn4uRAtXwsX5wu0e8o+U1xDma0HpRZz2QP+UqEKyoL9sN
         nW+nKDBLr38INuRZIvYyEqIKUtH3TcQK8hA8Tbm8E9zpyUqYlm3psGqz08rio7VRLRd3
         Ysg6cQCKIBmQmssIEBwctG8ph8/cwb7BTONUhV8DvCnwDzDx6Y4O7M5hUa/rUWf2uMHp
         mXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CeolOloPmeT1KftxvZqohSF0GTQr4950rvmG7EqO4RI=;
        b=rzcqUHt2mAj0ofh8ZnPdZwp+Eochh23y7N0OnuAo78B+WaXs75dEzLGmo5IHzB+muI
         6/sLIkxbf56aqeuvSOmXO60e8Ewygh7birMWwY9TdnZL75lL/BvgenWhfG0h7v9tPH5c
         x1rwX7ffNMQadTAywwzcfOkhdinawM+5Hx8NsLnLuhWPlnYCHmy6puSvSERPjIbeBVyX
         F5/VXpxNwnoHaqKNPBADKorYZEMk4UmVe7SnayAejkQgS6Y+WSC7Ujgw1Umd6rl+/bqm
         ROOyBvUHUXdpaqnzxtGSrBbuokM1Gtl1IbzXMBG73ptkLPYoJnpHLyNJtjpTxMu0Hc8d
         e6RA==
X-Gm-Message-State: APjAAAU3jDEPWVNyc8HRCrWAY2QQ2p0g+1tUGV0UMhv7R1/CQHSR3VNS
	UhrBCaQBYb/RgvlGFwDROyPysmPNO58H/Q==
X-Received: by 2002:a17:902:bd05:: with SMTP id p5mr25785990pls.203.1570992489363;
        Sun, 13 Oct 2019 11:48:09 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id 4sm13813926pja.29.2019.10.13.11.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 11:48:08 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	eric@anholt.net,
	wahrenst@gmx.net,
	bcm-kernel-feedback-list@broadcom.com,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] staging: vc04_services: use DIV_ROUND_UP helper macro
Date: Sun, 13 Oct 2019 21:47:50 +0300
Message-Id: <20191013184750.32766-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace open-coded division calculation with the DIV_ROUND_UP
helper macro for better readability.
Issue found using coccinelle:
@@
expression n,d;
@@
(
- ((n + d - 1) / d)
+ DIV_ROUND_UP(n,d)
|
- ((n + (d - 1)) / d)
+ DIV_ROUND_UP(n,d)
)

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 63f71b2a492f..75104986201b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -60,8 +60,8 @@ vchiq_static_assert(IS_POW2(VCHIQ_MAX_SLOTS_PER_SIDE));
 
 #define VCHIQ_SLOT_MASK        (VCHIQ_SLOT_SIZE - 1)
 #define VCHIQ_SLOT_QUEUE_MASK  (VCHIQ_MAX_SLOTS_PER_SIDE - 1)
-#define VCHIQ_SLOT_ZERO_SLOTS  ((sizeof(struct vchiq_slot_zero) + \
-	VCHIQ_SLOT_SIZE - 1) / VCHIQ_SLOT_SIZE)
+#define VCHIQ_SLOT_ZERO_SLOTS  DIV_ROUND_UP(sizeof(struct vchiq_slot_zero), \
+					    VCHIQ_SLOT_SIZE)
 
 #define VCHIQ_MSG_PADDING            0  /* -                                 */
 #define VCHIQ_MSG_CONNECT            1  /* -                                 */
-- 
2.23.0


