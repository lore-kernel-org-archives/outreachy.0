X-GM-THRID: 4691261915136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,819e770589803338
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.85.18 with SMTP id d18mr4121597igz.3.1425059753482;
        Fri, 27 Feb 2015 09:55:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.195 with SMTP id e64ls637774ioi.70.gmail; Fri, 27 Feb
 2015 09:55:53 -0800 (PST)
X-Received: by 10.42.133.131 with SMTP id h3mr14844269ict.15.1425059753298;
        Fri, 27 Feb 2015 09:55:53 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id nt14si552735pab.2.2015.02.27.09.55.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 09:55:53 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id li10so8334253pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 09:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=PsIswn0HgmUQNJQYpUNpw/O6XRhE+d+EW8+gF8H54EM=;
        b=0EjWVLYyA4b3fDsEetAFhBSB7zyfU5hR0mBjHdwg/c3+d3KB0CN0jQ2F+tLlkXxUnz
         Uykp3SrUwCcQ82OC3SC2/b3uYDtUOfA3XS2vPZCtPcINLZC/RoBdcZDxSG0vw+d5qt+0
         UCJBDXG7E6OpsIDYVTHTmdhUVeC1q9UsMwZ6HIeoMJp22euDFMY1NTcnNb7x/hh5Vflk
         gaFPJsOqIq0Zf9AQPyaoDM7eJaCBlRxDfx5uSd9ryjg3TEANn+J38kZe7WiAL4E6TNHd
         dNkZkMPSc6BPorlSPpJGfebWNzdaLtMGsT0PMf1towDqlUt4G9i+kYEo7/AkFC85F54y
         PLWQ==
X-Received: by 10.67.23.101 with SMTP id hz5mr26284927pad.47.1425059753159;
        Fri, 27 Feb 2015 09:55:53 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.97])
        by mx.google.com with ESMTPSA id ss9sm4489204pbc.96.2015.02.27.09.55.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 09:55:52 -0800 (PST)
Date: Fri, 27 Feb 2015 23:25:48 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8712: Eliminate use of _set_timer
Message-ID: <aa207ecb3d6e0de8f0c877f4153f9fcb1821754c.1425058745.git.vthakkar1994@gmail.com>
References: <cover.1425058745.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425058745.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of API function mod_timer
instead of driver specific function _set_timer as it is
a more efficient and standard way to update the expire
field of an active timer. Also, definition of function
_set_timer is removed as it is no longer needed after
this change.

Here, these cases are handled using Coccinelle and
semantic patch used for this is as follows:

@@ expression x; expression y;@@

- _set_timer (&x, y);
+ mod_timer (&x, jiffies + msecs_to_jiffies (y));

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
v1: This patch has some line over 80 characters as limiting
    them to 80 characters does not make code look good and
    more readable.

 drivers/staging/rtl8712/mlme_linux.c        |   7 +-
 drivers/staging/rtl8712/os_intfs.c          |   7 +-
 drivers/staging/rtl8712/osdep_service.h     |   5 -
 drivers/staging/rtl8712/rtl8712_led.c       | 324 +++++++++++++++-------------
 drivers/staging/rtl8712/rtl8712_recv.c      |   4 +-
 drivers/staging/rtl8712/rtl871x_cmd.c       |   9 +-
 drivers/staging/rtl8712/rtl871x_ioctl_set.c |   3 +-
 drivers/staging/rtl8712/rtl871x_mlme.c      |  14 +-
 8 files changed, 199 insertions(+), 174 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index 354bd03..53999e8 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -37,8 +37,8 @@ static void sitesurvey_ctrl_handler(void *FunctionContext)
 	struct _adapter *adapter = (struct _adapter *)FunctionContext;
 
 	_r8712_sitesurvey_ctrl_handler(adapter);
-	_set_timer(&adapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
-		   3000);
+	mod_timer(&adapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
+		  jiffies + msecs_to_jiffies(3000));
 }
 
 static void join_timeout_handler (void *FunctionContext)
@@ -68,7 +68,8 @@ static void wdg_timeout_handler (void *FunctionContext)
 
 	_r8712_wdg_timeout_handler(adapter);
 
-	_set_timer(&adapter->mlmepriv.wdg_timer, 2000);
+	mod_timer(&adapter->mlmepriv.wdg_timer,
+		  jiffies + msecs_to_jiffies(2000));
 }
 
 void r8712_init_mlme_timer(struct _adapter *padapter)
diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 13debb5..64cdcee 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -255,9 +255,10 @@ void r8712_stop_drv_threads(struct _adapter *padapter)
 
 static void start_drv_timers(struct _adapter *padapter)
 {
-	_set_timer(&padapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
-		   5000);
-	_set_timer(&padapter->mlmepriv.wdg_timer, 2000);
+	mod_timer(&padapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
+		  jiffies + msecs_to_jiffies(5000));
+	mod_timer(&padapter->mlmepriv.wdg_timer,
+		  jiffies + msecs_to_jiffies(2000));
 }
 
 void r8712_stop_drv_timers(struct _adapter *padapter)
diff --git a/drivers/staging/rtl8712/osdep_service.h b/drivers/staging/rtl8712/osdep_service.h
index 36348d9..54c4c47 100644
--- a/drivers/staging/rtl8712/osdep_service.h
+++ b/drivers/staging/rtl8712/osdep_service.h
@@ -69,11 +69,6 @@ static inline void _init_timer(struct timer_list *ptimer,
 	init_timer(ptimer);
 }
 
-static inline void _set_timer(struct timer_list *ptimer, u32 delay_time)
-{
-	mod_timer(ptimer, (jiffies+msecs_to_jiffies(delay_time)));
-}
-
 static inline void _cancel_timer(struct timer_list *ptimer, u8 *bcancelled)
 {
 	del_timer(ptimer);
diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index 56e8add..0c7dfee 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -258,21 +258,21 @@ static void SwLedBlink(struct LED_871x *pLed)
 		/* Schedule a timer to toggle LED state. */
 		switch (pLed->CurrLedState) {
 		case LED_BLINK_NORMAL:
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_NORMAL_INTERVAL);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
 			break;
 		case LED_BLINK_SLOWLY:
 		case LED_BLINK_StartToBlink:
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SLOWLY_INTERVAL);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
 			break;
 		case LED_BLINK_WPS:
-			_set_timer(&(pLed->BlinkTimer),
-					LED_BLINK_LONG_INTERVAL);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_LONG_INTERVAL));
 			break;
 		default:
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SLOWLY_INTERVAL);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
 			break;
 		}
 	}
@@ -315,16 +315,16 @@ static void SwLedBlink1(struct LED_871x *pLed)
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer),
-			   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		break;
 	case LED_BLINK_NORMAL:
 		if (pLed->bLedOn)
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer),
-			   LED_BLINK_LINK_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 		break;
 	case LED_SCAN_BLINK:
 		pLed->BlinkTimes--;
@@ -338,8 +338,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = LED_OFF;
 				else
 					pLed->BlinkingLedState = LED_ON;
-				_set_timer(&(pLed->BlinkTimer),
-					   LED_BLINK_LINK_INTERVAL_ALPHA);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 			} else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
 				pLed->bLedNoLinkBlinkInProgress = true;
 				pLed->CurrLedState = LED_BLINK_SLOWLY;
@@ -347,8 +347,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = LED_OFF;
 				else
 					pLed->BlinkingLedState = LED_ON;
-				_set_timer(&(pLed->BlinkTimer),
-					   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 			}
 			pLed->bLedScanBlinkInProgress = false;
 		} else {
@@ -356,8 +356,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_TXRX_BLINK:
@@ -372,8 +372,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = LED_OFF;
 				else
 					pLed->BlinkingLedState = LED_ON;
-				_set_timer(&(pLed->BlinkTimer),
-					   LED_BLINK_LINK_INTERVAL_ALPHA);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 			} else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
 				pLed->bLedNoLinkBlinkInProgress = true;
 				pLed->CurrLedState = LED_BLINK_SLOWLY;
@@ -381,8 +381,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = LED_OFF;
 				else
 					pLed->BlinkingLedState = LED_ON;
-				_set_timer(&(pLed->BlinkTimer),
-					   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 			}
 			pLed->BlinkTimes = 0;
 			pLed->bLedBlinkInProgress = false;
@@ -391,8 +391,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_BLINK_WPS:
@@ -400,14 +400,14 @@ static void SwLedBlink1(struct LED_871x *pLed)
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer),
-			   LED_BLINK_SCAN_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		break;
 	case LED_BLINK_WPS_STOP:	/* WPS success */
 		if (pLed->BlinkingLedState == LED_ON) {
 			pLed->BlinkingLedState = LED_OFF;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA));
 			bStopBlinking = false;
 		} else
 			bStopBlinking = true;
