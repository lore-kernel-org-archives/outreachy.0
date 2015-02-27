X-GM-THRID: 3543146692608
X-Received: by 10.236.18.232 with SMTP id l68mr11249580yhl.16.1425017898739;
        Thu, 26 Feb 2015 22:18:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.208 with SMTP id f199ls447276ioe.92.gmail; Thu, 26 Feb
 2015 22:18:18 -0800 (PST)
X-Received: by 10.68.192.10 with SMTP id hc10mr11566588pbc.4.1425017898574;
        Thu, 26 Feb 2015 22:18:18 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pc4si397403pac.0.2015.02.26.22.18.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 22:18:18 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id lj1so4174159pab.13
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 22:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=FkMsO9zrW0epEcLv1UNpT3XrTNVY34FULUg0xfL6FhU=;
        b=LR0j36E5l7CMqXHEJClTbpbwQqjZM+XJD3IKvG2iqkD/E5mqIBdMUPJtUfKwX75vI0
         uHsU/jzRo0qSpPORKIXUQzzYaAlHGw+wO98aYnQEnejzUIbACELl60OcUyb619t4cWKV
         iYKneIVqQrk58hvQDBQC5szNo5FmG2LYF4S4Yb+TMz/ZrvafWQnKMk5ZTFJYqdH8Jqb1
         aXE+NN68RUf0/pIylqJ3seVCJvtXLQ8lCgLqwcZ6sz27W5ETkW5unuz9ipUKFSPWskUz
         ttLl7DrikxwOgdFNgEGBi4rOwikZeMosgsI+NR3k1dQXYlidEJCuiguTaLXOiLqebKXv
         0HYA==
X-Received: by 10.66.217.230 with SMTP id pb6mr21574129pac.2.1425017898432;
        Thu, 26 Feb 2015 22:18:18 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.201])
        by mx.google.com with ESMTPSA id i7sm2710391pbq.92.2015.02.26.22.18.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 22:18:17 -0800 (PST)
Date: Fri, 27 Feb 2015 11:48:13 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] Staging: rtl8188eu: Eliminate use of _init_timer
Message-ID: <72446e864a192680300488945c09450a5bec1e52.1425017327.git.vthakkar1994@gmail.com>
References: <cover.1425017327.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425017327.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of API function setup_timer
instead of driver specific function _init_timer as it is
the preferred and standard way to setup and set the timer.
Also, definition of function _init_timer is removed as it
is no longer needed after this change.

Here, this is done using Coccinelle and  semantic patch
used for this is as follows:

@@ expression x, y; identifier a, b;@@

- _init_timer (&x, y, a, b);
+ setup_timer (&x, a, (unsigned long)b);

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
v2: Change commit log
  - Shorten the lines to 80 characters
  - Redo patch agianst staging-testing

 drivers/staging/rtl8188eu/core/rtw_led.c          |  3 ++-
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c      |  4 +++-
 drivers/staging/rtl8188eu/core/rtw_recv.c         |  4 +++-
 drivers/staging/rtl8188eu/include/osdep_service.h |  9 ---------
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c     | 18 ++++++++++++------
 drivers/staging/rtl8188eu/os_dep/recv_linux.c     |  4 +++-
 6 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index 8bef176..805944d 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -72,7 +72,8 @@ void InitLed871x(struct adapter *padapter, struct LED_871x *pLed)
 
 	ResetLedStatus(pLed);
 
-	_init_timer(&(pLed->BlinkTimer), padapter->pnetdev, BlinkTimerCallback, pLed);
+	setup_timer(&pLed->BlinkTimer, BlinkTimerCallback,
+		    (unsigned long)pLed);
 
 	INIT_WORK(&(pLed->BlinkWorkItem), BlinkWorkItemCallback);
 }
diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index df463a2..7ae37b1 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -544,7 +544,9 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 
 	pwrctrlpriv->btcoex_rfon = false;
 
-	_init_timer(&(pwrctrlpriv->pwr_state_check_timer), padapter->pnetdev, pwr_state_check_handler, (u8 *)padapter);
+	setup_timer(&pwrctrlpriv->pwr_state_check_timer,
+		    pwr_state_check_handler,
+		    (unsigned long)padapter);
 }
 
 inline void rtw_set_ips_deny(struct adapter *padapter, u32 ms)
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 0db421e..29b8486 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -98,7 +98,9 @@ int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 
 	res = rtw_hal_init_recv_priv(padapter);
 
