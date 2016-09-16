X-GM-THRID: 6329897292818022400
X-Received: by 10.107.183.215 with SMTP id h206mr6560514iof.6.1474059929402;
        Fri, 16 Sep 2016 14:05:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.40.85 with SMTP id o82ls1870188ioo.50.gmail; Fri, 16 Sep
 2016 14:05:27 -0700 (PDT)
X-Received: by 10.66.42.161 with SMTP id p1mr11432358pal.20.1474059927143;
        Fri, 16 Sep 2016 14:05:27 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 142si4753117pfx.2.2016.09.16.14.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 14:05:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so881404pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 14:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=G9J5cO2QyddoiMtpmojOpJ35lOe8ZoGTUqXXl8TxskA=;
        b=pliBrnQTsdqafip5Ohd2rY1aeXA3V0u52+PjG7vhA5QIQbOUWYJXenqeVSy+HfRZsw
         x9NLPLZa/N7AXNwiXRRF1gb4HdNf0FP3kPECQce5nEjF/JqNIvyNg5Al1CT1JoLbNzyo
         xjsAd6XA/ExIyEVEkIMa0gTG2pFknU/PWnf+La2/PkvAbTz7WXH400ZEFIUyriFIIQpF
         Rv7HZgIj5lB/yUGgJvpoPRD31/UTEypr3WriLDz2h2hASUQWGJco0hg0nrjwVYY8CG29
         7rTZ04yfxwtvYdHYXJFYlZod3XtnuKuBKWjTpRQR10bmSVG/bsZpVj97hQgEaojf+Ugh
         LZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=G9J5cO2QyddoiMtpmojOpJ35lOe8ZoGTUqXXl8TxskA=;
        b=VTRBm3wOW2+rNKJdYXpuTYnpn1bi/x1OjwumYsnP0GDfmziilzbhUDnIroIrctmrJG
         v5J9ILDz70kbnHxuDbh3W+ma9fGeB9uUpFgPbhC0ApZdX5ZOfeJHXIHl5flvYjAuk5Pt
         Xy3s7h3yn71dK0PoQxFE76qx+MVRdqPVQusNcDLKXhAgSgticFREJYmuEBwNnUZoesn5
         UCG1u3G59jWom+q59gQRdCT4/tVkIHSfUik4FHY4JjIE6QtzRLh5/lfmuzBE798a9W65
         XXM1M6AdsUa5F/07aZP+XPfdxOQjkf5ovjL09qqGVqzL6KikS1/d10cYSPLFaqo72uBB
         0qFg==
X-Gm-Message-State: AE9vXwM27pNKn4YEDlxdHMw2/YPSGTc6EVCQsef/jkWcCq2awZKh3JYp1xLuux9q734v0w==
X-Received: by 10.67.23.201 with SMTP id ic9mr26124248pad.143.1474059926749;
        Fri, 16 Sep 2016 14:05:26 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id 70sm54248068pfw.92.2016.09.16.14.05.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 14:05:26 -0700 (PDT)
Date: Sat, 17 Sep 2016 02:35:21 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Luis de Bethencourt <luisbg@osg.samsung.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Subject: [PATCH v2] staging: rtl8712: Rename misspelt macro
Message-ID: <20160916210516.GA7662@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Correct the word 'success' being misspelt in the macro:
- LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA => LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA
  
Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
Changes in v2:
 -patch description
 -sent using plain text mail agent

 drivers/staging/rtl8712/rtl8712_led.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index 9055827..20c4995 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -43,7 +43,7 @@
 #define LED_BLINK_LINK_INTERVAL_ALPHA		500
 #define LED_BLINK_SCAN_INTERVAL_ALPHA		180
 #define LED_BLINK_FASTER_INTERVAL_ALPHA		50
-#define LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA	5000
+#define LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA	5000
 
 /*===========================================================================
  * LED object.
@@ -407,7 +407,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 		if (pLed->BlinkingLedState == LED_ON) {
 			pLed->BlinkingLedState = LED_OFF;
 			mod_timer(&pLed->BlinkTimer, jiffies +
-				  msecs_to_jiffies(LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA));
+				  msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
 			bStopBlinking = false;
 		} else {
 			bStopBlinking = true;
@@ -571,7 +571,7 @@ static void SwLedBlink3(struct LED_871x *pLed)
 		if (pLed->BlinkingLedState == LED_ON) {
 			pLed->BlinkingLedState = LED_OFF;
 			mod_timer(&pLed->BlinkTimer, jiffies +
-				  msecs_to_jiffies(LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA));
+				  msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
 			bStopBlinking = false;
 		} else {
 			bStopBlinking = true;
@@ -1048,7 +1048,7 @@ static void SwLedControlMode1(struct _adapter *padapter,
 		if (pLed->bLedOn) {
 			pLed->BlinkingLedState = LED_OFF;
 			mod_timer(&pLed->BlinkTimer, jiffies +
-				  msecs_to_jiffies(LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA));
+				  msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
 		} else {
 			pLed->BlinkingLedState = LED_ON;
 			mod_timer(&pLed->BlinkTimer,
@@ -1328,7 +1328,7 @@ static void SwLedControlMode3(struct _adapter *padapter,
 		if (pLed->bLedOn) {
 			pLed->BlinkingLedState = LED_OFF;
 			mod_timer(&pLed->BlinkTimer, jiffies +
-				  msecs_to_jiffies(LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA));
+				  msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
 		} else {
 			pLed->BlinkingLedState = LED_ON;
 			mod_timer(&pLed->BlinkTimer,
-- 
2.7.4