@@ -418,8 +418,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_LINK_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 		}
 		pLed->bLedWPSBlinkInProgress = false;
 		break;
@@ -460,8 +460,8 @@ static void SwLedBlink2(struct LED_871x *pLed)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_TXRX_BLINK:
@@ -484,8 +484,8 @@ static void SwLedBlink2(struct LED_871x *pLed)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	default:
@@ -528,8 +528,8 @@ static void SwLedBlink3(struct LED_871x *pLed)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_TXRX_BLINK:
@@ -554,8 +554,8 @@ static void SwLedBlink3(struct LED_871x *pLed)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_BLINK_WPS:
@@ -563,14 +563,14 @@ static void SwLedBlink3(struct LED_871x *pLed)
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer),
-			   LED_BLINK_SCAN_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		break;
 	case LED_BLINK_WPS_STOP:	/*WPS success*/
 		if (pLed->BlinkingLedState == LED_ON) {
 			pLed->BlinkingLedState = LED_OFF;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA));
 			bStopBlinking = false;
 		} else
 			bStopBlinking = true;
@@ -610,18 +610,18 @@ static void SwLedBlink4(struct LED_871x *pLed)
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer),
-			   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		break;
 	case LED_BLINK_StartToBlink:
 		if (pLed->bLedOn) {
 			pLed->BlinkingLedState = LED_OFF;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SLOWLY_INTERVAL);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
 		} else {
 			pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_NORMAL_INTERVAL);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
 		}
 		break;
 	case LED_SCAN_BLINK:
@@ -635,16 +635,16 @@ static void SwLedBlink4(struct LED_871x *pLed)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 			pLed->bLedScanBlinkInProgress = false;
 		} else {
 			if (pLed->bLedOn)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_TXRX_BLINK:
@@ -658,27 +658,27 @@ static void SwLedBlink4(struct LED_871x *pLed)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 			pLed->bLedBlinkInProgress = false;
 		} else {
 			 if (pLed->bLedOn)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_BLINK_WPS:
 		if (pLed->bLedOn) {
 			pLed->BlinkingLedState = LED_OFF;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SLOWLY_INTERVAL);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
 		} else {
 			pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_NORMAL_INTERVAL);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
 		}
 		break;
 	case LED_BLINK_WPS_STOP:	/*WPS authentication fail*/
@@ -686,7 +686,8 @@ static void SwLedBlink4(struct LED_871x *pLed)
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer), LED_BLINK_NORMAL_INTERVAL);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
 		break;
 	case LED_BLINK_WPS_STOP_OVERLAP:	/*WPS session overlap */
 		pLed->BlinkTimes--;
@@ -699,15 +700,15 @@ static void SwLedBlink4(struct LED_871x *pLed)
 		if (bStopBlinking) {
 			pLed->BlinkTimes = 10;
 			pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_LINK_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 		} else {
 			if (pLed->bLedOn)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_NORMAL_INTERVAL);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
 		}
 		break;
 	default:
@@ -734,16 +735,16 @@ static void SwLedBlink5(struct LED_871x *pLed)
 			pLed->CurrLedState = LED_ON;
 			pLed->BlinkingLedState = LED_ON;
 			if (!pLed->bLedOn)
-				_set_timer(&(pLed->BlinkTimer),
-					   LED_BLINK_FASTER_INTERVAL_ALPHA);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 			pLed->bLedScanBlinkInProgress = false;
 		} else {
 			if (pLed->bLedOn)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_TXRX_BLINK:
@@ -754,16 +755,16 @@ static void SwLedBlink5(struct LED_871x *pLed)
 			pLed->CurrLedState = LED_ON;
 			pLed->BlinkingLedState = LED_ON;
 			if (!pLed->bLedOn)
-				_set_timer(&(pLed->BlinkTimer),
-					   LED_BLINK_FASTER_INTERVAL_ALPHA);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 			pLed->bLedBlinkInProgress = false;
 		} else {
 			 if (pLed->bLedOn)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	default:
@@ -797,8 +798,8 @@ static void SwLedBlink6(struct LED_871x *pLed)
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_BLINK_WPS:
@@ -806,7 +807,8 @@ static void SwLedBlink6(struct LED_871x *pLed)
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer), LED_BLINK_SCAN_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		break;
 
 	default:
