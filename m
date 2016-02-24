X-GM-THRID: 6254956380956917760
X-Received: by 10.140.201.75 with SMTP id w72mr11275388qha.1.1456345520967;
        Wed, 24 Feb 2016 12:25:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.8.42 with SMTP id o10ls1297031iga.35.canary; Wed, 24 Feb
 2016 12:25:20 -0800 (PST)
X-Received: by 10.66.228.102 with SMTP id sh6mr27485052pac.12.1456345520678;
        Wed, 24 Feb 2016 12:25:20 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id ff2si710398pad.2.2016.02.24.12.25.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:25:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id e127so18868411pfe.3
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=R2rpEVhDvpti4anG6xbfYN9lRI7RXSnZW/k/DR6xJPA=;
        b=qQQ755zmtbKbINYPzFe04K++pixlZNoqUEKtQO9kzeLrbJEnoztqauKbqn4WtC2TXt
         1LIgF/lrPT2514w+MhW3qU6Y2R3S0RXZtCYUv861zR9ThKQeJNV2+5vmEFbK0rkOEwXX
         d3Q/OdOmDnTbVPD65PMpOs4v6YwLI7ZzrTJ1/bRnPLI7Qs1ky6ERZ3HrzAb1mbpgfGrO
         VtkQQRfQH5awJRjHWvdVAy+ZMTJZa94EmC4va+62M8nsA6tFj9tS53+/7hEqzf4qQ6Ba
         D5Xd4weRrR10gITYd5ft7nYLFF4RV0hUf1AFqzKPfBhbgGpliqIuhqUGAnVhL0an73gn
         jErA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=R2rpEVhDvpti4anG6xbfYN9lRI7RXSnZW/k/DR6xJPA=;
        b=aTTLHq2WZk8xc8tSvW2EjGvXwAefMlZxsHBCFcTwE/8oD/U7RBYGeuutNDJQ03E/fa
         2WgkN8bcMFegRh+qcgbWJg2rVUN9ytxwsuAxXtirKL46gS/pECdJTZ12lYxJZJ2l2cQE
         kwU94eksuMJs5An+QNqL7rl6zpVrnHepalIvdwYX7wny3d6Wi86PwYLJ4s9k1XkkJVWw
         o5ZVFhc5xjHKJEHPBCdGC+Bbf5IeFVK7gWJObTboDqi/G5ci9DfAYZZkjy9BhQjqYW6B
         WSWYWd41fNd2DZkLOy6k1KOb2cRJ7kHE9vvs6WMXnybJuD0v0rHgpJYlr/CxwTCGU7+s
         KKxg==
X-Gm-Message-State: AG10YOTA10EI35VS1YoKg4gkFzX1HpVFFvjDcRqATzql9d6JZgsAhX/2dICTFfesCLWGRQ==
X-Received: by 10.98.16.12 with SMTP id y12mr57553242pfi.6.1456345520545;
        Wed, 24 Feb 2016 12:25:20 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.176])
        by smtp.gmail.com with ESMTPSA id yx4sm6996394pac.5.2016.02.24.12.25.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:25:19 -0800 (PST)
Date: Wed, 24 Feb 2016 17:55:15 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ieee80211: Place constant on right side of the test.
Message-ID: <20160224122356.GA6375@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Place constant on right side of the test.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
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


