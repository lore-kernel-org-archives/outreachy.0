X-GM-THRID: 6331778131378044928
X-Received: by 10.13.193.67 with SMTP id c64mr3010701ywd.145.1474231980168;
        Sun, 18 Sep 2016 13:53:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.7 with SMTP id 7ls437570otu.25.gmail; Sun, 18 Sep 2016
 13:52:58 -0700 (PDT)
X-Received: by 10.129.77.212 with SMTP id a203mr5111753ywb.45.1474231978642;
        Sun, 18 Sep 2016 13:52:58 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id um12si4132774pab.2.2016.09.18.13.52.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 13:52:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so5962382pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 13:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=9rmKn3RcALyfgaCu/76hgFARxHFOTMR2WvxAAk2O9zw=;
        b=MnTi0gIDPqpBf23xJ4GvXrwc45/sH0jgXoouOjwfVEQceacu1jBnpx95v3mTDgV3wC
         dmpiZIDekhNnDUNkYSsE5q7RaWl5IWHRA7RyGmO8rorJ0ODLVhVzzE7+T70fvJv70MzK
         xg8Xq04rZkqwlLg+/ZOwuhE3chAGQd1+X2F7AOJ2aTB+oV0aXLqt/dbkDIUoDmcBgi9J
         EbqeQCwfQysw8ZZnFHlErUruMVPW3LXnsAbOBXIK1Lctj/2FfystlGCKydPQNfqR49kQ
         kKWH4vMLm4wn/KrPjEw6XL+jhBQScXeFj8CPdQlETtNM1fTfuYfg07gTzk+UW1dNk5C/
         u6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=9rmKn3RcALyfgaCu/76hgFARxHFOTMR2WvxAAk2O9zw=;
        b=S+cnlDOyWTglRXopuNrojCrgJLhXcpY4mM2Fu01pbBdNcnHVsxKiXb+U/o2QjP55zh
         CW2dH5FJHtZMu46sinbEp4nRjyfch+R+vp7ILpiNDEojUrxBrOrRkOT6TsNZKBnQq7kQ
         nH0KKhYy99UHeWkoi/CpOn6N4+vHBYU6gz7uz7WcXUEFx5uBVnAxzLZMOsud04i8EYV5
         rmnzXrcpWPqY7gcuT5Lmwdiyx2HYqFF+iWOZ0U7O/JI9IE1n5nVY1Hnu/u306HNk0wRT
         AFI/VJqqS2RRI0wVdK/FbvsrVsw84/QXBZSb72+owMMm/mmMRWwV42IAVjBgncN+xOun
         nzww==
X-Gm-Message-State: AE9vXwOm10sTaUkhyT4uz0WZ3QHSeOs4QdFD9h2j4q1znBY0YcoigS7yY40eK6uvt1IVxA==
X-Received: by 10.66.233.169 with SMTP id tx9mr692698pac.7.1474231978266;
        Sun, 18 Sep 2016 13:52:58 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id mk9sm26144528pab.1.2016.09.18.13.52.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 13:52:57 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 1/2] staging: wlan-ng: use kernel preferred block commenting style
Date: Mon, 19 Sep 2016 02:22:07 +0530
Message-Id: <6b8722de3184861c05da59c3aad7cd6787079279.1474231479.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1474231479.git.gs051095@gmail.com>
References: <cover.1474231479.git.gs051095@gmail.com>
In-Reply-To: <cover.1474231479.git.gs051095@gmail.com>
References: <cover.1474231479.git.gs051095@gmail.com>

Move the trailing markers to the next line to fix the checkpatch issue,
trailing markers on the same line as the comment. Delete - in the multiline
comments to follow the kernel coding style guide.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 276 ++++++++++++++++++--------------------
 1 file changed, 129 insertions(+), 147 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 2ff3805..7029253 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -61,7 +61,7 @@
 #include <linux/if_ether.h>
 #include <linux/usb.h>
 
-/*--- Mins & Maxs -----------------------------------*/
+/* Mins & Maxs */
 #define	HFA384x_PORTID_MAX		((u16)7)
 #define	HFA384x_NUMPORTS_MAX		((u16)(HFA384x_PORTID_MAX + 1))
 #define	HFA384x_PDR_LEN_MAX		((u16)512) /* in bytes, from EK */
