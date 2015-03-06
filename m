X-GM-THRID: 6865699209216
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1f5d1c1fbc348787
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.206.193 with SMTP id fv1mr6908180icb.29.1425639238434;
        Fri, 06 Mar 2015 02:53:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.40.199 with SMTP id z7ls108942obk.0.gmail; Fri, 06 Mar
 2015 02:53:58 -0800 (PST)
X-Received: by 10.182.96.131 with SMTP id ds3mr13218852obb.35.1425639238153;
        Fri, 06 Mar 2015 02:53:58 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id ks4si1286365pbc.1.2015.03.06.02.53.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 02:53:58 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbnh10 with SMTP id nh10so48396664pdb.4
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 02:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hal9eq0WxmRlsoQj01Eip9/qDmy8ZBpbPDictj9Bybo=;
        b=y9HrkKAmA0eSRkYhRtzPHDlHzYMEDAbOX72VJutXR2uTbyDMzSrXzsT0f7PFrp18Do
         z9G3gi4BfyklqEIiLwcl0GFL6OkR27uhiAtmtoAcTDmmm3DpklXbZCRqVk9L2KKpXsnr
         90GlJaqmrHc0x8xHUKz2XEdpuzZrqDs/VFtNcPF7e27tK1wgEEm6KBUUkIyIgeQ3sRQd
         e+sGS0l6XB5sq5SSWiLR4kuWDQEQ1paxLdFKLn8+Z32ztCbVOKbVzt9LH4LFh+fyFN1f
         RBoghXjWBGR16FXYs9MH12SWfYHvW637x5Xo31TbOgWBHWjbPocAnTqhQGR0jB58otz6
         72KA==
X-Received: by 10.68.101.130 with SMTP id fg2mr24673295pbb.118.1425639238032;
        Fri, 06 Mar 2015 02:53:58 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.241.177])
        by mx.google.com with ESMTPSA id pl8sm9222557pdb.72.2015.03.06.02.53.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 06 Mar 2015 02:53:56 -0800 (PST)
Date: Fri, 6 Mar 2015 16:23:51 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8712: Eliminate use of _cancel_timer
Message-ID: <aae0b13e15fe7ec1677a6854c63daceaf425ee14.1425638418.git.vthakkar1994@gmail.com>
References: <cover.1425638418.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425638418.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Use timer API function del_timer_sync instead of driver
specific function _cancel_timer as besides deactivating
a timer, it also ensures that the timer is stopped on all
CPUs before the driver exists. Also, variables
timer_cancelled and bool are removed as they are no longer
needed.

@a@
expression x;
identifier y;
@@

- _cancel_timer (&x, &y);
+ del_timer_sync (&x);

@@type T; identifier a.y;@@

- T y;
...when != y

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rtl8712/osdep_service.h | 6 ------
 drivers/staging/rtl8712/rtl871x_cmd.c   | 3 +--
 drivers/staging/rtl8712/rtl871x_mlme.c  | 8 ++------
 drivers/staging/rtl8712/rtl871x_xmit.c  | 3 +--
 4 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8712/osdep_service.h b/drivers/staging/rtl8712/osdep_service.h
index 33be778..0a7f58c 100644
--- a/drivers/staging/rtl8712/osdep_service.h
+++ b/drivers/staging/rtl8712/osdep_service.h
@@ -60,12 +60,6 @@ struct	__queue	{
 #define LIST_CONTAINOR(ptr, type, member) \
 	((type *)((char *)(ptr)-(SIZE_T)(&((type *)0)->member)))
 
-static inline void _cancel_timer(struct timer_list *ptimer, u8 *bcancelled)
-{
-	del_timer(ptimer);
-	*bcancelled = true; /*true ==1; false==0*/
-}
-
 #ifndef BIT
 	#define BIT(x)	(1 << (x))
 #endif
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index d105ade..1a1c38f 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -900,7 +900,6 @@ void r8712_createbss_cmd_callback(struct _adapter *padapter,
 				  struct cmd_obj *pcmd)
 {
 	unsigned long irqL;
-	u8 timer_cancelled;
 	struct sta_info *psta = NULL;
 	struct wlan_network *pwlan = NULL;
 	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -911,7 +910,7 @@ void r8712_createbss_cmd_callback(struct _adapter *padapter,
 	if (pcmd->res != H2C_SUCCESS)
 		mod_timer(&pmlmepriv->assoc_timer,
 			  jiffies + msecs_to_jiffies(1));
-	_cancel_timer(&pmlmepriv->assoc_timer, &timer_cancelled);
+	del_timer_sync(&pmlmepriv->assoc_timer);
 #ifdef __BIG_ENDIAN
 	/* endian_convert */
 	pnetwork->Length = le32_to_cpu(pnetwork->Length);
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 8faa461..ef8a10e 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -582,9 +582,7 @@ void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
 	spin_lock_irqsave(&pmlmepriv->lock, irqL);
 
 	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true) {
-		u8 timer_cancelled;
-
-		_cancel_timer(&pmlmepriv->scan_to_timer, &timer_cancelled);
+		del_timer_sync(&pmlmepriv->scan_to_timer);
 
 		_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY);
 	}
@@ -717,7 +715,6 @@ void r8712_ind_disconnect(struct _adapter *padapter)
 void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 {
 	unsigned long irqL = 0, irqL2;
-	u8 timer_cancelled;
 	struct sta_info	*ptarget_sta = NULL, *pcur_sta = NULL;
 	struct sta_priv	*pstapriv = &adapter->stapriv;
 	struct mlme_priv	*pmlmepriv = &adapter->mlmepriv;
@@ -911,8 +908,7 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)
 				== true)
 				r8712_indicate_connect(adapter);
-			_cancel_timer(&pmlmepriv->assoc_timer,
-				      &timer_cancelled);
+			del_timer_sync(&pmlmepriv->assoc_timer);
 		} else
 			goto ignore_joinbss_callback;
 	} else {
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index a28af03..2e4fa88 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -203,13 +203,12 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 	pattrib->ether_type = ntohs(etherhdr.h_proto);
 
 {
-	u8 bool;
 	/*If driver xmit ARP packet, driver can set ps mode to initial
 	 * setting. It stands for getting DHCP or fix IP.*/
 	if (pattrib->ether_type == 0x0806) {
 		if (padapter->pwrctrlpriv.pwr_mode !=
 		    padapter->registrypriv.power_mgnt) {
-			_cancel_timer(&(pmlmepriv->dhcp_timer), &bool);
+			del_timer_sync(&pmlmepriv->dhcp_timer);
 			r8712_set_ps_mode(padapter, padapter->registrypriv.
 				power_mgnt, padapter->registrypriv.smart_ps);
 		}
-- 
1.9.1


