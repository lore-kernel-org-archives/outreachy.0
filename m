X-GM-THRID: 9347595763712
X-Received: by 10.182.135.230 with SMTP id pv6mr86763623obb.17.1426921182875;
        Fri, 20 Mar 2015 23:59:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.116.228 with SMTP id jz4ls648134obb.45.gmail; Fri, 20 Mar
 2015 23:59:42 -0700 (PDT)
X-Received: by 10.182.5.104 with SMTP id r8mr91875151obr.19.1426921182552;
        Fri, 20 Mar 2015 23:59:42 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id l3si1129814pdo.0.2015.03.20.23.59.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 23:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id we9so131335689pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 23:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=fiPBQWVgvkNE929hTts3wG48WfOKvr5+C12AFmOShgY=;
        b=ebD26R2+if7+zH7Elx00Ne8TSI5y5Ke0xkQ8jzaF6DlTfv1m5Dz1nqw5KLhWxFwCBu
         9OgvlixM1mkZLub/xoBMOTmvx9fThr0nFoxEzMi59SUVszEc8LQX+6X4fG0QkOa2bJHN
         CX0Nc2PieulLtbXs4YZBvvK4x69XLRKhTR0L4sFqu75KelHw0GXUwZNBoUZFTq6rG+Xh
         21TRBRtAzue/jtN/3rzUzbzf61KFGq51gqp2bL1mkSwSfNwlV8RPGa2lCAByLCyowaxv
         ji/R6/c/XG8ubFatfQcrMmEFG1VjwxFkHGf5Nkqb6+wHAcQcfdinP/31OtFOGXit59Nk
         +z1g==
X-Received: by 10.68.229.138 with SMTP id sq10mr2862250pbc.136.1426921182409;
        Fri, 20 Mar 2015 23:59:42 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id i10sm10595967pdk.53.2015.03.20.23.59.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 23:59:41 -0700 (PDT)
Date: Sat, 21 Mar 2015 12:27:40 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: wlan-ng: Remove typedef hfa384x_t
Message-ID: <7fada4b1037c765507108b6f57a9be906086538f.1426920752.git.vatikaharlalka@gmail.com>
References: <cover.1426920752.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426920752.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove typedef hfa384x_t and replace its uses in the code.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h     |  64 ++++++------
 drivers/staging/wlan-ng/hfa384x_usb.c | 178 +++++++++++++++++-----------------
 drivers/staging/wlan-ng/prism2mgmt.c  |  20 ++--
 drivers/staging/wlan-ng/prism2mgmt.h  |   4 +-
 drivers/staging/wlan-ng/prism2mib.c   |  36 +++----
 drivers/staging/wlan-ng/prism2sta.c   |  40 ++++----
 drivers/staging/wlan-ng/prism2usb.c   |   8 +-
 7 files changed, 175 insertions(+), 175 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index ed90409..2c2d5f5 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1218,7 +1218,7 @@ struct prism2sta_accesslist {
 	u8 addr1[WLAN_ACCESS_MAX][ETH_ALEN];
 };
 
-typedef struct hfa384x {
+struct hfa384x {
 	/* USB support data */
 	struct usb_device *usb;
 	struct urb rx_urb;
@@ -1353,27 +1353,27 @@ typedef struct hfa384x {
 	struct prism2sta_accesslist allow;	/* Allowed station list. */
 	struct prism2sta_accesslist deny;	/* Denied station list. */
 
-} hfa384x_t;
+};
 
-void hfa384x_create(hfa384x_t *hw, struct usb_device *usb);
-void hfa384x_destroy(hfa384x_t *hw);
+void hfa384x_create(struct hfa384x *hw, struct usb_device *usb);
+void hfa384x_destroy(struct hfa384x *hw);
 
 int
-hfa384x_corereset(hfa384x_t *hw, int holdtime, int settletime, int genesis);
-int hfa384x_drvr_commtallies(hfa384x_t *hw);
-int hfa384x_drvr_disable(hfa384x_t *hw, u16 macport);
-int hfa384x_drvr_enable(hfa384x_t *hw, u16 macport);
-int hfa384x_drvr_flashdl_enable(hfa384x_t *hw);
-int hfa384x_drvr_flashdl_disable(hfa384x_t *hw);
-int hfa384x_drvr_flashdl_write(hfa384x_t *hw, u32 daddr, void *buf, u32 len);
-int hfa384x_drvr_getconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len);
-int hfa384x_drvr_ramdl_enable(hfa384x_t *hw, u32 exeaddr);
-int hfa384x_drvr_ramdl_disable(hfa384x_t *hw);
-int hfa384x_drvr_ramdl_write(hfa384x_t *hw, u32 daddr, void *buf, u32 len);
-int hfa384x_drvr_readpda(hfa384x_t *hw, void *buf, unsigned int len);
-int hfa384x_drvr_setconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len);
-
-static inline int hfa384x_drvr_getconfig16(hfa384x_t *hw, u16 rid, void *val)
+hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime, int genesis);
+int hfa384x_drvr_commtallies(struct hfa384x *hw);
+int hfa384x_drvr_disable(struct hfa384x *hw, u16 macport);
+int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport);
+int hfa384x_drvr_flashdl_enable(struct hfa384x *hw);
+int hfa384x_drvr_flashdl_disable(struct hfa384x *hw);
+int hfa384x_drvr_flashdl_write(struct hfa384x *hw, u32 daddr, void *buf, u32 len);
+int hfa384x_drvr_getconfig(struct hfa384x *hw, u16 rid, void *buf, u16 len);
+int hfa384x_drvr_ramdl_enable(struct hfa384x *hw, u32 exeaddr);
+int hfa384x_drvr_ramdl_disable(struct hfa384x *hw);
+int hfa384x_drvr_ramdl_write(struct hfa384x *hw, u32 daddr, void *buf, u32 len);
+int hfa384x_drvr_readpda(struct hfa384x *hw, void *buf, unsigned int len);
+int hfa384x_drvr_setconfig(struct hfa384x *hw, u16 rid, void *buf, u16 len);
+
+static inline int hfa384x_drvr_getconfig16(struct hfa384x *hw, u16 rid, void *val)
 {
 	int result = 0;
 
@@ -1383,7 +1383,7 @@ static inline int hfa384x_drvr_getconfig16(hfa384x_t *hw, u16 rid, void *val)
 	return result;
 }
 
-static inline int hfa384x_drvr_setconfig16(hfa384x_t *hw, u16 rid, u16 val)
+static inline int hfa384x_drvr_setconfig16(struct hfa384x *hw, u16 rid, u16 val)
 {
 	u16 value = cpu_to_le16(val);
 
@@ -1391,17 +1391,17 @@ static inline int hfa384x_drvr_setconfig16(hfa384x_t *hw, u16 rid, u16 val)
 }
 
 int