-	_init_timer(&precvpriv->signal_stat_timer, padapter->pnetdev, RTW_TIMER_HDL_NAME(signal_stat), padapter);
+	setup_timer(&precvpriv->signal_stat_timer,
+		    RTW_TIMER_HDL_NAME(signal_stat),
+		    unsigned long(padapter));
 
 	precvpriv->signal_stat_sampling_interval = 1000; /* ms */
 
diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
index 4c968ac..08c4d5d 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -76,15 +76,6 @@ static inline int _enter_critical_mutex(struct mutex *pmutex,
 	return ret;
 }
 
-static inline void _init_timer(struct timer_list *ptimer,
-			       struct  net_device *nic_hdl,
-			       void *pfunc, void *cntx)
-{
-	ptimer->function = pfunc;
-	ptimer->data = (unsigned long)cntx;
-	init_timer(ptimer);
-}
-
 #define RTW_TIMER_HDL_ARGS void *FunctionContext
 #define RTW_TIMER_HDL_NAME(name) rtw_##name##_timer_hdl
 #define RTW_DECLARE_TIMER_HDL(name) \
diff --git a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
index 1b892c4..26dbbfc 100644
--- a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
@@ -29,9 +29,12 @@ void rtw_init_mlme_timer(struct adapter *padapter)
 {
 	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-	_init_timer(&(pmlmepriv->assoc_timer), padapter->pnetdev, _rtw_join_timeout_handler, padapter);
-	_init_timer(&(pmlmepriv->scan_to_timer), padapter->pnetdev, rtw_scan_timeout_handler, padapter);
-	_init_timer(&(pmlmepriv->dynamic_chk_timer), padapter->pnetdev, rtw_dynamic_check_timer_handlder, padapter);
+	setup_timer(&pmlmepriv->assoc_timer, _rtw_join_timeout_handler,
+		    (unsigned long)padapter);
+	setup_timer(&pmlmepriv->scan_to_timer, rtw_scan_timeout_handler,
+		    (unsigned long)padapter);
+	setup_timer(&pmlmepriv->dynamic_chk_timer,
+		    rtw_dynamic_check_timer_handlder, (unsigned long)padapter);
 }
 
 void rtw_os_indicate_connect(struct adapter *adapter)
@@ -131,15 +134,18 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 
 void init_addba_retry_timer(struct adapter *padapter, struct sta_info *psta)
 {
-	_init_timer(&psta->addba_retry_timer, padapter->pnetdev, addba_timer_hdl, psta);
+	setup_timer(&psta->addba_retry_timer, addba_timer_hdl,
+		    (unsigned long)psta);
 }
 
 void init_mlme_ext_timer(struct adapter *padapter)
 {
 	struct	mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 
-	_init_timer(&pmlmeext->survey_timer, padapter->pnetdev, survey_timer_hdl, padapter);
-	_init_timer(&pmlmeext->link_timer, padapter->pnetdev, link_timer_hdl, padapter);
+	setup_timer(&pmlmeext->survey_timer, survey_timer_hdl,
+		    (unsigned long)padapter);
+	setup_timer(&pmlmeext->link_timer, link_timer_hdl,
+		    (unsigned long)padapter);
 }
 
 #ifdef CONFIG_88EU_AP_MODE
diff --git a/drivers/staging/rtl8188eu/os_dep/recv_linux.c b/drivers/staging/rtl8188eu/os_dep/recv_linux.c
index 05427c4..68525c3 100644
--- a/drivers/staging/rtl8188eu/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/recv_linux.c
@@ -195,5 +195,7 @@ void rtw_init_recv_timer(struct recv_reorder_ctrl *preorder_ctrl)
 {
 	struct adapter *padapter = preorder_ctrl->padapter;
 
-	_init_timer(&(preorder_ctrl->reordering_ctrl_timer), padapter->pnetdev, rtw_reordering_ctrl_timeout_handler, preorder_ctrl);
+	setup_timer(&preorder_ctrl->reordering_ctrl_timer,
+		    rtw_reordering_ctrl_timeout_handler,
+		    (unsigned long)preorder_ctrl);
 }
-- 
1.9.1


