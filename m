X-GM-THRID: 6200080718557609984
X-Received: by 10.180.210.212 with SMTP id mw20mr5037953wic.3.1443641329319;
        Wed, 30 Sep 2015 12:28:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.230 with SMTP id e6ls57427lah.66.gmail; Wed, 30 Sep
 2015 12:28:48 -0700 (PDT)
X-Received: by 10.112.125.104 with SMTP id mp8mr837094lbb.20.1443641328410;
        Wed, 30 Sep 2015 12:28:48 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id ch7si62463wib.2.2015.09.30.12.28.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 12:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id lk2so1818405wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 12:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=I1+25pZFTreo6O+vFWzFdOSk28MtCEx1jGMW+mhysQQ=;
        b=OuZ2YzAMxjSWWlAyeWYOrKHsGBQ05eR6vJYc2LwlhsGkKm0IktcD4deXiUs+LKvZjH
         iTVTt4IOdFAWzAQPX3oKeEiTcTpIWedH9y+oJvkuX5dZTtu8nmuArMPRaslsEwJZXpI6
         n9DJW09FCkUHh4YhICzEsPkPCVwifzIpKcVOHMg15/Tq1HLYHDHYetBukMg1yMHQaDmn
         7bfrojAGQ/woThppTNMOH4VzPLNwLzIkpNzSuVd80G8qrQxnpmW4EVeh1IGcpj4VQdRd
         sfBmClTIaR8dh+JrxnCT4eY3tvCzAG/2mWxBilC/mbBT0GxD/dVi8wU4pldti9LCCQSG
         1SPA==
X-Received: by 10.180.101.198 with SMTP id fi6mr3247639wib.25.1443641328216;
        Wed, 30 Sep 2015 12:28:48 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id ju6sm16681556wid.9.2015.09.30.12.28.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 12:28:47 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3] staging: wlan-ng: fix block comment indentation
Date: Wed, 30 Sep 2015 22:28:32 +0300
Message-Id: <1443641312-29583-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

