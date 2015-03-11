X-GM-THRID: 7618575728640
X-Received: by 10.70.96.163 with SMTP id dt3mr31438446pdb.1.1426054302916;
        Tue, 10 Mar 2015 23:11:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.214 with SMTP id 83ls313316ioq.75.gmail; Tue, 10 Mar
 2015 23:11:42 -0700 (PDT)
X-Received: by 10.50.61.132 with SMTP id p4mr58908616igr.7.1426054302722;
        Tue, 10 Mar 2015 23:11:42 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id ni4si515528pdb.2.2015.03.10.23.11.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 23:11:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22c.google.com with SMTP id o5so8587518pdn.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 23:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=1nrx7jmOZIhL5OGMT3DeE1e6YFFWBj1o0rHevu5CDUo=;
        b=KxCIxrXmfVewwINaE9ZgTj1oxLmKvgkp04g9Y/ZSbhopW7ro0bOXNc3HJdET2YPzP8
         eCrOdhn1H0AMq1y6kNP5+R/JmMKHK2ND73t9GreaIN9zcujfYscpffulRTNt9lfk0Yj6
         emTvVQiVPj3GGkHDv73+NIAMPhbFk5ifvuDmkCNw/grSPQwf+qstNDsr4eFT/NSylD1W
         +hS/seK0/UMrPkY5H4v62/19Wu3/JlohwpsoxkJPS6rrTa7qWD0V28xGwP7pYNfA2TFH
         InMghhgbea4bB/LnbPlOztc3eA7VqJdxPHqhaI98HM/M4yS0gSD/Mnt71qD8ljokoD4S
         aJjg==
X-Received: by 10.70.65.105 with SMTP id w9mr15892934pds.129.1426054301490;
        Tue, 10 Mar 2015 23:11:41 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([106.66.86.3])
        by mx.google.com with ESMTPSA id xh3sm4055260pab.25.2015.03.10.23.11.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 23:11:40 -0700 (PDT)
Date: Wed, 11 Mar 2015 11:41:24 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/2] Staging: rtl8188eu: Eliminate use of _init_timer
Message-ID: <8c89eef0f91462c5d88eb419225dffb8d878daa5.1426053765.git.vthakkar1994@gmail.com>
References: <cover.1426053765.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426053765.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of API function setup_timer
instead of driver specific function init_timer as it is
the preferred and standard way to set and setup the timer.
To be compatible with the changes, argument types of
referenced functions are changed. Also, definition of
function _init_timer is removed as it is no longer needed
after this change.

Here, these cases are handled using Coccinelle and
semantic patch used for this is as follows:

@@ expression x, y; identifier a, b;@@

- _init_timer (&x, y, a, b);
+ setup_timer (&x, a, (unsigned long)b);

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
v2: Change commit log
  - Shorten the lines to 80 characters
  - Redo patch against staging-testing
v3: To fix the build problems of v2, change
    the argument types of referenced
    functions
v4: Fix one build error of refereced
    function

 drivers/staging/rtl8188eu/core/rtw_led.c          |  7 ++++---
 drivers/staging/rtl8188eu/core/rtw_mlme.c         | 12 ++++++------
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c     | 12 ++++++------
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c      |  8 +++++---
 drivers/staging/rtl8188eu/core/rtw_recv.c         | 14 ++++++++------
 drivers/staging/rtl8188eu/include/osdep_service.h |  9 ---------
 drivers/staging/rtl8188eu/include/rtw_led.h       |  2 +-
 drivers/staging/rtl8188eu/include/rtw_mlme.h      |  6 +++---
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h  |  6 +++---
 drivers/staging/rtl8188eu/include/rtw_recv.h      |  2 +-
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c     | 18 ++++++++++++------
 drivers/staging/rtl8188eu/os_dep/recv_linux.c     |  5 +++--
 12 files changed, 52 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index e8b82b2f..94405dc 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -22,9 +22,9 @@
 /*		Callback function of LED BlinkTimer, */
 /*		it just schedules to corresponding BlinkWorkItem/led_blink_hdl */
 /*  */
-void BlinkTimerCallback(void *data)
+void BlinkTimerCallback(unsigned long data)
 {
-	struct LED_871x *pLed = data;
+	struct LED_871x *pLed = (struct LED_871x *)data;
 	struct adapter *padapter = pLed->padapter;
 
 	if ((padapter->bSurpriseRemoved) || (padapter->bDriverStopped))
@@ -72,7 +72,8 @@ void InitLed871x(struct adapter *padapter, struct LED_871x *pLed)
 
 	ResetLedStatus(pLed);
 
-	_init_timer(&(pLed->BlinkTimer), padapter->pnetdev, BlinkTimerCallback, pLed);
+	setup_timer(&(pLed->BlinkTimer), BlinkTimerCallback,
+		    (unsigned long)pLed);
 
 	INIT_WORK(&(pLed->BlinkWorkItem), BlinkWorkItemCallback);
 }
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index f006679..bd87b7d 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1364,9 +1364,9 @@ void rtw_cpwm_event_callback(struct adapter *padapter, u8 *pbuf)
 * _rtw_join_timeout_handler - Timeout/faliure handler for CMD JoinBss
 * @adapter: pointer to struct adapter structure
 */
