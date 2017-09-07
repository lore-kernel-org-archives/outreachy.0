X-GM-THRID: 6463032628218953728
X-Received: by 10.36.2.209 with SMTP id 200mr2185545itu.36.1504793713157;
        Thu, 07 Sep 2017 07:15:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.140 with SMTP id f134ls611229ita.16.canary-gmail; Thu,
 07 Sep 2017 07:15:12 -0700 (PDT)
X-Received: by 10.129.168.72 with SMTP id f69mr1809012ywh.208.1504793712321;
        Thu, 07 Sep 2017 07:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504793712; cv=none;
        d=google.com; s=arc-20160816;
        b=ne7t1Br9+PUD+ID9fNERF3q32SBhwFw/DiMRdFnSGUZXUXK06ScMDIT7kXTw6NSAwz
         4odufmIYnhuTp3RWgluDKTJtH6BTYRzlDMvO4TD3FyjAX/ie+KUbzoRDdaUq6doeFanv
         r+YCvojTH88XAt/rieX4j/6FYNbGhqjpH8YmBvfjSOYnOIrUx073NjuWya8k/ic4TX/f
         uHZDVkEl4G8fJ8gTdVnK8HbWFqcVoJY+e2Byuo/+Xsf2ah7prDfA5E2m3pzSbuKnAYG+
         OqyNZxTGvpFWSvevD0c9fWj1GfMLMcju15UKNfKcCCY5tuNLkG+oYrBEkfUzyFYRbDwC
         HfIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ALZBtsJ7CgasW/vgju0hp8ZHV9pAp5dfxWRt7CwofqM=;
        b=xuW9NvcRQa0smKRKauMjhGW0mx1VYh8wPgDQyT612pk1/B6TI1WvlBhcdqbNwyu7zj
         dDcYoAAbTwRs7x299+iZAVorzP7FWLmMEh8VWoezeEHlBlqEcrsoPtkut/fa672laYhf
         Y3INQEiDN6g+6SRhtsJBQEmxZBXIs99+7ubh+IjfzQ4ZO5UICajto+qa21cKvPNYrv8V
         r6PobVTbRcweg1ahqC4oUVHUkzwzxtQs0czNXBcZO8QG2/+clPRvD+g0qz7lW8IM9Jru
         Nt5j503z1m14EPU5NrBr/owikv3EJFaNGJ5iRrpLxSFU/7Ku9bZm6VX8ZJ1aXRzfQ0uJ
         Y3WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFT8HPVN;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id p6si341035pfg.6.2017.09.07.07.15.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 07:15:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFT8HPVN;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v82so4380385pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Sep 2017 07:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ALZBtsJ7CgasW/vgju0hp8ZHV9pAp5dfxWRt7CwofqM=;
        b=BFT8HPVNWTy0rDwHknw0trHuvMPRN4MoyJycQejaYrvjOxC7dw7/kaYnZSfQ1ILNge
         uHkEwRjITbvi7wDgVa+GwrT89cxq92U99uy0mtCrPtU9kRa9rH9QXgav7mhxB91NMDxR
         VV/0RoduMQIHzzgf8Ws/W7J2UWYOFletdkvf9WfQGac5gItxm+2kgWIMMDDdGNQ3PnZv
         lRzUaTwU0A1hV6iH9Z6tL8kuePQ/iHTdUgFjXC+WfaY5pJuXEuXUMXE2uStPUikg+APs
         B+vvhdmhgmED3WaKtPwcWWw8FmuR+N5HiXDeZUVdfe2KtJViZ4gi+HVKVi3/w+TcfkGh
         eO6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ALZBtsJ7CgasW/vgju0hp8ZHV9pAp5dfxWRt7CwofqM=;
        b=ai/QpXg4L25Qps0MGU9KZ4lScMwQ2U8h2/YHxwaJLPZDvoqng3RMRPBU14zTyOHzIK
         fdasGqlLaKcK4f7rxfjtKrNnLrCTyHegq+MnjK/4CxU4SonBJJU8ateENImlucUGBxLe
         8QCIv1BNp0YoHYSNDs5kAiPNEcEN9xBs7CkdFnGlErz4ProTPfNYmFdl794MH8kZR6ze
         A+vuRGC72/kuu1lwr7NsTu42WuIA15DP+AVFLl6ceCqzevb2TOlcGbyLM/RLQQBbp/R/
         KxVoq6U/6HKRMUiJ84QQlwt4Ic86QkjPMTCumimQAyGOI0fZTeb4T2ST2xgvSfbvN4/y
         eiPQ==
X-Gm-Message-State: AHPjjUjTpiqylra59KVm9o1Zo95UAHr8lVyxz68JzJIcZWvrI1VxGatH
	CgPBPRae9Ogqog==
X-Google-Smtp-Source: ADKCNb7v0+ICQHFkAueGNTpmTzp13eBgbNKt4s4SoqFovUmo1JyI+slKnVZtKUdcbv3xeJ8mKt6bKw==
X-Received: by 10.84.234.16 with SMTP id m16mr3203895plk.391.1504793711890;
        Thu, 07 Sep 2017 07:15:11 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.9.172])
        by smtp.gmail.com with ESMTPSA id y28sm4632464pfd.58.2017.09.07.07.15.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Sep 2017 07:15:11 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: ccree: Prefer using BIT macro.
Date: Thu,  7 Sep 2017 19:44:52 +0530
Message-Id: <1504793692-8996-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use BIT(x) instead of using (1<<x), reported by checkpatch.pl.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2:
 - Add tab spaces before BIT macro.

 drivers/staging/ccree/ssi_cipher.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/ccree/ssi_cipher.h b/drivers/staging/ccree/ssi_cipher.h
index 296b375..c9a83df 100644
--- a/drivers/staging/ccree/ssi_cipher.h
+++ b/drivers/staging/ccree/ssi_cipher.h
@@ -27,11 +27,11 @@
 #include "ssi_buffer_mgr.h"

 /* Crypto cipher flags */
-#define CC_CRYPTO_CIPHER_KEY_KFDE0    (1 << 0)
-#define CC_CRYPTO_CIPHER_KEY_KFDE1    (1 << 1)
-#define CC_CRYPTO_CIPHER_KEY_KFDE2    (1 << 2)
-#define CC_CRYPTO_CIPHER_KEY_KFDE3    (1 << 3)
-#define CC_CRYPTO_CIPHER_DU_SIZE_512B (1 << 4)
+#define CC_CRYPTO_CIPHER_KEY_KFDE0	BIT(0)
+#define CC_CRYPTO_CIPHER_KEY_KFDE1	BIT(1)
+#define CC_CRYPTO_CIPHER_KEY_KFDE2	BIT(2)
+#define CC_CRYPTO_CIPHER_KEY_KFDE3	BIT(3)
+#define CC_CRYPTO_CIPHER_DU_SIZE_512B	BIT(4)

 #define CC_CRYPTO_CIPHER_KEY_KFDE_MASK (CC_CRYPTO_CIPHER_KEY_KFDE0 | CC_CRYPTO_CIPHER_KEY_KFDE1 | CC_CRYPTO_CIPHER_KEY_KFDE2 | CC_CRYPTO_CIPHER_KEY_KFDE3)

--
2.7.4


