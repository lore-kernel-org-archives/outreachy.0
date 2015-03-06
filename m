X-GM-THRID: 6865699209216
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1f5d1c1fbc348787
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.97.2 with SMTP id dw2mr14348378obb.0.1425639224179;
        Fri, 06 Mar 2015 02:53:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.228 with SMTP id p91ls229207qgp.36.gmail; Fri, 06 Mar
 2015 02:53:44 -0800 (PST)
X-Received: by 10.236.202.66 with SMTP id c42mr3192959yho.18.1425639224003;
        Fri, 06 Mar 2015 02:53:44 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ks4si1286309pbc.1.2015.03.06.02.53.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 02:53:43 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfa1 with SMTP id fa1so44514529pad.3
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 02:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/QxMlXoOo4dkhEW4ap06K5FVTlg0RSmIfCJuAorGidw=;
        b=0cj3z2iflVrGfcnqiV7bKRT6ncsuM/HoejaKP4Ic7bVl7V/1IIw6o3QeYbEg1zYFTW
         65bp3vRYilNB4XRNDZH+vuXfmDeRO2yJ+9jt2+hcego8PKBUaZFyspS0OWyw7uEHzg++
         eNXssyvuGdD8etk1b35rbGTjJveO2mSB0H4Yq8l5yVCFog9fFM9jWPcb7mWxapGvLLi3
         Ctnq+T+625iSgtJyWtu7qpEUwvVxjdtwf0iHujA0AfSsEb7FnYXWJ1wN5q0mTtpZUaL/
         D3LHS1NETINmHGFQGrlCd6KusgIevP0fAqHoTgkqt6dFsxEoP6OysLLcTDQ1M+z7M5BO
         KxlA==
X-Received: by 10.66.66.135 with SMTP id f7mr24171833pat.93.1425639223869;
        Fri, 06 Mar 2015 02:53:43 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.241.177])
        by mx.google.com with ESMTPSA id ot6sm9293666pdb.28.2015.03.06.02.53.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 06 Mar 2015 02:53:43 -0800 (PST)
Date: Fri, 6 Mar 2015 16:23:35 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8712: Eliminate use of _cancel_timer_ex
Message-ID: <a5146dbce4cab96c05646006b763df336abb0ba9.1425638418.git.vthakkar1994@gmail.com>
References: <cover.1425638418.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425638418.git.vthakkar1994@gmail.com>
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
v1: This patch has one line over 80 characters as limiting
    it to 80 characters does not make code look good.
---
 drivers/staging/rtl8712/os_intfs.c        |  13 ++-
 drivers/staging/rtl8712/osdep_service.h   |   5 -
 drivers/staging/rtl8712/rtl8712_led.c     | 146 +++++++++++++++---------------
 drivers/staging/rtl8712/rtl871x_mlme.c    |   2 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.c |   2 +-
 drivers/staging/rtl8712/rtl871x_sta_mgt.c |   2 +-
 6 files changed, 82 insertions(+), 88 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index ebfb29e..78815b6 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -263,13 +263,12 @@ static void start_drv_timers(struct _adapter *padapter)
 
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
+	del_timer_sync(&padapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);
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
index 6085689..f1d47a0 100644
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
+			del_timer_sync(&(pLed->BlinkTimer));
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
+			del_timer_sync(&(pLed1->BlinkTimer));
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