@@ -908,8 +910,8 @@ static void SwLedControlMode1(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_LINK:
@@ -931,8 +933,8 @@ static void SwLedControlMode1(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_LINK_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_SITE_SURVEY:
@@ -961,8 +963,8 @@ static void SwLedControlMode1(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		 }
 		break;
 	case LED_CTL_TX:
@@ -986,8 +988,8 @@ static void SwLedControlMode1(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 
@@ -1016,8 +1018,8 @@ static void SwLedControlMode1(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_STOP_WPS:
@@ -1044,11 +1046,12 @@ static void SwLedControlMode1(struct _adapter *padapter,
 		pLed->CurrLedState = LED_BLINK_WPS_STOP;
 		if (pLed->bLedOn) {
 			pLed->BlinkingLedState = LED_OFF;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA));
 		} else {
 			pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer), 0);
+			mod_timer(&pLed->BlinkTimer,
+				  jiffies + msecs_to_jiffies(0));
 		}
 		break;
 	case LED_CTL_STOP_WPS_FAIL:
@@ -1062,8 +1065,8 @@ static void SwLedControlMode1(struct _adapter *padapter,
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer),
-			   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		break;
 	case LED_CTL_POWER_OFF:
 		pLed->CurrLedState = LED_OFF;
@@ -1088,7 +1091,8 @@ static void SwLedControlMode1(struct _adapter *padapter,
 			_cancel_timer_ex(&(pLed->BlinkTimer));
 			pLed->bLedScanBlinkInProgress = false;
 		}
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&pLed->BlinkTimer,
+			  jiffies + msecs_to_jiffies(0));
 		break;
 	default:
 		break;
@@ -1121,8 +1125,8 @@ static void SwLedControlMode2(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		 }
 		break;
 
@@ -1140,8 +1144,8 @@ static void SwLedControlMode2(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 
@@ -1157,7 +1161,8 @@ static void SwLedControlMode2(struct _adapter *padapter,
 			pLed->bLedScanBlinkInProgress = false;
 		}
 
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&pLed->BlinkTimer,
+			  jiffies + msecs_to_jiffies(0));
 		break;
 
 	case LED_CTL_START_WPS: /*wait until xinpin finish*/
@@ -1174,7 +1179,8 @@ static void SwLedControlMode2(struct _adapter *padapter,
 			pLed->bLedWPSBlinkInProgress = true;
 			pLed->CurrLedState = LED_ON;
 			pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer), 0);
+			mod_timer(&pLed->BlinkTimer,
+				  jiffies + msecs_to_jiffies(0));
 		 }
 		break;
 
@@ -1182,14 +1188,16 @@ static void SwLedControlMode2(struct _adapter *padapter,
 		pLed->bLedWPSBlinkInProgress = false;
 		pLed->CurrLedState = LED_ON;
 		pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&pLed->BlinkTimer,
+			  jiffies + msecs_to_jiffies(0));
 		break;
 
 	case LED_CTL_STOP_WPS_FAIL:
 		pLed->bLedWPSBlinkInProgress = false;
 		pLed->CurrLedState = LED_OFF;
 		pLed->BlinkingLedState = LED_OFF;
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&pLed->BlinkTimer,
+			  jiffies + msecs_to_jiffies(0));
 		break;
 
 	case LED_CTL_START_TO_LINK:
@@ -1197,7 +1205,8 @@ static void SwLedControlMode2(struct _adapter *padapter,
 		if (!IS_LED_BLINKING(pLed)) {
 			pLed->CurrLedState = LED_OFF;
 			pLed->BlinkingLedState = LED_OFF;
-			_set_timer(&(pLed->BlinkTimer), 0);
+			mod_timer(&pLed->BlinkTimer,
+				  jiffies + msecs_to_jiffies(0));
 		}
 		break;
 	case LED_CTL_POWER_OFF:
@@ -1215,7 +1224,8 @@ static void SwLedControlMode2(struct _adapter *padapter,
 			_cancel_timer_ex(&(pLed->BlinkTimer));
 			pLed->bLedWPSBlinkInProgress = false;
 		}
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&pLed->BlinkTimer,
+			  jiffies + msecs_to_jiffies(0));
 		break;
 	default:
 		break;