Update indentation of block comments to follow linux coding style

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
	Changes in v2:
		- fix block comments before functions

	Changes in v3:
		- fix block comments alignment

 drivers/staging/wlan-ng/prism2sta.c | 1013 ++++++++++++++++++-----------------
 1 file changed, 510 insertions(+), 503 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 0329c52..bd97986 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1,54 +1,54 @@
 /* src/prism2/driver/prism2sta.c
-*
-* Implements the station functionality for prism2
-*
-* Copyright (C) 1999 AbsoluteValue Systems, Inc.  All Rights Reserved.
-* --------------------------------------------------------------------
-*
-* linux-wlan
-*
-*   The contents of this file are subject to the Mozilla Public
-*   License Version 1.1 (the "License"); you may not use this file
-*   except in compliance with the License. You may obtain a copy of
-*   the License at http://www.mozilla.org/MPL/
-*
-*   Software distributed under the License is distributed on an "AS
-*   IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
-*   implied. See the License for the specific language governing
-*   rights and limitations under the License.
-*
-*   Alternatively, the contents of this file may be used under the
-*   terms of the GNU Public License version 2 (the "GPL"), in which
-*   case the provisions of the GPL are applicable instead of the
-*   above.  If you wish to allow the use of your version of this file
-*   only under the terms of the GPL and not to allow others to use
-*   your version of this file under the MPL, indicate your decision
-*   by deleting the provisions above and replace them with the notice
-*   and other provisions required by the GPL.  If you do not delete
-*   the provisions above, a recipient may use your version of this
-*   file under either the MPL or the GPL.
-*
-* --------------------------------------------------------------------
-*
-* Inquiries regarding the linux-wlan Open Source project can be
-* made directly to:
-*
-* AbsoluteValue Systems Inc.
-* info@linux-wlan.com
-* http://www.linux-wlan.com
-*
-* --------------------------------------------------------------------
-*
-* Portions of the development of this software were funded by
-* Intersil Corporation as part of PRISM(R) chipset product development.
-*
-* --------------------------------------------------------------------
-*
-* This file implements the module and linux pcmcia routines for the
-* prism2 driver.
-*
-* --------------------------------------------------------------------
-*/
+ *
+ * Implements the station functionality for prism2
+ *
+ * Copyright (C) 1999 AbsoluteValue Systems, Inc.  All Rights Reserved.
+ * --------------------------------------------------------------------
+ *
+ * linux-wlan
+ *
+ *   The contents of this file are subject to the Mozilla Public
+ *   License Version 1.1 (the "License"); you may not use this file
+ *   except in compliance with the License. You may obtain a copy of
+ *   the License at http://www.mozilla.org/MPL/
+ *
+ *   Software distributed under the License is distributed on an "AS
+ *   IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
+ *   implied. See the License for the specific language governing
+ *   rights and limitations under the License.
+ *
+ *   Alternatively, the contents of this file may be used under the
+ *   terms of the GNU Public License version 2 (the "GPL"), in which
+ *   case the provisions of the GPL are applicable instead of the
+ *   above.  If you wish to allow the use of your version of this file
+ *   only under the terms of the GPL and not to allow others to use
+ *   your version of this file under the MPL, indicate your decision
+ *   by deleting the provisions above and replace them with the notice
+ *   and other provisions required by the GPL.  If you do not delete
+ *   the provisions above, a recipient may use your version of this
+ *   file under either the MPL or the GPL.
+ *
+ * --------------------------------------------------------------------
+ *
+ * Inquiries regarding the linux-wlan Open Source project can be
+ * made directly to:
+ *
+ * AbsoluteValue Systems Inc.
+ * info@linux-wlan.com
+ * http://www.linux-wlan.com
+ *
+ * --------------------------------------------------------------------
+ *
+ * Portions of the development of this software were funded by
+ * Intersil Corporation as part of PRISM(R) chipset product development.
+ *
+ * --------------------------------------------------------------------
+ *
+ * This file implements the module and linux pcmcia routines for the
+ * prism2 driver.
+ *
+ * --------------------------------------------------------------------
+ */
 
 #include <linux/module.h>
 #include <linux/kernel.h>
@@ -130,27 +130,27 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
 				    hfa384x_InfFrame_t *inf);
 
