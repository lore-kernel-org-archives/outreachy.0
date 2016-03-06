X-GM-THRID: 6259013595271528448
X-Received: by 10.182.47.132 with SMTP id d4mr14145715obn.40.1457290164121;
        Sun, 06 Mar 2016 10:49:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.47 with SMTP id 44ls1340638qgk.90.gmail; Sun, 06 Mar
 2016 10:49:23 -0800 (PST)
X-Received: by 10.13.192.134 with SMTP id b128mr14137842ywd.43.1457290163389;
        Sun, 06 Mar 2016 10:49:23 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 12si2451880pfb.1.2016.03.06.10.49.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 10:49:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id fl4so6362917pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 10:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=15TDz1S/Aihgc1d8+L0BYDmxFAN18RSJKVum3e7gcXA=;
        b=v2pEkLoTNR2Jx4fjUJp/KYYmjJJ71KKZDqAoPKVgDOwuvsBXB1IatPoOnE14lIO7iE
         En7Gr3pBRw/kh7La1t5/ufbYuaF6tPvF9xCuS9+b/UCCmLKI7+4i5HdUOHdcrV8UdllR
         aHA5Yb3ZwDlyuR3tg2E125aU8U24+IzHEsfqL02USHaBhzDtP7X/gButp9kQfx5y/i0h
         X5NVsh5ieDyKbEmfUGXSSLBMBaqQskgm+IYBI33quA3EIRMlmGOQ4Xp3zjRZW3bzXNla
         2hUi6rSQZJror1oTJnK2XxAovpzCjWDF0HeoaINlNBbnoiqaelGBmxz1aD3LUEbvqcwX
         tnVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=15TDz1S/Aihgc1d8+L0BYDmxFAN18RSJKVum3e7gcXA=;
        b=OR7L0WG+BRbrbSnhGGo5BRNee6fTlJA5B5OFYriwfiPkFEr0VHsMkcAIQWKXJsSkBX
         Inp26eHgAmuEHfWdZpWfIyF6KongZhBPbROYjqZ/LsbhyNYUGLSZBBNeSlmHIExQW5uO
         ijlbaBv036HcNUN3no9bYr5pjDPJUAPaf2WwIenbTruOfTXuVrc5o2Pvz9IDzVB9Lhwi
         uV2ZXuZv6ulVMmRkGDyB//GZtfDSeWvlIhg2R9WfYMG5shqL7OtTrEIk8rH/Ho6Sp+n8
         qc6NbgqW+80n1gyw0EA6YU2O9niYnsq8Pa917HCrrVsCRuL7d6Sd3u0u3gEnlyle2ibh
         nYXQ==
X-Gm-Message-State: AD7BkJKXz7+tu2PDbeYPzQxL546bKR5rg3/E6zaXquV7qMwKLaZku7tt9misH7z3UE3g6g==
X-Received: by 10.66.144.134 with SMTP id sm6mr28100760pab.158.1457290163186;
        Sun, 06 Mar 2016 10:49:23 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id ta2sm19094808pab.42.2016.03.06.10.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 10:49:22 -0800 (PST)
Date: Sun, 6 Mar 2016 16:19:28 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: ieee80211: Place constant on right side of the
 test.
Message-ID: <20160306104928.GA5237@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Place constant on right side of the test.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---

Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/rtl8192u/ieee80211/dot11d.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c b/drivers/staging/rtl8192u/ieee80211/dot11d.c
index 82d6038..00b6052 100644
--- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
+++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
@@ -103,7 +103,7 @@ u8 DOT11D_GetMaxTxPwrInDbm(struct ieee80211_device *dev, u8 Channel)
 	PRT_DOT11D_INFO pDot11dInfo = GET_DOT11D_INFO(dev);
 	u8 MaxTxPwrInDbm = 255;
 
-	if (MAX_CHANNEL_NUMBER < Channel) {
+	if (Channel > MAX_CHANNEL_NUMBER) {
 		netdev_err(dev->dev, "DOT11D_GetMaxTxPwrInDbm(): Invalid Channel\n");
 		return MaxTxPwrInDbm;
 	}
@@ -139,7 +139,7 @@ int IsLegalChannel(struct ieee80211_device *dev, u8 channel)
 {
 	PRT_DOT11D_INFO pDot11dInfo = GET_DOT11D_INFO(dev);
 
-	if (MAX_CHANNEL_NUMBER < channel) {
+	if (channel > MAX_CHANNEL_NUMBER) {
 		netdev_err(dev->dev, "IsLegalChannel(): Invalid Channel\n");
 		return 0;
 	}
@@ -162,7 +162,7 @@ int ToLegalChannel(struct ieee80211_device *dev, u8 channel)
 		}
 	}
 
-	if (MAX_CHANNEL_NUMBER < channel) {
+	if (channel > MAX_CHANNEL_NUMBER) {
 		netdev_err(dev->dev, "IsLegalChannel(): Invalid Channel\n");
 		return default_chn;
 	}
-- 
1.8.3.4


