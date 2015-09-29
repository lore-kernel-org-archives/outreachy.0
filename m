X-GM-THRID: 6200080718557609984
X-Received: by 10.152.20.195 with SMTP id p3mr67345lae.5.1443568784169;
        Tue, 29 Sep 2015 16:19:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.210 with SMTP id k18ls8419lab.89.gmail; Tue, 29 Sep
 2015 16:19:43 -0700 (PDT)
X-Received: by 10.112.145.3 with SMTP id sq3mr67367lbb.7.1443568783071;
        Tue, 29 Sep 2015 16:19:43 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id c1si729309wiv.3.2015.09.29.16.19.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 16:19:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id lk2so173024467wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 16:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Ysizf2qY/IEIAIeVqO1rlTPLMqwAm4dIEq5KEmGviag=;
        b=Kz7aMJfhQHy5OeT1b+52+gNwQHf6MyPZks2UlCXHUpzhL6SuX/XMDZBHN1856cD7k6
         gDdGA+iJjGyvctKtOqZYkNMUF+E9Dx9Q8AZs/0I0k/1Go3NXhiC7TrssM7bW3TT8hLq7
         jPZschxAFCS71L+ODwU27Jbp3HkTMyrU1yeRgnhj1aTZWfzNLlOT3YITNN4WtpcyrXy/
         scsy7AWuBAjQPoW8qn8METBv4zZ+Szn5s2MrRK+8aKlz5issCUCKgqzPXE/1madlinNj
         D5/fMGDbj1SsrT4gpW7dac0Z/DfpsMSShdce5FO+pEBRTMrWZ/wVNJTB1QLIwwqLA4hI
         pSeQ==
X-Received: by 10.180.87.37 with SMTP id u5mr28838966wiz.42.1443568782945;
        Tue, 29 Sep 2015 16:19:42 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id fx2sm26226072wib.24.2015.09.29.16.19.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 16:19:42 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: wlan-ng: fix block comment indentation
Date: Wed, 30 Sep 2015 02:19:31 +0300
Message-Id: <1443568771-8819-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

Update indentation of block comments to follow linux coding style

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 111 ++++++++++++++++++++++++------------
 1 file changed, 74 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 0329c52..267faf8 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -150,7 +150,8 @@ static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
 *
 * Call context:
 *	process thread
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static int prism2sta_open(wlandevice_t *wlandev)
 {
 	/* We don't currently have to do anything else.
@@ -184,7 +185,8 @@ static int prism2sta_open(wlandevice_t *wlandev)
 *
 * Call context:
 *	process thread
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static int prism2sta_close(wlandevice_t *wlandev)
 {
 	/* We don't currently have to do anything else.
@@ -212,7 +214,8 @@ static int prism2sta_close(wlandevice_t *wlandev)
 *
 * Call context:
 *	process thread
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static void prism2sta_reset(wlandevice_t *wlandev)
 {
 }
@@ -237,7 +240,8 @@ static void prism2sta_reset(wlandevice_t *wlandev)
 *
 * Call context:
 *	process thread
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
 			     union p80211_hdr *p80211_hdr,
 			     struct p80211_metawep *p80211_wep)
@@ -276,7 +280,8 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
 *
 * Call context:
 *	process thread
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
 {
 	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
@@ -406,7 +411,8 @@ static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
 * Call context:
 *	process thread  (usually)
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
 {
 	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
@@ -579,7 +585,8 @@ u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
 *
 * Call context:
 *	Either.
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 {
 	int result = 0;
@@ -676,8 +683,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 		goto failed;
 	}
 
-	/* get all the Compatibility range, modem interface supplier
-	   fields in byte order */
+	/*
+	 * get all the Compatibility range, modem interface supplier
+	 * fields in byte order
+	 */
 	hw->cap_sup_mfi.role = le16_to_cpu(hw->cap_sup_mfi.role);
 	hw->cap_sup_mfi.id = le16_to_cpu(hw->cap_sup_mfi.id);
 	hw->cap_sup_mfi.variant = le16_to_cpu(hw->cap_sup_mfi.variant);
@@ -699,8 +708,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 		goto failed;
 	}
 
-	/* get all the Compatibility range, controller interface supplier
-	   fields in byte order */
+	/*
+	 * get all the Compatibility range, controller interface supplier
+	 * fields in byte order
+	 */
 	hw->cap_sup_cfi.role = le16_to_cpu(hw->cap_sup_cfi.role);
 	hw->cap_sup_cfi.id = le16_to_cpu(hw->cap_sup_cfi.id);
 	hw->cap_sup_cfi.variant = le16_to_cpu(hw->cap_sup_cfi.variant);
@@ -722,8 +733,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 		goto failed;
 	}
 
-	/* get all the Compatibility range, primary firmware supplier
-	   fields in byte order */
+	/*
+	 * get all the Compatibility range, primary firmware supplier
+	 * fields in byte order
+	 */
 	hw->cap_sup_pri.role = le16_to_cpu(hw->cap_sup_pri.role);
 	hw->cap_sup_pri.id = le16_to_cpu(hw->cap_sup_pri.id);
 	hw->cap_sup_pri.variant = le16_to_cpu(hw->cap_sup_pri.variant);
@@ -745,8 +758,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 		goto failed;
 	}
 