-/*----------------------------------------------------------------
-* prism2sta_open
-*
-* WLAN device open method.  Called from p80211netdev when kernel
-* device open (start) method is called in response to the
-* SIOCSIIFFLAGS ioctl changing the flags bit IFF_UP
-* from clear to set.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*
-* Returns:
-*	0	success
-*	>0	f/w reported error
-*	<0	driver reported error
-*
-* Side effects:
-*
-* Call context:
-*	process thread
-----------------------------------------------------------------*/
+/*
+ * prism2sta_open
+ *
+ * WLAN device open method.  Called from p80211netdev when kernel
+ * device open (start) method is called in response to the
+ * SIOCSIIFFLAGS ioctl changing the flags bit IFF_UP
+ * from clear to set.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *
+ * Returns:
+ *	0	success
+ *	>0	f/w reported error
+ *	<0	driver reported error
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	process thread
+ */
 static int prism2sta_open(wlandevice_t *wlandev)
 {
 	/* We don't currently have to do anything else.
@@ -164,27 +164,27 @@ static int prism2sta_open(wlandevice_t *wlandev)
 	return 0;
 }
 
-/*----------------------------------------------------------------
-* prism2sta_close
-*
-* WLAN device close method.  Called from p80211netdev when kernel
-* device close method is called in response to the
-* SIOCSIIFFLAGS ioctl changing the flags bit IFF_UP
-* from set to clear.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*
-* Returns:
-*	0	success
-*	>0	f/w reported error
-*	<0	driver reported error
-*
-* Side effects:
-*
-* Call context:
-*	process thread
-----------------------------------------------------------------*/
+/*
+ * prism2sta_close
+ *
+ * WLAN device close method.  Called from p80211netdev when kernel
+ * device close method is called in response to the
+ * SIOCSIIFFLAGS ioctl changing the flags bit IFF_UP
+ * from set to clear.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *
+ * Returns:
+ *	0	success
+ *	>0	f/w reported error
+ *	<0	driver reported error
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	process thread
+ */
 static int prism2sta_close(wlandevice_t *wlandev)
 {
 	/* We don't currently have to do anything else.
@@ -196,48 +196,48 @@ static int prism2sta_close(wlandevice_t *wlandev)
 	return 0;
 }
 
-/*----------------------------------------------------------------
-* prism2sta_reset
-*
-* Currently not implemented.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	none
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	process thread
-----------------------------------------------------------------*/
+/*
+ * prism2sta_reset
+ *
+ * Currently not implemented.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	none
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	process thread
+ */
 static void prism2sta_reset(wlandevice_t *wlandev)
 {
 }
 
-/*----------------------------------------------------------------
-* prism2sta_txframe
-*
-* Takes a frame from p80211 and queues it for transmission.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	pb		packet buffer struct.  Contains an 802.11
-*			data frame.
-*       p80211_hdr      points to the 802.11 header for the packet.
-* Returns:
-*	0		Success and more buffs available
-*	1		Success but no more buffs
-*	2		Allocation failure
-*	4		Buffer full or queue busy
-*
-* Side effects:
-*
-* Call context:
-*	process thread
-----------------------------------------------------------------*/
+/*
+ * prism2sta_txframe
+ *
+ * Takes a frame from p80211 and queues it for transmission.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	pb		packet buffer struct.  Contains an 802.11
+ *			data frame.
+ *       p80211_hdr      points to the 802.11 header for the packet.
+ * Returns:
+ *	0		Success and more buffs available
+ *	1		Success but no more buffs
+ *	2		Allocation failure
+ *	4		Buffer full or queue busy
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	process thread
+ */
 static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
 			     union p80211_hdr *p80211_hdr,
 			     struct p80211_metawep *p80211_wep)
@@ -253,30 +253,30 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
 	return hfa384x_drvr_txframe(hw, skb, p80211_hdr, p80211_wep);
 }
 
-/*----------------------------------------------------------------
-* prism2sta_mlmerequest
-*
-* wlan command message handler.  All we do here is pass the message
-* over to the prism2sta_mgmt_handler.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	msg		wlan command message
-* Returns:
-*	0		success
-*	<0		successful acceptance of message, but we're
-*			waiting for an async process to finish before
-*			we're done with the msg.  When the asynch
-*			process is done, we'll call the p80211
-*			function p80211req_confirm() .
-*	>0		An error occurred while we were handling
-*			the message.
-*
-* Side effects:
-*
-* Call context:
-*	process thread
-----------------------------------------------------------------*/
+/*
+ * prism2sta_mlmerequest
+ *
+ * wlan command message handler.  All we do here is pass the message
+ * over to the prism2sta_mgmt_handler.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	msg		wlan command message
+ * Returns:
+ *	0		success
+ *	<0		successful acceptance of message, but we're
+ *			waiting for an async process to finish before
+ *			we're done with the msg.  When the asynch
+ *			process is done, we'll call the p80211
+ *			function p80211req_confirm() .
+ *	>0		An error occurred while we were handling
+ *			the message.
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	process thread
+ */
 static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
 {
 	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
@@ -386,27 +386,27 @@ static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
 	return result;
 }
 
-/*----------------------------------------------------------------
-* prism2sta_ifstate
-*
-* Interface state.  This is the primary WLAN interface enable/disable
-* handler.  Following the driver/load/deviceprobe sequence, this
-* function must be called with a state of "enable" before any other
-* commands will be accepted.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	msgp		ptr to msg buffer
-*
-* Returns:
-*	A p80211 message resultcode value.
-*
-* Side effects:
-*
-* Call context:
-*	process thread  (usually)
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_ifstate
+ *
+ * Interface state.  This is the primary WLAN interface enable/disable
+ * handler.  Following the driver/load/deviceprobe sequence, this
+ * function must be called with a state of "enable" before any other
+ * commands will be accepted.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	msgp		ptr to msg buffer
+ *
+ * Returns:
+ *	A p80211 message resultcode value.
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	process thread  (usually)
+ *	interrupt
+ */
 u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
 {
 	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
@@ -561,25 +561,25 @@ u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
 	return result;
 }
 
