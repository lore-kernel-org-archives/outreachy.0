X-GM-THRID: 3543146692608
X-Received: by 10.66.157.129 with SMTP id wm1mr6725557pab.15.1424931153896;
        Wed, 25 Feb 2015 22:12:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.193 with SMTP id o62ls92393ioi.94.gmail; Wed, 25 Feb
 2015 22:12:33 -0800 (PST)
X-Received: by 10.42.43.199 with SMTP id y7mr7281610ice.9.1424931153632;
        Wed, 25 Feb 2015 22:12:33 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id bx1si4254827pdb.2.2015.02.25.22.12.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 22:12:33 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdno5 with SMTP id o5so10615457pdn.8
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 22:12:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=f/jyqNUomThgwZMEMFeyTuCeRqGEaQlijVRh6npui5Q=;
        b=BzLhKkVlVRGfZdm3HrbqHGCzt014xlWUMlUR6SzwW50CnddFJSG+SZEGpvsNVhBAQq
         r3aIWi+vsthiJXoivqy6nrDd4gpJrOvQLv54ILb2zhUba+6OvBvCmipPc5YCfk1jKqoP
         WpSOMyNDT2xisPcjqvEeRNcv55q7NfX8xzqw8n9W5uKd/774cBfZXNjJ9+noKtMNp19D
         p9gGGxuxFJkNIUiM0FioFSsaFKbvgy0pEcp0SHojEYtg0FOdHUFWP56e5HMnzS9M6VED
         ZK9+qWJg0dKPpPbJXCKi/Og9QMGf0ENp3WvYfog4KvYsq82nXN4xuVDe3mjWs6p3xsgK
         LS1Q==
X-Received: by 10.66.237.35 with SMTP id uz3mr12230593pac.46.1424931153477;
        Wed, 25 Feb 2015 22:12:33 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.220])
        by mx.google.com with ESMTPSA id kn5sm34163295pdb.42.2015.02.25.22.12.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 22:12:32 -0800 (PST)
Date: Thu, 26 Feb 2015 11:42:28 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8188eu: Eliminate use of _set_timer
Message-ID: <0abbd76b80c2fb55ac1300e682f7c974dcaeba43.1424930708.git.vthakkar1994@gmail.com>
References: <cover.1424930708.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424930708.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of API function mod_timer
instead of driver specific function _set_timer as it is
a more efficient and standard way to update the expire
field of an active timer. Also, definition of function
_set_timer is removed as it is no longer needed after
this change.

Here, some of cases are handled using Coccinelle and
semantic patch used for this is as follows:

@@ expression x; identifier y;@@

- _set_timer (&x, y);
+ mod_timer (&x, jiffies + msecs_to_jiffies (y));

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
v1 : Here, this patch has some line over 80 characters as
     limiting them to 80 characters does not make code look
     good and readable.

 drivers/staging/rtl8188eu/core/rtw_cmd.c          | 18 ++++---
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c    |  3 +-
 drivers/staging/rtl8188eu/core/rtw_led.c          | 59 +++++++++++++++--------
 drivers/staging/rtl8188eu/core/rtw_mlme.c         | 15 ++++--
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c     |  7 +--
 drivers/staging/rtl8188eu/core/rtw_recv.c         |  6 ++-
 drivers/staging/rtl8188eu/include/osdep_service.h |  5 --
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h  |  6 ++-
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h   |  3 +-
 drivers/staging/rtl8188eu/include/rtw_recv.h      |  4 +-
 drivers/staging/rtl8188eu/os_dep/os_intfs.c       |  6 ++-
 11 files changed, 82 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index 4b43462..89b5e48 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -325,7 +325,8 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 	if (res == _SUCCESS) {
 		pmlmepriv->scan_start_time = jiffies;
 
-		_set_timer(&pmlmepriv->scan_to_timer, SCANNING_TIMEOUT);
+		mod_timer(&pmlmepriv->scan_to_timer,
+			  jiffies + msecs_to_jiffies(SCANNING_TIMEOUT));
 
 		rtw_led_control(padapter, LED_CTL_SITE_SURVEY);
 
@@ -1234,9 +1235,11 @@ void rtw_survey_cmd_callback(struct adapter *padapter,  struct cmd_obj *pcmd)
 	if (pcmd->res == H2C_DROPPED) {
 		/* TODO: cancel timer and do timeout handler directly... */
 		/* need to make timeout handlerOS independent */
-		_set_timer(&pmlmepriv->scan_to_timer, 1);
+		mod_timer(&pmlmepriv->scan_to_timer,
+			  jiffies + msecs_to_jiffies(1));
 	} else if (pcmd->res != H2C_SUCCESS) {
-		_set_timer(&pmlmepriv->scan_to_timer, 1);
+		mod_timer(&pmlmepriv->scan_to_timer,
+			  jiffies + msecs_to_jiffies(1));
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ********Error: MgntActrtw_set_802_11_bssid_LIST_SCAN Fail ************\n\n."));
 	}
 
@@ -1270,10 +1273,12 @@ void rtw_joinbss_cmd_callback(struct adapter *padapter,  struct cmd_obj *pcmd)
 	if (pcmd->res == H2C_DROPPED) {
 		/* TODO: cancel timer and do timeout handler directly... */
 		/* need to make timeout handlerOS independent */
-		_set_timer(&pmlmepriv->assoc_timer, 1);
+		mod_timer(&pmlmepriv->assoc_timer,
+			  jiffies + msecs_to_jiffies(1));
 	} else if (pcmd->res != H2C_SUCCESS) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("********Error:rtw_select_and_join_from_scanned_queue Wait Sema  Fail ************\n"));