-hfa384x_drvr_getconfig_async(hfa384x_t *hw,
+hfa384x_drvr_getconfig_async(struct hfa384x *hw,
 			     u16 rid, ctlx_usercb_t usercb, void *usercb_data);
 
 int
-hfa384x_drvr_setconfig_async(hfa384x_t *hw,
+hfa384x_drvr_setconfig_async(struct hfa384x *hw,
 			     u16 rid,
 			     void *buf,
 			     u16 len, ctlx_usercb_t usercb, void *usercb_data);
 
 static inline int
-hfa384x_drvr_setconfig16_async(hfa384x_t *hw, u16 rid, u16 val)
+hfa384x_drvr_setconfig16_async(struct hfa384x *hw, u16 rid, u16 val)
 {
 	u16 value = cpu_to_le16(val);
 
@@ -1409,20 +1409,20 @@ hfa384x_drvr_setconfig16_async(hfa384x_t *hw, u16 rid, u16 val)
 					    NULL, NULL);
 }
 
-int hfa384x_drvr_start(hfa384x_t *hw);
-int hfa384x_drvr_stop(hfa384x_t *hw);
+int hfa384x_drvr_start(struct hfa384x *hw);
+int hfa384x_drvr_stop(struct hfa384x *hw);
 int
-hfa384x_drvr_txframe(hfa384x_t *hw, struct sk_buff *skb,
+hfa384x_drvr_txframe(struct hfa384x *hw, struct sk_buff *skb,
 		     union p80211_hdr *p80211_hdr, struct p80211_metawep *p80211_wep);
 void hfa384x_tx_timeout(wlandevice_t *wlandev);
 
-int hfa384x_cmd_initialize(hfa384x_t *hw);
-int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport);
-int hfa384x_cmd_disable(hfa384x_t *hw, u16 macport);
-int hfa384x_cmd_allocate(hfa384x_t *hw, u16 len);
-int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable);
+int hfa384x_cmd_initialize(struct hfa384x *hw);
+int hfa384x_cmd_enable(struct hfa384x *hw, u16 macport);
+int hfa384x_cmd_disable(struct hfa384x *hw, u16 macport);
+int hfa384x_cmd_allocate(struct hfa384x *hw, u16 len);
+int hfa384x_cmd_monitor(struct hfa384x *hw, u16 enable);
 int
