X-GM-THRID: 6330756111319171072
X-Received: by 10.13.236.209 with SMTP id v200mr9058227ywe.49.1473994038724;
        Thu, 15 Sep 2016 19:47:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.175.226 with SMTP id p95ls1448182ioo.44.gmail; Thu, 15 Sep
 2016 19:47:18 -0700 (PDT)
X-Received: by 10.107.16.206 with SMTP id 75mr5020394ioq.31.1473994038407;
        Thu, 15 Sep 2016 19:47:18 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id si10si2061813pab.1.2016.09.15.19.47.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 19:47:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q2so318133pfj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 19:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=oo3A3X2frDb4h+UD6o/p9JFWFPQ2SJ+88W6pgQfc83U=;
        b=FEcBA62E7pxxh2zPZJ1E8jnogUVmFM+gXxsrQF1VKtKUTPuHgHCxQyHl2jnP47qdvI
         HEIbQzD1CWp+soaHkrCQJi4s50Lgod+YCiuRjF0QzFxMq1wypXV1palqaF/r1/U1b7Nc
         vcFhMlZ9a6+5kDEq4XGqFJNuYfc1EnSVY2dVifqWnq9Q0U24c20rSoAwdKbXyJoWTnar
         nihXOUs9XIhqTisjOD5z0JjR6kvJ2FIrBMZa9LZtJk6jH3TmLQEKv1/Zt+26MCsESSDI
         i3m0j/LGxbkvjMKgz9hj5dtTLNLBlgmiOoW7MSq6bDOXXpAdXN3XSmJtj0ulK1vtxkHJ
         jl6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=oo3A3X2frDb4h+UD6o/p9JFWFPQ2SJ+88W6pgQfc83U=;
        b=G5FY5dAFM9ys7S5dehjCq8HU85oIXa5ZTRXadEYR1+JfSjpodBIovoVxGpskM9KOlV
         K9DNGxmixHN19zliwEzi88SBHNqGPmUSdZHrtBnkDf21yW+zVjmLxubrmWHhaJx2NWyu
         y8/vNieq3DZZH7rvwv89EGhJhxbh3tc2zo+rC1LUsfD+Z7mQ2qXzu5jkn64nR2Zr2OAY
         WqxSNg0q6bo46gDcbCuLSSIS89cE6wJCxQIN4VU4Mg/TGXywO7CiceZwvDwpp3zRoEPs
         5CHAdHve+5DHi7ouDpndC2qZdRdVUhkdp5sruwnmftzDEbxC+7mX/njLa6DXrWyKj/SL
         5QkQ==
X-Gm-Message-State: AE9vXwMBrtVOkR+ROToxufSh7cdKnOW7RbpVbh94z1RHEYHjEXHR7YZQ+AQV45a8+XOCRg==
X-Received: by 10.98.70.132 with SMTP id o4mr1741140pfi.132.1473994038055;
        Thu, 15 Sep 2016 19:47:18 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h67sm19190807pfg.32.2016.09.15.19.47.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 19:47:17 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 8/8] staging: wlan-ng: fix block comment style
Date: Fri, 16 Sep 2016 08:16:10 +0530
Message-Id: <be09e4935621ebe770021ab141611304221b5adf.1473993585.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>

move trailing markers to next line to fix the checkpatch issue Block
comments use a trailing */ on a separate line. Also, added * to the
multi-line comment to increase readability.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 226 +++++++++++++++++++++-----------------
 1 file changed, 127 insertions(+), 99 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 1fc34c7..7a7ba27 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -110,7 +110,8 @@
 #define		HFA384x_ADDR_FLAT_CMD_OFF_MASK	(0x0000ffff)
 
 /* Mask bits for discarding unwanted pieces in AUX format
-   16-bit address parts */
+ * 16-bit address parts
+ */
 #define		HFA384x_ADDR_AUX_PAGE_MASK	(0xffff)
 #define		HFA384x_ADDR_AUX_OFF_MASK	(0x007f)
 
@@ -172,21 +173,23 @@
 /*--- Result Codes --------------------------*/
 #define		HFA384x_CMD_ERR			((u16)(0x7F))
 