-/*----------------------------------------------------------------
-* prism2sta_getcardinfo
-*
-* Collect the NICID, firmware version and any other identifiers
-* we'd like to have in host-side data structures.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*
-* Returns:
-*	0	success
-*	>0	f/w reported error
-*	<0	driver reported error
-*
-* Side effects:
-*
-* Call context:
-*	Either.
-----------------------------------------------------------------*/
+/*
+ * prism2sta_getcardinfo
+ *
+ * Collect the NICID, firmware version and any other identifiers
+ * we'd like to have in host-side data structures.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *
+ * Returns:
+ *	0	success
+ *	>0	f/w reported error
+ *	<0	driver reported error
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	Either.
+ */
 static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 {
 	int result = 0;
@@ -677,7 +677,8 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 	}
 
 	/* get all the Compatibility range, modem interface supplier
-	   fields in byte order */
+	 * fields in byte order
+	 */
 	hw->cap_sup_mfi.role = le16_to_cpu(hw->cap_sup_mfi.role);
 	hw->cap_sup_mfi.id = le16_to_cpu(hw->cap_sup_mfi.id);
 	hw->cap_sup_mfi.variant = le16_to_cpu(hw->cap_sup_mfi.variant);
@@ -700,7 +701,8 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 	}
 
 	/* get all the Compatibility range, controller interface supplier
-	   fields in byte order */
+	 * fields in byte order
+	 */
 	hw->cap_sup_cfi.role = le16_to_cpu(hw->cap_sup_cfi.role);
 	hw->cap_sup_cfi.id = le16_to_cpu(hw->cap_sup_cfi.id);
 	hw->cap_sup_cfi.variant = le16_to_cpu(hw->cap_sup_cfi.variant);
@@ -723,7 +725,8 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 	}
 
 	/* get all the Compatibility range, primary firmware supplier
-	   fields in byte order */
+	 * fields in byte order
+	 */
 	hw->cap_sup_pri.role = le16_to_cpu(hw->cap_sup_pri.role);
 	hw->cap_sup_pri.id = le16_to_cpu(hw->cap_sup_pri.id);
 	hw->cap_sup_pri.variant = le16_to_cpu(hw->cap_sup_pri.variant);
@@ -746,7 +749,8 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 	}
 
 	/* get all the Compatibility range, station firmware supplier
-	   fields in byte order */
+	 * fields in byte order
+	 */
 	hw->cap_sup_sta.role = le16_to_cpu(hw->cap_sup_sta.role);
 	hw->cap_sup_sta.id = le16_to_cpu(hw->cap_sup_sta.id);
 	hw->cap_sup_sta.variant = le16_to_cpu(hw->cap_sup_sta.variant);
@@ -777,7 +781,8 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 	}
 
 	/* get all the Compatibility range, primary f/w actor, CFI supplier
-	   fields in byte order */
+	 * fields in byte order
+	 */
 	hw->cap_act_pri_cfi.role = le16_to_cpu(hw->cap_act_pri_cfi.role);
 	hw->cap_act_pri_cfi.id = le16_to_cpu(hw->cap_act_pri_cfi.id);
 	hw->cap_act_pri_cfi.variant = le16_to_cpu(hw->cap_act_pri_cfi.variant);
@@ -800,7 +805,8 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 	}
 
 	/* get all the Compatibility range, station f/w actor, CFI supplier
-	   fields in byte order */
+	 * fields in byte order
+	 */
 	hw->cap_act_sta_cfi.role = le16_to_cpu(hw->cap_act_sta_cfi.role);
 	hw->cap_act_sta_cfi.id = le16_to_cpu(hw->cap_act_sta_cfi.id);
 	hw->cap_act_sta_cfi.variant = le16_to_cpu(hw->cap_act_sta_cfi.variant);
