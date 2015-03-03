X-GM-THRID: 4691261915136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,819e770589803338
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.126.12 with SMTP id mu12mr34530710obb.13.1425402267777;
        Tue, 03 Mar 2015 09:04:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.141 with SMTP id g13ls241462ioj.69.gmail; Tue, 03 Mar
 2015 09:04:27 -0800 (PST)
X-Received: by 10.43.9.135 with SMTP id ow7mr2054089icb.29.1425402267512;
        Tue, 03 Mar 2015 09:04:27 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22b.google.com (mail-pd0-x22b.google.com. [2607:f8b0:400e:c02::22b])
        by gmr-mx.google.com with ESMTPS id bo1si202452pbc.0.2015.03.03.09.04.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 09:04:27 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) client-ip=2607:f8b0:400e:c02::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so49884010pdj.6
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 09:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=a15nsfGf5xyMvoT5aZ5dRL4FtdOKTVaf1hU+vIHkvjY=;
        b=hQX+EAWrH3Sk53OJS7fVceGKPH5lHXk6J6XTwfmrTThsZyhilfYS3wbi4XRIBre2y+
         SYe6IP7QS5CgQG3FsspiSlb9O+PPzTxrGht+bqT3PV9Vn0vOd9gFeiVQAikguqvlD7Kx
         OrW3lFSNz2MeHOcrtUEReC7MsXpFsGt6H7p3zXO86rLmWRddpuPDL+Qerqur//Yr9aRW
         kdJmCT4nr3pXo8c0pS8/dEOo5DZs/8yLpIQjhtX7XsVSsfzsEB2n67MkrCARwGhpDvxY
         kwv1mMpD7savBEaFxg1yZwH6sGvCCgJAdAE+HoeNlMPohPdxYo8AYPzO+e0jTAXDA0vH
         tlzg==
X-Received: by 10.70.129.135 with SMTP id nw7mr56893311pdb.165.1425402267307;
        Tue, 03 Mar 2015 09:04:27 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.21])
        by mx.google.com with ESMTPSA id nk16sm1463731pdb.78.2015.03.03.09.04.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 09:04:26 -0800 (PST)
Date: Tue, 3 Mar 2015 22:34:22 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] Staging: rtl8712: Eliminate use of _init_timer
Message-ID: <20150303170422.GA20495@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of API function setup_timer
instead of driver specific function _init_timer as it is
the preferred and standard way to setup and set the timer.
To be compatible with the change, argument types of
referenced functions are changed. Also, definition of
function _init_timer is removed as it is no longer needed
after this change.

This is done using Coccinelle and semantic patch used for
this is as follows:

@@ expression x, y; identifier a, b;@@

- _init_timer (&x, y, a, b);
+ setup_timer (&x, a, (unsigned long)b);

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
Changes since v1:
	- To Fix the build problems of v1,
	  argument types of referenced functions
	  are changed
	- Change commit log
	- Here, I am sending a v2 of this patch
	  only instead of whole series as another
	  patch of this patch set is already added
	  in staging-testing

 drivers/staging/rtl8712/mlme_linux.c       | 48 +++++++++++++++---------------
 drivers/staging/rtl8712/os_intfs.c         |  4 +--
 drivers/staging/rtl8712/osdep_service.h    |  9 ------
 drivers/staging/rtl8712/recv_linux.c       | 11 ++++---
 drivers/staging/rtl8712/rtl8712_led.c      |  3 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.c  |  8 ++---
 drivers/staging/rtl8712/rtl871x_security.c |  4 +--
 drivers/staging/rtl8712/rtl871x_security.h |  2 +-
 8 files changed, 40 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index 53999e8..8c5a475 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -32,39 +32,39 @@
 #include "drv_types.h"
 #include "mlme_osdep.h"
 
-static void sitesurvey_ctrl_handler(void *FunctionContext)
+static void sitesurvey_ctrl_handler(unsigned long data)
 {
-	struct _adapter *adapter = (struct _adapter *)FunctionContext;
+	struct _adapter *adapter = (struct _adapter *)data;
 
 	_r8712_sitesurvey_ctrl_handler(adapter);
 	mod_timer(&adapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
 		  jiffies + msecs_to_jiffies(3000));
 }
 
-static void join_timeout_handler (void *FunctionContext)
+static void join_timeout_handler (unsigned long data)
 {
-	struct _adapter *adapter = (struct _adapter *)FunctionContext;
+	struct _adapter *adapter = (struct _adapter *)data;
 
 	_r8712_join_timeout_handler(adapter);
 }
 
-static void _scan_timeout_handler (void *FunctionContext)
+static void _scan_timeout_handler (unsigned long data)
 {
-	struct _adapter *adapter = (struct _adapter *)FunctionContext;
+	struct _adapter *adapter = (struct _adapter *)data;
 
 	r8712_scan_timeout_handler(adapter);
 }
 
