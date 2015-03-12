X-GM-THRID: 7936016384000
X-Received: by 10.194.161.194 with SMTP id xu2mr6574136wjb.1.1426181712991;
        Thu, 12 Mar 2015 10:35:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.135 with SMTP id t7ls295363lag.45.gmail; Thu, 12 Mar
 2015 10:35:12 -0700 (PDT)
X-Received: by 10.112.130.70 with SMTP id oc6mr6750224lbb.13.1426181712456;
        Thu, 12 Mar 2015 10:35:12 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id sf8si590700wic.2.2015.03.12.10.35.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 10:35:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevl61 with SMTP id l61so17954365wev.10
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 10:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=UI0zAKN6HsKr8DumWysDjNRB7zy/mFfE5qLuF8F9gI8=;
        b=wQGR5gB+j3wDlZtojiJVj4LlE1jMeeNIk83/Um7/IZbVv5YnwSdf+DAqhoeYMHeRF4
         2ctusz7n9MR7nyCd/7IWMz9mtC2U/eAS1hGtTZqMQkawVKou8ZW2z32hpsE+1BNFV4x4
         g5R/xZcy8YvZtExpwqJArX7piFAhvoupSDSuAzXUvVnRp0j1ecngjVhazCsZFGzq7qnX
         o/q68hrz3diOTYRvxWGBJuT001i7wAae08bglWjTbXIFu91kxNIeJPRPEnnmB6AobZWp
         2OhIHwmjMuruCF3E1mCALVVSM+r02hyQytVSeHJvB+37VobV36a+CAdMamD6IKXsLeNG
         dO3g==
X-Received: by 10.194.94.1 with SMTP id cy1mr87543335wjb.127.1426181712309;
        Thu, 12 Mar 2015 10:35:12 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id q10sm10975249wjr.41.2015.03.12.10.35.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 10:35:11 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>,
	ksenija.stanojevic@gmail.co
Subject: [PATCH v2 1/2] Staging: rtl8192u: Remove typedefs
Date: Thu, 12 Mar 2015 18:35:04 +0100
Message-Id: <1e60da5ce257bae24aaee7d63b0857c2b6b2fe5d.1426181567.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426181567.git.ksenija.stanojevic@gmail.com>
References: <cover.1426181567.git.ksenija.stanojevic@gmail.com>

This patch removes typdefs and renames struct and enum structures
according to kernel coding standard. Also where ever struct or enum
was added, line were aligned and doesn't exceed 80 character mark.
Macro cmpk_query_cfg_t was removed since it's the same as struct
cmpk_set_cfg.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2:change commit message.

 drivers/staging/rtl8192u/r819xU_cmdpkt.h | 53 +++++++++++++++-----------------
 1 file changed, 25 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.h b/drivers/staging/rtl8192u/r819xU_cmdpkt.h
index 52cd437..6ea0cec 100644
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
+#define		CMPK_RX_TX_FB_SIZE sizeof(struct cmpk_txfb)	/* 20 */
+#define		CMPK_TX_SET_CONFIG_SIZE sizeof(struct cmpk_set_cfg)	/* 16 */
+#define		CMPK_BOTH_QUERY_CONFIG_SIZE sizeof(struct cmpk_set_cfg)	/* 16 */
+#define		CMPK_RX_TX_STS_SIZE sizeof(struct cmpk_tx_status)
+#define		CMPK_RX_DBG_MSG_SIZE sizeof(struct cmpk_rx_dbginfo)
+#define		CMPK_TX_RAHIS_SIZE sizeof(struct cmpk_tx_rahis)
 
 /* 2008/05/08 amy For USB constant. */
 #define ISR_TxBcnOk		BIT27		/* Transmit Beacon OK */
@@ -19,7 +19,7 @@
 /*------------------------------Define structure----------------------------*/
 /* Define different command packet structure. */
 /* 1. RX side: TX feedback packet. */
-typedef struct tag_cmd_pkt_tx_feedback {
+struct  cmpk_txfb {
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
+		                  struct ieee80211_rx_stats *pstats);
+extern enum rt_status SendTxCommandPacket(struct net_device *dev,
+		                          void *pData, u32 DataLen);
 
 
 #endif
-- 
1.9.1