-/*--- Programming Modes --------------------------
-	MODE 0: Disable programming
-	MODE 1: Enable volatile memory programming
-	MODE 2: Enable non-volatile memory programming
-	MODE 3: Program non-volatile memory section
---------------------------------------------------*/
+/* --- Programming Modes --------------------------
+ *	MODE 0: Disable programming
+ *	MODE 1: Enable volatile memory programming
+ *	MODE 2: Enable non-volatile memory programming
+ *	MODE 3: Program non-volatile memory section
+ * ------------------------------------------------
+ */
 #define		HFA384x_PROGMODE_DISABLE	((u16)0x00)
 #define		HFA384x_PROGMODE_RAM		((u16)0x01)
 #define		HFA384x_PROGMODE_NV		((u16)0x02)
 #define		HFA384x_PROGMODE_NVWRITE	((u16)0x03)
 
 /*--- Record ID Constants --------------------------*/
-/*--------------------------------------------------------------------
-Configuration RIDs: Network Parameters, Static Configuration Entities
---------------------------------------------------------------------*/
+/* -------------------------------------------------------------------
+ * Configuration RIDs: Network Parameters, Static Configuration Entities
+ * -------------------------------------------------------------------
+ */
 #define		HFA384x_RID_CNFPORTTYPE		((u16)0xFC00)
 #define		HFA384x_RID_CNFOWNMACADDR	((u16)0xFC01)
 #define		HFA384x_RID_CNFDESIREDSSID	((u16)0xFC02)
@@ -194,27 +197,30 @@ Configuration RIDs: Network Parameters, Static Configuration Entities
 #define		HFA384x_RID_CNFOWNSSID		((u16)0xFC04)
 #define		HFA384x_RID_CNFMAXDATALEN	((u16)0xFC07)
 
-/*--------------------------------------------------------------------
-Configuration RID lengths: Network Params, Static Config Entities
-  This is the length of JUST the DATA part of the RID (does not
-  include the len or code fields)
---------------------------------------------------------------------*/
+/* -------------------------------------------------------------------
+ * Configuration RID lengths: Network Params, Static Config Entities
+ * This is the length of JUST the DATA part of the RID (does not
+ * include the len or code fields)
+ * -------------------------------------------------------------------
+ */
 #define		HFA384x_RID_CNFOWNMACADDR_LEN	((u16)6)
 #define		HFA384x_RID_CNFDESIREDSSID_LEN	((u16)34)
 #define		HFA384x_RID_CNFOWNSSID_LEN	((u16)34)
 
-/*--------------------------------------------------------------------
-Configuration RIDs: Network Parameters, Dynamic Configuration Entities
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Configuration RIDs: Network Parameters, Dynamic Configuration Entities
+ * --------------------------------------------------------------------
+ */
 #define		HFA384x_RID_CREATEIBSS		((u16)0xFC81)
 #define		HFA384x_RID_FRAGTHRESH		((u16)0xFC82)
 #define		HFA384x_RID_RTSTHRESH		((u16)0xFC83)
 #define		HFA384x_RID_TXRATECNTL		((u16)0xFC84)
 #define		HFA384x_RID_PROMISCMODE		((u16)0xFC85)
 
-/*----------------------------------------------------------------------
-Information RIDs: NIC Information
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Information RIDs: NIC Information
+ * --------------------------------------------------------------------
+ */
 #define		HFA384x_RID_MAXLOADTIME		((u16)0xFD00)
 #define		HFA384x_RID_DOWNLOADBUFFER	((u16)0xFD01)
 #define		HFA384x_RID_PRIIDENTITY		((u16)0xFD02)
@@ -229,16 +235,18 @@ Information RIDs: NIC Information
 #define		HFA384x_RID_STA_MFIACTRANGES	((u16)0xFD22)
 #define		HFA384x_RID_STA_CFIACTRANGES	((u16)0xFD23)
 