@@ -74,7 +74,7 @@
 #define	HFA384x_RIDDATA_MAXLEN		HFA384x_RID_GUESSING_MAXLEN
 #define	HFA384x_USB_RWMEM_MAXLEN	2048
 
-/*--- Support Constants -----------------------------*/
+/* Support Constants */
 #define		HFA384x_PORTTYPE_IBSS			((u16)0)
 #define		HFA384x_PORTTYPE_BSS			((u16)1)
 #define		HFA384x_PORTTYPE_PSUEDOIBSS		((u16)3)
@@ -89,9 +89,10 @@
 #define		HFA384x_RATEBIT_5dot5			((u16)4)
 #define		HFA384x_RATEBIT_11			((u16)8)
 
-/*--- MAC Internal memory constants and macros ------*/
+/* MAC Internal memory constants and macros */
 /* masks and macros used to manipulate MAC internal memory addresses. */
-/* MAC internal memory addresses are 23 bit quantities.  The MAC uses
+/*
+ * MAC internal memory addresses are 23 bit quantities.  The MAC uses
  * a paged address space where the upper 16 bits are the page number
  * and the lower 7 bits are the offset.  There are various Host API
  * elements that require two 16-bit quantities to specify a MAC
@@ -109,8 +110,10 @@
 #define		HFA384x_ADDR_FLAT_CMD_PAGE_MASK	(0xffff0000)
 #define		HFA384x_ADDR_FLAT_CMD_OFF_MASK	(0x0000ffff)
 
-/* Mask bits for discarding unwanted pieces in AUX format
-   16-bit address parts */
+/*
+ * Mask bits for discarding unwanted pieces in AUX format
+ * 16-bit address parts
+ */
 #define		HFA384x_ADDR_AUX_PAGE_MASK	(0xffff)
 #define		HFA384x_ADDR_AUX_OFF_MASK	(0x007f)
 
@@ -125,17 +128,17 @@
 #define		HFA384x_ADDR_CMD_MKOFF(f) \
 		((u16)(((u32)(f)) & HFA384x_ADDR_FLAT_CMD_OFF_MASK))
 
-/*--- Controller Memory addresses -------------------*/
+/* Controller Memory addresses */
 #define		HFA3842_PDA_BASE	(0x007f0000UL)
 #define		HFA3841_PDA_BASE	(0x003f0000UL)
 #define		HFA3841_PDA_BOGUS_BASE	(0x00390000UL)
 
-/*--- Driver Download states  -----------------------*/
+/* Driver Download states */
 #define		HFA384x_DLSTATE_DISABLED		0
 #define		HFA384x_DLSTATE_RAMENABLED		1
 #define		HFA384x_DLSTATE_FLASHENABLED		2
 
-/*--- Register Field Masks --------------------------*/
+/* Register Field Masks */
 #define		HFA384x_CMD_AINFO		((u16)(BIT(14) | BIT(13) \
 							| BIT(12) | BIT(11) \
 							| BIT(10) | BIT(9) \
@@ -152,41 +155,40 @@
 							| BIT(10) | BIT(9) \
 							| BIT(8)))
 
-/*--- Command Code Constants --------------------------*/
-/*--- Controller Commands --------------------------*/
+/* Command Code Constants */
+/* Controller Commands */
 #define		HFA384x_CMDCODE_INIT		((u16)0x00)
 #define		HFA384x_CMDCODE_ENABLE		((u16)0x01)
 #define		HFA384x_CMDCODE_DISABLE		((u16)0x02)
 
-/*--- Regulate Commands --------------------------*/
+/* Regulate Commands */
 #define		HFA384x_CMDCODE_INQ		((u16)0x11)
 
-/*--- Configure Commands --------------------------*/
+/* Configure Commands */
 #define		HFA384x_CMDCODE_DOWNLD		((u16)0x22)
 
-/*--- Debugging Commands -----------------------------*/
+/* Debugging Commands */
 #define		HFA384x_CMDCODE_MONITOR		((u16)(0x38))
 #define		HFA384x_MONITOR_ENABLE		((u16)(0x0b))
 #define		HFA384x_MONITOR_DISABLE		((u16)(0x0f))
 
-/*--- Result Codes --------------------------*/
+/* Result Codes */
 #define		HFA384x_CMD_ERR			((u16)(0x7F))
 
