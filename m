X-GM-THRID: 4857609060352
X-Received: by 10.180.39.164 with SMTP id q4mr745850wik.5.1425069549391;
        Fri, 27 Feb 2015 12:39:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.68 with SMTP id k4ls237721lam.53.gmail; Fri, 27 Feb
 2015 12:39:08 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr2340477lax.10.1425069548941;
        Fri, 27 Feb 2015 12:39:08 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id ta1si189832wic.1.2015.02.27.12.39.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:39:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id h11so2904472wiw.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8UXv651123FOpAaShIvGlIyKNN1DV4/LDzJj6AVNT5A=;
        b=MKb0UtDpQbbrUxLaumUbHrK+dKGLcOyYusbF0di+o/6NMd52YX0az2K8C277kUoxgP
         8vsIiG2yx21OVsuaXY4bzK7UKOfJIk0YTvT32WR8uuGDLdAkn0o6Sec8MGt0tVjtuqlx
         h40vz/gIrPvVwNfCYQSQYAp38u7yYu/S8pIdGXIdegNstjb4MrPPHFFJBKm7WbD0zIMW
         q1vhRfGoLR6S+ujOUpG8nskzQMN57I1Kmi/7Gp/ggRE23rO7lmzs7+guOLa1v0BEZXQf
         2T5xrxHZTcTwgbjxU1J68wybE68h4aZA6MiygZh9KYegbgSB9OxzvfkjNl4Ow1tPdizX
         3xwg==
X-Received: by 10.180.35.33 with SMTP id e1mr9892937wij.49.1425069548802;
        Fri, 27 Feb 2015 12:39:08 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id ax10sm7470032wjc.26.2015.02.27.12.39.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 12:39:08 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/2] Staging rtl8192u: Remove typedefs.
Date: Fri, 27 Feb 2015 21:39:00 +0100
Message-Id: <4f46244ec99ca7d088e094221b36c2be29bd4a27.1425069407.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425069407.git.ksenija.stanojevic@gmail.com>
References: <cover.1425069407.git.ksenija.stanojevic@gmail.com>

This patch removes typedefs from structures and renames them per
kernel coding standards.
Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_cmdpkt.h | 53 +++++++++++++++-----------------
 1 file changed, 25 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.h b/drivers/staging/rtl8192u/r819xU_cmdpkt.h
index 52cd437..8e0ec40 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.h
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.h
@@ -1,12 +1,12 @@
 #ifndef R819XUSB_CMDPKT_H
 #define R819XUSB_CMDPKT_H
 /* Different command packet have dedicated message length and definition. */
-#define		CMPK_RX_TX_FB_SIZE		sizeof(cmpk_txfb_t)	/* 20 */
-#define		CMPK_TX_SET_CONFIG_SIZE		sizeof(cmpk_set_cfg_t)	/* 16 */
-#define		CMPK_BOTH_QUERY_CONFIG_SIZE	sizeof(cmpk_set_cfg_t)	/* 16 */
-#define		CMPK_RX_TX_STS_SIZE		sizeof(cmpk_tx_status_t)
-#define		CMPK_RX_DBG_MSG_SIZE		sizeof(cmpk_rx_dbginfo_t)
-#define		CMPK_TX_RAHIS_SIZE		sizeof(cmpk_tx_rahis_t)
+#define	 CMPK_RX_TX_FB_SIZE		sizeof(struct cmpk_txfb)    /* 20 */
+#define	 CMPK_TX_SET_CONFIG_SIZE	sizeof(struct cmpk_set_cfg) /* 16 */
+#define	 CMPK_BOTH_QUERY_CONFIG_SIZE	sizeof(struct cmpk_set_cfg) /* 16 */
+#define	 CMPK_RX_TX_STS_SIZE		sizeof(struct cmpk_tx_status)
+#define	 CMPK_RX_DBG_MSG_SIZE		sizeof(struct cmpk_rx_dbginfo)
+#define	 CMPK_TX_RAHIS_SIZE		sizeof(struct cmpk_tx_rahis)
 
 /* 2008/05/08 amy For USB constant. */
 #define ISR_TxBcnOk		BIT27		/* Transmit Beacon OK */
@@ -19,7 +19,7 @@
 /*------------------------------Define structure----------------------------*/
 /* Define different command packet structure. */
 /* 1. RX side: TX feedback packet. */
