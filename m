X-GM-THRID: 6670872220839968768
X-Received: by 2002:a9d:76c5:: with SMTP id p5mr3126223otl.283.1553183472676;
        Thu, 21 Mar 2019 08:51:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b446:: with SMTP id d67ls160941oif.3.gmail; Thu, 21 Mar
 2019 08:51:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw/XhvCm38R0CPnUm26nk+jTBe/7QnoM3CVZ7ikpGTKT2TmmFXW96n2/z4Ai7Pw27WHfY7z
X-Received: by 2002:aca:3d7:: with SMTP id 206mr2678275oid.74.1553183471932;
        Thu, 21 Mar 2019 08:51:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553183471; cv=none;
        d=google.com; s=arc-20160816;
        b=W4SudWFgb/SfZ2LqrmRlc/n4vbhkHkz+V1bYAhZF+jSg9AdT93nAhIu5v2c0oObg9G
         Ke1nZlNww0yOWHqd6EuRIGwS9tHX2W7duWRdPesQRLsbCLyme/NRY/y0oy2+3wUcxsyD
         rctOes4982rIYy6Hic4mU6ue/mPyzcq5kK2s0erO7oTer5pC+UaxBQTMCFSIvYx46HK0
         SrmEk8zkF2NJO4IfpZCgf0Gh/UlQc2nVem3pHIz164iTYkxyJQ10jAMb0e2L5Rh9orO9
         X7zpeCX0hf774rr+uW9nYZFwjTxTO+MIslCNOq7hVDauHPi6E2oOT5NEJBZcI9w4jxD9
         z5uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=YGW6HbEkufrTQj713/RhWsc0OgjrxvkJHghtUmscUw8=;
        b=yys0K2gS2eT4pDyfI4kOnwtpNIxPjhFP+CgtgqVpxHp4fR0Aw26qGFQ1IvzCkl3Vzi
         SGnsnNOmSxFWw4fa4PBGCHRLbwc2GZtZU4LcWWJ8u88vDxDWwsi6b8Fbte7l3TBMee29
         lJ4NQ2pMrRLRdupE0okkihkPm2RJ1Hg5xFgIeWMu3KBuapo0wDmNJAXcZZQ58Q4qkmgp
         l8jkiuNvUuczXzeNLEhWxcO5GVEcmPDrtWoFjJ8mKNwlly1xoksIY+766meW/mciTPwD
         D6vSsZQnnG3/ilMsQDbbviUh1dr5Q3a0IRCIxdR4S0bafWl9DZWS6hAsAS58RR4r4sNP
         qglw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bif+XPJu;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id p8si288460oig.5.2019.03.21.08.51.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 08:51:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bif+XPJu;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id u9so4465464pgo.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 08:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YGW6HbEkufrTQj713/RhWsc0OgjrxvkJHghtUmscUw8=;
        b=Bif+XPJu2OZ0KvbUMd1DrY5TH1P8MzTqNFTNZ8t5wSmdnWLXSIwqOdiebC4oPKKX12
         OE9z20VlzHympW2x7FOJI2Ok6QcKoAU9MS06NzEGPhLsThp3oqshfZKVj5dADV3bRPWf
         QIKHnNvryVSuNGNlC7OtuuuECO3fpfGvZEaOQRcUSQkRojclSGv6lhphtr9xxhJcOl09
         sGX0azzzGrKfXd2ZX2ZLM7vXr55daWsEFRDu61209LNBcvC/U/rMzF151DbM7STEtrxA
         QKLC4Oiql7jC6E5rBZzUejJ3qJR5DUPmtxMGWLME9sq0NJPok+yY8VBSPBxWmmxLdAan
         J1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YGW6HbEkufrTQj713/RhWsc0OgjrxvkJHghtUmscUw8=;
        b=ALtQSegyu9J1obOudSE71FsBML3usqsDLIHU48pbMYD/oIfKXsJ4671KHhkd5YPzaN
         DUhlGP630PlhSZztl8yzead4ZrxJ3sO9TTLKGwynjRNMmfg1Ix/Yqqu2Oskl0lYXCeK7
         XONphQyIwao1RSIjyuZSrb6uDWknFVpsDXgd3c/Xkyhd6PA431EMyHkPMTG+L/tOyuUq
         kkdtgZKJD22j6pQ9lbm8m/xHCZraK32IuhXqZ9Bxm3LZwNjLn96MyXp0dYxHKClSRrzN
         2lKsZBrNOoL60aX+idsgn6E0jOqHfZZr+ubADVtyWYQNpOHNzy+ZjL95HhQw3g8NnEwP
         IxFg==
X-Gm-Message-State: APjAAAUi2XJEfqr4fVrQ5c+ph3r7OpUN4UL0IZbXlrtnw8Cx4GRkL7ot
	w6MxjcafB35jNuehgjpwwQkNy0hH
X-Received: by 2002:a17:902:87:: with SMTP id a7mr4189328pla.295.1553183471345;
        Thu, 21 Mar 2019 08:51:11 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.235.30])
        by smtp.gmail.com with ESMTPSA id e8sm6712880pfn.103.2019.03.21.08.51.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 08:51:10 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 2/3] [Outreachy kernel] staging: rtl8712: rtl8712_led.c: alignment should match open parenthesis
Date: Thu, 21 Mar 2019 21:20:54 +0530
Message-Id: <1553183454-8978-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Align code to the open parenthesis to fix the alignment issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_led.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index a0c3cf8..344971d 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -883,7 +883,7 @@ static void SwLedControlMode1(struct _adapter *padapter,
 	case LED_CTL_NO_LINK:
 		if (!pLed->bLedNoLinkBlinkInProgress) {
 			if (pLed->CurrLedState == LED_SCAN_BLINK ||
-			  IS_LED_WPS_BLINKING(pLed))
+			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedLinkBlinkInProgress) {
 				del_timer(&pLed->BlinkTimer);
@@ -1124,7 +1124,7 @@ static void SwLedControlMode2(struct _adapter *padapter,
 		if (!pLed->bLedBlinkInProgress &&
 		    check_fwstate(pmlmepriv, _FW_LINKED)) {
 			if (pLed->CurrLedState == LED_SCAN_BLINK ||
-			   IS_LED_WPS_BLINKING(pLed))
+			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			pLed->bLedBlinkInProgress = true;
 			pLed->CurrLedState = LED_TXRX_BLINK;
-- 
2.7.4