-hfa384x_cmd_download(hfa384x_t *hw,
+hfa384x_cmd_download(struct hfa384x *hw,
 		     u16 mode, u16 lowaddr, u16 highaddr, u16 codelen);
 
 #endif /*__KERNEL__ */
diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index e109a7f..6edb439 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -160,9 +160,9 @@ hfa384x_int_rxmonitor(wlandevice_t *wlandev, hfa384x_usb_rxfrm_t *rxfrm);
 
 static void hfa384x_usb_defer(struct work_struct *data);
 
-static int submit_rx_urb(hfa384x_t *hw, gfp_t flags);
+static int submit_rx_urb(struct hfa384x *hw, gfp_t flags);
 
-static int submit_tx_urb(hfa384x_t *hw, struct urb *tx_urb, gfp_t flags);
+static int submit_tx_urb(struct hfa384x *hw, struct urb *tx_urb, gfp_t flags);
 
 /*---------------------------------------------------*/
 /* Callbacks */
@@ -180,13 +180,13 @@ static void hfa384x_usbin_info(wlandevice_t *wlandev, hfa384x_usbin_t *usbin);
 static void
 hfa384x_usbout_tx(wlandevice_t *wlandev, hfa384x_usbout_t *usbout);
 
-static void hfa384x_usbin_ctlx(hfa384x_t *hw, hfa384x_usbin_t *usbin,
+static void hfa384x_usbin_ctlx(struct hfa384x *hw, hfa384x_usbin_t *usbin,
 			       int urb_status);
 
 /*---------------------------------------------------*/
 /* Functions to support the prism2 usb command queue */
 
-static void hfa384x_usbctlxq_run(hfa384x_t *hw);
+static void hfa384x_usbctlxq_run(struct hfa384x *hw);
 
 static void hfa384x_usbctlx_reqtimerfn(unsigned long data);
 
@@ -198,25 +198,25 @@ static void hfa384x_usbctlx_completion_task(unsigned long data);
 
 static void hfa384x_usbctlx_reaper_task(unsigned long data);
 
-static int hfa384x_usbctlx_submit(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx);
+static int hfa384x_usbctlx_submit(struct hfa384x *hw, hfa384x_usbctlx_t *ctlx);
 
-static void unlocked_usbctlx_complete(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx);
+static void unlocked_usbctlx_complete(struct hfa384x *hw, hfa384x_usbctlx_t *ctlx);
 
 struct usbctlx_completor {
 	int (*complete)(struct usbctlx_completor *);
 };
 
 static int
-hfa384x_usbctlx_complete_sync(hfa384x_t *hw,
+hfa384x_usbctlx_complete_sync(struct hfa384x *hw,
 			      hfa384x_usbctlx_t *ctlx,
 			      struct usbctlx_completor *completor);
 
 static int
-unlocked_usbctlx_cancel_async(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx);
+unlocked_usbctlx_cancel_async(struct hfa384x *hw, hfa384x_usbctlx_t *ctlx);
 
-static void hfa384x_cb_status(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx);
+static void hfa384x_cb_status(struct hfa384x *hw, const hfa384x_usbctlx_t *ctlx);
 
-static void hfa384x_cb_rrid(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx);
+static void hfa384x_cb_rrid(struct hfa384x *hw, const hfa384x_usbctlx_t *ctlx);
 
 static int
 usbctlx_get_status(const hfa384x_usb_cmdresp_t *cmdresp,
@@ -229,13 +229,13 @@ usbctlx_get_rridresult(const hfa384x_usb_rridresp_t *rridresp,
 /*---------------------------------------------------*/
 /* Low level req/resp CTLX formatters and submitters */
 static int
-hfa384x_docmd(hfa384x_t *hw,
+hfa384x_docmd(struct hfa384x *hw,
 	      enum cmd_mode mode,
 	      hfa384x_metacmd_t *cmd,
 	      ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data);
 
 static int
-hfa384x_dorrid(hfa384x_t *hw,
+hfa384x_dorrid(struct hfa384x *hw,
 	       enum cmd_mode mode,
 	       u16 rid,
 	       void *riddata,
@@ -243,7 +243,7 @@ hfa384x_dorrid(hfa384x_t *hw,
 	       ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data);
 
 static int
-hfa384x_dowrid(hfa384x_t *hw,
+hfa384x_dowrid(struct hfa384x *hw,
 	       enum cmd_mode mode,
 	       u16 rid,
 	       void *riddata,
@@ -251,7 +251,7 @@ hfa384x_dowrid(hfa384x_t *hw,
 	       ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data);
 
 static int
-hfa384x_dormem(hfa384x_t *hw,
+hfa384x_dormem(struct hfa384x *hw,
 	       enum cmd_mode mode,
 	       u16 page,
 	       u16 offset,
@@ -260,7 +260,7 @@ hfa384x_dormem(hfa384x_t *hw,
 	       ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data);
 
 static int
-hfa384x_dowmem(hfa384x_t *hw,
+hfa384x_dowmem(struct hfa384x *hw,
 	       enum cmd_mode mode,
 	       u16 page,
 	       u16 offset,
@@ -285,7 +285,7 @@ static inline const char *ctlxstr(CTLX_STATE s)
 	return ctlx_str[s];
 };
 
-static inline hfa384x_usbctlx_t *get_active_ctlx(hfa384x_t *hw)
+static inline hfa384x_usbctlx_t *get_active_ctlx(struct hfa384x *hw)
 {
 	return list_entry(hw->ctlxq.active.next, hfa384x_usbctlx_t, list);
 }
@@ -329,7 +329,7 @@ void dbprint_urb(struct urb *urb)
 * Call context:
 *	Any
 ----------------------------------------------------------------*/
-static int submit_rx_urb(hfa384x_t *hw, gfp_t memflags)
+static int submit_rx_urb(struct hfa384x *hw, gfp_t memflags)
 {
 	struct sk_buff *skb;
 	int result;
@@ -391,7 +391,7 @@ done:
 * Call context:
 *	Any
 ----------------------------------------------------------------*/
-static int submit_tx_urb(hfa384x_t *hw, struct urb *tx_urb, gfp_t memflags)
+static int submit_tx_urb(struct hfa384x *hw, struct urb *tx_urb, gfp_t memflags)
 {
 	struct net_device *netdev = hw->wlandev->netdev;
 	int result;
@@ -436,7 +436,7 @@ static int submit_tx_urb(hfa384x_t *hw, struct urb *tx_urb, gfp_t memflags)
 ----------------------------------------------------------------*/
 static void hfa384x_usb_defer(struct work_struct *data)
 {
-	hfa384x_t *hw = container_of(data, struct hfa384x, usb_work);
+	struct hfa384x *hw = container_of(data, struct hfa384x, usb_work);
 	struct net_device *netdev = hw->wlandev->netdev;
 
 	/* Don't bother trying to reset anything if the plug
@@ -510,7 +510,7 @@ static void hfa384x_usb_defer(struct work_struct *data)
 /*----------------------------------------------------------------
 * hfa384x_create
 *
-* Sets up the hfa384x_t data structure for use.  Note this
+* Sets up the struct hfa384x data structure for use.  Note this
 * does _not_ initialize the actual hardware, just the data structures
 * we use to keep track of its state.
 *
@@ -528,9 +528,9 @@ static void hfa384x_usb_defer(struct work_struct *data)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-void hfa384x_create(hfa384x_t *hw, struct usb_device *usb)
+void hfa384x_create(struct hfa384x *hw, struct usb_device *usb)
 {
-	memset(hw, 0, sizeof(hfa384x_t));
+	memset(hw, 0, sizeof(struct hfa384x));
 	hw->usb = usb;
 
 	/* set up the endpoints */
@@ -599,7 +599,7 @@ void hfa384x_create(hfa384x_t *hw, struct usb_device *usb)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-void hfa384x_destroy(hfa384x_t *hw)
+void hfa384x_destroy(struct hfa384x *hw)
 {
 	struct sk_buff *skb;
 
@@ -802,7 +802,7 @@ static inline struct usbctlx_completor *init_rmem_completor(
 * Call context:
 *	interrupt
 ----------------------------------------------------------------*/
-static void hfa384x_cb_status(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx)
+static void hfa384x_cb_status(struct hfa384x *hw, const hfa384x_usbctlx_t *ctlx)
 {
 	if (ctlx->usercb != NULL) {
 		hfa384x_cmdresult_t cmdresult;
@@ -839,7 +839,7 @@ static void hfa384x_cb_status(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx)
 * Call context:
 *	interrupt
 ----------------------------------------------------------------*/
-static void hfa384x_cb_rrid(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx)
+static void hfa384x_cb_rrid(struct hfa384x *hw, const hfa384x_usbctlx_t *ctlx)
 {
 	if (ctlx->usercb != NULL) {
 		hfa384x_rridresult_t rridresult;
@@ -856,13 +856,13 @@ static void hfa384x_cb_rrid(hfa384x_t *hw, const hfa384x_usbctlx_t *ctlx)
 	}
 }
 
-static inline int hfa384x_docmd_wait(hfa384x_t *hw, hfa384x_metacmd_t *cmd)
+static inline int hfa384x_docmd_wait(struct hfa384x *hw, hfa384x_metacmd_t *cmd)
 {
 	return hfa384x_docmd(hw, DOWAIT, cmd, NULL, NULL, NULL);
 }
 
 static inline int
-hfa384x_docmd_async(hfa384x_t *hw,
+hfa384x_docmd_async(struct hfa384x *hw,
 		    hfa384x_metacmd_t *cmd,
 		    ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
 {
@@ -870,7 +870,7 @@ hfa384x_docmd_async(hfa384x_t *hw,
 }
 
 static inline int
-hfa384x_dorrid_wait(hfa384x_t *hw, u16 rid, void *riddata,
+hfa384x_dorrid_wait(struct hfa384x *hw, u16 rid, void *riddata,
 		    unsigned int riddatalen)
 {
 	return hfa384x_dorrid(hw, DOWAIT,
@@ -878,7 +878,7 @@ hfa384x_dorrid_wait(hfa384x_t *hw, u16 rid, void *riddata,
 }
 
 static inline int
-hfa384x_dorrid_async(hfa384x_t *hw,
+hfa384x_dorrid_async(struct hfa384x *hw,
 		     u16 rid, void *riddata, unsigned int riddatalen,
 		     ctlx_cmdcb_t cmdcb,
 		     ctlx_usercb_t usercb, void *usercb_data)
@@ -889,7 +889,7 @@ hfa384x_dorrid_async(hfa384x_t *hw,
 }
 
 static inline int
-hfa384x_dowrid_wait(hfa384x_t *hw, u16 rid, void *riddata,
+hfa384x_dowrid_wait(struct hfa384x *hw, u16 rid, void *riddata,
 		    unsigned int riddatalen)
 {
 	return hfa384x_dowrid(hw, DOWAIT,
@@ -897,7 +897,7 @@ hfa384x_dowrid_wait(hfa384x_t *hw, u16 rid, void *riddata,
 }
 
 static inline int
-hfa384x_dowrid_async(hfa384x_t *hw,
+hfa384x_dowrid_async(struct hfa384x *hw,
 		     u16 rid, void *riddata, unsigned int riddatalen,
 		     ctlx_cmdcb_t cmdcb,
 		     ctlx_usercb_t usercb, void *usercb_data)
@@ -908,7 +908,7 @@ hfa384x_dowrid_async(hfa384x_t *hw,
 }
 
 static inline int
-hfa384x_dormem_wait(hfa384x_t *hw,
+hfa384x_dormem_wait(struct hfa384x *hw,
 		    u16 page, u16 offset, void *data, unsigned int len)
 {
 	return hfa384x_dormem(hw, DOWAIT,
@@ -916,7 +916,7 @@ hfa384x_dormem_wait(hfa384x_t *hw,
 }
 
 static inline int
-hfa384x_dormem_async(hfa384x_t *hw,
+hfa384x_dormem_async(struct hfa384x *hw,
 		     u16 page, u16 offset, void *data, unsigned int len,
 		     ctlx_cmdcb_t cmdcb,
 		     ctlx_usercb_t usercb, void *usercb_data)
@@ -927,7 +927,7 @@ hfa384x_dormem_async(hfa384x_t *hw,
 }
 
 static inline int
-hfa384x_dowmem_wait(hfa384x_t *hw,
+hfa384x_dowmem_wait(struct hfa384x *hw,
 		    u16 page, u16 offset, void *data, unsigned int len)
 {
 	return hfa384x_dowmem(hw, DOWAIT,
@@ -935,7 +935,7 @@ hfa384x_dowmem_wait(hfa384x_t *hw,
 }
 
 static inline int
-hfa384x_dowmem_async(hfa384x_t *hw,
+hfa384x_dowmem_async(struct hfa384x *hw,
 		     u16 page,
 		     u16 offset,
 		     void *data,
@@ -967,7 +967,7 @@ hfa384x_dowmem_async(hfa384x_t *hw,
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_cmd_initialize(hfa384x_t *hw)
+int hfa384x_cmd_initialize(struct hfa384x *hw)
 {
 	int result = 0;
 	int i;
@@ -1013,7 +1013,7 @@ int hfa384x_cmd_initialize(hfa384x_t *hw)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_cmd_disable(hfa384x_t *hw, u16 macport)
+int hfa384x_cmd_disable(struct hfa384x *hw, u16 macport)
 {
 	int result = 0;
 	hfa384x_metacmd_t cmd;
@@ -1049,7 +1049,7 @@ int hfa384x_cmd_disable(hfa384x_t *hw, u16 macport)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport)
+int hfa384x_cmd_enable(struct hfa384x *hw, u16 macport)
 {
 	int result = 0;
 	hfa384x_metacmd_t cmd;
@@ -1094,7 +1094,7 @@ int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable)
+int hfa384x_cmd_monitor(struct hfa384x *hw, u16 enable)
 {
 	int result = 0;
 	hfa384x_metacmd_t cmd;
@@ -1148,7 +1148,7 @@ int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_cmd_download(hfa384x_t *hw, u16 mode, u16 lowaddr,
+int hfa384x_cmd_download(struct hfa384x *hw, u16 mode, u16 lowaddr,
 			 u16 highaddr, u16 codelen)
 {
 	int result = 0;
@@ -1192,7 +1192,7 @@ int hfa384x_cmd_download(hfa384x_t *hw, u16 mode, u16 lowaddr,
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_corereset(hfa384x_t *hw, int holdtime, int settletime, int genesis)
+int hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime, int genesis)
 {
 	int result = 0;
 
@@ -1229,7 +1229,7 @@ int hfa384x_corereset(hfa384x_t *hw, int holdtime, int settletime, int genesis)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-static int hfa384x_usbctlx_complete_sync(hfa384x_t *hw,
+static int hfa384x_usbctlx_complete_sync(struct hfa384x *hw,
 					 hfa384x_usbctlx_t *ctlx,
 					 struct usbctlx_completor *completor)
 {
@@ -1345,7 +1345,7 @@ cleanup:
 *	process
 ----------------------------------------------------------------*/
 static int
-hfa384x_docmd(hfa384x_t *hw,
+hfa384x_docmd(struct hfa384x *hw,
 	      enum cmd_mode mode,
 	      hfa384x_metacmd_t *cmd,
 	      ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
@@ -1433,7 +1433,7 @@ done:
 *	process (DOWAIT or DOASYNC)
 ----------------------------------------------------------------*/
 static int
-hfa384x_dorrid(hfa384x_t *hw,
+hfa384x_dorrid(struct hfa384x *hw,
 	       enum cmd_mode mode,
 	       u16 rid,
 	       void *riddata,
@@ -1514,7 +1514,7 @@ done:
 *	process (DOWAIT or DOASYNC)
 ----------------------------------------------------------------*/
 static int
-hfa384x_dowrid(hfa384x_t *hw,
+hfa384x_dowrid(struct hfa384x *hw,
 	       enum cmd_mode mode,
 	       u16 rid,
 	       void *riddata,
@@ -1601,7 +1601,7 @@ done:
 *	process (DOWAIT or DOASYNC)
 ----------------------------------------------------------------*/
 static int
-hfa384x_dormem(hfa384x_t *hw,
+hfa384x_dormem(struct hfa384x *hw,
 	       enum cmd_mode mode,
 	       u16 page,
 	       u16 offset,
@@ -1692,7 +1692,7 @@ done:
 *	process (DOWAIT or DOASYNC)
 ----------------------------------------------------------------*/
 static int
-hfa384x_dowmem(hfa384x_t *hw,
+hfa384x_dowmem(struct hfa384x *hw,
 	       enum cmd_mode mode,
 	       u16 page,
 	       u16 offset,
@@ -1766,7 +1766,7 @@ done:
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_commtallies(hfa384x_t *hw)
+int hfa384x_drvr_commtallies(struct hfa384x *hw)
 {
 	hfa384x_metacmd_t cmd;
 
@@ -1802,7 +1802,7 @@ int hfa384x_drvr_commtallies(hfa384x_t *hw)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_disable(hfa384x_t *hw, u16 macport)
+int hfa384x_drvr_disable(struct hfa384x *hw, u16 macport)
 {
 	int result = 0;
 
@@ -1840,7 +1840,7 @@ int hfa384x_drvr_disable(hfa384x_t *hw, u16 macport)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_enable(hfa384x_t *hw, u16 macport)
+int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport)
 {
 	int result = 0;
 
@@ -1877,7 +1877,7 @@ int hfa384x_drvr_enable(hfa384x_t *hw, u16 macport)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_flashdl_enable(hfa384x_t *hw)
+int hfa384x_drvr_flashdl_enable(struct hfa384x *hw)
 {
 	int result = 0;
 	int i;
@@ -1936,7 +1936,7 @@ int hfa384x_drvr_flashdl_enable(hfa384x_t *hw)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_flashdl_disable(hfa384x_t *hw)
+int hfa384x_drvr_flashdl_disable(struct hfa384x *hw)
 {
 	/* Check that we're already in the download state */
 	if (hw->dlstate != HFA384x_DLSTATE_FLASHENABLED)
@@ -1981,7 +1981,7 @@ int hfa384x_drvr_flashdl_disable(hfa384x_t *hw)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_flashdl_write(hfa384x_t *hw, u32 daddr, void *buf, u32 len)
+int hfa384x_drvr_flashdl_write(struct hfa384x *hw, u32 daddr, void *buf, u32 len)
 {
 	int result = 0;
 	u32 dlbufaddr;
@@ -2119,7 +2119,7 @@ exit_proc:
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_getconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len)
+int hfa384x_drvr_getconfig(struct hfa384x *hw, u16 rid, void *buf, u16 len)
 {
 	return hfa384x_dorrid_wait(hw, rid, buf, len);
 }
@@ -2152,7 +2152,7 @@ int hfa384x_drvr_getconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len)
  *       Any
  ----------------------------------------------------------------*/
 int
-hfa384x_drvr_getconfig_async(hfa384x_t *hw,
+hfa384x_drvr_getconfig_async(struct hfa384x *hw,
 			     u16 rid, ctlx_usercb_t usercb, void *usercb_data)
 {
 	return hfa384x_dorrid_async(hw, rid, NULL, 0,
@@ -2183,7 +2183,7 @@ hfa384x_drvr_getconfig_async(hfa384x_t *hw,
  *       process
  ----------------------------------------------------------------*/
 int
-hfa384x_drvr_setconfig_async(hfa384x_t *hw,
+hfa384x_drvr_setconfig_async(struct hfa384x *hw,
 			     u16 rid,
 			     void *buf,
 			     u16 len, ctlx_usercb_t usercb, void *usercb_data)
@@ -2210,7 +2210,7 @@ hfa384x_drvr_setconfig_async(hfa384x_t *hw,
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_ramdl_disable(hfa384x_t *hw)
+int hfa384x_drvr_ramdl_disable(struct hfa384x *hw)
 {
 	/* Check that we're already in the download state */
 	if (hw->dlstate != HFA384x_DLSTATE_RAMENABLED)
@@ -2250,7 +2250,7 @@ int hfa384x_drvr_ramdl_disable(hfa384x_t *hw)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_ramdl_enable(hfa384x_t *hw, u32 exeaddr)
+int hfa384x_drvr_ramdl_enable(struct hfa384x *hw, u32 exeaddr)
 {
 	int result = 0;
 	u16 lowaddr;
@@ -2318,7 +2318,7 @@ int hfa384x_drvr_ramdl_enable(hfa384x_t *hw, u32 exeaddr)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_ramdl_write(hfa384x_t *hw, u32 daddr, void *buf, u32 len)
+int hfa384x_drvr_ramdl_write(struct hfa384x *hw, u32 daddr, void *buf, u32 len)
 {
 	int result = 0;
 	int nwrites;
@@ -2398,7 +2398,7 @@ int hfa384x_drvr_ramdl_write(hfa384x_t *hw, u32 daddr, void *buf, u32 len)
 * Call context:
 *	process or non-card interrupt.
 ----------------------------------------------------------------*/
-int hfa384x_drvr_readpda(hfa384x_t *hw, void *buf, unsigned int len)
+int hfa384x_drvr_readpda(struct hfa384x *hw, void *buf, unsigned int len)
 {
 	int result = 0;
 	u16 *pda = buf;
@@ -2508,7 +2508,7 @@ int hfa384x_drvr_readpda(hfa384x_t *hw, void *buf, unsigned int len)
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_setconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len)
+int hfa384x_drvr_setconfig(struct hfa384x *hw, u16 rid, void *buf, u16 len)
 {
 	return hfa384x_dowrid_wait(hw, rid, buf, len);
 }
@@ -2533,7 +2533,7 @@ int hfa384x_drvr_setconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len)
 *	process
 ----------------------------------------------------------------*/
 
-int hfa384x_drvr_start(hfa384x_t *hw)
+int hfa384x_drvr_start(struct hfa384x *hw)
 {
 	int result, result1, result2;
 	u16 status;
@@ -2634,7 +2634,7 @@ done:
 * Call context:
 *	process
 ----------------------------------------------------------------*/
-int hfa384x_drvr_stop(hfa384x_t *hw)
+int hfa384x_drvr_stop(struct hfa384x *hw)
 {
 	int i;
 
@@ -2684,7 +2684,7 @@ int hfa384x_drvr_stop(hfa384x_t *hw)
 * Call context:
 *	interrupt
 ----------------------------------------------------------------*/
-int hfa384x_drvr_txframe(hfa384x_t *hw, struct sk_buff *skb,
+int hfa384x_drvr_txframe(struct hfa384x *hw, struct sk_buff *skb,
 			 union p80211_hdr *p80211_hdr,
 			 struct p80211_metawep *p80211_wep)
 {
@@ -2780,7 +2780,7 @@ exit:
 
 void hfa384x_tx_timeout(wlandevice_t *wlandev)
 {
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	unsigned long flags;
 
 	spin_lock_irqsave(&hw->ctlxq.lock, flags);
@@ -2803,7 +2803,7 @@ void hfa384x_tx_timeout(wlandevice_t *wlandev)
 * Tasklet to delete dead CTLX objects
 *
 * Arguments:
-*	data	ptr to a hfa384x_t
+*	data	ptr to a struct hfa384x
 *
 * Returns:
 *
@@ -2812,7 +2812,7 @@ void hfa384x_tx_timeout(wlandevice_t *wlandev)
 ----------------------------------------------------------------*/
 static void hfa384x_usbctlx_reaper_task(unsigned long data)
 {
-	hfa384x_t *hw = (hfa384x_t *)data;
+	struct hfa384x *hw = (struct hfa384x *)data;
 	struct list_head *entry;
 	struct list_head *temp;
 	unsigned long flags;
@@ -2839,7 +2839,7 @@ static void hfa384x_usbctlx_reaper_task(unsigned long data)
 * Tasklet to call completion handlers for returned CTLXs
 *
 * Arguments:
-*	data	ptr to hfa384x_t
+*	data	ptr to struct hfa384x
 *
 * Returns:
 *	Nothing
@@ -2849,7 +2849,7 @@ static void hfa384x_usbctlx_reaper_task(unsigned long data)
 ----------------------------------------------------------------*/
 static void hfa384x_usbctlx_completion_task(unsigned long data)
 {
-	hfa384x_t *hw = (hfa384x_t *)data;
+	struct hfa384x *hw = (struct hfa384x *)data;
 	struct list_head *entry;
 	struct list_head *temp;
 	unsigned long flags;
@@ -2918,7 +2918,7 @@ static void hfa384x_usbctlx_completion_task(unsigned long data)
 * next command on the queue is run afterwards.
 *
 * Arguments:
-*	hw	ptr to the hfa384x_t structure
+*	hw	ptr to the struct hfa384x structure
 *	ctlx	ptr to a CTLX structure
 *
 * Returns:
@@ -2928,7 +2928,7 @@ static void hfa384x_usbctlx_completion_task(unsigned long data)
 * Call context:
 *	Either process or interrupt, but presumably interrupt
 ----------------------------------------------------------------*/
-static int unlocked_usbctlx_cancel_async(hfa384x_t *hw,
+static int unlocked_usbctlx_cancel_async(struct hfa384x *hw,
 					 hfa384x_usbctlx_t *ctlx)
 {
 	int ret;
@@ -2967,7 +2967,7 @@ static int unlocked_usbctlx_cancel_async(hfa384x_t *hw,
 * tasklet is scheduled.
 *
 * Arguments:
-*	hw		ptr to a hfa384x_t structure
+*	hw		ptr to a struct hfa384x structure
 *	ctlx		ptr to a ctlx structure
 *
 * Returns:
@@ -2978,7 +2978,7 @@ static int unlocked_usbctlx_cancel_async(hfa384x_t *hw,
 * Call context:
 *	Either, assume interrupt
 ----------------------------------------------------------------*/
-static void unlocked_usbctlx_complete(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx)
+static void unlocked_usbctlx_complete(struct hfa384x *hw, hfa384x_usbctlx_t *ctlx)
 {
 	/* Timers have been stopped, and ctlx should be in
 	 * a terminal state. Retire it from the "active"
@@ -3007,7 +3007,7 @@ static void unlocked_usbctlx_complete(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx)
 * Checks to see if the head item is running.  If not, starts it.
 *
 * Arguments:
-*	hw	ptr to hfa384x_t
+*	hw	ptr to struct hfa384x
 *
 * Returns:
 *	nothing
@@ -3017,7 +3017,7 @@ static void unlocked_usbctlx_complete(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx)
 * Call context:
 *	any
 ----------------------------------------------------------------*/
-static void hfa384x_usbctlxq_run(hfa384x_t *hw)
+static void hfa384x_usbctlxq_run(struct hfa384x *hw)
 {
 	unsigned long flags;
 
@@ -3120,7 +3120,7 @@ unlock:
 static void hfa384x_usbin_callback(struct urb *urb)
 {
 	wlandevice_t *wlandev = urb->context;
-	hfa384x_t *hw;
+	struct hfa384x *hw;
 	hfa384x_usbin_t *usbin = (hfa384x_usbin_t *)urb->transfer_buffer;
 	struct sk_buff *skb = NULL;
 	int result;
@@ -3285,7 +3285,7 @@ exit:
 * queue and our state updated accordingly.
 *
 * Arguments:
-*	hw		ptr to hfa384x_t
+*	hw		ptr to struct hfa384x
 *	usbin		ptr to USB IN packet
 *	urb_status	status of this Bulk-In URB
 *
@@ -3297,7 +3297,7 @@ exit:
 * Call context:
 *	interrupt
 ----------------------------------------------------------------*/
-static void hfa384x_usbin_ctlx(hfa384x_t *hw, hfa384x_usbin_t *usbin,
+static void hfa384x_usbin_ctlx(struct hfa384x *hw, hfa384x_usbin_t *usbin,
 			       int urb_status)
 {
 	hfa384x_usbctlx_t *ctlx;
@@ -3450,7 +3450,7 @@ static void hfa384x_usbin_txcompl(wlandevice_t *wlandev,
 static void hfa384x_usbin_rx(wlandevice_t *wlandev, struct sk_buff *skb)
 {
 	hfa384x_usbin_t *usbin = (hfa384x_usbin_t *)skb->data;
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	int hdrlen;
 	struct p80211_rxmeta *rxmeta;
 	u16 data_len;
@@ -3557,7 +3557,7 @@ static void hfa384x_int_rxmonitor(wlandevice_t *wlandev,
 	u8 *datap;
 	u16 fc;
 	struct sk_buff *skb;
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 
 	/* Remember the status, time, and data_len fields are in host order */
 	/* Figure out how big the frame is */
@@ -3688,7 +3688,7 @@ static void hfa384x_usbout_callback(struct urb *urb)
 
 		case -EPIPE:
 			{
-				hfa384x_t *hw = wlandev->priv;
+				struct hfa384x *hw = wlandev->priv;
 
 				netdev_warn(hw->wlandev->netdev,
 					    "%s tx pipe stalled: requesting reset\n",
@@ -3704,7 +3704,7 @@ static void hfa384x_usbout_callback(struct urb *urb)
 		case -ETIMEDOUT:
 		case -EILSEQ:
 			{
-				hfa384x_t *hw = wlandev->priv;
+				struct hfa384x *hw = wlandev->priv;
 
 				if (!test_and_set_bit
 				    (THROTTLE_TX, &hw->usb_flags) &&
@@ -3749,7 +3749,7 @@ static void hfa384x_usbout_callback(struct urb *urb)
 ----------------------------------------------------------------*/
 static void hfa384x_ctlxout_callback(struct urb *urb)
 {
-	hfa384x_t *hw = urb->context;
+	struct hfa384x *hw = urb->context;
 	int delete_resptimer = 0;
 	int timer_ok = 1;
 	int run_queue = 0;
@@ -3868,7 +3868,7 @@ delresp:
 * URB containing a Prism2.x XXX_Request was never called.
 *
 * Arguments:
-*	data		a ptr to the hfa384x_t
+*	data		a ptr to the struct hfa384x
 *
 * Returns:
 *	nothing
@@ -3880,7 +3880,7 @@ delresp:
 ----------------------------------------------------------------*/
 static void hfa384x_usbctlx_reqtimerfn(unsigned long data)
 {
-	hfa384x_t *hw = (hfa384x_t *)data;
+	struct hfa384x *hw = (struct hfa384x *)data;
 	unsigned long flags;
 
 	spin_lock_irqsave(&hw->ctlxq.lock, flags);
@@ -3926,7 +3926,7 @@ static void hfa384x_usbctlx_reqtimerfn(unsigned long data)
 * URB containing a Prism2.x XXX_Response was never called.
 *
 * Arguments:
-*	data		a ptr to the hfa384x_t
+*	data		a ptr to the struct hfa384x
 *
 * Returns:
 *	nothing
@@ -3938,7 +3938,7 @@ static void hfa384x_usbctlx_reqtimerfn(unsigned long data)
 ----------------------------------------------------------------*/
 static void hfa384x_usbctlx_resptimerfn(unsigned long data)
 {
-	hfa384x_t *hw = (hfa384x_t *)data;
+	struct hfa384x *hw = (struct hfa384x *)data;
 	unsigned long flags;
 
 	spin_lock_irqsave(&hw->ctlxq.lock, flags);
@@ -3977,7 +3977,7 @@ static void hfa384x_usbctlx_resptimerfn(unsigned long data)
 ----------------------------------------------------------------*/
 static void hfa384x_usb_throttlefn(unsigned long data)
 {
-	hfa384x_t *hw = (hfa384x_t *)data;
+	struct hfa384x *hw = (struct hfa384x *)data;
 	unsigned long flags;
 
 	spin_lock_irqsave(&hw->ctlxq.lock, flags);
@@ -4018,7 +4018,7 @@ static void hfa384x_usb_throttlefn(unsigned long data)
 * Call context:
 *	process or interrupt
 ----------------------------------------------------------------*/
-static int hfa384x_usbctlx_submit(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx)
+static int hfa384x_usbctlx_submit(struct hfa384x *hw, hfa384x_usbctlx_t *ctlx)
 {
 	unsigned long flags;
 
diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index 013a624..f4ec0de 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -116,7 +116,7 @@
 int prism2mgmt_scan(wlandevice_t *wlandev, void *msgp)
 {
 	int result = 0;
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	struct p80211msg_dot11req_scan *msg = msgp;
 	u16 roamingmode, word;
 	int i, timeout;
@@ -370,7 +370,7 @@ int prism2mgmt_scan_results(wlandevice_t *wlandev, void *msgp)
 {
 	int result = 0;
 	struct p80211msg_dot11req_scan_results *req;
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	hfa384x_HScanResultSub_t *item = NULL;
 
 	int count;
@@ -528,7 +528,7 @@ exit:
 int prism2mgmt_start(wlandevice_t *wlandev, void *msgp)
 {
 	int result = 0;
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	struct p80211msg_dot11req_start *msg = msgp;
 
 	p80211pstrd_t *pstr;
@@ -710,7 +710,7 @@ done:
 ----------------------------------------------------------------*/
 int prism2mgmt_readpda(wlandevice_t *wlandev, void *msgp)
 {
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	struct p80211msg_p2req_readpda *msg = msgp;
 	int result;
 
@@ -776,7 +776,7 @@ int prism2mgmt_readpda(wlandevice_t *wlandev, void *msgp)
 ----------------------------------------------------------------*/
 int prism2mgmt_ramdl_state(wlandevice_t *wlandev, void *msgp)
 {
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	struct p80211msg_p2req_ramdl_state *msg = msgp;
 
 	if (wlandev->msdstate != WLAN_MSD_FWLOAD) {
@@ -831,7 +831,7 @@ int prism2mgmt_ramdl_state(wlandevice_t *wlandev, void *msgp)
 ----------------------------------------------------------------*/
 int prism2mgmt_ramdl_write(wlandevice_t *wlandev, void *msgp)
 {
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	struct p80211msg_p2req_ramdl_write *msg = msgp;
 	u32 addr;
 	u32 len;
@@ -893,7 +893,7 @@ int prism2mgmt_ramdl_write(wlandevice_t *wlandev, void *msgp)
 int prism2mgmt_flashdl_state(wlandevice_t *wlandev, void *msgp)
 {
 	int result = 0;
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	struct p80211msg_p2req_flashdl_state *msg = msgp;
 
 	if (wlandev->msdstate != WLAN_MSD_FWLOAD) {
@@ -963,7 +963,7 @@ int prism2mgmt_flashdl_state(wlandevice_t *wlandev, void *msgp)
 ----------------------------------------------------------------*/
 int prism2mgmt_flashdl_write(wlandevice_t *wlandev, void *msgp)
 {
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	struct p80211msg_p2req_flashdl_write *msg = msgp;
 	u32 addr;
 	u32 len;
@@ -1023,7 +1023,7 @@ int prism2mgmt_flashdl_write(wlandevice_t *wlandev, void *msgp)
 ----------------------------------------------------------------*/
 int prism2mgmt_autojoin(wlandevice_t *wlandev, void *msgp)
 {
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	int result = 0;
 	u16 reg;
 	u16 port_type;
@@ -1097,7 +1097,7 @@ int prism2mgmt_wlansniff(wlandevice_t *wlandev, void *msgp)
 	int result = 0;
 	struct p80211msg_lnxreq_wlansniff *msg = msgp;
 
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	u16 word;
 
 	msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
diff --git a/drivers/staging/wlan-ng/prism2mgmt.h b/drivers/staging/wlan-ng/prism2mgmt.h
index 16f1239..1425cdc 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.h
+++ b/drivers/staging/wlan-ng/prism2mgmt.h
@@ -98,10 +98,10 @@ void prism2mgmt_bytestr2pstr(struct hfa384x_bytestr *bytestr,
 			     p80211pstrd_t *pstr);
 
 /* functions to convert Group Addresses */
-void prism2mgmt_get_grpaddr(u32 did, p80211pstrd_t *pstr, hfa384x_t *priv);
+void prism2mgmt_get_grpaddr(u32 did, p80211pstrd_t *pstr, struct hfa384x *priv);
 int prism2mgmt_set_grpaddr(u32 did,
 			   u8 *prism2buf, p80211pstrd_t *pstr,
-			   hfa384x_t *priv);
+			   struct hfa384x *priv);
 int prism2mgmt_get_grpaddr_index(u32 did);
 
 void prism2sta_processing_defer(struct work_struct *data);
diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index b4a15ef..bf6c583 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -88,61 +88,61 @@ struct mibrec {
 	int (*func)(struct mibrec *mib,
 		     int isget,
 		     wlandevice_t *wlandev,
-		     hfa384x_t *hw,
+		     struct hfa384x *hw,
 		     struct p80211msg_dot11req_mibset *msg, void *data);
 };
 
 static int prism2mib_bytearea2pstr(struct mibrec *mib,
 				   int isget,
 				   wlandevice_t *wlandev,
-				   hfa384x_t *hw,
+				   struct hfa384x *hw,
 				   struct p80211msg_dot11req_mibset *msg,
 				   void *data);
 
 static int prism2mib_uint32(struct mibrec *mib,
 			    int isget,
 			    wlandevice_t *wlandev,
-			    hfa384x_t *hw,
+			    struct hfa384x *hw,
 			    struct p80211msg_dot11req_mibset *msg, void *data);
 
 static int prism2mib_flag(struct mibrec *mib,
 			  int isget,
 			  wlandevice_t *wlandev,
-			  hfa384x_t *hw,
+			  struct hfa384x *hw,
 			  struct p80211msg_dot11req_mibset *msg, void *data);
 
 static int prism2mib_wepdefaultkey(struct mibrec *mib,
 				   int isget,
 				   wlandevice_t *wlandev,
-				   hfa384x_t *hw,
+				   struct hfa384x *hw,
 				   struct p80211msg_dot11req_mibset *msg,
 				   void *data);
 
 static int prism2mib_privacyinvoked(struct mibrec *mib,
 				    int isget,
 				    wlandevice_t *wlandev,
-				    hfa384x_t *hw,
+				    struct hfa384x *hw,
 				    struct p80211msg_dot11req_mibset *msg,
 				    void *data);
 
 static int prism2mib_excludeunencrypted(struct mibrec *mib,
 					int isget,
 					wlandevice_t *wlandev,
-					hfa384x_t *hw,
+					struct hfa384x *hw,
 					struct p80211msg_dot11req_mibset *msg,
 					void *data);
 
 static int prism2mib_fragmentationthreshold(struct mibrec *mib,
 					    int isget,
 					    wlandevice_t *wlandev,
-					    hfa384x_t *hw,
+					    struct hfa384x *hw,
 					    struct p80211msg_dot11req_mibset *msg,
 					    void *data);
 
 static int prism2mib_priv(struct mibrec *mib,
 			  int isget,
 			  wlandevice_t *wlandev,
-			  hfa384x_t *hw,
+			  struct hfa384x *hw,
 			  struct p80211msg_dot11req_mibset *msg, void *data);
 
 static struct mibrec mibtab[] = {
@@ -259,7 +259,7 @@ static struct mibrec mibtab[] = {
 
 int prism2mgmt_mibset_mibget(wlandevice_t *wlandev, void *msgp)
 {
-	hfa384x_t *hw = wlandev->priv;
+	struct hfa384x *hw = wlandev->priv;
 	int result, isget;
 	struct mibrec *mib;
 
@@ -374,7 +374,7 @@ done:
 static int prism2mib_bytearea2pstr(struct mibrec *mib,
 				   int isget,
 				   wlandevice_t *wlandev,
-				   hfa384x_t *hw,
+				   struct hfa384x *hw,
 				   struct p80211msg_dot11req_mibset *msg,
 				   void *data)
 {
@@ -424,7 +424,7 @@ static int prism2mib_bytearea2pstr(struct mibrec *mib,
 static int prism2mib_uint32(struct mibrec *mib,
 			    int isget,
 			    wlandevice_t *wlandev,
-			    hfa384x_t *hw,
+			    struct hfa384x *hw,
 			    struct p80211msg_dot11req_mibset *msg, void *data)
 {
 	int result;
@@ -471,7 +471,7 @@ static int prism2mib_uint32(struct mibrec *mib,
 static int prism2mib_flag(struct mibrec *mib,
 			  int isget,
 			  wlandevice_t *wlandev,
-			  hfa384x_t *hw,
+			  struct hfa384x *hw,
 			  struct p80211msg_dot11req_mibset *msg, void *data)
 {
 	int result;
@@ -528,7 +528,7 @@ static int prism2mib_flag(struct mibrec *mib,
 static int prism2mib_wepdefaultkey(struct mibrec *mib,
 				   int isget,
 				   wlandevice_t *wlandev,
-				   hfa384x_t *hw,
+				   struct hfa384x *hw,
 				   struct p80211msg_dot11req_mibset *msg,
 				   void *data)
 {
@@ -578,7 +578,7 @@ static int prism2mib_wepdefaultkey(struct mibrec *mib,
 static int prism2mib_privacyinvoked(struct mibrec *mib,
 				    int isget,
 				    wlandevice_t *wlandev,
-				    hfa384x_t *hw,
+				    struct hfa384x *hw,
 				    struct p80211msg_dot11req_mibset *msg,
 				    void *data)
 {
@@ -620,7 +620,7 @@ static int prism2mib_privacyinvoked(struct mibrec *mib,
 static int prism2mib_excludeunencrypted(struct mibrec *mib,
 					int isget,
 					wlandevice_t *wlandev,
-					hfa384x_t *hw,
+					struct hfa384x *hw,
 					struct p80211msg_dot11req_mibset *msg,
 					void *data)
 {
@@ -656,7 +656,7 @@ static int prism2mib_excludeunencrypted(struct mibrec *mib,
 static int prism2mib_fragmentationthreshold(struct mibrec *mib,
 					    int isget,
 					    wlandevice_t *wlandev,
-					    hfa384x_t *hw,
+					    struct hfa384x *hw,
 					    struct p80211msg_dot11req_mibset *msg,
 					    void *data)
 {
@@ -705,7 +705,7 @@ static int prism2mib_fragmentationthreshold(struct mibrec *mib,
 static int prism2mib_priv(struct mibrec *mib,
 			  int isget,
 			  wlandevice_t *wlandev,
-			  hfa384x_t *hw,
+			  struct hfa384x *hw,
 			  struct p80211msg_dot11req_mibset *msg, void *data)
 {
 	p80211pstrd_t *pstr = (p80211pstrd_t *) data;
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 854571f..8b73577 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -241,7 +241,7 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
 			     union p80211_hdr *p80211_hdr,
 			     struct p80211_metawep *p80211_wep)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 
 	/* If necessary, set the 802.11 WEP bit */
 	if ((wlandev->hostwep & (HOSTWEP_PRIVACYINVOKED | HOSTWEP_ENCRYPT)) ==
@@ -278,7 +278,7 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
 ----------------------------------------------------------------*/
 static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 
 	int result = 0;
 
@@ -408,7 +408,7 @@ static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
 ----------------------------------------------------------------*/
 u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 	u32 result;
 
 	result = P80211ENUM_resultcode_implementation_failure;
@@ -578,7 +578,7 @@ u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
 static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 {
 	int result = 0;
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 	u16 temp;
 	u8 snum[HFA384x_RID_NICSERIALNUMBER_LEN];
 
@@ -899,7 +899,7 @@ done:
 ----------------------------------------------------------------*/
 static int prism2sta_globalsetup(wlandevice_t *wlandev)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 
 	/* Set the maximum frame size */
 	return hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFMAXDATALEN,
@@ -909,7 +909,7 @@ static int prism2sta_globalsetup(wlandevice_t *wlandev)
 static int prism2sta_setmulticast(wlandevice_t *wlandev, netdevice_t *dev)
 {
 	int result = 0;
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 
 	u16 promisc;
 
@@ -973,7 +973,7 @@ static void prism2sta_inf_handover(wlandevice_t *wlandev,
 static void prism2sta_inf_tallies(wlandevice_t *wlandev,
 				  hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 	u16 *src16;
 	u32 *dst;
 	u32 *src32;
@@ -1020,7 +1020,7 @@ static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
 
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 	int nbss;
 	hfa384x_ScanResult_t *sr = &(inf->info.scanresult);
 	int i;
@@ -1075,7 +1075,7 @@ static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
 static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
 					  hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 	int nbss;
 
 	nbss = (inf->framelen - 3) / 32;
@@ -1116,7 +1116,7 @@ static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
 static void prism2sta_inf_chinforesults(wlandevice_t *wlandev,
 					hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 	unsigned int i, n;
 
 	hw->channel_info.results.scanchannels =
@@ -1158,7 +1158,7 @@ static void prism2sta_inf_chinforesults(wlandevice_t *wlandev,
 
 void prism2sta_processing_defer(struct work_struct *data)
 {
-	hfa384x_t *hw = container_of(data, struct hfa384x, link_bh);
+	struct hfa384x *hw = container_of(data, struct hfa384x, link_bh);
 	wlandevice_t *wlandev = hw->wlandev;
 	hfa384x_bytestr32_t ssid;
 	int result;
@@ -1429,7 +1429,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
 				     hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 
 	hw->link_status_new = le16_to_cpu(inf->info.linkstatus.linkstatus);
 
@@ -1457,7 +1457,7 @@ static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
 static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 	hfa384x_AssocStatus_t rec;
 	int i;
 
@@ -1518,7 +1518,7 @@ static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
 static void prism2sta_inf_authreq(wlandevice_t *wlandev,
 				  hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 	struct sk_buff *skb;
 
 	skb = dev_alloc_skb(sizeof(*inf));
@@ -1533,7 +1533,7 @@ static void prism2sta_inf_authreq(wlandevice_t *wlandev,
 static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 					hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 	hfa384x_authenticateStation_data_t rec;
 
 	int i, added, result, cnt;
@@ -1706,7 +1706,7 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
 				    hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	struct hfa384x *hw = (struct hfa384x *) wlandev->priv;
 
 	hw->psusercount = le16_to_cpu(inf->info.psusercnt.usercnt);
 }
@@ -1887,11 +1887,11 @@ void prism2sta_ev_alloc(wlandevice_t *wlandev)
 static wlandevice_t *create_wlan(void)
 {
 	wlandevice_t *wlandev = NULL;
-	hfa384x_t *hw = NULL;
+	struct hfa384x *hw = NULL;
 
 	/* Alloc our structures */
 	wlandev = kzalloc(sizeof(wlandevice_t), GFP_KERNEL);
-	hw = kzalloc(sizeof(hfa384x_t), GFP_KERNEL);
+	hw = kzalloc(sizeof(struct hfa384x), GFP_KERNEL);
 
 	if (!wlandev || !hw) {
 		pr_err("%s: Memory allocation failure.\n", dev_info);
@@ -1922,7 +1922,7 @@ static wlandevice_t *create_wlan(void)
 
 void prism2sta_commsqual_defer(struct work_struct *data)
 {
-	hfa384x_t *hw = container_of(data, struct hfa384x, commsqual_bh);
+	struct hfa384x *hw = container_of(data, struct hfa384x, commsqual_bh);
 	wlandevice_t *wlandev = hw->wlandev;
 	hfa384x_bytestr32_t ssid;
 	struct p80211msg_dot11req_mibget msg;
@@ -2011,7 +2011,7 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 
 void prism2sta_commsqual_timer(unsigned long data)
 {
-	hfa384x_t *hw = (hfa384x_t *) data;
+	struct hfa384x *hw = (struct hfa384x *) data;
 
 	schedule_work(&hw->commsqual_bh);
 }
diff --git a/drivers/staging/wlan-ng/prism2usb.c b/drivers/staging/wlan-ng/prism2usb.c
index e92bbc1..85f4242 100644
--- a/drivers/staging/wlan-ng/prism2usb.c
+++ b/drivers/staging/wlan-ng/prism2usb.c
@@ -62,7 +62,7 @@ static int prism2sta_probe_usb(struct usb_interface *interface,
 	struct usb_device *dev;
 
 	wlandevice_t *wlandev = NULL;
-	hfa384x_t *hw = NULL;
+	struct hfa384x *hw = NULL;
 	int result = 0;
 
 	dev = interface_to_usbdev(interface);
@@ -143,7 +143,7 @@ static void prism2sta_disconnect_usb(struct usb_interface *interface)
 		struct list_head *temp;
 		unsigned long flags;
 
-		hfa384x_t *hw = wlandev->priv;
+		struct hfa384x *hw = wlandev->priv;
 
 		if (!hw)
 			goto exit;
@@ -226,7 +226,7 @@ exit:
 static int prism2sta_suspend(struct usb_interface *interface,
 				pm_message_t message)
 {
-	hfa384x_t *hw = NULL;
+	struct hfa384x *hw = NULL;
 	wlandevice_t *wlandev;
 
 	wlandev = (wlandevice_t *) usb_get_intfdata(interface);
@@ -249,7 +249,7 @@ static int prism2sta_suspend(struct usb_interface *interface,
 static int prism2sta_resume(struct usb_interface *interface)
 {
 	int result = 0;
-	hfa384x_t *hw = NULL;
+	struct hfa384x *hw = NULL;
 	wlandevice_t *wlandev;
 
 	wlandev = (wlandevice_t *) usb_get_intfdata(interface);
-- 
1.9.1


