X-GM-THRID: 6339198760694841344
X-Received: by 10.107.47.4 with SMTP id j4mr7062874ioo.21.1475959727496;
        Sat, 08 Oct 2016 13:48:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls7468329ota.25.gmail; Sat, 08 Oct
 2016 13:48:47 -0700 (PDT)
X-Received: by 10.157.6.12 with SMTP id 12mr6240168otn.112.1475959727177;
        Sat, 08 Oct 2016 13:48:47 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si6784324pab.2.2016.10.08.13.48.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 13:48:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id t25so4812685pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 13:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oeZh/h49mXbjipPBvDA0l0h/2AR+6HDZQOaTea0A5bM=;
        b=M3ee3n7kPMNEIPA9X6hGRX3EyQGtPaP1+NBvcECV0Nd5Sx+VuySNDfHNSSw4/3VPNK
         MVbktfaR+FsuNiKrz1EMMQ/8pdjZRyRJQ8Tf8SEzQoPdYTfMluR/hJT09q7Vt2U8vTO0
         xb4vrHuz4z1Mu9NgLHGOyw1NRc/xX3hvmmT17ywTWgdMTTN0Q04vnnOVDcLqwThlzurM
         9XR8EW3lSBLqWQ1y4AfBFoT45TlfHgjfyGoJu7+04z+LW5jxxeojSgio2nsON/8ShGTb
         gVZlYnOzeVJTx+GHkYiIUcPdhZrFHysuLR5AAzoIOwqMY85oYrfQM9CPegm9x520OkLv
         JTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oeZh/h49mXbjipPBvDA0l0h/2AR+6HDZQOaTea0A5bM=;
        b=k35LsJenaFU7Ezprsu5CVmcCla3o8xzVyapa4GhD8iIn3Zl3qiHhb5w/Br42iwOYYl
         8d1/lv4CKwUN3w+t/+na4ghSi0/xQ0qFNISxOMBkw+KybCGU4eiEl54LtvdnV9ZF+EJF
         V4J4B3NKBzMAwziPqfO2JD3ebvQf6cUtxqNg1FQjX5Dx0BRdofXzvmPXcUEPh5y0mqDh
         HBnWdV7pZmUkXTBIiFeBWV/CqWzN0xeI5CI6IcH9ZrcJ13QABPz1/QAv5KkoKfoOYoxR
         8DogkjaxocxbAFfPLREJW58O1AbWPNVTxEE4KAWou7uCwR8bpVOoxzfb63Cgo1o52WfS
         9/LQ==
X-Gm-Message-State: AA6/9RmGmoMHYtLfG3Q0LE9W2WSYkSNT2B2A+XRg3Rb+M4QUdB+x2LyWgcaYyfhtbanVog==
X-Received: by 10.98.35.197 with SMTP id q66mr43488302pfj.74.1475959726936;
        Sat, 08 Oct 2016 13:48:46 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id ps2sm40349728pab.31.2016.10.08.13.48.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 13:48:46 -0700 (PDT)
Date: Sat, 8 Oct 2016 17:48:44 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: rtl8188eu: core: formats long lines and comment
 blocks
Message-ID: <20161008204844.GA8624@spock>
References: <cover.1475959255.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475959255.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes lines over 80 characters that were causing checkpatch
issues and rewrites some comment blocks to match coding style.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_led.c | 58 ++++++++++++++++++++------------
 1 file changed, 37 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index 849f5f3..f51a196 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -17,11 +17,11 @@
 #include <drv_types.h>
 #include "rtw_led.h"
 
