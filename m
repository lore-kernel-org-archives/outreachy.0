X-GM-THRID: 6339198661518426112
X-Received: by 10.129.27.2 with SMTP id b2mr7011043ywb.36.1475959704875;
        Sat, 08 Oct 2016 13:48:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls7468209ota.25.gmail; Sat, 08 Oct
 2016 13:48:24 -0700 (PDT)
X-Received: by 10.157.13.86 with SMTP id 80mr5596060oti.18.1475959704537;
        Sat, 08 Oct 2016 13:48:24 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si6784324pab.2.2016.10.08.13.48.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 13:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id t25so4812685pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 13:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RW/stw6GFe9KOnLLhQTdmaRdsa5H3uZYYphxooPKFtQ=;
        b=aqMEkAfhIYdRrZ0jGpZmvL2ckNlHj+WdpVey/F5rzPPhQLhqMF678O09xMw6aiAfDG
         yCxNu/y3iSYXGw0q5Lt581iCvfIZcnfP30Qbj0CQCjh8o2KAY13eVaXX6psZ04KmvxG7
         i+e4nXiqbIZS8xK16Hs3K5qIQ5XqqnE0E4X0vVs9z8C2yG51VlXzUJBL42l4al1f0EZR
         tHAtAdXmzDje6lbX2CiFDCsH7GPrlyiXZSzpZ6x5fam7CXoSq8sfkfcyZjWLdjOSm3DR
         6lK+qwkdL2DfoBtYKtN4uwKj/K+PQywc73CY6Xvk4nJP9MrmJuqtWjgTQNtAv1ix/GZY
         HEyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RW/stw6GFe9KOnLLhQTdmaRdsa5H3uZYYphxooPKFtQ=;
        b=WtvWNPZuVDLdh6NCU+Km1J5P3ABhpp6TB0rBSwQCOGWNUAbkH9LcivVqPA7A64i9Oc
         pTCc6NMHUy/lyBui2I4ri4IaHMJX/rIc/YDgnf0GQ82t/07SkCq1OHQJlDSDGNw55oqP
         vyqvRKxIAsZSg396xYIFdi8omJRoqvOfrXGBWtODekZGbtjvXtRH3Hn4n+k8hK/OyNYJ
         ZGtK+xRZdoG3Vbt9Xc8OK6fWsn+ath0ygE0pVt4Ftych3flStylP5NDB1JUqwlF/2FA8
         yKZL5uPzVwbZIdgSx2Wm4BVvLpCL8kxC4k9zmlnze2aWJCLnTMko4qXtcZb6kvn7/qu5
         XcbA==
X-Gm-Message-State: AA6/9RmlHywP8sNzwoxCXzOMjixdO6NNB5s1R3VCvTDUwA315YOmDisnX2rEysnCGWwl+w==
X-Received: by 10.98.32.93 with SMTP id g90mr40933161pfg.182.1475959704281;
        Sat, 08 Oct 2016 13:48:24 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id b88sm23270240pfe.66.2016.10.08.13.48.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 13:48:23 -0700 (PDT)
Date: Sat, 8 Oct 2016 17:48:21 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: rtl8188eu: core: removes unecessary parenthesis
Message-ID: <20161008204821.GA8427@spock>
References: <cover.1475959255.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475959255.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Removes unecessary parenthesis from rtw_led.c file that were causing
checkpatch warnings.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_led.c | 68 ++++++++++++++++----------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index 14461cf..849f5f3 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -30,7 +30,7 @@ void BlinkTimerCallback(unsigned long data)
 	if ((padapter->bSurpriseRemoved) || (padapter->bDriverStopped))
 		return;
 
-	schedule_work(&(pLed->BlinkWorkItem));
+	schedule_work(&pLed->BlinkWorkItem);
 }
 
 /*  */
@@ -72,10 +72,10 @@ void InitLed871x(struct adapter *padapter, struct LED_871x *pLed)
 
 	ResetLedStatus(pLed);
 
-	setup_timer(&(pLed->BlinkTimer), BlinkTimerCallback,
+	setup_timer(&pLed->BlinkTimer, BlinkTimerCallback,
 		    (unsigned long)pLed);
 
-	INIT_WORK(&(pLed->BlinkWorkItem), BlinkWorkItemCallback);
+	INIT_WORK(&pLed->BlinkWorkItem, BlinkWorkItemCallback);
 }
 
 