-static void dhcp_timeout_handler (void *FunctionContext)
+static void dhcp_timeout_handler (unsigned long data)
 {
-	struct _adapter *adapter = (struct _adapter *)FunctionContext;
+	struct _adapter *adapter = (struct _adapter *)data;
 
 	_r8712_dhcp_timeout_handler(adapter);
 }
 
-static void wdg_timeout_handler (void *FunctionContext)
+static void wdg_timeout_handler (unsigned long data)
 {
-	struct _adapter *adapter = (struct _adapter *)FunctionContext;
+	struct _adapter *adapter = (struct _adapter *)data;
 
 	_r8712_wdg_timeout_handler(adapter);
 
@@ -76,17 +76,17 @@ void r8712_init_mlme_timer(struct _adapter *padapter)
 {
 	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-	_init_timer(&(pmlmepriv->assoc_timer), padapter->pnetdev,
-		    join_timeout_handler, (pmlmepriv->nic_hdl));
-	_init_timer(&(pmlmepriv->sitesurveyctrl.sitesurvey_ctrl_timer),
-		    padapter->pnetdev, sitesurvey_ctrl_handler,
-		    (u8 *)(pmlmepriv->nic_hdl));
-	_init_timer(&(pmlmepriv->scan_to_timer), padapter->pnetdev,
-		    _scan_timeout_handler, (pmlmepriv->nic_hdl));
-	_init_timer(&(pmlmepriv->dhcp_timer), padapter->pnetdev,
-		    dhcp_timeout_handler, (u8 *)(pmlmepriv->nic_hdl));
-	_init_timer(&(pmlmepriv->wdg_timer), padapter->pnetdev,
-		    wdg_timeout_handler, (u8 *)(pmlmepriv->nic_hdl));
+	setup_timer(&pmlmepriv->assoc_timer, join_timeout_handler,
+		    (unsigned long)padapter);
+	setup_timer(&pmlmepriv->sitesurveyctrl.sitesurvey_ctrl_timer,
+		    sitesurvey_ctrl_handler,
+		    (unsigned long)padapter);
+	setup_timer(&pmlmepriv->scan_to_timer, _scan_timeout_handler,
+		    (unsigned long)padapter);
+	setup_timer(&pmlmepriv->dhcp_timer, dhcp_timeout_handler,
+		    (unsigned long)padapter);
+	setup_timer(&pmlmepriv->wdg_timer, wdg_timeout_handler,
+		    (unsigned long)padapter);
 }
 
 void r8712_os_indicate_connect(struct _adapter *adapter)
@@ -118,9 +118,9 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 					   btkip_countermeasure;
 		memset((unsigned char *)&adapter->securitypriv, 0,
 			 sizeof(struct security_priv));
-		_init_timer(&(adapter->securitypriv.tkip_timer),
-			    adapter->pnetdev, r8712_use_tkipkey_handler,
-			    adapter);
+		setup_timer(&adapter->securitypriv.tkip_timer,
+			    r8712_use_tkipkey_handler,
+			    (unsigned long)adapter);
 		/* Restore the PMK information to securitypriv structure
 		 * for the following connection. */
 		memcpy(&adapter->securitypriv.PMKIDList[0],
diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 64cdcee..ebfb29e 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -323,8 +323,8 @@ u8 r8712_init_drv_sw(struct _adapter *padapter)
 	_r8712_init_recv_priv(&padapter->recvpriv, padapter);
 	memset((unsigned char *)&padapter->securitypriv, 0,
 	       sizeof(struct security_priv));
-	_init_timer(&(padapter->securitypriv.tkip_timer), padapter->pnetdev,
-		    r8712_use_tkipkey_handler, padapter);
+	setup_timer(&padapter->securitypriv.tkip_timer,
+		    r8712_use_tkipkey_handler, (unsigned long)padapter);
 	_r8712_init_sta_priv(&padapter->stapriv);
 	padapter->stapriv.padapter = padapter;
 	r8712_init_bcmc_stainfo(padapter);
diff --git a/drivers/staging/rtl8712/osdep_service.h b/drivers/staging/rtl8712/osdep_service.h
index 54c4c47..c6dc362 100644
--- a/drivers/staging/rtl8712/osdep_service.h
+++ b/drivers/staging/rtl8712/osdep_service.h
@@ -60,15 +60,6 @@ struct	__queue	{
 #define LIST_CONTAINOR(ptr, type, member) \
 	((type *)((char *)(ptr)-(SIZE_T)(&((type *)0)->member)))
 
-static inline void _init_timer(struct timer_list *ptimer,
-			       struct  net_device *padapter,
-			       void *pfunc, void *cntx)
-{
-	ptimer->function = pfunc;
-	ptimer->data = (addr_t)cntx;
-	init_timer(ptimer);
-}
-
 static inline void _cancel_timer(struct timer_list *ptimer, u8 *bcancelled)
 {
 	del_timer(ptimer);
diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 3640dd4..799a0f9 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -137,18 +137,17 @@ _recv_indicatepkt_drop:
 	 precvpriv->rx_drop++;
 }
 
-static void _r8712_reordering_ctrl_timeout_handler (void *FunctionContext)
+static void _r8712_reordering_ctrl_timeout_handler (unsigned long data)
 {
 	struct recv_reorder_ctrl *preorder_ctrl =
-			 (struct recv_reorder_ctrl *)FunctionContext;
+			 (struct recv_reorder_ctrl *)data;
 
 	r8712_reordering_ctrl_timeout_handler(preorder_ctrl);
 }
 
 void r8712_init_recv_timer(struct recv_reorder_ctrl *preorder_ctrl)
 {
-	struct _adapter *padapter = preorder_ctrl->padapter;
-
-	_init_timer(&(preorder_ctrl->reordering_ctrl_timer), padapter->pnetdev,
-		    _r8712_reordering_ctrl_timeout_handler, preorder_ctrl);
+	setup_timer(&preorder_ctrl->reordering_ctrl_timer,
+		     _r8712_reordering_ctrl_timeout_handler,
+		     (unsigned long)preorder_ctrl);
 }
diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index 0c7dfee..6085689 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -97,7 +97,8 @@ static void InitLed871x(struct _adapter *padapter, struct LED_871x *pLed,
 	pLed->bLedBlinkInProgress = false;
 	pLed->BlinkTimes = 0;
 	pLed->BlinkingLedState = LED_UNKNOWN;
-	_init_timer(&(pLed->BlinkTimer), nic, BlinkTimerCallback, pLed);
+	setup_timer(&pLed->BlinkTimer, BlinkTimerCallback,
+		    (unsigned long)pLed);
 	INIT_WORK(&pLed->BlinkWorkItem, BlinkWorkItemCallback);
 }
 
diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.c b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
index ed2844d..ea732ee 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
@@ -165,9 +165,9 @@ static void rpwm_workitem_callback(struct work_struct *work)
 	}
 }
 
-static void rpwm_check_handler (void *FunctionContext)
+static void rpwm_check_handler (unsigned long data)
 {
-	struct _adapter *adapter = (struct _adapter *)FunctionContext;
+	struct _adapter *adapter = (struct _adapter *)data;
 
 	_rpwm_check_handler(adapter);
 }
@@ -186,8 +186,8 @@ void r8712_init_pwrctrl_priv(struct _adapter *padapter)
 	r8712_write8(padapter, 0x1025FE58, 0);
 	INIT_WORK(&pwrctrlpriv->SetPSModeWorkItem, SetPSModeWorkItemCallback);
 	INIT_WORK(&pwrctrlpriv->rpwm_workitem, rpwm_workitem_callback);
-	_init_timer(&(pwrctrlpriv->rpwm_check_timer),
-		    padapter->pnetdev, rpwm_check_handler, (u8 *)padapter);
+	setup_timer(&pwrctrlpriv->rpwm_check_timer, rpwm_check_handler,
+		    (unsigned long)padapter);
 }
 
 /*
diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index 743dd936..4d5a288 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -1392,9 +1392,9 @@ u32 r8712_aes_decrypt(struct _adapter *padapter, u8 *precvframe)
 	return _SUCCESS;
 }
 
-void r8712_use_tkipkey_handler(void *FunctionContext)
+void r8712_use_tkipkey_handler(unsigned long data)
 {
-	struct _adapter *padapter = (struct _adapter *)FunctionContext;
+	struct _adapter *padapter = (struct _adapter *)data;
 
 	padapter->securitypriv.busetkipkey = true;
 }
diff --git a/drivers/staging/rtl8712/rtl871x_security.h b/drivers/staging/rtl8712/rtl871x_security.h
index c732aea..2295f0e 100644
--- a/drivers/staging/rtl8712/rtl871x_security.h
+++ b/drivers/staging/rtl8712/rtl871x_security.h
@@ -216,7 +216,7 @@ void r8712_wep_encrypt(struct _adapter *padapter, u8  *pxmitframe);
 u32 r8712_aes_decrypt(struct _adapter *padapter, u8  *precvframe);
 u32 r8712_tkip_decrypt(struct _adapter *padapter, u8  *precvframe);
 void r8712_wep_decrypt(struct _adapter *padapter, u8  *precvframe);
-void r8712_use_tkipkey_handler(void *FunctionContext);
+void r8712_use_tkipkey_handler(unsigned long data);
 
 #endif	/*__RTL871X_SECURITY_H_ */
 
-- 
1.9.1


