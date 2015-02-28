X-GM-THRID: 5038699184128
X-Received: by 10.152.36.132 with SMTP id q4mr2619981laj.6.1425116905415;
        Sat, 28 Feb 2015 01:48:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.168 with SMTP id j8ls269214wiy.1.gmail; Sat, 28 Feb
 2015 01:48:25 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr1023999wid.1.1425116905125;
        Sat, 28 Feb 2015 01:48:25 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id o3si264742wib.2.2015.02.28.01.48.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 01:48:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesu56 with SMTP id u56so24585715wes.10
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 01:48:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rhcfcZ+03sjQpkypl2ZkP41wQUUHNun/NBXJkKKVoC0=;
        b=tHDgMQFszWY1S69soTC75mu4Y9wM4ETx4z7iuDk2nFo8n5v06sMgtKitPiljJi9xvb
         A5Vipa+uU++s2J9FTjHuKNBatB+Mt8zVPACcnt8O8KpuZjkZAuRjw1liZDoluGuClz4N
         5JdVMHGLPajaPB2dcxgpqAu5LqOtZFcDqJNyr+4U7CbzGt8EDi+SYm8vjyVXBs5B/WwH
         +B0MBAgkVWdMBxS4EVfnzElyPLjw+dWnLr+yM/C0XDtn4nBmkE53H7xGEiM3xDaTtszS
         5SITFOjqOAJa2MonvCNLBnV6tNtI0fFf4TNaiURMyNcWtLECfVyC9fjx5XuY76zk0yhZ
         LuRQ==
X-Received: by 10.180.78.136 with SMTP id b8mr15531967wix.6.1425116905045;
        Sat, 28 Feb 2015 01:48:25 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id q6sm6361523wix.13.2015.02.28.01.48.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 01:48:24 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/3] Staging: rtl8192u: Add space before brace
Date: Sat, 28 Feb 2015 10:48:16 +0100
Message-Id: <8820ff2c50e1566e3fdf7d694df80d3064de8cf5.1425116810.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425116810.git.ksenija.stanojevic@gmail.com>
References: <cover.1425116810.git.ksenija.stanojevic@gmail.com>

This patch adds space between struct or enum definitions and
brace. Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h | 41 ++++++++++++-------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
index a968215..094dd2e 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
@@ -35,7 +35,7 @@
 #define HT_SUPPORTED_MCS_1SS_2SS_BITMAP			HT_MCS_1SS_BITMAP|HT_MCS_1SS_2SS_BITMAP
 
 
