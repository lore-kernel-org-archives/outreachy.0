X-GM-THRID: 6339198950396919808
X-Received: by 10.129.157.199 with SMTP id u190mr429504ywg.115.1475959771834;
        Sat, 08 Oct 2016 13:49:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.166 with SMTP id y35ls3293780ota.26.gmail; Sat, 08 Oct
 2016 13:49:31 -0700 (PDT)
X-Received: by 10.31.33.79 with SMTP id h76mr2792077vkh.27.1475959771502;
        Sat, 08 Oct 2016 13:49:31 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si6919974par.0.2016.10.08.13.49.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 13:49:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 190so4827629pfv.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 13:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Es0gbJgxxhlNWpJB2+Y1vpTF5mHkhS638KHtPcrTJA0=;
        b=R24+F+WO872FwDHa+RNg18TWqItBrg2y6X1T3K3/7tg/o5ncVt7dF0BKn01+k7bgtR
         n1opDWd8BsPR6ZL83LW+6wbL3DqM6S4OjG2QegxeUUdgNhTv1/1trOXJJWoYufDkgn1r
         Gtx9A+ulaxcuBhd5Da68QaUlLocMpnwodQ49SHSFU4aidB+csJOD6pUUT7FNSdoVkKnV
         8p8YlW49vNlVDYpgz6ffMLULPZ0ye8kUlf/qVBjNdw3asr7e/pISPYHQ7piS12X8xEdy
         kJj/2pCOgbK5g+xv3XIkILmCfqAqGZLHkQgzbmZzBRfoT+icIj8ETt+DrWo1xHk56/EK
         1mMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Es0gbJgxxhlNWpJB2+Y1vpTF5mHkhS638KHtPcrTJA0=;
        b=FWa4rg+qixrCfLJqpX1dAOZLg2Z+SgA3xOfO9+L0BIPhVO/KVjjYtyl0SBQpMyVkhu
         ancvSGYiHtzCHiJcgbiBPkh3JTQIk9pKvFX7mpQaTKf27Uj6YAslULgoMvIJB8+PYaH7
         u0zloB83hJXZof4gLf7vBCDkul67aJpB8CDa39Bombbd3HRL+9ieFmEQwJn7NWrOS8Td
         GcJtB3Ag0FDjOuZKJk0o8M/6hVrXNiBL9fWfTlWeVMU1ffjyo19hSR/Ksi7kf7o4iiIb
         bXFYt6d18F+4oabhMV+Ke48NcRyEw5j7U6a1jUPVnFHf+g3nDO4a/yqZkQtkdv0I2Cq9
         3+xw==
X-Gm-Message-State: AA6/9RncZlwkE9GKqjESUm06904SZzo1h3fyK5kSgBPCwp4aIt2U7eBYAa7sLD6XZMfRPQ==
X-Received: by 10.98.100.2 with SMTP id y2mr40129758pfb.169.1475959771280;
        Sat, 08 Oct 2016 13:49:31 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id z66sm23298028pfd.11.2016.10.08.13.49.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 13:49:30 -0700 (PDT)
Date: Sat, 8 Oct 2016 17:49:28 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: rtl8188eu: core: fixes tabstop alignment
Message-ID: <20161008204928.GA8987@spock>
References: <cover.1475959255.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475959255.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Fixes a tabstop alignment checkpatch issue by removing extra blank
spaces.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_led.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index 147eded..e3924f5f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -339,7 +339,7 @@ static void SwLedControlMode1(struct adapter *padapter,
 				pLed->BlinkingLedState = RTW_LED_ON;
 			mod_timer(&pLed->BlinkTimer, jiffies +
 				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
-		 }
+		}
 		break;
 	case LED_CTL_TX:
 	case LED_CTL_RX:
@@ -368,7 +368,7 @@ static void SwLedControlMode1(struct adapter *padapter,
 		break;
 	case LED_CTL_START_WPS: /* wait until xinpin finish */
 	case LED_CTL_START_WPS_BOTTON:
-		 if (!pLed->bLedWPSBlinkInProgress) {
+		if (!pLed->bLedWPSBlinkInProgress) {
 			if (pLed->bLedNoLinkBlinkInProgress) {
 				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
@@ -393,7 +393,7 @@ static void SwLedControlMode1(struct adapter *padapter,
 				pLed->BlinkingLedState = RTW_LED_ON;
 			mod_timer(&pLed->BlinkTimer, jiffies +
 				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
-		 }
+		}
 		break;
 	case LED_CTL_STOP_WPS:
 		if (pLed->bLedNoLinkBlinkInProgress) {
-- 
2.10.0