-/*----------------------------------------------------------------------
-Information RID Lengths: NIC Information
-  This is the length of JUST the DATA part of the RID (does not
-  include the len or code fields)
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Information RID Lengths: NIC Information
+ * This is the length of JUST the DATA part of the RID (does not
+ * include the len or code fields)
+ * --------------------------------------------------------------------
+ */
 #define		HFA384x_RID_NICSERIALNUMBER_LEN		((u16)12)
 
-/*--------------------------------------------------------------------
-Information RIDs:  MAC Information
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Information RIDs:  MAC Information
+ * --------------------------------------------------------------------
+ */
 #define		HFA384x_RID_PORTSTATUS		((u16)0xFD40)
 #define		HFA384x_RID_CURRENTSSID		((u16)0xFD41)
 #define		HFA384x_RID_CURRENTBSSID	((u16)0xFD42)
@@ -249,24 +257,27 @@ Information RIDs:  MAC Information
 #define		HFA384x_RID_PRIVACYOPTIMP	((u16)0xFD4F)
 #define		HFA384x_RID_DBMCOMMSQUALITY	((u16)0xFD51)
 
-/*--------------------------------------------------------------------
-Information RID Lengths:  MAC Information
-  This is the length of JUST the DATA part of the RID (does not
-  include the len or code fields)
---------------------------------------------------------------------*/
+/* -------------------------------------------------------------------
+ * Information RID Lengths:  MAC Information
+ * This is the length of JUST the DATA part of the RID (does not
+ * include the len or code fields)
+ * -------------------------------------------------------------------
+ */
 #define		HFA384x_RID_DBMCOMMSQUALITY_LEN	 \
 	((u16)sizeof(hfa384x_dbmcommsquality_t))
 #define		HFA384x_RID_JOINREQUEST_LEN \
 	((u16)sizeof(hfa384x_JoinRequest_data_t))
 
-/*--------------------------------------------------------------------
-Information RIDs:  Modem Information
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Information RIDs:  Modem Information
+ * --------------------------------------------------------------------
+ */
 #define		HFA384x_RID_CURRENTCHANNEL	((u16)0xFDC1)
 
-/*--------------------------------------------------------------------
-API ENHANCEMENTS (NOT ALREADY IMPLEMENTED)
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * API ENHANCEMENTS (NOT ALREADY IMPLEMENTED)
+ * --------------------------------------------------------------------
+ */
 #define		HFA384x_RID_CNFWEPDEFAULTKEYID	((u16)0xFC23)
 #define		HFA384x_RID_CNFWEPDEFAULTKEY0	((u16)0xFC24)
 #define		HFA384x_RID_CNFWEPDEFAULTKEY1	((u16)0xFC25)
@@ -289,9 +300,10 @@ API ENHANCEMENTS (NOT ALREADY IMPLEMENTED)
 #define		HFA384x_RID_CNFWEPDEFAULTKEY_LEN	((u16)6)
 #define		HFA384x_RID_CNFWEP128DEFAULTKEY_LEN	((u16)14)
 
-/*--------------------------------------------------------------------
-PD Record codes
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * PD Record codes
+ * --------------------------------------------------------------------
+ */
 #define HFA384x_PDR_PCB_PARTNUM		((u16)0x0001)
 #define HFA384x_PDR_PDAVER		((u16)0x0002)
 #define HFA384x_PDR_NIC_SERIAL		((u16)0x0003)
@@ -360,10 +372,11 @@ typedef struct hfa384x_bytestr32 {
 	u8 data[32];
 } __packed hfa384x_bytestr32_t;
 