-typedef enum _HT_MCS_RATE{
+typedef enum _HT_MCS_RATE {
 	HT_MCS0   = 0x00000001,
 	HT_MCS1   = 0x00000002,
 	HT_MCS2   = 0x00000004,
@@ -58,7 +58,7 @@ typedef enum _HT_MCS_RATE{
 //
 // Represent Channel Width in HT Capabilities
 //
-typedef enum _HT_CHANNEL_WIDTH{
+typedef enum _HT_CHANNEL_WIDTH {
 	HT_CHANNEL_WIDTH_20 = 0,
 	HT_CHANNEL_WIDTH_20_40 = 1,
 } HT_CHANNEL_WIDTH, *PHT_CHANNEL_WIDTH;
@@ -67,14 +67,14 @@ typedef enum _HT_CHANNEL_WIDTH{
 // Represent Extension Channel Offset in HT Capabilities
 // This is available only in 40Mhz mode.
 //
-typedef enum _HT_EXTCHNL_OFFSET{
+typedef enum _HT_EXTCHNL_OFFSET {
 	HT_EXTCHNL_OFFSET_NO_EXT = 0,
 	HT_EXTCHNL_OFFSET_UPPER = 1,
 	HT_EXTCHNL_OFFSET_NO_DEF = 2,
 	HT_EXTCHNL_OFFSET_LOWER = 3,
 } HT_EXTCHNL_OFFSET, *PHT_EXTCHNL_OFFSET;
 
-typedef enum _CHNLOP{
+typedef enum _CHNLOP {
 	CHNLOP_NONE = 0, // No Action now
 	CHNLOP_SCAN = 1, // Scan in progress
 	CHNLOP_SWBW = 2, // Bandwidth switching in progress
@@ -119,7 +119,7 @@ typedef	union _HT_CAPABILITY_MACPARA{
 }HT_CAPABILITY_MACPARA, *PHT_CAPABILITY_MACPARA;
 */
 
-typedef enum _HT_ACTION{
+typedef enum _HT_ACTION {
 	ACT_RECOMMAND_WIDTH		= 0,
 	ACT_MIMO_PWR_SAVE		= 1,
 	ACT_PSMP					= 2,
@@ -134,14 +134,14 @@ typedef enum _HT_ACTION{
 
 
 /* 2007/06/07 MH Define sub-carrier mode for 40MHZ. */
-typedef enum _HT_Bandwidth_40MHZ_Sub_Carrier{
+typedef enum _HT_Bandwidth_40MHZ_Sub_Carrier {
 	SC_MODE_DUPLICATE = 0,
 	SC_MODE_LOWER = 1,
 	SC_MODE_UPPER = 2,
 	SC_MODE_FULL40MHZ = 3,
 } HT_BW40_SC_E;
 
-typedef	struct _HT_CAPABILITY_ELE{
+typedef	struct _HT_CAPABILITY_ELE {
 
 	//HT capability info
 	u8	AdvCoding:1;
@@ -184,7 +184,7 @@ typedef	struct _HT_CAPABILITY_ELE{
 // Only AP is required to include this element
 //------------------------------------------------------------
 
-typedef struct _HT_INFORMATION_ELE{
+typedef struct _HT_INFORMATION_ELE {
 	u8	ControlChl;
 
 	u8	ExtChlOffset:2;
@@ -215,18 +215,18 @@ typedef struct _HT_INFORMATION_ELE{
 // MIMO Power Save control field.
 // This is appear in MIMO Power Save Action Frame
 //
-typedef struct _MIMOPS_CTRL{
+typedef struct _MIMOPS_CTRL {
 	u8	MimoPsEnable:1;
 	u8	MimoPsMode:1;
 	u8	Reserved:6;
 } MIMOPS_CTRL, *PMIMOPS_CTRL;
 
-typedef enum _HT_SPEC_VER{
+typedef enum _HT_SPEC_VER {
 	HT_SPEC_VER_IEEE = 0,
 	HT_SPEC_VER_EWC = 1,
 } HT_SPEC_VER, *PHT_SPEC_VER;
 
-typedef enum _HT_AGGRE_MODE_E{
+typedef enum _HT_AGGRE_MODE_E {
 	HT_AGG_AUTO = 0,
 	HT_AGG_FORCE_ENABLE = 1,
 	HT_AGG_FORCE_DISABLE = 2,
@@ -238,7 +238,7 @@ typedef enum _HT_AGGRE_MODE_E{
 //	to default value in HTInitializeHTInfo()
 //------------------------------------------------------------
 
-typedef struct _RT_HIGH_THROUGHPUT{
+typedef struct _RT_HIGH_THROUGHPUT {
 	u8				bEnableHT;
 	u8				bCurrentHTSupport;
 
@@ -347,7 +347,7 @@ typedef struct _RT_HIGH_THROUGHPUT{
 // when card is configured as "AP mode"
 //------------------------------------------------------------
 
-typedef struct _RT_HTINFO_STA_ENTRY{
+typedef struct _RT_HTINFO_STA_ENTRY {
 	u8			bEnableHT;
 
 	u8			bSupportCck;
@@ -377,7 +377,7 @@ typedef struct _RT_HTINFO_STA_ENTRY{
 // when card is configured as "STA mode"
 //------------------------------------------------------------
 
-typedef struct _BSS_HT{
+typedef struct _BSS_HT {
 
 	u8				bdSupportHT;
 
@@ -395,7 +395,7 @@ typedef struct _BSS_HT{
 	u8					bdRT2RTLongSlotTime;
 } __attribute__ ((packed)) BSS_HT, *PBSS_HT;
 
-typedef struct _MIMO_RSSI{
+typedef struct _MIMO_RSSI {
 	u32	EnableAntenna;
 	u32	AntennaA;
 	u32	AntennaB;
@@ -404,12 +404,12 @@ typedef struct _MIMO_RSSI{
 	u32	Average;
 } MIMO_RSSI, *PMIMO_RSSI;
 
-typedef struct _MIMO_EVM{
+typedef struct _MIMO_EVM {
 	u32	EVM1;
 	u32    EVM2;
 } MIMO_EVM, *PMIMO_EVM;
 
-typedef struct _FALSE_ALARM_STATISTICS{
+typedef struct _FALSE_ALARM_STATISTICS {
 	u32	Cnt_Parity_Fail;
 	u32    Cnt_Rate_Illegal;
 	u32	Cnt_Crc8_fail;
@@ -442,7 +442,7 @@ extern u8 MCS_FILTER_1SS[16];
 
 #define		IS_11N_MCS_RATE(rate)		(rate&0x80)
 
-typedef enum _HT_AGGRE_SIZE{
+typedef enum _HT_AGGRE_SIZE {
 	HT_AGG_SIZE_8K = 0,
 	HT_AGG_SIZE_16K = 1,
 	HT_AGG_SIZE_32K = 2,
@@ -450,8 +450,7 @@ typedef enum _HT_AGGRE_SIZE{
 } HT_AGGRE_SIZE_E, *PHT_AGGRE_SIZE_E;
 
 /* Indicate different AP vendor for IOT issue */
-typedef enum _HT_IOT_PEER
-{
+typedef enum _HT_IOT_PEER {
 	HT_IOT_PEER_UNKNOWN = 0,
 	HT_IOT_PEER_REALTEK = 1,
 	HT_IOT_PEER_BROADCOM = 2,
@@ -464,7 +463,7 @@ typedef enum _HT_IOT_PEER
 //
 // IOT Action for different AP
 //
-typedef enum _HT_IOT_ACTION{
+typedef enum _HT_IOT_ACTION {
 	HT_IOT_ACT_TX_USE_AMSDU_4K = 0x00000001,
 	HT_IOT_ACT_TX_USE_AMSDU_8K = 0x00000002,
 	HT_IOT_ACT_DISABLE_MCS14 = 0x00000004,
-- 
1.9.1


