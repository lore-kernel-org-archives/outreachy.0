X-GM-THRID: 6329491627472584704
X-Received: by 10.31.168.213 with SMTP id r204mr16497757vke.5.1473699609719;
        Mon, 12 Sep 2016 10:00:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.6 with SMTP id a6ls1357940ote.22.gmail; Mon, 12 Sep
 2016 10:00:09 -0700 (PDT)
X-Received: by 10.157.54.74 with SMTP id w68mr16692664otb.9.1473699609323;
        Mon, 12 Sep 2016 10:00:09 -0700 (PDT)
Return-Path: <shaily15297@yahoo.com>
Received: from nm40-vm1.bullet.mail.gq1.yahoo.com (nm40-vm1.bullet.mail.gq1.yahoo.com. [98.136.217.124])
        by gmr-mx.google.com with ESMTPS id h124si2500295pfe.0.2016.09.12.10.00.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 10:00:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shaily15297@yahoo.com designates 98.136.217.124 as permitted sender) client-ip=98.136.217.124;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com;
       spf=pass (google.com: domain of shaily15297@yahoo.com designates 98.136.217.124 as permitted sender) smtp.mailfrom=shaily15297@yahoo.com;
       dmarc=pass (p=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1473699609; bh=USdN+teWVIBxVMnZVA+EwP3o2uqWeU0XwVagZf3cXYg=; h=From:To:Cc:Subject:Date:From:Subject; b=uSjB4cRhsSa6UH/2kQYKLP4bEOo4erN8KK2DMcFvus5nCBFojeM0xLVUlH8RqQXhK7XetJLvUoiECjFqR1q9q9XwBQCQBtE1a4pcVu0kwaskOVSH+N+mrGAHLIkV7pmW0y/yKb/R8o70kZcAGFDQzicdRlnDb/eqQMuUWuuhZCBAw5ncKuXc07aXJhkgGAcmBKCA223qVpIGo2i9DLVN3WoicTeQ3HULonMCy7Uu2X0xJyb2sXKDHYR7QRUhDoj98Uq1Pq4MZeHGNerPuGu2UOjgTJxU+CtgIpUZZ9dnxmaZNBQHuSmejvkFaYl+dUnqx0bGdLr9jOiHoREG8DuJTQ==
Received: from [127.0.0.1] by nm40.bullet.mail.gq1.yahoo.com with NNFMP; 12 Sep 2016 17:00:09 -0000
Received: from [98.137.12.190] by nm40.bullet.mail.gq1.yahoo.com with NNFMP; 12 Sep 2016 16:57:16 -0000
Received: from [98.136.164.73] by tm11.bullet.mail.gq1.yahoo.com with NNFMP; 12 Sep 2016 16:57:15 -0000
Received: from [127.0.0.1] by smtp235.mail.gq1.yahoo.com with NNFMP; 12 Sep 2016 16:57:15 -0000
X-Yahoo-Newman-Id: 848814.69975.bm@smtp235.mail.gq1.yahoo.com
X-Yahoo-Newman-Property: ymail-4
X-YMail-OSG: g.Fm_jQVM1n3LsfZAX89izuvkmjo7erHlM4BB4Ix36WFl9H
 YSxWyD9goFr4nKMkyTvgtlZhKNYEZ.1wswPMlOLG1BBu7p7F1MqwjkiGsSEo
 IEnPM44HAHWyjWY3oY46i3z9BbDB1YUpBwMZErNYObE1X5HTwCINT4nRDbAH
 NeHK_n6zP3cZYX.R.uk1kkPR4h3_DDYVZE9Feaa_SFbC1c_KAUMtSJ1rPqqG
 Zeoh5Y0odNYi35hfSM_MrGF6IePckBzjAOO0Xd339tYclXTz2POv5AbtAv84
 8n5mYC_5UazeSIGPFh60yfVnowi0o_1f93_n..b9ZNBGYDnxGO7J1OV1E4z.
 IOrpUAhFi01tBO9xcNUNX_C7f9j8zHo6GRyg__8Pjq10khdHcDf5enbScpFZ
 QtJXf4GTn9wEnVGJz0jo65yJwjvawC6SCKfCwWd9To_B7vXcvMDt3JxIVFlM
 TvRD19xueVMVlLyB8lomLZtnby5l7yU6xcD69GXOBHPVvt6EeMNavK7Sz6ly
 dIZ4g0ghKO4866gxP09VJGhBbW7Ml6ff8y9fMWOpODemVPdp.qDlbYx53AvU
 6MJ37vARDlZ.me7vedoorgqm9dJbgcEl8P0E-
X-Yahoo-SMTP: XlbbucGswBDP_CADncIk2ZBRLyRPW8tbtgbDhWQ45oUGSNiads2htjKJJBAsMr1gxxaKZRk-
From: Shaily Sangwan <shaily15297@yahoo.com>
To: outreachy-kernel@googlegroups.com
Cc: Shaily Sangwan <shaily15297@yahoo.com>
Subject: [PATCH] staging: rtl8712: remove unnecessary spaces and tabs
Date: Mon, 12 Sep 2016 22:27:10 +0530
Message-Id: <1473699430-23987-1-git-send-email-shaily15297@yahoo.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the following checkpatch.pl warnings:
statements should start on a tabstop
suspect code indent for conditional statements (16, 32)

Signed-off-by: Shaily Sangwan <shaily15297@yahoo.com>
---
 drivers/staging/rtl8712/rtl8712_led.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index 76d0535..399b9d8 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -355,7 +355,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 			}
 			pLed->bLedScanBlinkInProgress = false;
 		} else {
-			 if (pLed->bLedOn)
+			if (pLed->bLedOn)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
@@ -390,7 +390,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 			pLed->BlinkTimes = 0;
 			pLed->bLedBlinkInProgress = false;
 		} else {
-			 if (pLed->bLedOn)
+			if (pLed->bLedOn)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
@@ -460,7 +460,7 @@ static void SwLedBlink2(struct LED_871x *pLed)
 			}
 			pLed->bLedScanBlinkInProgress = false;
 		} else {
-			 if (pLed->bLedOn)
+			if (pLed->bLedOn)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
@@ -667,7 +667,7 @@ static void SwLedBlink4(struct LED_871x *pLed)
 				  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 			pLed->bLedBlinkInProgress = false;
 		} else {
-			 if (pLed->bLedOn)
+			if (pLed->bLedOn)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
@@ -764,7 +764,7 @@ static void SwLedBlink5(struct LED_871x *pLed)
 					  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 			pLed->bLedBlinkInProgress = false;
 		} else {
-			 if (pLed->bLedOn)
+			if (pLed->bLedOn)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
@@ -946,7 +946,7 @@ static void SwLedControlMode1(struct _adapter *padapter,
 		if (psitesurveyctrl->traffic_busy &&
 		    check_fwstate(pmlmepriv, _FW_LINKED))
 			; /* dummy branch */
-		 else if (!pLed->bLedScanBlinkInProgress) {
+		else if (!pLed->bLedScanBlinkInProgress) {
 			if (IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress) {
@@ -970,7 +970,7 @@ static void SwLedControlMode1(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_ON;
 			mod_timer(&pLed->BlinkTimer, jiffies +
 				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
-		 }
+		}
 		break;
 	case LED_CTL_TX:
 	case LED_CTL_RX:
@@ -1000,7 +1000,7 @@ static void SwLedControlMode1(struct _adapter *padapter,
 
 	case LED_CTL_START_WPS: /*wait until xinpin finish */
 	case LED_CTL_START_WPS_BOTTON:
-		 if (!pLed->bLedWPSBlinkInProgress) {
+		if (!pLed->bLedWPSBlinkInProgress) {
 			if (pLed->bLedNoLinkBlinkInProgress) {
 				del_timer(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
@@ -1113,9 +1113,9 @@ static void SwLedControlMode2(struct _adapter *padapter,
 
 	switch (LedAction) {
 	case LED_CTL_SITE_SURVEY:
-		 if (pmlmepriv->sitesurveyctrl.traffic_busy)
+		if (pmlmepriv->sitesurveyctrl.traffic_busy)
 			; /* dummy branch */
-		 else if (!pLed->bLedScanBlinkInProgress) {
+		else if (!pLed->bLedScanBlinkInProgress) {
 			if (IS_LED_WPS_BLINKING(pLed))
 				return;
 
@@ -1132,7 +1132,7 @@ static void SwLedControlMode2(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_ON;
 			mod_timer(&pLed->BlinkTimer, jiffies +
 				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
-		 }
+		}
 		break;
 
 	case LED_CTL_TX:
@@ -1186,7 +1186,7 @@ static void SwLedControlMode2(struct _adapter *padapter,
 			pLed->BlinkingLedState = LED_ON;
 			mod_timer(&pLed->BlinkTimer,
 				  jiffies + msecs_to_jiffies(0));
-		 }
+		}
 		break;
 
 	case LED_CTL_STOP_WPS:
@@ -1734,7 +1734,7 @@ static void SwLedControlMode6(struct _adapter *padapter,
 	case LED_CTL_LINK:	/*solid blue*/
 	case LED_CTL_SITE_SURVEY:
 		if (IS_LED_WPS_BLINKING(pLed))
-				return;
+			return;
 		pLed->CurrLedState = LED_ON;
 		pLed->BlinkingLedState = LED_ON;
 		pLed->bLedBlinkInProgress = false;
-- 
2.7.4