-/*  */
-/*	Description: */
-/*		Callback function of LED BlinkTimer, */
-/*		it just schedules to corresponding BlinkWorkItem/led_blink_hdl */
-/*  */
+/*	Description:
+ *	Callback function of LED BlinkTimer,
+ *	it just schedules to corresponding
+ *      BlinkWorkItem/led_blink_hdl
+ */
 void BlinkTimerCallback(unsigned long data)
 {
 	struct LED_871x *pLed = (struct LED_871x *)data;
@@ -39,7 +39,9 @@ void BlinkTimerCallback(unsigned long data)
 /*  */
 void BlinkWorkItemCallback(struct work_struct *work)
 {
-	struct LED_871x *pLed = container_of(work, struct LED_871x, BlinkWorkItem);
+	struct LED_871x *pLed = container_of(work,
+					     struct LED_871x,
+					     BlinkWorkItem);
 	BlinkHandler(pLed);
 }
 
@@ -52,11 +54,18 @@ void ResetLedStatus(struct LED_871x *pLed)
 	pLed->CurrLedState = RTW_LED_OFF; /*  Current LED state. */
 	pLed->bLedOn = false; /*  true if LED is ON, false if LED is OFF. */
 
-	pLed->bLedBlinkInProgress = false; /*  true if it is blinking, false o.w.. */
+	pLed->bLedBlinkInProgress = false; /*  true if it is blinking,
+					    *  false o.w..
+					    */
 	pLed->bLedWPSBlinkInProgress = false;
 
-	pLed->BlinkTimes = 0; /*  Number of times to toggle led state for blinking. */
-	pLed->BlinkingLedState = LED_UNKNOWN; /*  Next state for blinking, either RTW_LED_ON or RTW_LED_OFF are. */
+	pLed->BlinkTimes = 0; /*  Number of times to toggle led state
+			       *  for blinking.
+			       */
+	pLed->BlinkingLedState = LED_UNKNOWN; /*  Next state for blinking,
+					       *  either RTW_LED_ON or
+					       *  RTW_LED_OFF are.
+					       */
 
 	pLed->bLedNoLinkBlinkInProgress = false;
 	pLed->bLedLinkBlinkInProgress = false;
@@ -90,11 +99,11 @@ void DeInitLed871x(struct LED_871x *pLed)
 	ResetLedStatus(pLed);
 }
 
-/*  */
-/*	Description: */
-/*		Implementation of LED blinking behavior. */
-/*		It toggle off LED and schedule corresponding timer if necessary. */
-/*  */
+/*	Description:
+ *	Implementation of LED blinking behavior.
+ *	It toggle off LED and schedule corresponding
+ *	timer if necessary.
+ */
 
 static void SwLedBlink1(struct LED_871x *pLed)
 {
@@ -105,10 +114,12 @@ static void SwLedBlink1(struct LED_871x *pLed)
 	/*  Change LED according to BlinkingLedState specified. */
 	if (pLed->BlinkingLedState == RTW_LED_ON) {
 		SwLedOn(padapter, pLed);
-		RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("Blinktimes (%d): turn on\n", pLed->BlinkTimes));
+		RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
+			 ("Blinktimes (%d): turn on\n", pLed->BlinkTimes));
 	} else {
 		SwLedOff(padapter, pLed);
-		RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("Blinktimes (%d): turn off\n", pLed->BlinkTimes));
+		RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
+			 ("Blinktimes (%d): turn off\n", pLed->BlinkTimes));
 	}
 
 	if (padapter->pwrctrlpriv.rf_pwrstate != rf_on) {
@@ -245,7 +256,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 }
 
  /* ALPHA, added by chiyoko, 20090106 */
-static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAction)
+static void SwLedControlMode1(struct adapter *padapter,
+			      enum LED_CTL_MODE LedAction)
 {
 	struct led_priv *ledpriv = &padapter->ledpriv;
 	struct LED_871x *pLed = &ledpriv->SwLed0;
@@ -256,7 +268,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 	case LED_CTL_START_TO_LINK:
 	case LED_CTL_NO_LINK:
 		if (!pLed->bLedNoLinkBlinkInProgress) {
-			if (pLed->CurrLedState == LED_BLINK_SCAN || IS_LED_WPS_BLINKING(pLed))
+			if (pLed->CurrLedState == LED_BLINK_SCAN ||
+			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedLinkBlinkInProgress) {
 				del_timer_sync(&pLed->BlinkTimer);
@@ -279,7 +292,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 		break;
 	case LED_CTL_LINK:
 		if (!pLed->bLedLinkBlinkInProgress) {
-			if (pLed->CurrLedState == LED_BLINK_SCAN || IS_LED_WPS_BLINKING(pLed))
+			if (pLed->CurrLedState == LED_BLINK_SCAN ||
+			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress) {
 				del_timer_sync(&pLed->BlinkTimer);
@@ -331,7 +345,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 	case LED_CTL_TX:
 	case LED_CTL_RX:
 		if (!pLed->bLedBlinkInProgress) {
-			if (pLed->CurrLedState == LED_BLINK_SCAN || IS_LED_WPS_BLINKING(pLed))
+			if (pLed->CurrLedState == LED_BLINK_SCAN ||
+			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress) {
 				del_timer_sync(&pLed->BlinkTimer);
@@ -456,7 +471,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 		break;
 	}
 
-	RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("Led %d\n", pLed->CurrLedState));
+	RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
+		 ("Led %d\n", pLed->CurrLedState));
 }
 
 /*  */
-- 
2.10.0