@@ -85,8 +85,8 @@ void InitLed871x(struct adapter *padapter, struct LED_871x *pLed)
 /*  */
 void DeInitLed871x(struct LED_871x *pLed)
 {
-	cancel_work_sync(&(pLed->BlinkWorkItem));
-	del_timer_sync(&(pLed->BlinkTimer));
+	cancel_work_sync(&pLed->BlinkWorkItem);
+	del_timer_sync(&pLed->BlinkTimer);
 	ResetLedStatus(pLed);
 }
 
@@ -99,7 +99,7 @@ void DeInitLed871x(struct LED_871x *pLed)
 static void SwLedBlink1(struct LED_871x *pLed)
 {
 	struct adapter *padapter = pLed->padapter;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	u8 bStopBlinking = false;
 
 	/*  Change LED according to BlinkingLedState specified. */
@@ -247,9 +247,9 @@ static void SwLedBlink1(struct LED_871x *pLed)
  /* ALPHA, added by chiyoko, 20090106 */
 static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAction)
 {
-	struct led_priv *ledpriv = &(padapter->ledpriv);
-	struct LED_871x *pLed = &(ledpriv->SwLed0);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct led_priv *ledpriv = &padapter->ledpriv;
+	struct LED_871x *pLed = &ledpriv->SwLed0;
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	switch (LedAction) {
 	case LED_CTL_POWER_ON:
@@ -259,11 +259,11 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 			if (pLed->CurrLedState == LED_BLINK_SCAN || IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedLinkBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 
@@ -282,11 +282,11 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 			if (pLed->CurrLedState == LED_BLINK_SCAN || IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedLinkBlinkInProgress = true;
@@ -306,15 +306,15 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 			if (IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedLinkBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				 pLed->bLedLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedScanBlinkInProgress = true;
@@ -334,11 +334,11 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 			if (pLed->CurrLedState == LED_BLINK_SCAN || IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedLinkBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedLinkBlinkInProgress = false;
 			}
 			pLed->bLedBlinkInProgress = true;
@@ -356,19 +356,19 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 	case LED_CTL_START_WPS_BOTTON:
 		 if (!pLed->bLedWPSBlinkInProgress) {
 			if (pLed->bLedNoLinkBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedLinkBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				 pLed->bLedLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			if (pLed->bLedScanBlinkInProgress) {
-				del_timer_sync(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedScanBlinkInProgress = false;
 			}
 			pLed->bLedWPSBlinkInProgress = true;
@@ -383,23 +383,23 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 		break;
 	case LED_CTL_STOP_WPS:
 		if (pLed->bLedNoLinkBlinkInProgress) {
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedNoLinkBlinkInProgress = false;
 		}
 		if (pLed->bLedLinkBlinkInProgress) {
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			 pLed->bLedLinkBlinkInProgress = false;
 		}
 		if (pLed->bLedBlinkInProgress) {
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		if (pLed->bLedScanBlinkInProgress) {
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedScanBlinkInProgress = false;
 		}
 		if (pLed->bLedWPSBlinkInProgress)
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 		else
 			pLed->bLedWPSBlinkInProgress = true;
 		pLed->CurrLedState = LED_BLINK_WPS_STOP;
@@ -415,7 +415,7 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 		break;
 	case LED_CTL_STOP_WPS_FAIL:
 		if (pLed->bLedWPSBlinkInProgress) {
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		pLed->bLedNoLinkBlinkInProgress = true;
@@ -431,23 +431,23 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 		pLed->CurrLedState = RTW_LED_OFF;
 		pLed->BlinkingLedState = RTW_LED_OFF;
 		if (pLed->bLedNoLinkBlinkInProgress) {
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedNoLinkBlinkInProgress = false;
 		}
 		if (pLed->bLedLinkBlinkInProgress) {
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedLinkBlinkInProgress = false;
 		}
 		if (pLed->bLedBlinkInProgress) {
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		if (pLed->bLedWPSBlinkInProgress) {
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		if (pLed->bLedScanBlinkInProgress) {
-			del_timer_sync(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedScanBlinkInProgress = false;
 		}
 		SwLedOff(padapter, pLed);
@@ -475,7 +475,7 @@ void BlinkHandler(struct LED_871x *pLed)
 
 void LedControl8188eu(struct adapter *padapter, enum LED_CTL_MODE LedAction)
 {
-	struct led_priv *ledpriv = &(padapter->ledpriv);
+	struct led_priv *ledpriv = &padapter->ledpriv;
 
 	if ((padapter->bSurpriseRemoved) || (padapter->bDriverStopped) ||
 	   (!padapter->hw_init_completed))
-- 
2.10.0


