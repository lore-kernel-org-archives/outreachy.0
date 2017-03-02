X-GM-THRID: 6392835608825298944
X-Received: by 10.129.175.31 with SMTP id n31mr4563155ywh.30.1488448048594;
        Thu, 02 Mar 2017 01:47:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.135 with SMTP id 7ls528222otl.0.gmail; Thu, 02 Mar 2017
 01:47:28 -0800 (PST)
X-Received: by 10.13.236.204 with SMTP id v195mr4909690ywe.62.1488448048217;
        Thu, 02 Mar 2017 01:47:28 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f7si1339716pfk.5.2017.03.02.01.47.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 01:47:28 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e66so654670pfe.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 01:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+eKuOq3oF5XK6n8M9FkTbI7N5BjwG4Ro4lQEPNm6zuQ=;
        b=EJ8yppXgsphMjhqcy07w2Br0RzB4CVQUmQPDT1hTDwEZRvo+G9z7nOsfwUMF6gNnRY
         B3mbbJ/HxTNoWbDFmSew0pfSFpH8ZLWqe+6pLiipQGzSwaITHYGonhq4sCpNZxpUjQEn
         WdsDAKWGjxb9cAmanEoP0d05wZsINFjQn7pJto38JvqYiL8tD0k6aQmlpNFViXyEpUZL
         aZlG9LNrdviX9eXoyqHppcyTgkXu5VEVS21wAbLpy66Cb31yl/RW1eUbLxVWJKV/r1o/
         4GUwR2Y/qIyZJL4ESbum5mTWr24wmvXcmVd1QO5Q/3peuOXWH5OUR3jT900x9LVaXLYK
         H46g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=+eKuOq3oF5XK6n8M9FkTbI7N5BjwG4Ro4lQEPNm6zuQ=;
        b=tDHEzvNh/eoBThGfopM4/fe6awaAaePx5NWqXcYlJrJak/2m5CtDtX1DJMlrK8In+9
         wRc8rYySzX6V/k9vvEI8nfMaFYcNTzzaOKjCAv5sirJCNWnWH6epAlLDKwcXRQE1mvMR
         0VciVYLEIqi7hdfS0osoUr8yHTcEM6eOF0kut957s6zCskPcmp0PnwYkv/OLJW1pCm1u
         ARoZwe51lOErEtyU+dS7ibgKmqCC3PwLGDoicRZ7W0h3q5i46Yr/FhrABqipzQV42C7f
         53SmPRKuOxBgXW1v+j5RBu4pSDLZ0Cq0kPQjvOtHKPF0t/6vH4Y4gWq42QmDGW2o6U0M
         NQ6w==
X-Gm-Message-State: AMke39lB+0AnGDtupUaXzXHAWWYO2AOYByG912U/DjXrBS20FR8QZbmv2Mvusc3NwHQo/Q==
X-Received: by 10.99.238.69 with SMTP id n5mr14347949pgk.38.1488448048013;
        Thu, 02 Mar 2017 01:47:28 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q64sm15883193pga.0.2017.03.02.01.47.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 01:47:26 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	sergio.paracuellos@gmail.com,
	juliana.orod@gmail.com,
	thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: rtl8192u: Fix Sparse warning of cast to restricted __le16
Date: Thu,  2 Mar 2017 15:19:06 +0530
Message-Id: <1488448146-29452-6-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>
References: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>

This patch fixes the following Sparse warnings:-

drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c:177:16: warning: cast to restricted __le16

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index 4d6c928..713f1d6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -174,7 +174,7 @@ static inline u16 Mk16(u8 hi, u8 lo)
 
 static inline u16 Mk16_le(u16 *v)
 {
-	return le16_to_cpu(*v);
+	return *v;
 }
 
 
-- 
2.7.4