@@ -823,7 +829,8 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 	}
 
 	/* get all the Compatibility range, station f/w actor, MFI supplier
-	   fields in byte order */
+	 * fields in byte order
+	 */
 	hw->cap_act_sta_mfi.role = le16_to_cpu(hw->cap_act_sta_mfi.role);
 	hw->cap_act_sta_mfi.id = le16_to_cpu(hw->cap_act_sta_mfi.id);
 	hw->cap_act_sta_mfi.variant = le16_to_cpu(hw->cap_act_sta_mfi.variant);
@@ -884,24 +891,24 @@ done:
 	return result;
 }
 
-/*----------------------------------------------------------------
-* prism2sta_globalsetup
-*
-* Set any global RIDs that we want to set at device activation.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*
-* Returns:
-*	0	success
-*	>0	f/w reported error
-*	<0	driver reported error
-*
-* Side effects:
-*
-* Call context:
-*	process thread
-----------------------------------------------------------------*/
+/*
+ * prism2sta_globalsetup
+ *
+ * Set any global RIDs that we want to set at device activation.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *
+ * Returns:
+ *	0	success
+ *	>0	f/w reported error
+ *	<0	driver reported error
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	process thread
+ */
 static int prism2sta_globalsetup(wlandevice_t *wlandev)
 {
 	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
@@ -934,47 +941,47 @@ exit:
 	return result;
 }
 
-/*----------------------------------------------------------------
-* prism2sta_inf_handover
-*
-* Handles the receipt of a Handover info frame. Should only be present
-* in APs only.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	inf		ptr to info frame (contents in hfa384x order)
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_inf_handover
+ *
+ * Handles the receipt of a Handover info frame. Should only be present
+ * in APs only.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	inf		ptr to info frame (contents in hfa384x order)
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 static void prism2sta_inf_handover(wlandevice_t *wlandev,
 				   hfa384x_InfFrame_t *inf)
 {
 	pr_debug("received infoframe:HANDOVER (unhandled)\n");
 }
 
-/*----------------------------------------------------------------
-* prism2sta_inf_tallies
-*
-* Handles the receipt of a CommTallies info frame.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	inf		ptr to info frame (contents in hfa384x order)
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_inf_tallies
+ *
+ * Handles the receipt of a CommTallies info frame.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	inf		ptr to info frame (contents in hfa384x order)
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 static void prism2sta_inf_tallies(wlandevice_t *wlandev,
 				  hfa384x_InfFrame_t *inf)
 {
@@ -986,8 +993,8 @@ static void prism2sta_inf_tallies(wlandevice_t *wlandev,
 	int cnt;
 
 	/*
-	 ** Determine if these are 16-bit or 32-bit tallies, based on the
-	 ** record length of the info record.
+	 * Determine if these are 16-bit or 32-bit tallies, based on the
+	 * record length of the info record.
 	 */
 
 	cnt = sizeof(hfa384x_CommTallies32_t) / sizeof(u32);
@@ -1004,23 +1011,23 @@ static void prism2sta_inf_tallies(wlandevice_t *wlandev,
 	}
 }
 
