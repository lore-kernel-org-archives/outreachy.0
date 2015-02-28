X-GM-THRID: 5035636293632
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,82702b7a806ab81c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr1022976wib.5.1425116807444;
        Sat, 28 Feb 2015 01:46:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls262835lac.92.gmail; Sat, 28 Feb
 2015 01:46:46 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr2576215lbb.17.1425116806862;
        Sat, 28 Feb 2015 01:46:46 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id ta1si269546wic.1.2015.02.28.01.46.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 01:46:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghk14 with SMTP id k14so24704343wgh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 01:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Kd8Z8RyLq4nguS4E/FtKzjQlhHMn3FGQsuBnZOcH3w0=;
        b=xF2m5HrM+wsfN57crhpFIhcGvZ8HNIU4AKLa/DJqe/BKyh+4xXtQ0x2JBY4KrT1NVK
         n3RiixsXHyWK42pJpz5SNT+z1aQvy+7T7xSnuvwzZFZ0CLiBmoMAQnXUjkaEqh0LSaLI
         a3ao6XJLS9M1ny/XS2vz4yfzvpQ4juT/YLZSxqX6YsMtC2QakoUIMZSqu/UUw08zBTrT
         F0QODbYp828591eecZT0u4B5Lgv4IASnJh1Rw3q+Ebmnu5asl1vCcz7BNO+ozd4SIsHa
         cg0CT19GfJ+nbPJ/dnZWldevDot9sguyGQIrEeZEolBv8RJhIvRX+mgAhRhZlO/jb9l2
         rblw==
X-Received: by 10.194.120.40 with SMTP id kz8mr37265474wjb.21.1425116806786;
        Sat, 28 Feb 2015 01:46:46 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id fo15sm6340805wic.19.2015.02.28.01.46.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 01:46:46 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/3] Staging: rtl8192u: Add space after close brace
Date: Sat, 28 Feb 2015 10:46:39 +0100
Message-Id: <f586128af850107c136d94932bd95ca760e2ef43.1425116760.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425116760.git.ksenija.stanojevic@gmail.com>
References: <cover.1425116760.git.ksenija.stanojevic@gmail.com>

This patch adds space after close brace. Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
index c3aabba..a968215 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
@@ -61,7 +61,7 @@ typedef enum _HT_MCS_RATE{
 typedef enum _HT_CHANNEL_WIDTH{
 	HT_CHANNEL_WIDTH_20 = 0,
 	HT_CHANNEL_WIDTH_20_40 = 1,
-}HT_CHANNEL_WIDTH, *PHT_CHANNEL_WIDTH;
+} HT_CHANNEL_WIDTH, *PHT_CHANNEL_WIDTH;
 
 //
 // Represent Extension Channel Offset in HT Capabilities
@@ -72,7 +72,7 @@ typedef enum _HT_EXTCHNL_OFFSET{
 	HT_EXTCHNL_OFFSET_UPPER = 1,
 	HT_EXTCHNL_OFFSET_NO_DEF = 2,
 	HT_EXTCHNL_OFFSET_LOWER = 3,
-}HT_EXTCHNL_OFFSET, *PHT_EXTCHNL_OFFSET;
+} HT_EXTCHNL_OFFSET, *PHT_EXTCHNL_OFFSET;
 
 typedef enum _CHNLOP{
 	CHNLOP_NONE = 0, // No Action now
@@ -139,7 +139,7 @@ typedef enum _HT_Bandwidth_40MHZ_Sub_Carrier{
 	SC_MODE_LOWER = 1,
 	SC_MODE_UPPER = 2,
 	SC_MODE_FULL40MHZ = 3,
-}HT_BW40_SC_E;
+} HT_BW40_SC_E;
 
 typedef	struct _HT_CAPABILITY_ELE{
 
@@ -224,13 +224,13 @@ typedef struct _MIMOPS_CTRL{
 typedef enum _HT_SPEC_VER{
 	HT_SPEC_VER_IEEE = 0,
 	HT_SPEC_VER_EWC = 1,
-}HT_SPEC_VER, *PHT_SPEC_VER;
+} HT_SPEC_VER, *PHT_SPEC_VER;
 
 typedef enum _HT_AGGRE_MODE_E{
 	HT_AGG_AUTO = 0,
 	HT_AGG_FORCE_ENABLE = 1,
 	HT_AGG_FORCE_DISABLE = 2,
-}HT_AGGRE_MODE_E, *PHT_AGGRE_MODE_E;
+} HT_AGGRE_MODE_E, *PHT_AGGRE_MODE_E;
 
 //------------------------------------------------------------
 //  The Data structure is used to keep HT related variables when card is
@@ -366,7 +366,7 @@ typedef struct _RT_HTINFO_STA_ENTRY{
 	u8			McsRateSet[16];
 
 
-}RT_HTINFO_STA_ENTRY, *PRT_HTINFO_STA_ENTRY;
+} RT_HTINFO_STA_ENTRY, *PRT_HTINFO_STA_ENTRY;
 
 
 
@@ -402,19 +402,19 @@ typedef struct _MIMO_RSSI{
 	u32	AntennaC;
 	u32	AntennaD;
 	u32	Average;
-}MIMO_RSSI, *PMIMO_RSSI;
+} MIMO_RSSI, *PMIMO_RSSI;
 
 typedef struct _MIMO_EVM{
 	u32	EVM1;
 	u32    EVM2;
-}MIMO_EVM, *PMIMO_EVM;
+} MIMO_EVM, *PMIMO_EVM;
 
 typedef struct _FALSE_ALARM_STATISTICS{
 	u32	Cnt_Parity_Fail;
 	u32    Cnt_Rate_Illegal;
 	u32	Cnt_Crc8_fail;
 	u32	Cnt_all;
-}FALSE_ALARM_STATISTICS, *PFALSE_ALARM_STATISTICS;
+} FALSE_ALARM_STATISTICS, *PFALSE_ALARM_STATISTICS;
 
 
 extern u8 MCS_FILTER_ALL[16];
@@ -447,7 +447,7 @@ typedef enum _HT_AGGRE_SIZE{
 	HT_AGG_SIZE_16K = 1,
 	HT_AGG_SIZE_32K = 2,
 	HT_AGG_SIZE_64K = 3,
-}HT_AGGRE_SIZE_E, *PHT_AGGRE_SIZE_E;
+} HT_AGGRE_SIZE_E, *PHT_AGGRE_SIZE_E;
 
 /* Indicate different AP vendor for IOT issue */
 typedef enum _HT_IOT_PEER
@@ -459,7 +459,7 @@ typedef enum _HT_IOT_PEER
 	HT_IOT_PEER_ATHEROS = 4,
 	HT_IOT_PEER_CISCO= 5,
 	HT_IOT_PEER_MAX = 6
-}HT_IOT_PEER_E, *PHTIOT_PEER_E;
+} HT_IOT_PEER_E, *PHTIOT_PEER_E;
 
 //
 // IOT Action for different AP
@@ -475,6 +475,6 @@ typedef enum _HT_IOT_ACTION{
 	HT_IOT_ACT_CDD_FSYNC = 0x00000080,
 	HT_IOT_ACT_PURE_N_MODE = 0x00000100,
 	HT_IOT_ACT_FORCED_CTS2SELF = 0x00000200,
-}HT_IOT_ACTION_E, *PHT_IOT_ACTION_E;
+} HT_IOT_ACTION_E, *PHT_IOT_ACTION_E;
 
 #endif //_RTL819XU_HTTYPE_H_
-- 
1.9.1


