X-GM-THRID: 1756921593856
X-Received: by 10.194.86.1 with SMTP id l1mr278520wjz.0.1424521132485;
        Sat, 21 Feb 2015 04:18:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.4 with SMTP id u4ls348313laj.88.gmail; Sat, 21 Feb 2015
 04:18:52 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr280329lbb.20.1424521132171;
        Sat, 21 Feb 2015 04:18:52 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id el6si296049wib.2.2015.02.21.04.18.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 04:18:52 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so10041799wes.6
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 04:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=266oqzuc5hXQOBnbdW8b27PjaQGFp4Vj2+XpC946ILc=;
        b=ekPL8OfO3e/8ro/1YE7DCGenjL3w29Rd3Qqe7H9gdRto7oF37cBWUwQXorM0lKqPI6
         8p1bpkW4IHH88Jcf3ycGhX1ZQeylUscQ9R3mYx87+Qvdq6FjomrDryyoISPydJ26/2dB
         FfVw2km4DUFSq2ph34slaSJD1ZIsGPae7SpGx+DRuW4fPHIwbWmetiVEnSkk9kd0F0lg
         nScfJ/Gy8zAClZHuMrFSotKWhwKSG2NQQ7QdzQrDcA3m0z9fhExyVu2v4YoUstne1w9v
         wdvpDx6qgQ7dpPRhEEuYsh+qIB1wrRed2zqfWrjiNz0g35gHDr2or/kUjJkkXObTDNsX
         FDuA==
X-Received: by 10.194.158.39 with SMTP id wr7mr4362695wjb.118.1424521132067;
        Sat, 21 Feb 2015 04:18:52 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id dm6sm6727144wib.22.2015.02.21.04.18.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 04:18:51 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: wlan-ng: Remove typedefs
Date: Sat, 21 Feb 2015 14:18:43 +0200
Message-Id: <1424521123-23632-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "do not add new typedefs"
checkpatch.pl warning in hfa384x.h

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 3bb8c1b..2be8876 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -355,7 +355,7 @@ struct hfa384x_bytestr {
 	u8 data[0];
 } __packed;
 
-typedef struct hfa384x_bytestr32 {
+struct hfa384x_bytestr32 {
 	u16 len;
 	u8 data[32];
 } __packed hfa384x_bytestr32_t;
@@ -366,14 +366,14 @@ Configuration Record Structures:
 --------------------------------------------------------------------*/
 
 /*-- Hardware/Firmware Component Information ----------*/
-typedef struct hfa384x_compident {
+struct hfa384x_compident {
 	u16 id;
 	u16 variant;
 	u16 major;
 	u16 minor;
 } __packed hfa384x_compident_t;
 
-typedef struct hfa384x_caplevel {
+struct hfa384x_caplevel {
 	u16 role;
 	u16 id;
 	u16 variant;
@@ -394,27 +394,27 @@ Configuration Record Structures:
 #define HFA384x_CREATEIBSS_JOINCREATEIBSS          0
 
 /*-- Configuration Record: HostScanRequest (data portion only) --*/
-typedef struct hfa384x_HostScanRequest_data {
+struct hfa384x_HostScanRequest_data {
 	u16 channelList;
 	u16 txRate;
 	hfa384x_bytestr32_t ssid;
 } __packed hfa384x_HostScanRequest_data_t;
 
 /*-- Configuration Record: JoinRequest (data portion only) --*/
-typedef struct hfa384x_JoinRequest_data {
+struct hfa384x_JoinRequest_data {
 	u8 bssid[WLAN_BSSID_LEN];
 	u16 channel;
 } __packed hfa384x_JoinRequest_data_t;
 
 /*-- Configuration Record: authenticateStation (data portion only) --*/
-typedef struct hfa384x_authenticateStation_data {
+struct hfa384x_authenticateStation_data {
 	u8 address[ETH_ALEN];
 	u16 status;
 	u16 algorithm;
 } __packed hfa384x_authenticateStation_data_t;
 
 /*-- Configuration Record: WPAData       (data portion only) --*/
-typedef struct hfa384x_WPAData {
+struct hfa384x_WPAData {
 	u16 datalen;
 	u8 data[0];		/* max 80 */
 } __packed hfa384x_WPAData_t;
@@ -425,7 +425,7 @@ Information Record Structures: NIC Information
 
 /*-- Information Record: DownLoadBuffer --*/
 /* NOTE: The page and offset are in AUX format */
-typedef struct hfa384x_downloadbuffer {
+struct hfa384x_downloadbuffer {
 	u16 page;
 	u16 offset;
 	u16 len;
@@ -438,14 +438,14 @@ Information Record Structures: NIC Information
 #define HFA384x_PSTATUS_CONN_IBSS	((u16)3)
 
 /*-- Information Record: commsquality --*/
-typedef struct hfa384x_commsquality {
+struct hfa384x_commsquality {
 	u16 CQ_currBSS;
 	u16 ASL_currBSS;
 	u16 ANL_currFC;
 } __packed hfa384x_commsquality_t;
 
 /*-- Information Record: dmbcommsquality --*/
-typedef struct hfa384x_dbmcommsquality {
+struct hfa384x_dbmcommsquality {
 	u16 CQdbm_currBSS;
 	u16 ASLdbm_currBSS;
 	u16 ANLdbm_currFC;
@@ -457,7 +457,7 @@ FRAME STRUCTURES: Communication Frames
 Communication Frames: Transmit Frames
 --------------------------------------------------------------------*/
 /*-- Communication Frame: Transmit Frame Structure --*/
-typedef struct hfa384x_tx_frame {
+struct hfa384x_tx_frame {
 	u16 status;
 	u16 reserved1;
 	u16 reserved2;
@@ -519,7 +519,7 @@ Communication Frames: Test/Get/Set Field Values for Transmit Frames
 Communication Frames: Receive Frames
 --------------------------------------------------------------------*/
 /*-- Communication Frame: Receive Frame Structure --*/
-typedef struct hfa384x_rx_frame {
+struct hfa384x_rx_frame {
 	/*-- MAC rx descriptor (hfa384x byte order) --*/
 	u16 status;
 	u32 time;
@@ -586,7 +586,7 @@ Information Frames: Notification Frame Structures
 --------------------------------------------------------------------*/
 
 /*--  Inquiry Frame, Diagnose: Communication Tallies --*/
-typedef struct hfa384x_CommTallies16 {
+struct hfa384x_CommTallies16 {
 	u16 txunicastframes;
 	u16 txmulticastframes;
 	u16 txfragments;
-- 
1.9.1