-/*----------------------------------------------------------------
-* prism2sta_inf_scanresults
-*
-* Handles the receipt of a Scan Results info frame.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	inf		ptr to info frame (contents in hfa384x order)
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_inf_scanresults
+ *
+ * Handles the receipt of a Scan Results info frame.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	inf		ptr to info frame (contents in hfa384x order)
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
@@ -1060,23 +1067,23 @@ static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
 	}
 }
 
-/*----------------------------------------------------------------
-* prism2sta_inf_hostscanresults
-*
-* Handles the receipt of a Scan Results info frame.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	inf		ptr to info frame (contents in hfa384x order)
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_inf_hostscanresults
+ *
+ * Handles the receipt of a Scan Results info frame.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	inf		ptr to info frame (contents in hfa384x order)
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
 					  hfa384x_InfFrame_t *inf)
 {
@@ -1101,23 +1108,23 @@ static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
 	wake_up_interruptible(&hw->cmdq);
 };
 
-/*----------------------------------------------------------------
-* prism2sta_inf_chinforesults
-*
-* Handles the receipt of a Channel Info Results info frame.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	inf		ptr to info frame (contents in hfa384x order)
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_inf_chinforesults
+ *
+ * Handles the receipt of a Channel Info Results info frame.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	inf		ptr to info frame (contents in hfa384x order)
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 static void prism2sta_inf_chinforesults(wlandevice_t *wlandev,
 					hfa384x_InfFrame_t *inf)
 {
@@ -1414,23 +1421,23 @@ void prism2sta_processing_defer(struct work_struct *data)
 	wlandev->linkstatus = (hw->link_status == HFA384x_LINK_CONNECTED);
 }
 
-/*----------------------------------------------------------------
-* prism2sta_inf_linkstatus
-*
-* Handles the receipt of a Link Status info frame.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	inf		ptr to info frame (contents in hfa384x order)
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_inf_linkstatus
+ *
+ * Handles the receipt of a Link Status info frame.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	inf		ptr to info frame (contents in hfa384x order)
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
 				     hfa384x_InfFrame_t *inf)
 {
@@ -1441,24 +1448,24 @@ static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
 	schedule_work(&hw->link_bh);
 }
 
-/*----------------------------------------------------------------
-* prism2sta_inf_assocstatus
-*
-* Handles the receipt of an Association Status info frame. Should
-* be present in APs only.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	inf		ptr to info frame (contents in hfa384x order)
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_inf_assocstatus
+ *
+ * Handles the receipt of an Association Status info frame. Should
+ * be present in APs only.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	inf		ptr to info frame (contents in hfa384x order)
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
@@ -1471,15 +1478,15 @@ static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
 	rec.reason = le16_to_cpu(rec.reason);
 
 	/*
-	 ** Find the address in the list of authenticated stations.
-	 ** If it wasn't found, then this address has not been previously
-	 ** authenticated and something weird has happened if this is
-	 ** anything other than an "authentication failed" message.
-	 ** If the address was found, then set the "associated" flag for
-	 ** that station, based on whether the station is associating or
-	 ** losing its association.  Something weird has also happened
-	 ** if we find the address in the list of authenticated stations
-	 ** but we are getting an "authentication failed" message.
+	 * Find the address in the list of authenticated stations.
+	 * If it wasn't found, then this address has not been previously
+	 * authenticated and something weird has happened if this is
+	 * anything other than an "authentication failed" message.
+	 * If the address was found, then set the "associated" flag for
+	 * that station, based on whether the station is associating or
+	 * losing its association.  Something weird has also happened
+	 * if we find the address in the list of authenticated stations
+	 * but we are getting an "authentication failed" message.
 	 */
 
 	for (i = 0; i < hw->authlist.cnt; i++)
@@ -1501,25 +1508,25 @@ static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
 	}
 }
 