-void _rtw_join_timeout_handler (void *function_context)
+void _rtw_join_timeout_handler (unsigned long data)
 {
-	struct adapter *adapter = function_context;
+	struct adapter *adapter = (struct adapter *)data;
 	struct	mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	int do_join_r;
 
@@ -1406,9 +1406,9 @@ void _rtw_join_timeout_handler (void *function_context)
 * rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
 * @adapter: pointer to struct adapter structure
 */
-void rtw_scan_timeout_handler (void *function_context)
+void rtw_scan_timeout_handler (unsigned long data)
 {
-	struct adapter *adapter = function_context;
+	struct adapter *adapter = (struct adapter *)data;
 	struct	mlme_priv *pmlmepriv = &adapter->mlmepriv;
 
 	DBG_88E(FUNC_ADPT_FMT" fw_state=%x\n", FUNC_ADPT_ARG(adapter), get_fwstate(pmlmepriv));
@@ -1433,9 +1433,9 @@ static void rtw_auto_scan_handler(struct adapter *padapter)
 	}
 }
 
-void rtw_dynamic_check_timer_handlder(void *function_context)
+void rtw_dynamic_check_timer_handlder(unsigned long data)
 {
-	struct adapter *adapter = (struct adapter *)function_context;
+	struct adapter *adapter = (struct adapter *)data;
 	struct registry_priv *pregistrypriv = &adapter->registrypriv;
 
 	if (!adapter)
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index e496276..ec80860 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -4835,9 +4835,9 @@ void linked_status_chk(struct adapter *padapter)
 	}
 }
 
-void survey_timer_hdl(void *function_context)
+void survey_timer_hdl(unsigned long data)
 {
-	struct adapter *padapter = function_context;
+	struct adapter *padapter = (struct adapter *)data;
 	struct cmd_obj	*ph2c;
 	struct sitesurvey_parm	*psurveyPara;
 	struct cmd_priv					*pcmdpriv = &padapter->cmdpriv;
@@ -4875,9 +4875,9 @@ exit_survey_timer_hdl:
 	return;
 }
 
-void link_timer_hdl(void *function_context)
+void link_timer_hdl(unsigned long data)
 {
-	struct adapter *padapter = (struct adapter *)function_context;
+	struct adapter *padapter = (struct adapter *)data;
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
 
@@ -4912,9 +4912,9 @@ void link_timer_hdl(void *function_context)
 	return;
 }
 
-void addba_timer_hdl(void *function_context)
+void addba_timer_hdl(unsigned long data)
 {
-	struct sta_info *psta = function_context;
+	struct sta_info *psta = (struct sta_info *)data;
 	struct ht_priv	*phtpriv;
 
 	if (!psta)
diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index df463a2..ec0a8a4 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -281,9 +281,9 @@ exit:
 	pwrpriv->ps_processing = false;
 }
 
-static void pwr_state_check_handler(void *FunctionContext)
+static void pwr_state_check_handler(unsigned long data)
 {
-	struct adapter *padapter = FunctionContext;
+	struct adapter *padapter = (struct adapter *)data;
 	rtw_ps_cmd(padapter);
 }
 
@@ -544,7 +544,9 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 
 	pwrctrlpriv->btcoex_rfon = false;
 
-	_init_timer(&(pwrctrlpriv->pwr_state_check_timer), padapter->pnetdev, pwr_state_check_handler, (u8 *)padapter);
+	setup_timer(&pwrctrlpriv->pwr_state_check_timer,
+		    pwr_state_check_handler,
+		    (unsigned long)padapter);
 }
 
 inline void rtw_set_ips_deny(struct adapter *padapter, u32 ms)
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 0db421e..258336f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -41,7 +41,7 @@ static u8 rtw_rfc1042_header[] = {
        0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
 };
 
-void rtw_signal_stat_timer_hdl(RTW_TIMER_HDL_ARGS);
+void rtw_signal_stat_timer_hdl(unsigned long data);
 
 void _rtw_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv)
 {
@@ -98,7 +98,9 @@ int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 
 	res = rtw_hal_init_recv_priv(padapter);
 
-	_init_timer(&precvpriv->signal_stat_timer, padapter->pnetdev, RTW_TIMER_HDL_NAME(signal_stat), padapter);
+	setup_timer(&precvpriv->signal_stat_timer,
+		    rtw_signal_stat_timer_hdl,
+		    (unsigned long)padapter);
 
 	precvpriv->signal_stat_sampling_interval = 1000; /* ms */
 
@@ -1946,9 +1948,9 @@ _err_exit:
 	return _FAIL;
 }
 
