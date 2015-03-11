X-GM-THRID: 6865699209216
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1f5d1c1fbc348787
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.51.170 with SMTP id b30mr36525598yhc.34.1426054885061;
        Tue, 10 Mar 2015 23:21:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.171.230 with SMTP id ax6ls332060igc.19.gmail; Tue, 10 Mar
 2015 23:21:24 -0700 (PDT)
X-Received: by 10.50.109.202 with SMTP id hu10mr59008808igb.4.1426054884831;
        Tue, 10 Mar 2015 23:21:24 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id pc4si551452pac.0.2015.03.10.23.21.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 23:21:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by paceu11 with SMTP id eu11so8789078pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 23:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ukNnVGJaWP7cdLI3Yz1P+SeiHI+mQlLQqco97kHht7U=;
        b=q10SpRZdQN0YRxMgq7MLSi1PYTqQ8JRyiCE5+akXKkw8ncKF30l++XCDAJu18nhbzf
         wffsTAw+8DzjXeMs7/oZSbWMzfMEgbLSlwV3ftvzoeYhlqZEY+KLp3EduVtmmQhtg2yz
         nfgOLzqK76I353rVYgmp5YSecIQ0wAs4SWU9AkZ3OfRhkUyZvytG2kayUyPrayLLf0hr
         0Ue87x7/lED+msq4xG3Onl2Y7Gz9thfbu1Pw6V75sUObim9FA846OE5uxBGQqYAPp6tD
         u7RcMwc6RyNImSP5njheyQwxXMAR/tVDexHW9XSpH3x29QbxU5bIHqTsYJETKssawQvj
         jdfw==
X-Received: by 10.66.66.166 with SMTP id g6mr75101820pat.88.1426054884691;
        Tue, 10 Mar 2015 23:21:24 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([106.66.86.3])
        by mx.google.com with ESMTPSA id fz15sm4043948pdb.54.2015.03.10.23.21.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 23:21:23 -0700 (PDT)
Date: Wed, 11 Mar 2015 11:51:12 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 2/2] Staging: rtl8712: Eliminate use of _cancel_timer
Message-ID: <2514e5f34ffb5f15eedaca2e5a17479fb2a85168.1426054595.git.vthakkar1994@gmail.com>
References: <cover.1426054595.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426054595.git.vthakkar1994@gmail.com>
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
 drivers/staging/rtl8712/rtl871x_xmit.c  | 5 ++---
 4 files changed, 5 insertions(+), 17 deletions(-)

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
index a28af03..18a3653 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -203,13 +203,12 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 	pattrib->ether_type = ntohs(etherhdr.h_proto);
 
 {
-	u8 bool;
 	/*If driver xmit ARP packet, driver can set ps mode to initial
-	 * setting. It stands for getting DHCP or fix IP.*/
+	* setting. It stands for getting DHCP or fix IP.*/
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