-/*--- Programming Modes --------------------------
-	MODE 0: Disable programming
-	MODE 1: Enable volatile memory programming
-	MODE 2: Enable non-volatile memory programming
-	MODE 3: Program non-volatile memory section
---------------------------------------------------*/
+/*
+ *	Programming Modes
+ *	MODE 0: Disable programming
+ *	MODE 1: Enable volatile memory programming
+ *	MODE 2: Enable non-volatile memory programming
+ *	MODE 3: Program non-volatile memory section
+ */
 #define		HFA384x_PROGMODE_DISABLE	((u16)0x00)
 #define		HFA384x_PROGMODE_RAM		((u16)0x01)
 #define		HFA384x_PROGMODE_NV		((u16)0x02)
 #define		HFA384x_PROGMODE_NVWRITE	((u16)0x03)
 
-/*--- Record ID Constants --------------------------*/
-/*--------------------------------------------------------------------
-Configuration RIDs: Network Parameters, Static Configuration Entities
---------------------------------------------------------------------*/
+/* Record ID Constants */
+/* Configuration RIDs: Network Parameters, Static Configuration Entities */
 #define		HFA384x_RID_CNFPORTTYPE		((u16)0xFC00)
 #define		HFA384x_RID_CNFOWNMACADDR	((u16)0xFC01)
 #define		HFA384x_RID_CNFDESIREDSSID	((u16)0xFC02)
@@ -194,27 +196,23 @@ Configuration RIDs: Network Parameters, Static Configuration Entities
 #define		HFA384x_RID_CNFOWNSSID		((u16)0xFC04)
 #define		HFA384x_RID_CNFMAXDATALEN	((u16)0xFC07)
 
-/*--------------------------------------------------------------------
-Configuration RID lengths: Network Params, Static Config Entities
-  This is the length of JUST the DATA part of the RID (does not
-  include the len or code fields)
---------------------------------------------------------------------*/
+/*
+ * Configuration RID lengths: Network Params, Static Config Entities
+ * This is the length of JUST the DATA part of the RID (does not
+ * include the len or code fields)
+ */
 #define		HFA384x_RID_CNFOWNMACADDR_LEN	((u16)6)
 #define		HFA384x_RID_CNFDESIREDSSID_LEN	((u16)34)
 #define		HFA384x_RID_CNFOWNSSID_LEN	((u16)34)
 
-/*--------------------------------------------------------------------
-Configuration RIDs: Network Parameters, Dynamic Configuration Entities
---------------------------------------------------------------------*/
+/* Configuration RIDs: Network Parameters, Dynamic Configuration Entities */
 #define		HFA384x_RID_CREATEIBSS		((u16)0xFC81)
 #define		HFA384x_RID_FRAGTHRESH		((u16)0xFC82)
 #define		HFA384x_RID_RTSTHRESH		((u16)0xFC83)
 #define		HFA384x_RID_TXRATECNTL		((u16)0xFC84)
 #define		HFA384x_RID_PROMISCMODE		((u16)0xFC85)
 
-/*----------------------------------------------------------------------
-Information RIDs: NIC Information
---------------------------------------------------------------------*/
+/* Information RIDs: NIC Information */
 #define		HFA384x_RID_MAXLOADTIME		((u16)0xFD00)
 #define		HFA384x_RID_DOWNLOADBUFFER	((u16)0xFD01)
 #define		HFA384x_RID_PRIIDENTITY		((u16)0xFD02)
@@ -229,16 +227,14 @@ Information RIDs: NIC Information
 #define		HFA384x_RID_STA_MFIACTRANGES	((u16)0xFD22)
 #define		HFA384x_RID_STA_CFIACTRANGES	((u16)0xFD23)
 
-/*----------------------------------------------------------------------
-Information RID Lengths: NIC Information
-  This is the length of JUST the DATA part of the RID (does not
-  include the len or code fields)
---------------------------------------------------------------------*/
+/*
+ * Information RID Lengths: NIC Information
+ * This is the length of JUST the DATA part of the RID (does not
+ * include the len or code fields)
+ */
 #define		HFA384x_RID_NICSERIALNUMBER_LEN		((u16)12)
 