-void rtw_reordering_ctrl_timeout_handler(void *pcontext)
+void rtw_reordering_ctrl_timeout_handler(unsigned long data)
 {
-	struct recv_reorder_ctrl *preorder_ctrl = pcontext;
+	struct recv_reorder_ctrl *preorder_ctrl = (struct recv_reorder_ctrl *)data;
 	struct adapter *padapter = preorder_ctrl->padapter;
 	struct __queue *ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;
 
@@ -2132,9 +2134,9 @@ _recv_entry_drop:
 	return ret;
 }
 
-void rtw_signal_stat_timer_hdl(RTW_TIMER_HDL_ARGS)
+void rtw_signal_stat_timer_hdl(unsigned long data)
 {
-	struct adapter *adapter = (struct adapter *)FunctionContext;
+	struct adapter *adapter = (struct adapter *)data;
 	struct recv_priv *recvpriv = &adapter->recvpriv;
 
 	u32 tmp_s, tmp_q;
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
diff --git a/drivers/staging/rtl8188eu/include/rtw_led.h b/drivers/staging/rtl8188eu/include/rtw_led.h
index 23f0cfe..7a5303d 100644
--- a/drivers/staging/rtl8188eu/include/rtw_led.h
+++ b/drivers/staging/rtl8188eu/include/rtw_led.h
@@ -103,7 +103,7 @@ struct led_priv {
 			(adapt)->ledpriv.LedControlHandler((adapt), (action)); \
 	} while (0)
 
-void BlinkTimerCallback(void *data);
+void BlinkTimerCallback(unsigned long data);
 void BlinkWorkItemCallback(struct work_struct *work);
 
 void ResetLedStatus(struct LED_871x *pLed);
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme.h b/drivers/staging/rtl8188eu/include/rtw_mlme.h
index 8d83f7c..3f7d1e6 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme.h
@@ -551,10 +551,10 @@ void rtw_update_registrypriv_dev_network(struct adapter *adapter);
 
 void rtw_get_encrypt_decrypt_from_registrypriv(struct adapter *adapter);
 
-void _rtw_join_timeout_handler(void *function_context);
-void rtw_scan_timeout_handler(void *function_context);
+void _rtw_join_timeout_handler(unsigned long data);
+void rtw_scan_timeout_handler(unsigned long data);
 
-void rtw_dynamic_check_timer_handlder(void *function_context);
+void rtw_dynamic_check_timer_handlder(unsigned long data);
 #define rtw_is_scan_deny(adapter) false
 #define rtw_clear_scan_deny(adapter) do {} while (0)
 #define rtw_set_scan_deny_timer_hdl(adapter) do {} while (0)
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
index 51c9173..2bebf46 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
@@ -645,9 +645,9 @@ void mlmeext_sta_add_event_callback(struct adapter *padapter,
 
 void linked_status_chk(struct adapter *padapter);
 
-void survey_timer_hdl(void *function_context);
-void link_timer_hdl(void *funtion_context);
-void addba_timer_hdl(void *function_context);
+void survey_timer_hdl(unsigned long data);
+void link_timer_hdl(unsigned long data);
+void addba_timer_hdl(unsigned long data);
 
 #define set_survey_timer(mlmeext, ms) \
 	mod_timer(&mlmeext->survey_timer, jiffies +	\
diff --git a/drivers/staging/rtl8188eu/include/rtw_recv.h b/drivers/staging/rtl8188eu/include/rtw_recv.h
index 241a871..eb1ac3d 100644
--- a/drivers/staging/rtl8188eu/include/rtw_recv.h
+++ b/drivers/staging/rtl8188eu/include/rtw_recv.h
@@ -278,7 +278,7 @@ void rtw_free_recvframe_queue(struct __queue *pframequeue,
 			      struct __queue *pfree_recv_queue);
 u32 rtw_free_uc_swdec_pending_queue(struct adapter *adapter);
 
-void rtw_reordering_ctrl_timeout_handler(void *pcontext);
+void rtw_reordering_ctrl_timeout_handler(unsigned long data);
 
 static inline u8 *get_rxmem(struct recv_frame *precvframe)
 {
diff --git a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
index eebb7d7..baff1e2 100644
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
@@ -130,15 +133,18 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 
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
index 05427c4..0570132 100644
--- a/drivers/staging/rtl8188eu/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/recv_linux.c
@@ -193,7 +193,8 @@ _recv_indicatepkt_drop:
 
 void rtw_init_recv_timer(struct recv_reorder_ctrl *preorder_ctrl)
 {
-	struct adapter *padapter = preorder_ctrl->padapter;
 
-	_init_timer(&(preorder_ctrl->reordering_ctrl_timer), padapter->pnetdev, rtw_reordering_ctrl_timeout_handler, preorder_ctrl);
+	setup_timer(&preorder_ctrl->reordering_ctrl_timer,
+		    rtw_reordering_ctrl_timeout_handler,
+		    (unsigned long)preorder_ctrl);
 }
-- 
1.9.1