-typedef struct tag_cmd_pkt_tx_feedback {
+struct cmpk_txfb {
 	/* DWORD 0 */
 	u8	element_id;			/* Command packet type. */
 	u8	length;				/* Command packet length. */
@@ -52,20 +52,20 @@ typedef struct tag_cmd_pkt_tx_feedback {
 	/* DWORD 5 */
 	u16	reserve3;
 	u16	duration;
-} cmpk_txfb_t;
+};
 
 /* 2. RX side: Interrupt status packet. It includes Beacon State,
  * Beacon Timer Interrupt and other useful informations in MAC ISR Reg. */
-typedef struct tag_cmd_pkt_interrupt_status {
+struct cmpk_intr_sta {
 	u8	element_id;			/* Command packet type. */
 	u8	length;				/* Command packet length. */
 	u16	reserve;
 	u32	interrupt_status;		/* Interrupt Status. */
-} cmpk_intr_sta_t;
+};
 
 
 /* 3. TX side: Set configuration packet. */
-typedef struct tag_cmd_pkt_set_configuration {
+struct cmpk_set_cfg {
 	u8	element_id;			/* Command packet type. */
 	u8	length;				/* Command packet length. */
 	u16	reserve1;
@@ -80,14 +80,11 @@ typedef struct tag_cmd_pkt_set_configuration {
 	u8	cfg_offset;
 	u32	value;
 	u32	mask;
-} cmpk_set_cfg_t;
+};
 
-/* 4. Both side : TX/RX query configuraton packet. The query structure is the
-      same as set configuration. */
-#define		cmpk_query_cfg_t	cmpk_set_cfg_t
 
 /* 5. Multi packet feedback status. */
-typedef struct tag_tx_stats_feedback {
+struct cmpk_tx_status {
 	/* For endian transfer --> Driver will not the same as
 	   firmware structure. */
 	/* DW 0 */
@@ -124,11 +121,11 @@ typedef struct tag_tx_stats_feedback {
 	u16	reserve3_23;
 	u8	reserve3_1;
 	u8	rate;
-} __packed cmpk_tx_status_t;
+};
 
 /* 6. Debug feedback message. */
 /* Define RX debug message  */
-typedef struct tag_rx_debug_message_feedback {
+struct cmpk_rx_dbginfo {
 	/* For endian transfer --> for driver */
 	/* DW 0 */
 	u16	reserve1;
@@ -138,10 +135,10 @@ typedef struct tag_rx_debug_message_feedback {
 	/* DW 1-?? */
 	/* Variable debug message. */
 
-} cmpk_rx_dbginfo_t;
+};
 
 /* Define transmit rate history. For big endian format. */
-typedef struct tag_tx_rate_history {
+struct cmpk_tx_rahis {
 	/* For endian transfer --> for driver */
 	/* DW 0 */
 	u8	element_id;			/* Command packet type */
@@ -161,9 +158,9 @@ typedef struct tag_tx_rate_history {
 	 */
 	u16	ht_mcs[4][16];
 
-} __packed cmpk_tx_rahis_t;
+};
 
-typedef enum tag_command_packet_directories {
+enum cmpk_element {
 	RX_TX_FEEDBACK			= 0,
 	RX_INTERRUPT_STATUS		= 1,
 	TX_SET_CONFIG			= 2,
@@ -173,19 +170,19 @@ typedef enum tag_command_packet_directories {
 	RX_TX_PER_PKT_FEEDBACK		= 6,
 	RX_TX_RATE_HISTORY		= 7,
 	RX_CMD_ELE_MAX
-} cmpk_element_e;
+};
 
-typedef enum _rt_status {
+enum rt_status {
 	RT_STATUS_SUCCESS,
 	RT_STATUS_FAILURE,
 	RT_STATUS_PENDING,
 	RT_STATUS_RESOURCE
-} rt_status, *prt_status;
+};
 
 extern u32 cmpk_message_handle_rx(struct net_device *dev,
-		struct ieee80211_rx_stats *pstats);
-extern rt_status SendTxCommandPacket(struct net_device *dev,
-		void *pData, u32 DataLen);
+				  struct ieee80211_rx_stats *pstats);
+extern enum rt_status SendTxCommandPacket(struct net_device *dev,
+					  void *pData, u32 DataLen);
 
 
 #endif
-- 
1.9.1