-/*--------------------------------------------------------------------
-Information RIDs:  MAC Information
---------------------------------------------------------------------*/
+/* Information RIDs:  MAC Information */
 #define		HFA384x_RID_PORTSTATUS		((u16)0xFD40)
 #define		HFA384x_RID_CURRENTSSID		((u16)0xFD41)
 #define		HFA384x_RID_CURRENTBSSID	((u16)0xFD42)
@@ -249,24 +245,20 @@ Information RIDs:  MAC Information
 #define		HFA384x_RID_PRIVACYOPTIMP	((u16)0xFD4F)
 #define		HFA384x_RID_DBMCOMMSQUALITY	((u16)0xFD51)
 
-/*--------------------------------------------------------------------
-Information RID Lengths:  MAC Information
-  This is the length of JUST the DATA part of the RID (does not
-  include the len or code fields)
---------------------------------------------------------------------*/
+/*
+ * Information RID Lengths:  MAC Information
+ * This is the length of JUST the DATA part of the RID (does not
+ * include the len or code fields)
+ */
 #define		HFA384x_RID_DBMCOMMSQUALITY_LEN	 \
 	((u16)sizeof(hfa384x_dbmcommsquality_t))
 #define		HFA384x_RID_JOINREQUEST_LEN \
 	((u16)sizeof(hfa384x_JoinRequest_data_t))
 
-/*--------------------------------------------------------------------
-Information RIDs:  Modem Information
---------------------------------------------------------------------*/
+/* Information RIDs:  Modem Information */
 #define		HFA384x_RID_CURRENTCHANNEL	((u16)0xFDC1)
 
-/*--------------------------------------------------------------------
-API ENHANCEMENTS (NOT ALREADY IMPLEMENTED)
---------------------------------------------------------------------*/
+/* API ENHANCEMENTS (NOT ALREADY IMPLEMENTED) */
 #define		HFA384x_RID_CNFWEPDEFAULTKEYID	((u16)0xFC23)
 #define		HFA384x_RID_CNFWEPDEFAULTKEY0	((u16)0xFC24)
 #define		HFA384x_RID_CNFWEPDEFAULTKEY1	((u16)0xFC25)
@@ -289,9 +281,7 @@ API ENHANCEMENTS (NOT ALREADY IMPLEMENTED)
 #define		HFA384x_RID_CNFWEPDEFAULTKEY_LEN	((u16)6)
 #define		HFA384x_RID_CNFWEP128DEFAULTKEY_LEN	((u16)14)
 
-/*--------------------------------------------------------------------
-PD Record codes
---------------------------------------------------------------------*/
+/* PD Record codes */
 #define HFA384x_PDR_PCB_PARTNUM		((u16)0x0001)
 #define HFA384x_PDR_PDAVER		((u16)0x0002)
 #define HFA384x_PDR_NIC_SERIAL		((u16)0x0003)
@@ -332,7 +322,7 @@ PD Record codes
 #define HFA384x_PDR_HFA3861_MANF_TESTI	((u16)0x0901)
 #define HFA384x_PDR_END_OF_PDA		((u16)0x0000)
 
-/*--- Register Test/Get/Set Field macros ------------------------*/
+/* Register Test/Get/Set Field macros */
 
 #define		HFA384x_CMD_AINFO_SET(value)	((u16)((u16)(value) << 8))
 #define		HFA384x_CMD_MACPORT_SET(value)	\
@@ -348,7 +338,6 @@ PD Record codes
 #define HFA384x_STATE_INIT	1
 #define HFA384x_STATE_RUNNING	2
 