-/*----------------------------------------------------------------
-* prism2sta_inf_authreq
-*
-* Handles the receipt of an Authentication Request info frame. Should
-* be present in APs only.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	inf		ptr to info frame (contents in hfa384x order)
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-*
-----------------------------------------------------------------*/
+/*
+ * prism2sta_inf_authreq
+ *
+ * Handles the receipt of an Authentication Request info frame. Should
+ * be present in APs only.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	inf		ptr to info frame (contents in hfa384x order)
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ *
+ */
 static void prism2sta_inf_authreq(wlandevice_t *wlandev,
 				  hfa384x_InfFrame_t *inf)
 {
@@ -1545,23 +1552,23 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 	u8 *addr;
 
 	/*
-	 ** Build the AuthenticateStation record.  Initialize it for denying
-	 ** authentication.
+	 * Build the AuthenticateStation record.  Initialize it for denying
+	 * authentication.
 	 */
 
 	ether_addr_copy(rec.address, inf->info.authreq.sta_addr);
 	rec.status = P80211ENUM_status_unspec_failure;
 
 	/*
-	 ** Authenticate based on the access mode.
+	 * Authenticate based on the access mode.
 	 */
 
 	switch (hw->accessmode) {
 	case WLAN_ACCESS_NONE:
 
 		/*
-		 ** Deny all new authentications.  However, if a station
-		 ** is ALREADY authenticated, then accept it.
+		 * Deny all new authentications.  However, if a station
+		 * is ALREADY authenticated, then accept it.
 		 */
 
 		for (i = 0; i < hw->authlist.cnt; i++)
@@ -1576,7 +1583,7 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 	case WLAN_ACCESS_ALL:
 
 		/*
-		 ** Allow all authentications.
+		 * Allow all authentications.
 		 */
 
 		rec.status = P80211ENUM_status_successful;
@@ -1585,13 +1592,13 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 	case WLAN_ACCESS_ALLOW:
 
 		/*
-		 ** Only allow the authentication if the MAC address
-		 ** is in the list of allowed addresses.
-		 **
-		 ** Since this is the interrupt handler, we may be here
-		 ** while the access list is in the middle of being
-		 ** updated.  Choose the list which is currently okay.
-		 ** See "prism2mib_priv_accessallow()" for details.
+		 * Only allow the authentication if the MAC address
+		 * is in the list of allowed addresses.
+		 *
+		 * Since this is the interrupt handler, we may be here
+		 * while the access list is in the middle of being
+		 * updated.  Choose the list which is currently okay.
+		 * See "prism2mib_priv_accessallow()" for details.
 		 */
 
 		if (hw->allow.modify == 0) {
@@ -1613,13 +1620,13 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 	case WLAN_ACCESS_DENY:
 
 		/*
-		 ** Allow the authentication UNLESS the MAC address is
-		 ** in the list of denied addresses.
-		 **
-		 ** Since this is the interrupt handler, we may be here
-		 ** while the access list is in the middle of being
-		 ** updated.  Choose the list which is currently okay.
-		 ** See "prism2mib_priv_accessdeny()" for details.
+		 * Allow the authentication UNLESS the MAC address is
+		 * in the list of denied addresses.
+		 *
+		 * Since this is the interrupt handler, we may be here
+		 * while the access list is in the middle of being
+		 * updated.  Choose the list which is currently okay.
+		 * See "prism2mib_priv_accessdeny()" for details.
 		 */
 
 		if (hw->deny.modify == 0) {
@@ -1642,12 +1649,12 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 	}
 
 	/*
-	 ** If the authentication is okay, then add the MAC address to the
-	 ** list of authenticated stations.  Don't add the address if it
-	 ** is already in the list. (802.11b does not seem to disallow
-	 ** a station from issuing an authentication request when the
-	 ** station is already authenticated. Does this sort of thing
-	 ** ever happen?  We might as well do the check just in case.)
+	 * If the authentication is okay, then add the MAC address to the
+	 * list of authenticated stations.  Don't add the address if it
+	 * is already in the list. (802.11b does not seem to disallow
+	 * a station from issuing an authentication request when the
+	 * station is already authenticated. Does this sort of thing
+	 * ever happen?  We might as well do the check just in case.)
 	 */
 
 	added = 0;
@@ -1672,9 +1679,9 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 	}
 
 	/*
-	 ** Send back the results of the authentication.  If this doesn't work,
-	 ** then make sure to remove the address from the authenticated list if
-	 ** it was added.
+	 * Send back the results of the authentication.  If this doesn't work,
+	 * then make sure to remove the address from the authenticated list if
+	 * it was added.
 	 */
 
 	rec.status = cpu_to_le16(rec.status);
@@ -1691,24 +1698,24 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 	}
 }
 