-/*--------------------------------------------------------------------
-Configuration Record Structures:
-	Network Parameters, Static Configuration Entities
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Configuration Record Structures:
+ *	Network Parameters, Static Configuration Entities
+ * --------------------------------------------------------------------
+ */
 
 /*-- Hardware/Firmware Component Information ----------*/
 typedef struct hfa384x_compident {
@@ -386,10 +399,11 @@ typedef struct hfa384x_caplevel {
 #define HFA384x_CNFAUTHENTICATION_SHAREDKEY	0x0002
 #define HFA384x_CNFAUTHENTICATION_LEAP		0x0004
 
-/*--------------------------------------------------------------------
-Configuration Record Structures:
-	Network Parameters, Dynamic Configuration Entities
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Configuration Record Structures:
+ *	Network Parameters, Dynamic Configuration Entities
+ * --------------------------------------------------------------------
+ */
 
 #define HFA384x_CREATEIBSS_JOINCREATEIBSS          0
 
@@ -419,9 +433,10 @@ typedef struct hfa384x_WPAData {
 	u8 data[0];		/* max 80 */
 } __packed hfa384x_WPAData_t;
 
-/*--------------------------------------------------------------------
-Information Record Structures: NIC Information
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Information Record Structures: NIC Information
+ * --------------------------------------------------------------------
+ */
 
 /*-- Information Record: DownLoadBuffer --*/
 /* NOTE: The page and offset are in AUX format */
@@ -431,9 +446,10 @@ typedef struct hfa384x_downloadbuffer {
 	u16 len;
 } __packed hfa384x_downloadbuffer_t;
 
-/*--------------------------------------------------------------------
-Information Record Structures: NIC Information
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Information Record Structures: NIC Information
+ * --------------------------------------------------------------------
+ */
 
 #define HFA384x_PSTATUS_CONN_IBSS	((u16)3)
 
@@ -451,11 +467,12 @@ typedef struct hfa384x_dbmcommsquality {
 	u16 ANLdbm_currFC;
 } __packed hfa384x_dbmcommsquality_t;
 
-/*--------------------------------------------------------------------
-FRAME STRUCTURES: Communication Frames
-----------------------------------------------------------------------
-Communication Frames: Transmit Frames
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * FRAME STRUCTURES: Communication Frames
+ * --------------------------------------------------------------------
+ * Communication Frames: Transmit Frames
+ * --------------------------------------------------------------------
+ */
 /*-- Communication Frame: Transmit Frame Structure --*/
 typedef struct hfa384x_tx_frame {
 	u16 status;
@@ -483,9 +500,10 @@ typedef struct hfa384x_tx_frame {
 	u8 src_addr[6];
 	u16 data_length;	/* big endian format */
 } __packed hfa384x_tx_frame_t;
-/*--------------------------------------------------------------------
-Communication Frames: Field Masks for Transmit Frames
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Communication Frames: Field Masks for Transmit Frames
+ * --------------------------------------------------------------------
+ */
 /*-- Status Field --*/
 #define		HFA384x_TXSTATUS_ACKERR			((u16)BIT(5))
 #define		HFA384x_TXSTATUS_FORMERR		((u16)BIT(3))
@@ -498,9 +516,10 @@ Communication Frames: Field Masks for Transmit Frames
 #define		HFA384x_TX_STRUCTYPE			((u16)(BIT(4) | BIT(3)))
 #define		HFA384x_TX_TXEX				((u16)BIT(2))
 #define		HFA384x_TX_TXOK				((u16)BIT(1))
-/*--------------------------------------------------------------------
-Communication Frames: Test/Get/Set Field Values for Transmit Frames
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Communication Frames: Test/Get/Set Field Values for Transmit Frames
+ * --------------------------------------------------------------------
+ */
 /*-- Status Field --*/
 #define HFA384x_TXSTATUS_ISERROR(v)	\
 	(((u16)(v)) & \
@@ -515,9 +534,10 @@ Communication Frames: Test/Get/Set Field Values for Transmit Frames
 						HFA384x_TX_STRUCTYPE, 3)
 #define	HFA384x_TX_TXEX_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)
 #define	HFA384x_TX_TXOK_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXOK, 1)
-/*--------------------------------------------------------------------
-Communication Frames: Receive Frames
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Communication Frames: Receive Frames
+ * --------------------------------------------------------------------
+ */
 /*-- Communication Frame: Receive Frame Structure --*/
 typedef struct hfa384x_rx_frame {
 	/*-- MAC rx descriptor (hfa384x byte order) --*/
@@ -545,27 +565,30 @@ typedef struct hfa384x_rx_frame {
 	u8 src_addr[6];
 	u16 data_length;	/* IEEE? (big endian) format */
 } __packed hfa384x_rx_frame_t;
-/*--------------------------------------------------------------------
-Communication Frames: Field Masks for Receive Frames
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Communication Frames: Field Masks for Receive Frames
+ * --------------------------------------------------------------------
+ */
 
 /*-- Status Fields --*/
 #define		HFA384x_RXSTATUS_MACPORT		((u16)(BIT(10) | \
 								BIT(9) | \
 								BIT(8)))
 #define		HFA384x_RXSTATUS_FCSERR			((u16)BIT(0))
-/*--------------------------------------------------------------------
-Communication Frames: Test/Get/Set Field Values for Receive Frames
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Communication Frames: Test/Get/Set Field Values for Receive Frames
+ * --------------------------------------------------------------------
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
+/* --------------------------------------------------------------------
+ * FRAME STRUCTURES: Information Types and Information Frame Structures
+ * --------------------------------------------------------------------
+ * Information Types
+ * --------------------------------------------------------------------
+ */
 #define		HFA384x_IT_HANDOVERADDR			((u16)0xF000UL)
 #define		HFA384x_IT_COMMTALLIES			((u16)0xF100UL)
 #define		HFA384x_IT_SCANRESULTS			((u16)0xF101UL)
@@ -579,11 +602,12 @@ Information Types
 #define		HFA384x_IT_ASSOCREQ			((u16)0xF205UL)
 #define		HFA384x_IT_MICFAILURE			((u16)0xF206UL)
 
-/*--------------------------------------------------------------------
-Information Frames Structures
-----------------------------------------------------------------------
-Information Frames: Notification Frame Structures
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * Information Frames Structures
+ * --------------------------------------------------------------------
+ * Information Frames: Notification Frame Structures
+ * --------------------------------------------------------------------
+ */
 
 /*--  Inquiry Frame, Diagnose: Communication Tallies --*/
 typedef struct hfa384x_CommTallies16 {
@@ -756,9 +780,10 @@ typedef struct hfa384x_InfFrame {
 	hfa384x_infodata_t info;
 } __packed hfa384x_InfFrame_t;
 
-/*--------------------------------------------------------------------
-USB Packet structures and constants.
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * USB Packet structures and constants.
+ * --------------------------------------------------------------------
+ */
 
 /* Should be sent to the bulkout endpoint */
 #define HFA384x_USB_TXFRM	0
@@ -903,9 +928,10 @@ typedef union hfa384x_usbin {
 	u8 boguspad[3000];
 } __packed hfa384x_usbin_t;
 
-/*--------------------------------------------------------------------
-PD record structures.
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * PD record structures.
+ * --------------------------------------------------------------------
+ */
 
 typedef struct hfa384x_pdr_pcb_partnum {
 	u8 num[8];
@@ -1111,10 +1137,11 @@ typedef struct hfa384x_pdrec {
 } __packed hfa384x_pdrec_t;
 
 #ifdef __KERNEL__
-/*--------------------------------------------------------------------
----  MAC state structure, argument to all functions --
----  Also, a collection of support types --
---------------------------------------------------------------------*/
+/* --------------------------------------------------------------------
+ * ---  MAC state structure, argument to all functions --
+ * ---  Also, a collection of support types --
+ * --------------------------------------------------------------------
+ */
 typedef struct hfa384x_statusresult {
 	u16 status;
 	u16 resp0;
@@ -1298,7 +1325,8 @@ typedef struct hfa384x {
 	int dbmadjust;
 
 	/* Group Addresses - right now, there are up to a total
-	   of MAX_GRP_ADDR group addresses */
+	 * of MAX_GRP_ADDR group addresses
+	 */
 	u8 dot11_grp_addr[MAX_GRP_ADDR][ETH_ALEN];
 	unsigned int dot11_grpcnt;
 
@@ -1424,4 +1452,4 @@ hfa384x_cmd_download(hfa384x_t *hw,
 
 #endif /*__KERNEL__ */
 
-#endif /*_HFA384x_H */
+#endif /*_HFA384x_H */
\ No newline at end of file
-- 
2.9.2