-/*-------------------------------------------------------------*/
 /* Commonly used basic types */
 struct hfa384x_bytestr {
 	u16 len;
@@ -360,12 +349,12 @@ typedef struct hfa384x_bytestr32 {
 	u8 data[32];
 } __packed hfa384x_bytestr32_t;
 
-/*--------------------------------------------------------------------
-Configuration Record Structures:
-	Network Parameters, Static Configuration Entities
---------------------------------------------------------------------*/
+/*
+ * Configuration Record Structures:
+ *	Network Parameters, Static Configuration Entities
+ */
 
-/*-- Hardware/Firmware Component Information ----------*/
+/* Hardware/Firmware Component Information */
 typedef struct hfa384x_compident {
 	u16 id;
 	u16 variant;
@@ -381,49 +370,47 @@ typedef struct hfa384x_caplevel {
 	u16 top;
 } __packed hfa384x_caplevel_t;
 
-/*-- Configuration Record: cnfAuthentication --*/
+/* Configuration Record: cnfAuthentication */
 #define HFA384x_CNFAUTHENTICATION_OPENSYSTEM	0x0001
 #define HFA384x_CNFAUTHENTICATION_SHAREDKEY	0x0002
 #define HFA384x_CNFAUTHENTICATION_LEAP		0x0004
 
-/*--------------------------------------------------------------------
-Configuration Record Structures:
-	Network Parameters, Dynamic Configuration Entities
---------------------------------------------------------------------*/
+/*
+ * Configuration Record Structures:
+ *	Network Parameters, Dynamic Configuration Entities
+ */
 
 #define HFA384x_CREATEIBSS_JOINCREATEIBSS          0
 
-/*-- Configuration Record: HostScanRequest (data portion only) --*/
+/* Configuration Record: HostScanRequest (data portion only) */
 typedef struct hfa384x_HostScanRequest_data {
 	u16 channelList;
 	u16 txRate;
 	hfa384x_bytestr32_t ssid;
 } __packed hfa384x_HostScanRequest_data_t;
 
-/*-- Configuration Record: JoinRequest (data portion only) --*/
+/* Configuration Record: JoinRequest (data portion only) */
 typedef struct hfa384x_JoinRequest_data {
 	u8 bssid[WLAN_BSSID_LEN];
 	u16 channel;
 } __packed hfa384x_JoinRequest_data_t;
 
-/*-- Configuration Record: authenticateStation (data portion only) --*/
+/* Configuration Record: authenticateStation (data portion only) */
 typedef struct hfa384x_authenticateStation_data {
 	u8 address[ETH_ALEN];
 	u16 status;
 	u16 algorithm;
 } __packed hfa384x_authenticateStation_data_t;
 
-/*-- Configuration Record: WPAData       (data portion only) --*/
+/* Configuration Record: WPAData (data portion only) */
 typedef struct hfa384x_WPAData {
 	u16 datalen;
 	u8 data[0];		/* max 80 */
 } __packed hfa384x_WPAData_t;
 
-/*--------------------------------------------------------------------
-Information Record Structures: NIC Information
---------------------------------------------------------------------*/
+/* Information Record Structures: NIC Information */
 
-/*-- Information Record: DownLoadBuffer --*/
+/* Information Record: DownLoadBuffer */
 /* NOTE: The page and offset are in AUX format */
 typedef struct hfa384x_downloadbuffer {
 	u16 page;
@@ -431,32 +418,30 @@ typedef struct hfa384x_downloadbuffer {
 	u16 len;
 } __packed hfa384x_downloadbuffer_t;
 
-/*--------------------------------------------------------------------
-Information Record Structures: NIC Information
---------------------------------------------------------------------*/
+/* Information Record Structures: NIC Information */
 
 #define HFA384x_PSTATUS_CONN_IBSS	((u16)3)
 
-/*-- Information Record: commsquality --*/
+/* Information Record: commsquality */
 typedef struct hfa384x_commsquality {
 	u16 CQ_currBSS;
 	u16 ASL_currBSS;
 	u16 ANL_currFC;
 } __packed hfa384x_commsquality_t;
 
-/*-- Information Record: dmbcommsquality --*/
+/* Information Record: dmbcommsquality */
 typedef struct hfa384x_dbmcommsquality {
 	u16 CQdbm_currBSS;
 	u16 ASLdbm_currBSS;
 	u16 ANLdbm_currFC;
 } __packed hfa384x_dbmcommsquality_t;
 
-/*--------------------------------------------------------------------
-FRAME STRUCTURES: Communication Frames
-----------------------------------------------------------------------
-Communication Frames: Transmit Frames
---------------------------------------------------------------------*/
-/*-- Communication Frame: Transmit Frame Structure --*/
+/*
+ * FRAME STRUCTURES: Communication Frames
+ *
+ * Communication Frames: Transmit Frames
+ */
+/* Communication Frame: Transmit Frame Structure */
 typedef struct hfa384x_tx_frame {
 	u16 status;
 	u16 reserved1;
@@ -466,7 +451,7 @@ typedef struct hfa384x_tx_frame {
 	u8 tx_rate;
 	u16 tx_control;
 
-	/*-- 802.11 Header Information --*/
+	/* 802.11 Header Information */
 
 	u16 frame_control;
 	u16 duration_id;
@@ -477,31 +462,32 @@ typedef struct hfa384x_tx_frame {
 	u8 address4[6];
 	u16 data_len;		/* little endian format */
 
-	/*-- 802.3 Header Information --*/
+	/* 802.3 Header Information */
 
 	u8 dest_addr[6];
 	u8 src_addr[6];
 	u16 data_length;	/* big endian format */
 } __packed hfa384x_tx_frame_t;
-/*--------------------------------------------------------------------
-Communication Frames: Field Masks for Transmit Frames
---------------------------------------------------------------------*/
-/*-- Status Field --*/
+
+/*
+ * Communication Frames: Field Masks for Transmit Frames
+ */
+/* Status Field */
 #define		HFA384x_TXSTATUS_ACKERR			((u16)BIT(5))
 #define		HFA384x_TXSTATUS_FORMERR		((u16)BIT(3))
 #define		HFA384x_TXSTATUS_DISCON			((u16)BIT(2))
 #define		HFA384x_TXSTATUS_AGEDERR		((u16)BIT(1))
 #define		HFA384x_TXSTATUS_RETRYERR		((u16)BIT(0))
-/*-- Transmit Control Field --*/
+/* Transmit Control Field */
 #define		HFA384x_TX_MACPORT			((u16)(BIT(10) | \
 							  BIT(9) | BIT(8)))
 #define		HFA384x_TX_STRUCTYPE			((u16)(BIT(4) | BIT(3)))
 #define		HFA384x_TX_TXEX				((u16)BIT(2))
 #define		HFA384x_TX_TXOK				((u16)BIT(1))
-/*--------------------------------------------------------------------
-Communication Frames: Test/Get/Set Field Values for Transmit Frames
---------------------------------------------------------------------*/
-/*-- Status Field --*/
+/*
+ * Communication Frames: Test/Get/Set Field Values for Transmit Frames
+ */
+/* Status Field */
 #define HFA384x_TXSTATUS_ISERROR(v)	\
 	(((u16)(v)) & \
 	(HFA384x_TXSTATUS_ACKERR | HFA384x_TXSTATUS_FORMERR | \
@@ -515,12 +501,12 @@ Communication Frames: Test/Get/Set Field Values for Transmit Frames
 						HFA384x_TX_STRUCTYPE, 3)
 #define	HFA384x_TX_TXEX_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)
 #define	HFA384x_TX_TXOK_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXOK, 1)
-/*--------------------------------------------------------------------
-Communication Frames: Receive Frames
---------------------------------------------------------------------*/
-/*-- Communication Frame: Receive Frame Structure --*/
+/*
+ * Communication Frames: Receive Frames
+ */
+/* Communication Frame: Receive Frame Structure */
 typedef struct hfa384x_rx_frame {
-	/*-- MAC rx descriptor (hfa384x byte order) --*/
+	/* MAC rx descriptor (hfa384x byte order) */
 	u16 status;
 	u32 time;
 	u8 silence;
@@ -530,7 +516,7 @@ typedef struct hfa384x_rx_frame {
 	u16 reserved1;
 	u16 reserved2;
 
-	/*-- 802.11 Header Information (802.11 byte order) --*/
+	/* 802.11 Header Information (802.11 byte order) */
 	__le16 frame_control;
 	u16 duration_id;
 	u8 address1[6];
@@ -540,32 +526,32 @@ typedef struct hfa384x_rx_frame {
 	u8 address4[6];
 	__le16 data_len;		/* hfa384x (little endian) format */
 
-	/*-- 802.3 Header Information --*/
+	/* 802.3 Header Information */
 	u8 dest_addr[6];
 	u8 src_addr[6];
 	u16 data_length;	/* IEEE? (big endian) format */
 } __packed hfa384x_rx_frame_t;
-/*--------------------------------------------------------------------
-Communication Frames: Field Masks for Receive Frames
---------------------------------------------------------------------*/
+/*
+ * Communication Frames: Field Masks for Receive Frames
+ */
 
-/*-- Status Fields --*/
+/* Status Fields */
 #define		HFA384x_RXSTATUS_MACPORT		((u16)(BIT(10) | \
 								BIT(9) | \
 								BIT(8)))
 #define		HFA384x_RXSTATUS_FCSERR			((u16)BIT(0))
-/*--------------------------------------------------------------------
-Communication Frames: Test/Get/Set Field Values for Receive Frames
---------------------------------------------------------------------*/
+/*
+ * Communication Frames: Test/Get/Set Field Values for Receive Frames
+ */
 #define		HFA384x_RXSTATUS_MACPORT_GET(value)	((u16)((((u16)(value)) \
 					    & HFA384x_RXSTATUS_MACPORT) >> 8))
 #define		HFA384x_RXSTATUS_ISFCSERR(value)	((u16)(((u16)(value)) \
 						  & HFA384x_RXSTATUS_FCSERR))