@@ -1247,8 +1257,8 @@ static void SwLedControlMode3(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_TX:
@@ -1265,8 +1275,8 @@ static void SwLedControlMode3(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_LINK:
@@ -1282,7 +1292,8 @@ static void SwLedControlMode3(struct _adapter *padapter,
 			_cancel_timer_ex(&(pLed->BlinkTimer));
 			pLed->bLedScanBlinkInProgress = false;
 		}
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&pLed->BlinkTimer,
+			  jiffies + msecs_to_jiffies(0));
 		break;
 	case LED_CTL_START_WPS: /* wait until xinpin finish */
 	case LED_CTL_START_WPS_BOTTON:
@@ -1301,8 +1312,8 @@ static void SwLedControlMode3(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_STOP_WPS:
@@ -1314,11 +1325,12 @@ static void SwLedControlMode3(struct _adapter *padapter,
 		pLed->CurrLedState = LED_BLINK_WPS_STOP;
 		if (pLed->bLedOn) {
 			pLed->BlinkingLedState = LED_OFF;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA));
 		} else {
 			pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer), 0);
+			mod_timer(&pLed->BlinkTimer,
+				  jiffies + msecs_to_jiffies(0));
 		}
 		break;
 	case LED_CTL_STOP_WPS_FAIL:
@@ -1328,14 +1340,16 @@ static void SwLedControlMode3(struct _adapter *padapter,
 		}
 		pLed->CurrLedState = LED_OFF;
 		pLed->BlinkingLedState = LED_OFF;
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&pLed->BlinkTimer,
+			  jiffies + msecs_to_jiffies(0));
 		break;
 	case LED_CTL_START_TO_LINK:
 	case LED_CTL_NO_LINK:
 		if (!IS_LED_BLINKING(pLed)) {
 			pLed->CurrLedState = LED_OFF;
 			pLed->BlinkingLedState = LED_OFF;
-			_set_timer(&(pLed->BlinkTimer), 0);
+			mod_timer(&pLed->BlinkTimer,
+				  jiffies + msecs_to_jiffies(0));
 		}
 		break;
 	case LED_CTL_POWER_OFF:
@@ -1353,7 +1367,8 @@ static void SwLedControlMode3(struct _adapter *padapter,
 			_cancel_timer_ex(&(pLed->BlinkTimer));
 			pLed->bLedWPSBlinkInProgress = false;
 		}
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&pLed->BlinkTimer,
+			  jiffies + msecs_to_jiffies(0));
 		break;
 	default:
 		break;
@@ -1376,7 +1391,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			pLed1->BlinkingLedState = LED_OFF;
 			pLed1->CurrLedState = LED_OFF;
 			if (pLed1->bLedOn)
-				_set_timer(&(pLed->BlinkTimer), 0);
+				mod_timer(&pLed->BlinkTimer,
+					  jiffies + msecs_to_jiffies(0));
 		}
 		if (pLed->bLedStartToLinkBlinkInProgress == false) {
 			if (pLed->CurrLedState == LED_SCAN_BLINK ||
@@ -1394,12 +1410,12 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			pLed->CurrLedState = LED_BLINK_StartToBlink;
 			if (pLed->bLedOn) {
 				pLed->BlinkingLedState = LED_OFF;
-				_set_timer(&(pLed->BlinkTimer),
-					   LED_BLINK_SLOWLY_INTERVAL);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
 			} else {
 				pLed->BlinkingLedState = LED_ON;
-				_set_timer(&(pLed->BlinkTimer),
-					   LED_BLINK_NORMAL_INTERVAL);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
 			}
 		}
 		break;
@@ -1413,7 +1429,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 				pLed1->BlinkingLedState = LED_OFF;
 				pLed1->CurrLedState = LED_OFF;
 				if (pLed1->bLedOn)
-					_set_timer(&(pLed->BlinkTimer), 0);
+					mod_timer(&pLed->BlinkTimer,
+						  jiffies + msecs_to_jiffies(0));
 			}
 		}
 		if (pLed->bLedNoLinkBlinkInProgress == false) {
@@ -1430,8 +1447,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_SITE_SURVEY:
@@ -1456,8 +1473,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_TX:
@@ -1477,8 +1494,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_START_WPS: /*wait until xinpin finish*/
@@ -1489,7 +1506,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			pLed1->BlinkingLedState = LED_OFF;
 			pLed1->CurrLedState = LED_OFF;
 			if (pLed1->bLedOn)
-				_set_timer(&(pLed->BlinkTimer), 0);
+				mod_timer(&pLed->BlinkTimer,
+					  jiffies + msecs_to_jiffies(0));
 		}
 		if (pLed->bLedWPSBlinkInProgress == false) {
 			if (pLed->bLedNoLinkBlinkInProgress == true) {
@@ -1508,12 +1526,12 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			pLed->CurrLedState = LED_BLINK_WPS;
 			if (pLed->bLedOn) {
 				pLed->BlinkingLedState = LED_OFF;
-				_set_timer(&(pLed->BlinkTimer),
-					   LED_BLINK_SLOWLY_INTERVAL);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
 			} else {
 				pLed->BlinkingLedState = LED_ON;
-				_set_timer(&(pLed->BlinkTimer),
-					   LED_BLINK_NORMAL_INTERVAL);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
 			}
 		}
 		break;
@@ -1528,8 +1546,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer),
-			   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		break;
 	case LED_CTL_STOP_WPS_FAIL:	/*WPS authentication fail*/
 		if (pLed->bLedWPSBlinkInProgress) {
@@ -1542,8 +1560,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer),
-			   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		/*LED1 settings*/
 		if (pLed1->bLedWPSBlinkInProgress)
 			_cancel_timer_ex(&(pLed1->BlinkTimer));
