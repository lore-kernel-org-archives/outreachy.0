X-GM-THRID: 6865699209216
X-Received: by 10.182.114.168 with SMTP id jh8mr15755461obb.28.1426054864651;
        Tue, 10 Mar 2015 23:21:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.96.33 with SMTP id dp1ls201223obb.69.gmail; Tue, 10 Mar
 2015 23:21:04 -0700 (PDT)
X-Received: by 10.183.10.164 with SMTP id eb4mr34846493obd.48.1426054864425;
        Tue, 10 Mar 2015 23:21:04 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ni4si519399pdb.2.2015.03.10.23.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 23:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so8818626pad.0
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 23:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=K9qNF5dgPwGh1Eu7cvmhZpcBk9JzkFvnLlBWuVGYxBM=;
        b=ZWVDTtrHWNf1O2a72JyW6U0j3VqgBjIfWQkab8Ga9c4eKmqA2sEujvcTHhpDWeaaeb
         WJSU0ihQVhPIfyOEytgXuFRslileFhGMYRjocN2Nhajhtf3Qmy9i02GrCExSbn0Ul8d7
         ub9URlD9v3EC/RQY+XIIs1vqv7cXYo2iVpAI7Opx1rBhc0UPVaR8iCM9iRpVlT1ezDwi
         FZk+fTdHlCk1cLdXRd6loc2aDkBgK1Na8H874P5Zc3I5nXTP4XjO11GVbj5Ej+6G23xq
         cPmu1F05r+H4aDJ0EOGSYxM8hXgQk3AdnjtQjLCGYdwkOxrqc8igPLfZwoLaBT7/nzwn
         re4A==
X-Received: by 10.66.159.138 with SMTP id xc10mr74703022pab.141.1426054864276;
        Tue, 10 Mar 2015 23:21:04 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([49.14.55.123])
        by mx.google.com with ESMTPSA id j4sm3980760pdk.76.2015.03.10.23.20.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 23:21:03 -0700 (PDT)
Date: Wed, 11 Mar 2015 11:50:53 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 1/2] Staging: rtl8712: Eliminate use of
 _cancel_timer_ex
Message-ID: <c8361047d1a0edd37898a3f898aca3e34cd6eb07.1426054595.git.vthakkar1994@gmail.com>
References: <cover.1426054595.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426054595.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Use timer API function del_timer_sync instead of driver
specific function _cancel_timer_ex as besides deactivating
a timer, it ensures that the timer is stopped on all
CPUs before the driver exists. Also, definition of function
_cancel_timer_ex is removed as it is no longer needed after
this change.

This is done using Coccinelle and semantic patch used for
this is as follows:

@@ expression x; @@

- _cancel_timer_ex (&x);
+ del_timer_sync (&x);

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c        |  14 +--
 drivers/staging/rtl8712/osdep_service.h   |   5 -
 drivers/staging/rtl8712/rtl8712_led.c     | 146 +++++++++++++++---------------
 drivers/staging/rtl8712/rtl871x_mlme.c    |   2 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.c |   2 +-
 drivers/staging/rtl8712/rtl871x_sta_mgt.c |   2 +-
 6 files changed, 83 insertions(+), 88 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index ebfb29e..bf5df2a 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -263,13 +263,13 @@ static void start_drv_timers(struct _adapter *padapter)
 
 void r8712_stop_drv_timers(struct _adapter *padapter)
 {
-	_cancel_timer_ex(&padapter->mlmepriv.assoc_timer);
-	_cancel_timer_ex(&padapter->securitypriv.tkip_timer);
-	_cancel_timer_ex(&padapter->mlmepriv.scan_to_timer);
-	_cancel_timer_ex(&padapter->mlmepriv.dhcp_timer);
-	_cancel_timer_ex(&padapter->mlmepriv.wdg_timer);
-	_cancel_timer_ex(&padapter->mlmepriv.sitesurveyctrl.
-			 sitesurvey_ctrl_timer);
+	del_timer_sync(&padapter->mlmepriv.assoc_timer);
+	del_timer_sync(&padapter->securitypriv.tkip_timer);
+	del_timer_sync(&padapter->mlmepriv.scan_to_timer);
+	del_timer_sync(&padapter->mlmepriv.dhcp_timer);
+	del_timer_sync(&padapter->mlmepriv.wdg_timer);
+	del_timer_sync(&padapter->mlmepriv.sitesurveyctrl.
+		       sitesurvey_ctrl_timer);
 }
 
 static u8 init_default_value(struct _adapter *padapter)
