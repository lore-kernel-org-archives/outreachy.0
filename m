X-GM-THRID: 4691261915136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,819e770589803338
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.147.132 with SMTP id tk4mr13945595pab.23.1425059788068;
        Fri, 27 Feb 2015 09:56:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.91.11 with SMTP id ca11ls294799obb.65.gmail; Fri, 27 Feb
 2015 09:56:27 -0800 (PST)
X-Received: by 10.182.112.167 with SMTP id ir7mr14690569obb.29.1425059787835;
        Fri, 27 Feb 2015 09:56:27 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id m1si587714pdc.0.2015.02.27.09.56.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 09:56:27 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x229.google.com with SMTP id v10so22585324pde.10
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 09:56:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=YQk1etATh4xHvPrtXd8Ug1IQ8F+wDcEUupXJMQuHqlg=;
        b=AhNyhCmQ4vcfnweDH/W5OquPoi1KCQv6c1uptqn/saJCX/QPNrzR5Z/FD3eL5LCmTx
         hz+S/BFhMCyL/w9isibEa7SywYQZ1FMYkMRjw/ZXXLJ4LRxOLEdrFu2r1CgL/LlSzpL1
         3X7MxdzcVg5oQXt4udOvjS9F/y53HUf6qoFfnWfztaJa1p355RVmc+YUaYe/zVZchl4g
         OHX45Wt0St991y/1O5dhUr7Ms7Q71Q3xZT/VhlRgXEG1Gtp/rTxtXeaaJ8tmI6zeECrF
         YcinDje1RtPo8epf11jAhkE4VTRHxWTw5BFWOvA3s8RC7r9nLsPgBp0Yt8Z1L6ze03MT
         LorQ==
X-Received: by 10.66.152.43 with SMTP id uv11mr25720377pab.121.1425059787504;
        Fri, 27 Feb 2015 09:56:27 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.97])
        by mx.google.com with ESMTPSA id tk4sm85125pbc.11.2015.02.27.09.56.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 09:56:26 -0800 (PST)
Date: Fri, 27 Feb 2015 23:26:22 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8712: Eliminate use of _init_timer
Message-ID: <043ec4bb089d339de22164416866e2fce2a5bb6a.1425058745.git.vthakkar1994@gmail.com>
References: <cover.1425058745.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425058745.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of API function setup_timer
instead of driver specific function _init_timer as it is
the preferred and standard way to setup and set the timer.
Also, definition of function _init_timer is removed as it
is no longer needed after this change.

This is done using Coccinelle and semantic patch used for
this is as follows:

@@ expression x, y; identifier a, b;@@

- _init_timer (&x, y, a, b);
+ setup_timer (&x, a, (unsigned long)b);

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rtl8712/mlme_linux.c      | 27 +++++++++++++--------------
 drivers/staging/rtl8712/os_intfs.c        |  4 ++--
 drivers/staging/rtl8712/osdep_service.h   |  9 ---------
 drivers/staging/rtl8712/recv_linux.c      |  5 +++--
 drivers/staging/rtl8712/rtl8712_led.c     |  3 ++-
 drivers/staging/rtl8712/rtl871x_pwrctrl.c |  4 ++--
 6 files changed, 22 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index 53999e8..325c1c9 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
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
@@ -118,9 +118,8 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 					   btkip_countermeasure;
 		memset((unsigned char *)&adapter->securitypriv, 0,
 			 sizeof(struct security_priv));
-		_init_timer(&(adapter->securitypriv.tkip_timer),
-			    adapter->pnetdev, r8712_use_tkipkey_handler,
-			    adapter);
+		setup_timer(&adapter->securitypriv.tkip_timer,
+			    r8712_use_tkipkey_handler, (unsigned long)adapter);
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
index 3640dd4..754f160 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -149,6 +149,7 @@ void r8712_init_recv_timer(struct recv_reorder_ctrl *preorder_ctrl)
 {
 	struct _adapter *padapter = preorder_ctrl->padapter;
 
-	_init_timer(&(preorder_ctrl->reordering_ctrl_timer), padapter->pnetdev,
-		    _r8712_reordering_ctrl_timeout_handler, preorder_ctrl);
+	setup_timer(&preorder_ctrl->reordering_ctrl_timer,
+		    _r8712_reordering_ctrl_timeout_handler,
+		    (unsigned long)preorder_ctrl);
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
index ed2844d..ae0675f 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
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
-- 
1.9.1


