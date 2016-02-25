X-GM-THRID: 6255237134905507840
X-Received: by 10.31.174.2 with SMTP id x2mr41286821vke.13.1456410888859;
        Thu, 25 Feb 2016 06:34:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.70 with SMTP id z6ls201046obg.26.gmail; Thu, 25 Feb
 2016 06:34:48 -0800 (PST)
X-Received: by 10.182.227.137 with SMTP id sa9mr43357341obc.44.1456410888508;
        Thu, 25 Feb 2016 06:34:48 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x234.google.com (mail-io0-x234.google.com. [2607:f8b0:4001:c06::234])
        by gmr-mx.google.com with ESMTPS id c15si242986igm.1.2016.02.25.06.34.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:34:48 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::234 as permitted sender) client-ip=2607:f8b0:4001:c06::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::234 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x234.google.com with SMTP id g203so89607996iof.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/XV04nP5ckPSSKwxXugwvbY1DbpQUrm0giHb4CysueU=;
        b=AQmRjf1x6t7jYPgkI0ZgDZdpEwvJ8QwcSK3iFhvD3jxL374xfITSWkiEfQwH05xvUA
         j8H9NiBF3lMPgKhSL6tT2eLcbKYSVtaMcbV4fiZQFNMhhJ6hdzyKKWUA+eCvVCPJ+f9P
         CzyRupBf3TLWeZshje7s4vG/bSGsu18juCDJ80yZxtXUusUs59T7NklW/u+ohQbvi9ar
         9+d2OxUvOvLeYSqueOAUFO7che5kM+J0RGzPcsX4E7lLQMv9TR59AwM20F3hS1vMnfeY
         gGxUrucSBl3XAWdPPktEOHwnVXy5AXoFVi7GQUow3FMJzE6W2WIFRQGH4WB9TQxZfjgt
         mq7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/XV04nP5ckPSSKwxXugwvbY1DbpQUrm0giHb4CysueU=;
        b=IzHyXAQ0fhxB9NQ2YbtJa7LUbK26risAeCFkN6NdeEa26TSKeqrKqsTA1xtjoiwPHY
         HVL0dEEhc0/m1T/jL+8HOCGKzTaGAvWwgyrnU3qBaZufspUtgpexpInMDkbPcj57Kysg
         VXLKorvISr1KgSMOShCotc59H046mi/kzEX6s6jdK6x0uY8QEthNDW38pSnRWGZ+0dxW
         Ti3xpaoiyXXwo0wwQb1bMh831zoADKYSVFW+dAhMion/yXhlOTsc47SheVLaY0mHCUwP
         Hb48MfFQKO9k5nTBPnYewmRP0E3SZHWVnBSoz19J6JntsZYVBnkpZHLVArebMw4/yCsa
         MLBg==
X-Gm-Message-State: AG10YOS82ZOM3fIfO2+xQveIJl6P1CAtRGLE4j2DZHpIRr04W78z9ks5MpQbIWoamr+dVA==
X-Received: by 10.107.131.24 with SMTP id f24mr3083009iod.191.1456410888265;
        Thu, 25 Feb 2016 06:34:48 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id dl1sm1339486igc.22.2016.02.25.06.34.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:34:47 -0800 (PST)
Date: Thu, 25 Feb 2016 14:33:59 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: prism2sta.c: Drop unneeded void pointer
 cast
Message-ID: <20160225193359.GA7212@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers need not be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void *e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
| 
  ((T *)x)->f
| 
- (T *)
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 131223a..8741aa6 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -242,7 +242,7 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
 			     union p80211_hdr *p80211_hdr,
 			     struct p80211_metawep *p80211_wep)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 
 	/* If necessary, set the 802.11 WEP bit */
 	if ((wlandev->hostwep & (HOSTWEP_PRIVACYINVOKED | HOSTWEP_ENCRYPT)) ==
@@ -279,7 +279,7 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
  */
 static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 
 	int result = 0;
 
@@ -409,7 +409,7 @@ static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
  */
 u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 	u32 result;
 
 	result = P80211ENUM_resultcode_implementation_failure;
@@ -583,7 +583,7 @@ u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
 static int prism2sta_getcardinfo(wlandevice_t *wlandev)
 {
 	int result = 0;
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 	u16 temp;
 	u8 snum[HFA384x_RID_NICSERIALNUMBER_LEN];
 
@@ -911,7 +911,7 @@ done:
  */
 static int prism2sta_globalsetup(wlandevice_t *wlandev)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 
 	/* Set the maximum frame size */
 	return hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFMAXDATALEN,
@@ -921,7 +921,7 @@ static int prism2sta_globalsetup(wlandevice_t *wlandev)
 static int prism2sta_setmulticast(wlandevice_t *wlandev, netdevice_t *dev)
 {
 	int result = 0;
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 
 	u16 promisc;
 
@@ -985,7 +985,7 @@ static void prism2sta_inf_handover(wlandevice_t *wlandev,
 static void prism2sta_inf_tallies(wlandevice_t *wlandev,
 				  hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 	u16 *src16;
 	u32 *dst;
 	u32 *src32;
@@ -1032,7 +1032,7 @@ static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
 
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 	int nbss;
 	hfa384x_ScanResult_t *sr = &(inf->info.scanresult);
 	int i;
@@ -1087,7 +1087,7 @@ static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
 static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
 					  hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 	int nbss;
 
 	nbss = (inf->framelen - 3) / 32;
@@ -1128,7 +1128,7 @@ static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
 static void prism2sta_inf_chinforesults(wlandevice_t *wlandev,
 					hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 	unsigned int i, n;
 
 	hw->channel_info.results.scanchannels =
@@ -1441,7 +1441,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
 				     hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 
 	hw->link_status_new = le16_to_cpu(inf->info.linkstatus.linkstatus);
 
@@ -1469,7 +1469,7 @@ static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
 static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
 				      hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 	hfa384x_AssocStatus_t rec;
 	int i;
 
@@ -1530,7 +1530,7 @@ static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
 static void prism2sta_inf_authreq(wlandevice_t *wlandev,
 				  hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 	struct sk_buff *skb;
 
 	skb = dev_alloc_skb(sizeof(*inf));
@@ -1545,7 +1545,7 @@ static void prism2sta_inf_authreq(wlandevice_t *wlandev,
 static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 					hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 	hfa384x_authenticateStation_data_t rec;
 
 	int i, added, result, cnt;
@@ -1719,7 +1719,7 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
 				    hfa384x_InfFrame_t *inf)
 {
-	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
+	hfa384x_t *hw = wlandev->priv;
 
 	hw->psusercount = le16_to_cpu(inf->info.psusercnt.usercnt);
 }
-- 
2.5.0