diff --git a/drivers/staging/rtl8712/osdep_service.h b/drivers/staging/rtl8712/osdep_service.h
index c6dc362..33be778 100644
--- a/drivers/staging/rtl8712/osdep_service.h
+++ b/drivers/staging/rtl8712/osdep_service.h
@@ -92,11 +92,6 @@ static inline void sleep_schedulable(int ms)
 	schedule_timeout(delta);
 }
 
-static inline unsigned char _cancel_timer_ex(struct timer_list *ptimer)
-{
-	return del_timer(ptimer);
-}
-
 static inline void flush_signals_thread(void)
 {
 	if (signal_pending(current))
diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index 6085689..0d6bfc0 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -108,7 +108,7 @@ static void InitLed871x(struct _adapter *padapter, struct LED_871x *pLed,
  */
 static void DeInitLed871x(struct LED_871x *pLed)
 {
-	_cancel_timer_ex(&(pLed->BlinkTimer));
+	del_timer_sync(&pLed->BlinkTimer);
 	/* We should reset bLedBlinkInProgress if we cancel
 	 * the LedControlTimer, */
 	pLed->bLedBlinkInProgress = false;
@@ -898,11 +898,11 @@ static void SwLedControlMode1(struct _adapter *padapter,
 			  IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedNoLinkBlinkInProgress = true;
@@ -921,11 +921,11 @@ static void SwLedControlMode1(struct _adapter *padapter,
 			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedLinkBlinkInProgress = true;
@@ -946,15 +946,15 @@ static void SwLedControlMode1(struct _adapter *padapter,
 			if (IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				 pLed->bLedLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedScanBlinkInProgress = true;
@@ -975,11 +975,11 @@ static void SwLedControlMode1(struct _adapter *padapter,
 			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedLinkBlinkInProgress = false;
 			}
 			pLed->bLedBlinkInProgress = true;
@@ -998,19 +998,19 @@ static void SwLedControlMode1(struct _adapter *padapter,
 	case LED_CTL_START_WPS_BOTTON:
 		 if (pLed->bLedWPSBlinkInProgress == false) {
 			if (pLed->bLedNoLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				 pLed->bLedLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			if (pLed->bLedScanBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedScanBlinkInProgress = false;
 			}
 			pLed->bLedWPSBlinkInProgress = true;
@@ -1025,23 +1025,23 @@ static void SwLedControlMode1(struct _adapter *padapter,
 		break;
 	case LED_CTL_STOP_WPS:
 		if (pLed->bLedNoLinkBlinkInProgress == true) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedNoLinkBlinkInProgress = false;
 		}
 		if (pLed->bLedLinkBlinkInProgress == true) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			 pLed->bLedLinkBlinkInProgress = false;
 		}
 		if (pLed->bLedBlinkInProgress == true) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		if (pLed->bLedScanBlinkInProgress == true) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedScanBlinkInProgress = false;
 		}
 		if (pLed->bLedWPSBlinkInProgress)
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 		else
 			pLed->bLedWPSBlinkInProgress = true;
 		pLed->CurrLedState = LED_BLINK_WPS_STOP;
@@ -1057,7 +1057,7 @@ static void SwLedControlMode1(struct _adapter *padapter,
 		break;
 	case LED_CTL_STOP_WPS_FAIL:
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		pLed->bLedNoLinkBlinkInProgress = true;
@@ -1073,23 +1073,23 @@ static void SwLedControlMode1(struct _adapter *padapter,
 		pLed->CurrLedState = LED_OFF;
 		pLed->BlinkingLedState = LED_OFF;
 		if (pLed->bLedNoLinkBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedNoLinkBlinkInProgress = false;
 		}
 		if (pLed->bLedLinkBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedLinkBlinkInProgress = false;
 		}
 		if (pLed->bLedBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		if (pLed->bLedScanBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedScanBlinkInProgress = false;
 		}
 		mod_timer(&pLed->BlinkTimer,
@@ -1116,7 +1116,7 @@ static void SwLedControlMode2(struct _adapter *padapter,
 				return;
 
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedScanBlinkInProgress = true;
@@ -1154,11 +1154,11 @@ static void SwLedControlMode2(struct _adapter *padapter,
 		pLed->CurrLedState = LED_ON;
 		pLed->BlinkingLedState = LED_ON;
 		if (pLed->bLedBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		if (pLed->bLedScanBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedScanBlinkInProgress = false;
 		}
 
@@ -1170,11 +1170,11 @@ static void SwLedControlMode2(struct _adapter *padapter,
 	case LED_CTL_START_WPS_BOTTON:
 		if (pLed->bLedWPSBlinkInProgress == false) {
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			if (pLed->bLedScanBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedScanBlinkInProgress = false;
 			}
 			pLed->bLedWPSBlinkInProgress = true;
@@ -1214,15 +1214,15 @@ static void SwLedControlMode2(struct _adapter *padapter,
 		pLed->CurrLedState = LED_OFF;
 		pLed->BlinkingLedState = LED_OFF;
 		if (pLed->bLedBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		if (pLed->bLedScanBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedScanBlinkInProgress = false;
 		}
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		mod_timer(&pLed->BlinkTimer,
@@ -1248,7 +1248,7 @@ static void SwLedControlMode3(struct _adapter *padapter,
 			if (IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedScanBlinkInProgress = true;
@@ -1286,11 +1286,11 @@ static void SwLedControlMode3(struct _adapter *padapter,
 		pLed->CurrLedState = LED_ON;
 		pLed->BlinkingLedState = LED_ON;
 		if (pLed->bLedBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		if (pLed->bLedScanBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedScanBlinkInProgress = false;
 		}
 		mod_timer(&pLed->BlinkTimer,
@@ -1300,11 +1300,11 @@ static void SwLedControlMode3(struct _adapter *padapter,
 	case LED_CTL_START_WPS_BOTTON:
 		if (pLed->bLedWPSBlinkInProgress == false) {
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			if (pLed->bLedScanBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedScanBlinkInProgress = false;
 			}
 			pLed->bLedWPSBlinkInProgress = true;
@@ -1319,7 +1319,7 @@ static void SwLedControlMode3(struct _adapter *padapter,
 		break;
 	case LED_CTL_STOP_WPS:
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		} else
 			pLed->bLedWPSBlinkInProgress = true;
@@ -1336,7 +1336,7 @@ static void SwLedControlMode3(struct _adapter *padapter,
 		break;
 	case LED_CTL_STOP_WPS_FAIL:
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		pLed->CurrLedState = LED_OFF;
@@ -1357,15 +1357,15 @@ static void SwLedControlMode3(struct _adapter *padapter,
 		pLed->CurrLedState = LED_OFF;
 		pLed->BlinkingLedState = LED_OFF;
 		if (pLed->bLedBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		if (pLed->bLedScanBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedScanBlinkInProgress = false;
 		}
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		mod_timer(&pLed->BlinkTimer,
@@ -1388,7 +1388,7 @@ static void SwLedControlMode4(struct _adapter *padapter,
 	case LED_CTL_START_TO_LINK:
 		if (pLed1->bLedWPSBlinkInProgress) {
 			pLed1->bLedWPSBlinkInProgress = false;
-			_cancel_timer_ex(&(pLed1->BlinkTimer));
+			del_timer_sync(&pLed1->BlinkTimer);
 			pLed1->BlinkingLedState = LED_OFF;
 			pLed1->CurrLedState = LED_OFF;
 			if (pLed1->bLedOn)
@@ -1400,11 +1400,11 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			if (pLed->bLedNoLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			pLed->bLedStartToLinkBlinkInProgress = true;
@@ -1426,7 +1426,7 @@ static void SwLedControlMode4(struct _adapter *padapter,
 		if (LedAction == LED_CTL_LINK) {
 			if (pLed1->bLedWPSBlinkInProgress) {
 				pLed1->bLedWPSBlinkInProgress = false;
-				_cancel_timer_ex(&(pLed1->BlinkTimer));
+				del_timer_sync(&pLed1->BlinkTimer);
 				pLed1->BlinkingLedState = LED_OFF;
 				pLed1->CurrLedState = LED_OFF;
 				if (pLed1->bLedOn)
@@ -1439,7 +1439,7 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedNoLinkBlinkInProgress = true;
@@ -1460,11 +1460,11 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			if (IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedScanBlinkInProgress = true;
@@ -1485,7 +1485,7 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedNoLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			pLed->bLedBlinkInProgress = true;
@@ -1503,7 +1503,7 @@ static void SwLedControlMode4(struct _adapter *padapter,
 	case LED_CTL_START_WPS_BOTTON:
 		if (pLed1->bLedWPSBlinkInProgress) {
 			pLed1->bLedWPSBlinkInProgress = false;
-			_cancel_timer_ex(&(pLed1->BlinkTimer));
+			del_timer_sync(&pLed1->BlinkTimer);
 			pLed1->BlinkingLedState = LED_OFF;
 			pLed1->CurrLedState = LED_OFF;
 			if (pLed1->bLedOn)
@@ -1512,15 +1512,15 @@ static void SwLedControlMode4(struct _adapter *padapter,
 		}
 		if (pLed->bLedWPSBlinkInProgress == false) {
 			if (pLed->bLedNoLinkBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedNoLinkBlinkInProgress = false;
 			}
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			if (pLed->bLedScanBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedScanBlinkInProgress = false;
 			}
 			pLed->bLedWPSBlinkInProgress = true;
@@ -1538,7 +1538,7 @@ static void SwLedControlMode4(struct _adapter *padapter,
 		break;
 	case LED_CTL_STOP_WPS:	/*WPS connect success*/
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		pLed->bLedNoLinkBlinkInProgress = true;
@@ -1552,7 +1552,7 @@ static void SwLedControlMode4(struct _adapter *padapter,
 		break;
 	case LED_CTL_STOP_WPS_FAIL:	/*WPS authentication fail*/
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		pLed->bLedNoLinkBlinkInProgress = true;
@@ -1565,7 +1565,7 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		/*LED1 settings*/
 		if (pLed1->bLedWPSBlinkInProgress)
-			_cancel_timer_ex(&(pLed1->BlinkTimer));
+			del_timer_sync(&pLed1->BlinkTimer);
 		else
 			pLed1->bLedWPSBlinkInProgress = true;
 		pLed1->CurrLedState = LED_BLINK_WPS_STOP;
@@ -1578,7 +1578,7 @@ static void SwLedControlMode4(struct _adapter *padapter,
 		break;
 	case LED_CTL_STOP_WPS_FAIL_OVERLAP:	/*WPS session overlap*/
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		pLed->bLedNoLinkBlinkInProgress = true;
@@ -1591,7 +1591,7 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		/*LED1 settings*/
 		if (pLed1->bLedWPSBlinkInProgress)
-			_cancel_timer_ex(&(pLed1->BlinkTimer));
+			del_timer_sync(&pLed1->BlinkTimer);
 		else
 			pLed1->bLedWPSBlinkInProgress = true;
 		pLed1->CurrLedState = LED_BLINK_WPS_STOP_OVERLAP;
@@ -1607,31 +1607,31 @@ static void SwLedControlMode4(struct _adapter *padapter,
 		pLed->CurrLedState = LED_OFF;
 		pLed->BlinkingLedState = LED_OFF;
 		if (pLed->bLedNoLinkBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedNoLinkBlinkInProgress = false;
 		}
 		if (pLed->bLedLinkBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedLinkBlinkInProgress = false;
 		}
 		if (pLed->bLedBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		if (pLed->bLedScanBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedScanBlinkInProgress = false;
 		}
 		if (pLed->bLedStartToLinkBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedStartToLinkBlinkInProgress = false;
 		}
 		if (pLed1->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed1->BlinkTimer));
+			del_timer_sync(&pLed1->BlinkTimer);
 			pLed1->bLedWPSBlinkInProgress = false;
 		}
 		pLed1->BlinkingLedState = LED_UNKNOWN;
@@ -1671,7 +1671,7 @@ static void SwLedControlMode5(struct _adapter *padapter,
 			; /* dummy branch */
 		else if (pLed->bLedScanBlinkInProgress == false) {
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedScanBlinkInProgress = true;
@@ -1705,7 +1705,7 @@ static void SwLedControlMode5(struct _adapter *padapter,
 		pLed->CurrLedState = LED_OFF;
 		pLed->BlinkingLedState = LED_OFF;
 		if (pLed->bLedBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		SwLedOff(padapter, pLed);
@@ -1756,7 +1756,7 @@ static void SwLedControlMode6(struct _adapter *padapter,
 	case LED_CTL_START_WPS_BOTTON:
 		if (pLed->bLedWPSBlinkInProgress == false) {
 			if (pLed->bLedBlinkInProgress == true) {
-				_cancel_timer_ex(&(pLed->BlinkTimer));
+				del_timer_sync(&pLed->BlinkTimer);
 				pLed->bLedBlinkInProgress = false;
 			}
 			pLed->bLedWPSBlinkInProgress = true;
@@ -1772,7 +1772,7 @@ static void SwLedControlMode6(struct _adapter *padapter,
 	case LED_CTL_STOP_WPS_FAIL:
 	case LED_CTL_STOP_WPS:
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		pLed->CurrLedState = LED_ON;
@@ -1784,11 +1784,11 @@ static void SwLedControlMode6(struct _adapter *padapter,
 		pLed->CurrLedState = LED_OFF;
 		pLed->BlinkingLedState = LED_OFF;
 		if (pLed->bLedBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedBlinkInProgress = false;
 		}
 		if (pLed->bLedWPSBlinkInProgress) {
-			_cancel_timer_ex(&(pLed->BlinkTimer));
+			del_timer_sync(&pLed->BlinkTimer);
 			pLed->bLedWPSBlinkInProgress = false;
 		}
 		SwLedOff(padapter, pLed);
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index bb78484..8faa461 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -698,7 +698,7 @@ void r8712_ind_disconnect(struct _adapter *padapter)
 	}
 	if (padapter->pwrctrlpriv.pwr_mode !=
 	    padapter->registrypriv.power_mgnt) {
-		_cancel_timer_ex(&pmlmepriv->dhcp_timer);
+		del_timer_sync(&pmlmepriv->dhcp_timer);
 		r8712_set_ps_mode(padapter, padapter->registrypriv.power_mgnt,
 				  padapter->registrypriv.smart_ps);
 	}
diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.c b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
index ea732ee..aaa5844 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
@@ -103,7 +103,7 @@ void r8712_cpwm_int_hdl(struct _adapter *padapter,
 
 	if (pwrpriv->cpwm_tog == ((preportpwrstate->state) & 0x80))
 		return;
-	_cancel_timer_ex(&padapter->pwrctrlpriv. rpwm_check_timer);
+	del_timer_sync(&padapter->pwrctrlpriv.rpwm_check_timer);
 	_enter_pwrlock(&pwrpriv->lock);
 	pwrpriv->cpwm = (preportpwrstate->state) & 0xf;
 	if (pwrpriv->cpwm >= PS_STATE_S2) {
diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
index 1752121..7bb96c4 100644
--- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
+++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
@@ -198,7 +198,7 @@ void r8712_free_stainfo(struct _adapter *padapter, struct sta_info *psta)
 	 * cancel reordering_ctrl_timer */
 	for (i = 0; i < 16; i++) {
 		preorder_ctrl = &psta->recvreorder_ctrl[i];
-		_cancel_timer_ex(&preorder_ctrl->reordering_ctrl_timer);
+		del_timer_sync(&preorder_ctrl->reordering_ctrl_timer);
 	}
 	spin_lock(&(pfree_sta_queue->lock));
 	/* insert into free_sta_queue; 20061114 */
-- 
1.9.1