-	/* get all the Compatibility range, station firmware supplier
-	   fields in byte order */
+	/*
+	 * get all the Compatibility range, station firmware supplier
+	 * fields in byte order
+	 */
 	hw->cap_sup_sta.role = le16_to_cpu(hw->cap_sup_sta.role);
 	hw->cap_sup_sta.id = le16_to_cpu(hw->cap_sup_sta.id);
 	hw->cap_sup_sta.variant = le16_to_cpu(hw->cap_sup_sta.variant);
@@ -776,8 +791,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 		goto failed;
 	}
 
-	/* get all the Compatibility range, primary f/w actor, CFI supplier
-	   fields in byte order */
+	/*
+	 * get all the Compatibility range, primary f/w actor, CFI supplier
+	 * fields in byte order
+	 */
 	hw->cap_act_pri_cfi.role = le16_to_cpu(hw->cap_act_pri_cfi.role);
 	hw->cap_act_pri_cfi.id = le16_to_cpu(hw->cap_act_pri_cfi.id);
 	hw->cap_act_pri_cfi.variant = le16_to_cpu(hw->cap_act_pri_cfi.variant);
@@ -799,8 +816,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 		goto failed;
 	}
 
-	/* get all the Compatibility range, station f/w actor, CFI supplier
-	   fields in byte order */
+	/*
+	 * get all the Compatibility range, station f/w actor, CFI supplier
+	 * fields in byte order
+	 */
 	hw->cap_act_sta_cfi.role = le16_to_cpu(hw->cap_act_sta_cfi.role);
 	hw->cap_act_sta_cfi.id = le16_to_cpu(hw->cap_act_sta_cfi.id);
 	hw->cap_act_sta_cfi.variant = le16_to_cpu(hw->cap_act_sta_cfi.variant);
@@ -822,8 +841,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 		goto failed;
 	}
 
-	/* get all the Compatibility range, station f/w actor, MFI supplier
-	   fields in byte order */
+	/*
+	 * get all the Compatibility range, station f/w actor, MFI supplier
+	 * fields in byte order
+	 */
 	hw->cap_act_sta_mfi.role = le16_to_cpu(hw->cap_act_sta_mfi.role);
 	hw->cap_act_sta_mfi.id = le16_to_cpu(hw->cap_act_sta_mfi.id);
 	hw->cap_act_sta_mfi.variant = le16_to_cpu(hw->cap_act_sta_mfi.variant);
@@ -901,7 +922,8 @@ done:
 *
 * Call context:
 *	process thread
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static int prism2sta_globalsetup(wlandevice_t *wlandev)
 {
 	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
@@ -951,7 +973,8 @@ exit:
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static void prism2sta_inf_handover(wlandevice_t *wlandev,
 				   hfa384x_InfFrame_t *inf)
 {
@@ -974,7 +997,8 @@ static void prism2sta_inf_handover(wlandevice_t *wlandev,
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static void prism2sta_inf_tallies(wlandevice_t *wlandev,
 				  hfa384x_InfFrame_t *inf)
 {
@@ -1020,7 +1044,8 @@ static void prism2sta_inf_tallies(wlandevice_t *wlandev,
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
@@ -1076,7 +1101,8 @@ static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
 					  hfa384x_InfFrame_t *inf)
 {
@@ -1117,7 +1143,8 @@ static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static void prism2sta_inf_chinforesults(wlandevice_t *wlandev,
 					hfa384x_InfFrame_t *inf)
 {
@@ -1430,7 +1457,8 @@ void prism2sta_processing_defer(struct work_struct *data)
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
 				     hfa384x_InfFrame_t *inf)
 {
@@ -1458,7 +1486,8 @@ static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
@@ -1519,7 +1548,8 @@ static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
 * Call context:
 *	interrupt
 *
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static void prism2sta_inf_authreq(wlandevice_t *wlandev,
 				  hfa384x_InfFrame_t *inf)
 {
@@ -1708,7 +1738,8 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
 				    hfa384x_InfFrame_t *inf)
 {
@@ -1733,7 +1764,8 @@ static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 void prism2sta_ev_info(wlandevice_t *wlandev, hfa384x_InfFrame_t *inf)
 {
 	inf->infotype = le16_to_cpu(inf->infotype);
@@ -1800,7 +1832,8 @@ void prism2sta_ev_info(wlandevice_t *wlandev, hfa384x_InfFrame_t *inf)
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 void prism2sta_ev_txexc(wlandevice_t *wlandev, u16 status)
 {
 	pr_debug("TxExc status=0x%x.\n", status);
@@ -1821,7 +1854,8 @@ void prism2sta_ev_txexc(wlandevice_t *wlandev, u16 status)
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status)
 {
 	pr_debug("Tx Complete, status=0x%04x\n", status);
@@ -1844,7 +1878,8 @@ void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status)
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 void prism2sta_ev_rx(wlandevice_t *wlandev, struct sk_buff *skb)
 {
 	p80211netdev_rx(wlandev, skb);
@@ -1865,7 +1900,8 @@ void prism2sta_ev_rx(wlandevice_t *wlandev, struct sk_buff *skb)
 *
 * Call context:
 *	interrupt
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 void prism2sta_ev_alloc(wlandevice_t *wlandev)
 {
 	netif_wake_queue(wlandev->netdev);
@@ -1889,7 +1925,8 @@ void prism2sta_ev_alloc(wlandevice_t *wlandev)
 * Call context:
 *	process thread
 *
-----------------------------------------------------------------*/
+----------------------------------------------------------------
+*/
 static wlandevice_t *create_wlan(void)
 {
 	wlandevice_t *wlandev = NULL;
-- 
2.1.4