-		_set_timer(&pmlmepriv->assoc_timer, 1);
+		mod_timer(&pmlmepriv->assoc_timer,
+			  jiffies + msecs_to_jiffies(1));
 	}
 
 	rtw_free_cmd_obj(pcmd);
@@ -1291,7 +1296,8 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 
 	if (pcmd->res != H2C_SUCCESS) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ********Error: rtw_createbss_cmd_callback  Fail ************\n\n."));
-		_set_timer(&pmlmepriv->assoc_timer, 1);
+		mod_timer(&pmlmepriv->assoc_timer,
+			  jiffies + msecs_to_jiffies(1));
 	}
 
 	del_timer_sync(&pmlmepriv->assoc_timer);
diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index 2faf6b2..969150a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -86,7 +86,8 @@ u8 rtw_do_join(struct adapter *padapter)
 		select_ret = rtw_select_and_join_from_scanned_queue(pmlmepriv);
 		if (select_ret == _SUCCESS) {
 			pmlmepriv->to_join = false;
-			_set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
+			mod_timer(&pmlmepriv->assoc_timer,
+				  jiffies + msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 		} else {
 			if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true) {
 				/*  submit createbss_cmd to change to a ADHOC_MASTER */
diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index 1b8264b..4e197f0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -122,14 +122,16 @@ static void SwLedBlink1(struct LED_871x *pLed)
 			pLed->BlinkingLedState = RTW_LED_OFF;
 		else
 			pLed->BlinkingLedState = RTW_LED_ON;
-		_set_timer(&(pLed->BlinkTimer), LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		break;
 	case LED_BLINK_NORMAL:
 		if (pLed->bLedOn)
 			pLed->BlinkingLedState = RTW_LED_OFF;
 		else
 			pLed->BlinkingLedState = RTW_LED_ON;
-		_set_timer(&(pLed->BlinkTimer), LED_BLINK_LINK_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 		break;
 	case LED_BLINK_SCAN:
 		pLed->BlinkTimes--;
@@ -143,7 +145,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = RTW_LED_OFF;
 				else
 					pLed->BlinkingLedState = RTW_LED_ON;
-				_set_timer(&(pLed->BlinkTimer), LED_BLINK_LINK_INTERVAL_ALPHA);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
 			} else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
 				pLed->bLedNoLinkBlinkInProgress = true;
@@ -152,7 +155,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = RTW_LED_OFF;
 				else
 					pLed->BlinkingLedState = RTW_LED_ON;
-				_set_timer(&(pLed->BlinkTimer), LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
 			}
 			pLed->bLedScanBlinkInProgress = false;
@@ -161,7 +165,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 				pLed->BlinkingLedState = RTW_LED_OFF;
 			else
 				pLed->BlinkingLedState = RTW_LED_ON;
-			_set_timer(&(pLed->BlinkTimer), LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_BLINK_TXRX:
@@ -176,7 +181,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = RTW_LED_OFF;
 				else
 					pLed->BlinkingLedState = RTW_LED_ON;
-				_set_timer(&(pLed->BlinkTimer), LED_BLINK_LINK_INTERVAL_ALPHA);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
 			} else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
 				pLed->bLedNoLinkBlinkInProgress = true;
@@ -185,7 +191,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = RTW_LED_OFF;
 				else
 					pLed->BlinkingLedState = RTW_LED_ON;
-				_set_timer(&(pLed->BlinkTimer), LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+				mod_timer(&pLed->BlinkTimer, jiffies +
+					  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
 			}
 			pLed->BlinkTimes = 0;
@@ -195,7 +202,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 				pLed->BlinkingLedState = RTW_LED_OFF;
 			else
 				pLed->BlinkingLedState = RTW_LED_ON;
-			_set_timer(&(pLed->BlinkTimer), LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_BLINK_WPS:
@@ -203,7 +211,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
 			pLed->BlinkingLedState = RTW_LED_OFF;
 		else
 			pLed->BlinkingLedState = RTW_LED_ON;
-		_set_timer(&(pLed->BlinkTimer), LED_BLINK_SCAN_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		break;
 	case LED_BLINK_WPS_STOP:	/* WPS success */
 		if (pLed->BlinkingLedState == RTW_LED_ON)
@@ -218,14 +227,15 @@ static void SwLedBlink1(struct LED_871x *pLed)
 				pLed->BlinkingLedState = RTW_LED_OFF;
 			else
 				pLed->BlinkingLedState = RTW_LED_ON;
-			_set_timer(&(pLed->BlinkTimer), LED_BLINK_LINK_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 			RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
 
 			pLed->bLedWPSBlinkInProgress = false;
 		} else {
 			pLed->BlinkingLedState = RTW_LED_OFF;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
 		}
 		break;
 	default:
@@ -262,7 +272,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 				pLed->BlinkingLedState = RTW_LED_OFF;
 			else
 				pLed->BlinkingLedState = RTW_LED_ON;
-			_set_timer(&(pLed->BlinkTimer), LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_LINK:
@@ -283,7 +294,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 				pLed->BlinkingLedState = RTW_LED_OFF;
 			else
 				pLed->BlinkingLedState = RTW_LED_ON;
-			_set_timer(&(pLed->BlinkTimer), LED_BLINK_LINK_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_SITE_SURVEY:
@@ -311,7 +323,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 				pLed->BlinkingLedState = RTW_LED_OFF;
 			else
 				pLed->BlinkingLedState = RTW_LED_ON;
-			_set_timer(&(pLed->BlinkTimer), LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		 }
 		break;
 	case LED_CTL_TX:
@@ -334,7 +347,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 				pLed->BlinkingLedState = RTW_LED_OFF;
 			else
 				pLed->BlinkingLedState = RTW_LED_ON;
-			_set_timer(&(pLed->BlinkTimer), LED_BLINK_FASTER_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
 		}
 		break;
 	case LED_CTL_START_WPS: /* wait until xinpin finish */
@@ -362,7 +376,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 				pLed->BlinkingLedState = RTW_LED_OFF;
 			else
 				pLed->BlinkingLedState = RTW_LED_ON;
-			_set_timer(&(pLed->BlinkTimer), LED_BLINK_SCAN_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		 }
 		break;
 	case LED_CTL_STOP_WPS:
@@ -389,11 +404,12 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 		pLed->CurrLedState = LED_BLINK_WPS_STOP;
 		if (pLed->bLedOn) {
 			pLed->BlinkingLedState = RTW_LED_OFF;
-			_set_timer(&(pLed->BlinkTimer),
-				   LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
 		} else {
 			pLed->BlinkingLedState = RTW_LED_ON;
-			_set_timer(&(pLed->BlinkTimer), 0);
+			mod_timer(&pLed->BlinkTimer, jiffies +
+				  msecs_to_jiffies(0));
 		}
 		break;
 	case LED_CTL_STOP_WPS_FAIL:
@@ -407,7 +423,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 			pLed->BlinkingLedState = RTW_LED_OFF;
 		else
 			pLed->BlinkingLedState = RTW_LED_ON;
-		_set_timer(&(pLed->BlinkTimer), LED_BLINK_NO_LINK_INTERVAL_ALPHA);
+		mod_timer(&pLed->BlinkTimer, jiffies +
+			  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 		break;
 	case LED_CTL_POWER_OFF:
 		pLed->CurrLedState = RTW_LED_OFF;
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index d4632da..f006679 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -665,7 +665,8 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 				set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
 
 				if (rtw_select_and_join_from_scanned_queue(pmlmepriv) == _SUCCESS) {
-					_set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
+					mod_timer(&pmlmepriv->assoc_timer,
+						  jiffies + msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 				} else {
 					struct wlan_bssid_ex    *pdev_network = &(adapter->registrypriv.dev_network);
 					u8 *pibss = adapter->registrypriv.dev_network.MacAddress;
@@ -692,7 +693,8 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 			pmlmepriv->to_join = false;
 			s_ret = rtw_select_and_join_from_scanned_queue(pmlmepriv);
 			if (_SUCCESS == s_ret) {
-			     _set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
+			     mod_timer(&pmlmepriv->assoc_timer,
+				       jiffies + msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 			} else if (s_ret == 2) { /* there is no need to wait for join */
 				_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 				rtw_indicate_connect(adapter);
@@ -1127,14 +1129,16 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 
 	} else if (pnetwork->join_res == -4) {
 		rtw_reset_securitypriv(adapter);
-		_set_timer(&pmlmepriv->assoc_timer, 1);
+		mod_timer(&pmlmepriv->assoc_timer,
+			  jiffies + msecs_to_jiffies(1));
 
 		if ((check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) == true) {
 			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("fail! clear _FW_UNDER_LINKING ^^^fw_state=%x\n", get_fwstate(pmlmepriv)));
 			_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 		}
 	} else { /* if join_res < 0 (join fails), then try again */
-		_set_timer(&pmlmepriv->assoc_timer, 1);
+		mod_timer(&pmlmepriv->assoc_timer,
+			  jiffies + msecs_to_jiffies(1));
 		_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 	}
 
@@ -1449,7 +1453,8 @@ void rtw_dynamic_check_timer_handlder(void *function_context)
 		rtw_auto_scan_handler(adapter);
 	}
 exit:
-	_set_timer(&adapter->mlmepriv.dynamic_chk_timer, 2000);
+	mod_timer(&adapter->mlmepriv.dynamic_chk_timer,
+		  jiffies + msecs_to_jiffies(2000));
 }
 
 #define RTW_SCAN_RESULT_EXPIRE 2000
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index cd12dd7..86feee8 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -3972,8 +3972,8 @@ void start_clnt_join(struct adapter *padapter)
 		/* and enable a timer */
 		beacon_timeout = decide_wait_for_beacon_timeout(pmlmeinfo->bcn_interval);
 		set_link_timer(pmlmeext, beacon_timeout);
-		_set_timer(&padapter->mlmepriv.assoc_timer,
-			   (REAUTH_TO * REAUTH_LIMIT) + (REASSOC_TO*REASSOC_LIMIT) + beacon_timeout);
+		mod_timer(&padapter->mlmepriv.assoc_timer, jiffies +
+			  msecs_to_jiffies(REAUTH_TO * REAUTH_LIMIT) + (REASSOC_TO*REASSOC_LIMIT) + beacon_timeout);
 
 		pmlmeinfo->state = WIFI_FW_AUTH_NULL | WIFI_FW_STATION_STATE;
 	} else if (caps&cap_IBSS) { /* adhoc client */
@@ -5406,7 +5406,8 @@ u8 add_ba_hdl(struct adapter *padapter, unsigned char *pbuf)
 	if (((pmlmeinfo->state & WIFI_FW_ASSOC_SUCCESS) && (pmlmeinfo->HT_enable)) ||
 	    ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE)) {
 		issue_action_BA(padapter, pparm->addr, RTW_WLAN_ACTION_ADDBA_REQ, (u16)pparm->tid);
-		_set_timer(&psta->addba_retry_timer, ADDBA_TO);
+		mod_timer(&psta->addba_retry_timer,
+			  jiffies + msecs_to_jiffies(ADDBA_TO));
 	} else {
 		psta->htpriv.candidate_tid_bitmap &= ~BIT(pparm->tid);
 	}
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index bd79e9e..0db421e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1927,7 +1927,8 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 
 	/* recv_indicatepkts_in_order(padapter, preorder_ctrl, true); */
 	if (recv_indicatepkts_in_order(padapter, preorder_ctrl, false)) {
-		_set_timer(&preorder_ctrl->reordering_ctrl_timer, REORDER_WAIT_TIME);
+		mod_timer(&preorder_ctrl->reordering_ctrl_timer,
+			  jiffies + msecs_to_jiffies(REORDER_WAIT_TIME));
 		spin_unlock_bh(&ppending_recvframe_queue->lock);
 	} else {
 		spin_unlock_bh(&ppending_recvframe_queue->lock);
@@ -1957,7 +1958,8 @@ void rtw_reordering_ctrl_timeout_handler(void *pcontext)
 	spin_lock_bh(&ppending_recvframe_queue->lock);
 
 	if (recv_indicatepkts_in_order(padapter, preorder_ctrl, true) == true)
-		_set_timer(&preorder_ctrl->reordering_ctrl_timer, REORDER_WAIT_TIME);
+		mod_timer(&preorder_ctrl->reordering_ctrl_timer,
+			  jiffies + msecs_to_jiffies(REORDER_WAIT_TIME));
 
 	spin_unlock_bh(&ppending_recvframe_queue->lock);
 }
diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
index 3a27477..4c968ac 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -85,11 +85,6 @@ static inline void _init_timer(struct timer_list *ptimer,
 	init_timer(ptimer);
 }
 
-static inline void _set_timer(struct timer_list *ptimer, u32 delay_time)
-{
-	mod_timer(ptimer , (jiffies+msecs_to_jiffies(delay_time)));
-}
-
 #define RTW_TIMER_HDL_ARGS void *FunctionContext
 #define RTW_TIMER_HDL_NAME(name) rtw_##name##_timer_hdl
 #define RTW_DECLARE_TIMER_HDL(name) \
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
index 4f05aee..3f9a0f7 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
@@ -651,12 +651,14 @@ void addba_timer_hdl(void *function_context);
 
 #define set_survey_timer(mlmeext, ms) \
 	do { \
-		_set_timer(&(mlmeext)->survey_timer, (ms)); \
+		mod_timer(&mlmeext->survey_timer, \
+			  jiffies + msecs_to_jiffies(ms))
 	} while (0)
 
 #define set_link_timer(mlmeext, ms) \
 	do { \
-		_set_timer(&(mlmeext)->link_timer, (ms)); \
+		mod_timer(&mlmeext->link_timer, \
+			  jiffies + msecs_to_jiffies(ms))
 	} while (0)
 
 int cckrates_included(unsigned char *rate, int ratelen);
diff --git a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
index 54dfbf0..88ed2f3 100644
--- a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
@@ -234,7 +234,8 @@ struct pwrctrl_priv {
 
 #define _rtw_set_pwr_state_check_timer(pwrctrlpriv, ms) \
 	do { \
-		_set_timer(&(pwrctrlpriv)->pwr_state_check_timer, (ms)); \
+		mod_timer(&pwrctrlpriv->pwr_state_check_timer, \
+			  jiffies + msecs_to_jiffies(ms));
 	} while (0)
 
 #define rtw_set_pwr_state_check_timer(pwrctrl)			\
diff --git a/drivers/staging/rtl8188eu/include/rtw_recv.h b/drivers/staging/rtl8188eu/include/rtw_recv.h
index f0c26ef..44b69ef 100644
--- a/drivers/staging/rtl8188eu/include/rtw_recv.h
+++ b/drivers/staging/rtl8188eu/include/rtw_recv.h
@@ -216,8 +216,8 @@ struct recv_priv {
 };
 
 #define rtw_set_signal_stat_timer(recvpriv)			\
-	_set_timer(&(recvpriv)->signal_stat_timer,		\
-		   (recvpriv)->signal_stat_sampling_interval)
+	mod_timer(&recvpriv->signal_stat_timer, jiffies +	\
+		  msecs_to_jiffies(recvpriv->signal_stat_sampling_interval))
 
 struct sta_recv_priv {
 	spinlock_t lock;
diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index 88a909c..5fe3ae5 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -998,7 +998,8 @@ int _netdev_open(struct net_device *pnetdev)
 	}
 	padapter->net_closed = false;
 
-	_set_timer(&padapter->mlmepriv.dynamic_chk_timer, 2000);
+	mod_timer(&padapter->mlmepriv.dynamic_chk_timer,
+		  jiffies + msecs_to_jiffies(2000));
 
 	padapter->pwrctrlpriv.bips_processing = false;
 	rtw_set_pwr_state_check_timer(&padapter->pwrctrlpriv);
@@ -1052,7 +1053,8 @@ static int  ips_netdrv_open(struct adapter *padapter)
 		padapter->intf_start(padapter);
 
 	rtw_set_pwr_state_check_timer(&padapter->pwrctrlpriv);
-	_set_timer(&padapter->mlmepriv.dynamic_chk_timer, 5000);
+	mod_timer(&padapter->mlmepriv.dynamic_chk_timer,
+		  jiffies + msecs_to_jiffies(5000));
 
 	 return _SUCCESS;
 
-- 
1.9.1