-/*----------------------------------------------------------------
-* prism2sta_inf_psusercnt
-*
-* Handles the receipt of a PowerSaveUserCount info frame. Should
-* be present in APs only.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	inf		ptr to info frame (contents in hfa384x order)
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_inf_psusercnt
+ *
+ * Handles the receipt of a PowerSaveUserCount info frame. Should
+ * be present in APs only.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	inf		ptr to info frame (contents in hfa384x order)
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
 				    hfa384x_InfFrame_t *inf)
 {
@@ -1717,23 +1724,23 @@ static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
 	hw->psusercount = le16_to_cpu(inf->info.psusercnt.usercnt);
 }
 
-/*----------------------------------------------------------------
-* prism2sta_ev_info
-*
-* Handles the Info event.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	inf		ptr to a generic info frame
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_ev_info
+ *
+ * Handles the Info event.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	inf		ptr to a generic info frame
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 void prism2sta_ev_info(wlandevice_t *wlandev, hfa384x_InfFrame_t *inf)
 {
 	inf->infotype = le16_to_cpu(inf->infotype);
@@ -1782,46 +1789,46 @@ void prism2sta_ev_info(wlandevice_t *wlandev, hfa384x_InfFrame_t *inf)
 	}
 }
 
-/*----------------------------------------------------------------
-* prism2sta_ev_txexc
-*
-* Handles the TxExc event.  A Transmit Exception event indicates
-* that the MAC's TX process was unsuccessful - so the packet did
-* not get transmitted.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	status		tx frame status word
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_ev_txexc
+ *
+ * Handles the TxExc event.  A Transmit Exception event indicates
+ * that the MAC's TX process was unsuccessful - so the packet did
+ * not get transmitted.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	status		tx frame status word
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 void prism2sta_ev_txexc(wlandevice_t *wlandev, u16 status)
 {
 	pr_debug("TxExc status=0x%x.\n", status);
 }
 
-/*----------------------------------------------------------------
-* prism2sta_ev_tx
-*
-* Handles the Tx event.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*	status		tx frame status word
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_ev_tx
+ *
+ * Handles the Tx event.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *	status		tx frame status word
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status)
 {
 	pr_debug("Tx Complete, status=0x%04x\n", status);
@@ -1829,49 +1836,49 @@ void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status)
 	wlandev->netdev->stats.tx_packets++;
 }
 
-/*----------------------------------------------------------------
-* prism2sta_ev_rx
-*
-* Handles the Rx event.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_ev_rx
+ *
+ * Handles the Rx event.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 void prism2sta_ev_rx(wlandevice_t *wlandev, struct sk_buff *skb)
 {
 	p80211netdev_rx(wlandev, skb);
 }
 
-/*----------------------------------------------------------------
-* prism2sta_ev_alloc
-*
-* Handles the Alloc event.
-*
-* Arguments:
-*	wlandev		wlan device structure
-*
-* Returns:
-*	nothing
-*
-* Side effects:
-*
-* Call context:
-*	interrupt
-----------------------------------------------------------------*/
+/*
+ * prism2sta_ev_alloc
+ *
+ * Handles the Alloc event.
+ *
+ * Arguments:
+ *	wlandev		wlan device structure
+ *
+ * Returns:
+ *	nothing
+ *
+ * Side effects:
+ *
+ * Call context:
+ *	interrupt
+ */
 void prism2sta_ev_alloc(wlandevice_t *wlandev)
 {
 	netif_wake_queue(wlandev->netdev);
 }
 
-/*----------------------------------------------------------------
+/*
 * create_wlan
 *
 * Called at module init time.  This creates the wlandevice_t structure
@@ -1889,7 +1896,7 @@ void prism2sta_ev_alloc(wlandevice_t *wlandev)
 * Call context:
 *	process thread
 *
-----------------------------------------------------------------*/
+*/
 static wlandevice_t *create_wlan(void)
 {
 	wlandevice_t *wlandev = NULL;
-- 
2.1.4