-/*--------------------------------------------------------------------
- FRAME STRUCTURES: Information Types and Information Frame Structures
-----------------------------------------------------------------------
-Information Types
---------------------------------------------------------------------*/
+/*
+ * FRAME STRUCTURES: Information Types and Information Frame Structures
+ *
+ * Information Types
+ */
 #define		HFA384x_IT_HANDOVERADDR			((u16)0xF000UL)
 #define		HFA384x_IT_COMMTALLIES			((u16)0xF100UL)
 #define		HFA384x_IT_SCANRESULTS			((u16)0xF101UL)
@@ -579,13 +565,13 @@ Information Types
 #define		HFA384x_IT_ASSOCREQ			((u16)0xF205UL)
 #define		HFA384x_IT_MICFAILURE			((u16)0xF206UL)
 
-/*--------------------------------------------------------------------
-Information Frames Structures
-----------------------------------------------------------------------
-Information Frames: Notification Frame Structures
---------------------------------------------------------------------*/
+/*
+ * Information Frames Structures
+ *
+ * Information Frames: Notification Frame Structures
+ */
 
-/*--  Inquiry Frame, Diagnose: Communication Tallies --*/
+/*  Inquiry Frame, Diagnose: Communication Tallies */
 typedef struct hfa384x_CommTallies16 {
 	u16 txunicastframes;
 	u16 txmulticastframes;
@@ -634,7 +620,7 @@ typedef struct hfa384x_CommTallies32 {
 	u32 rxmsginbadmsgfrag;
 } __packed hfa384x_CommTallies32_t;
 
-/*--  Inquiry Frame, Diagnose: Scan Results & Subfields--*/
+/*  Inquiry Frame, Diagnose: Scan Results & Subfields */
 typedef struct hfa384x_ScanResultSub {
 	u16 chid;
 	u16 anl;
@@ -653,7 +639,7 @@ typedef struct hfa384x_ScanResult {
 	hfa384x_ScanResultSub_t result[HFA384x_SCANRESULT_MAX];
 } __packed hfa384x_ScanResult_t;
 
-/*--  Inquiry Frame, Diagnose: ChInfo Results & Subfields--*/
+/*  Inquiry Frame, Diagnose: ChInfo Results & Subfields */
 typedef struct hfa384x_ChInfoResultSub {
 	u16 chid;
 	u16 anl;
@@ -669,7 +655,7 @@ typedef struct hfa384x_ChInfoResult {
 	hfa384x_ChInfoResultSub_t result[HFA384x_CHINFORESULT_MAX];
 } __packed hfa384x_ChInfoResult_t;
 
-/*--  Inquiry Frame, Diagnose: Host Scan Results & Subfields--*/
+/*  Inquiry Frame, Diagnose: Host Scan Results & Subfields */
 typedef struct hfa384x_HScanResultSub {
 	u16 chid;
 	u16 anl;
@@ -689,7 +675,7 @@ typedef struct hfa384x_HScanResult {
 	hfa384x_HScanResultSub_t result[HFA384x_HSCANRESULT_MAX];
 } __packed hfa384x_HScanResult_t;
 
-/*--  Unsolicited Frame, MAC Mgmt: LinkStatus --*/
+/*  Unsolicited Frame, MAC Mgmt: LinkStatus */
 
 #define HFA384x_LINK_NOTCONNECTED	((u16)0)
 #define HFA384x_LINK_CONNECTED		((u16)1)
@@ -703,7 +689,7 @@ typedef struct hfa384x_LinkStatus {
 	u16 linkstatus;
 } __packed hfa384x_LinkStatus_t;
 
-/*--  Unsolicited Frame, MAC Mgmt: AssociationStatus (--*/
+/*  Unsolicited Frame, MAC Mgmt: AssociationStatus */
 
 #define HFA384x_ASSOCSTATUS_STAASSOC	((u16)1)
 #define HFA384x_ASSOCSTATUS_REASSOC	((u16)2)
@@ -718,14 +704,14 @@ typedef struct hfa384x_AssocStatus {
 	u16 reserved;
 } __packed hfa384x_AssocStatus_t;
 
-/*--  Unsolicited Frame, MAC Mgmt: AuthRequest (AP Only) --*/
+/*  Unsolicited Frame, MAC Mgmt: AuthRequest (AP Only) */
 
 typedef struct hfa384x_AuthRequest {
 	u8 sta_addr[ETH_ALEN];
 	u16 algorithm;
 } __packed hfa384x_AuthReq_t;
 
-/*--  Unsolicited Frame, MAC Mgmt: PSUserCount (AP Only) --*/
+/*  Unsolicited Frame, MAC Mgmt: PSUserCount (AP Only) */
 
 typedef struct hfa384x_PSUserCount {
 	u16 usercnt;
@@ -736,7 +722,7 @@ typedef struct hfa384x_KeyIDChanged {
 	u16 keyid;
 } __packed hfa384x_KeyIDChanged_t;
 
-/*--  Collection of all Inf frames ---------------*/
+/*  Collection of all Inf frames */
 typedef union hfa384x_infodata {
 	hfa384x_CommTallies16_t commtallies16;
 	hfa384x_CommTallies32_t commtallies32;
@@ -756,9 +742,9 @@ typedef struct hfa384x_InfFrame {
 	hfa384x_infodata_t info;
 } __packed hfa384x_InfFrame_t;
 
-/*--------------------------------------------------------------------
-USB Packet structures and constants.
---------------------------------------------------------------------*/
+/*
+ * USB Packet structures and constants.
+ */
 
 /* Should be sent to the bulkout endpoint */
 #define HFA384x_USB_TXFRM	0
@@ -780,7 +766,6 @@ USB Packet structures and constants.
 #define HFA384x_USB_BUFAVAIL	0x8006
 #define HFA384x_USB_ERROR	0x8007
 
-/*------------------------------------*/
 /* Request (bulk OUT) packet contents */
 
 typedef struct hfa384x_usb_txfrm {
@@ -827,7 +812,6 @@ typedef struct hfa384x_usb_rmemreq {
 	u8 pad[56];
 } __packed hfa384x_usb_rmemreq_t;
 
-/*------------------------------------*/
 /* Response (bulk IN) packet contents */
 
 typedef struct hfa384x_usb_rxfrm {
@@ -875,7 +859,6 @@ typedef struct hfa384x_usb_error {
 	u16 errortype;
 } __packed hfa384x_usb_error_t;
 
-/*----------------------------------------------------------*/
 /* Unions for packaging all the known packet types together */
 
 typedef union hfa384x_usbout {
@@ -903,9 +886,7 @@ typedef union hfa384x_usbin {
 	u8 boguspad[3000];
 } __packed hfa384x_usbin_t;
 
-/*--------------------------------------------------------------------
-PD record structures.
---------------------------------------------------------------------*/
+/* PD record structures. */
 
 typedef struct hfa384x_pdr_pcb_partnum {
 	u8 num[8];
@@ -1111,10 +1092,10 @@ typedef struct hfa384x_pdrec {
 } __packed hfa384x_pdrec_t;
 
 #ifdef __KERNEL__
-/*--------------------------------------------------------------------
----  MAC state structure, argument to all functions --
----  Also, a collection of support types --
---------------------------------------------------------------------*/
+/*
+ * MAC state structure, argument to all functions
+ * Also, a collection of support types
+ */
 typedef struct hfa384x_statusresult {
 	u16 status;
 	u16 resp0;
@@ -1297,7 +1278,8 @@ typedef struct hfa384x {
 	int dbmadjust;
 
 	/* Group Addresses - right now, there are up to a total
-	   of MAX_GRP_ADDR group addresses */
+	 * of MAX_GRP_ADDR group addresses
+	 */
 	u8 dot11_grp_addr[MAX_GRP_ADDR][ETH_ALEN];
 	unsigned int dot11_grpcnt;
 
-- 
2.9.2