@@ -1554,7 +1572,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			pLed1->BlinkingLedState = LED_OFF;
 		else
 			pLed1->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer), LED_BLINK_NORMAL_INTERVAL);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
 		break;
 	case LED_CTL_STOP_WPS_FAIL_OVERLAP:	/*WPS session overlap*/
 		if (pLed->bLedWPSBlinkInProgress) {
@@ -1567,8 +1586,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			pLed->BlinkingLedState = LED_OFF;
 		else
 			pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer),
-			   LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		/*LED1 settings*/
 		if (pLed1->bLedWPSBlinkInProgress)
 			_cancel_timer_ex(&(pLed1->BlinkTimer));
@@ -1580,7 +1599,8 @@ static void SwLedControlMode4(struct _adapter *padapter,
 			pLed1->BlinkingLedState = LED_OFF;
 		else
 			pLed1->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer), LED_BLINK_NORMAL_INTERVAL);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
 		break;
 	case LED_CTL_POWER_OFF:
 		pLed->CurrLedState = LED_OFF;
@@ -1641,7 +1661,8 @@ static void SwLedControlMode5(struct _adapter *padapter,
 		pLed->CurrLedState = LED_ON;
 		pLed->BlinkingLedState = LED_ON;
 		pLed->bLedBlinkInProgress = false;
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&pLed->BlinkTimer,
+			  jiffies + msecs_to_jiffies(0));
 		break;
 	case LED_CTL_SITE_SURVEY:
 		if ((pmlmepriv->sitesurveyctrl.traffic_busy) &&
@@ -1659,8 +1680,8 @@ static void SwLedControlMode5(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_TX:
@@ -1675,8 +1696,8 @@ static void SwLedControlMode5(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_POWER_OFF:
@@ -1711,7 +1732,7 @@ static void SwLedControlMode6(struct _adapter *padapter,
 		pLed->CurrLedState = LED_ON;
 		pLed->BlinkingLedState = LED_ON;
 		pLed->bLedBlinkInProgress = false;
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&(pLed->BlinkTimer), jiffies + msecs_to_jiffies(0));
 		break;
 	case LED_CTL_TX:
 	case LED_CTL_RX:
@@ -1726,8 +1747,8 @@ static void SwLedControlMode6(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_START_WPS: /*wait until xinpin finish*/
@@ -1743,8 +1764,8 @@ static void SwLedControlMode6(struct _adapter *padapter,
 				pLed->BlinkingLedState = LED_OFF;
 			else
 				pLed->BlinkingLedState = LED_ON;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_STOP_WPS_FAIL:
@@ -1755,7 +1776,8 @@ static void SwLedControlMode6(struct _adapter *padapter,
 		}
 		pLed->CurrLedState = LED_ON;
 		pLed->BlinkingLedState = LED_ON;
-		_set_timer(&(pLed->BlinkTimer), 0);
+		mod_timer(&pLed->BlinkTimer,
+			  jiffies + msecs_to_jiffies(0));
 		break;
 	case LED_CTL_POWER_OFF:
 		pLed->CurrLedState = LED_OFF;
diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index e4fc9e0..546414d 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -604,8 +604,8 @@ static int recv_indicatepkt_reorder(struct _adapter *padapter,
 	 */
 	if (r8712_recv_indicatepkts_in_order(padapter, preorder_ctrl, false) ==
 	    true) {
-		_set_timer(&preorder_ctrl->reordering_ctrl_timer,
-			   REORDER_WAIT_TIME);
+		mod_timer(&preorder_ctrl->reordering_ctrl_timer,
+			  jiffies + msecs_to_jiffies(REORDER_WAIT_TIME));
 		spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
 	} else {
 		spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 939a2ec..d105ade 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -247,7 +247,8 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 	}
 	set_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	_set_timer(&pmlmepriv->scan_to_timer, SCANNING_TIMEOUT);
+	mod_timer(&pmlmepriv->scan_to_timer,
+		  jiffies + msecs_to_jiffies(SCANNING_TIMEOUT));
 	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_SITE_SURVEY);
 	padapter->blnEnableRxFF0Filter = 0;
 	return _SUCCESS;
@@ -890,7 +891,8 @@ void r8712_joinbss_cmd_callback(struct _adapter *padapter, struct cmd_obj *pcmd)
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (pcmd->res != H2C_SUCCESS)
-		_set_timer(&pmlmepriv->assoc_timer, 1);
+		mod_timer(&pmlmepriv->assoc_timer,
+			  jiffies + msecs_to_jiffies(1));
 	r8712_free_cmd_obj(pcmd);
 }
 
@@ -907,7 +909,8 @@ void r8712_createbss_cmd_callback(struct _adapter *padapter,
 	struct wlan_network *tgt_network = &(pmlmepriv->cur_network);
 
 	if (pcmd->res != H2C_SUCCESS)
-		_set_timer(&pmlmepriv->assoc_timer, 1);
+		mod_timer(&pmlmepriv->assoc_timer,
+			  jiffies + msecs_to_jiffies(1));
 	_cancel_timer(&pmlmepriv->assoc_timer, &timer_cancelled);
 #ifdef __BIG_ENDIAN
 	/* endian_convert */
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index 6318a0e..bd1d1b7 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -85,7 +85,8 @@ static u8 do_join(struct _adapter *padapter)
 
 		ret = r8712_select_and_join_from_scan(pmlmepriv);
 		if (ret == _SUCCESS)
-			_set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
+			mod_timer(&pmlmepriv->assoc_timer,
+				  jiffies + msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 		else {
 			if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
 				/* submit r8712_createbss_cmd to change to an
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 977a833..bb78484 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -596,8 +596,8 @@ void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
 
 				if (r8712_select_and_join_from_scan(pmlmepriv)
 				    == _SUCCESS)
-					_set_timer(&pmlmepriv->assoc_timer,
-						   MAX_JOIN_TIMEOUT);
+					mod_timer(&pmlmepriv->assoc_timer, jiffies +
+						  msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 				else {
 					struct wlan_bssid_ex *pdev_network =
 					  &(adapter->registrypriv.dev_network);
@@ -622,8 +622,8 @@ void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
 			set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
 			if (r8712_select_and_join_from_scan(pmlmepriv) ==
 			    _SUCCESS)
-				_set_timer(&pmlmepriv->assoc_timer,
-					   MAX_JOIN_TIMEOUT);
+				mod_timer(&pmlmepriv->assoc_timer, jiffies +
+					  msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 			else
 				_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 		}
@@ -679,7 +679,8 @@ void r8712_indicate_connect(struct _adapter *padapter)
 	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_LINK);
 	r8712_os_indicate_connect(padapter);
 	if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE)
-		_set_timer(&pmlmepriv->dhcp_timer, 60000);
+		mod_timer(&pmlmepriv->dhcp_timer,
+			  jiffies + msecs_to_jiffies(60000));
 }
 
 
@@ -916,7 +917,8 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 			goto ignore_joinbss_callback;
 	} else {
 		if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true) {
-			_set_timer(&pmlmepriv->assoc_timer, 1);
+			mod_timer(&pmlmepriv->assoc_timer,
+				  jiffies + msecs_to_jiffies(1));
 			_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 		}
 	}
-- 
1.9.1


