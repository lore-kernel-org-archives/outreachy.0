X-GM-THRID: 6466329510613614592
X-Received: by 10.13.231.196 with SMTP id q187mr17806329ywe.62.1505559686461;
        Sat, 16 Sep 2017 04:01:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.139.4 with SMTP id g4ls2565359ite.15.gmail; Sat, 16 Sep
 2017 04:01:25 -0700 (PDT)
X-Received: by 10.202.79.149 with SMTP id d143mr15305134oib.94.1505559685814;
        Sat, 16 Sep 2017 04:01:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559685; cv=none;
        d=google.com; s=arc-20160816;
        b=tgTqnfyXm76KKwvCz+gFgg9oRDJtc/SQp33OqIxvSzd4zI0zWuAiihjuqwX4k46UQM
         F0S5D9G8Y/tlWamgUuhPARaf4XGHiulC6tSj+ZMMRHw7kzTiUvDVo+8yliTCBut6SRiJ
         ZEXqQx0cM1R1iDGa4cKe6IHVQeDIi1vvbIRkfRIbe93T/VSPWrU8LLUVjiV/wSbFmpMo
         yuXjxmX19kgzq8i8O3J5+8+dPnnRHOrRu9lImq+GuxjfHS5Z0xMM9x+RG7fxHfkHpByE
         ThbwrQT3c/cDeU591eb1PV/LAOwmBo39aTSHQHNqsyE6uQXn/6PNBFlCY2UZY8F+R6bS
         3rNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=yL+dC8//656Wben3j7oe5t3h2e2hfckaUaoh42edAYc=;
        b=1DzimfW+pJqkpEnN9fNKER04BLBQQuO1ankOuB5bIyQbXkhdMrVb7lj433ro3UKd7v
         5vbn4VGUE2DA3kDhYYRPzcIK2/LfAESv2WK47cev1PDE7C9xg39y3jsgJb1CmzN24QVR
         bhcS//5n55PCw115t2qBZp2rioodXIj+MiS56msYiOfwP7rHOssK4RLh32+6Of0lRDRs
         uuAmtKWdovEKD+ldudSHydy1/gOESYzD9pOThj+uhJ4NU8B59IUEceCsJseI0byZvX+F
         t5yN4EksKcFSoRA42A1vk/ZsZiexRPKgR7KwDNJUWnh4+V0yrwaI0MBmWo3+nC/R+2Cs
         Wvhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ve+VOk3T;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id k76si317844pfb.5.2017.09.16.04.01.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ve+VOk3T;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v82so2628725pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yL+dC8//656Wben3j7oe5t3h2e2hfckaUaoh42edAYc=;
        b=ve+VOk3TdncD5rrSK75J/+L1FU4jP0K9WuBk9JJXGzRRp28/iTtdndERsj40mtr3Gz
         qL/kR5WtdCR83QwbMjFdjtNqpWxS2iGbDBvmQiDRMTkQ3+8lf5Q8ByP+OAzGs9LpESop
         iLc6cXVjji0iWjxiYmz3XzIei9bvW1GGJ2nxyTaiEVc3S5oxw47EtPHzkTFxezIx7M8r
         SZIN/zXBlzbVe7glrD507hVn2T+L1llpaV99OqoqYCxfdR6GZLY0Xzs/jpDACS85lSXp
         IUbY6GgCeNqpA0gn2Z/gX/SIxrzkd7h8BbkiBS0PJ5rU/gPmVNSj8EDEE8RT3q94jYE8
         iIpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=yL+dC8//656Wben3j7oe5t3h2e2hfckaUaoh42edAYc=;
        b=hJIjT9GsNGPF+O0AEtm+9S27/NkQjCTgXBgZagjhAcQAEUGs5JnwJQSOU/YleVI/K2
         qoCmogynPG8ZZXbRUY68zhGNt42vv+zN1OQ8AaFG+6tA6x77JqVqXKR+az+j/qrnSzcd
         U1s5hHe+oAmCpE40IL7L0O8A7pRIUZWEHY1ukUptJoJ/G5Zr90ncorTwsB6b99Puo9de
         7zZdQZkmHDhNwOb29iyov+gsLHdyCjh/G/sYS+k/sHBu7W775pqMvQ98PfqfgksfrYux
         pJQ8rhNaHu/tloJDySPVJVcy8Z+zf0p9T4ppBhWzpiEX3FEtOcdZ6zJ8QLiManL4xgdz
         B5pQ==
X-Gm-Message-State: AHPjjUjM/36fz9hEJ9kdRaxSTSH4ItZ3sQn5mi18VvlDgVIpEB3xUI+Q
	6Zbse6B73YqcNw==
X-Google-Smtp-Source: ADKCNb6pyzm3hbwuCY5YPo2hdRShJt6OGrfcTOXGw1yujuThs+IkSqv9TBxKgXPH4Uf2h0tgUwNMYw==
X-Received: by 10.98.212.94 with SMTP id u30mr27843188pfl.297.1505559685111;
        Sat, 16 Sep 2017 04:01:25 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id c30sm5948773pgn.33.2017.09.16.04.01.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:24 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 05/11] staging: rtl8192u: add spaces after struct/enum definitions
Date: Sat, 16 Sep 2017 16:30:48 +0530
Message-Id: <ec66779eccf93af38a7d3a6842139a31502b8388.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

Fixes checkpatch.pl warnings:
WARNING: missing space after enum definition
WARNING: missing space after struct definition

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 61b384d..6d052cc 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -420,7 +420,7 @@ typedef struct ieee_param {
 #define SN_LESS(a, b)		(((a - b) & 0x800) != 0)
 #define SN_EQUAL(a, b)	(a == b)
 #define MAX_DEV_ADDR_SIZE 8
-typedef enum _ACT_CATEGORY{
+typedef enum _ACT_CATEGORY {
 	ACT_CAT_QOS = 1,
 	ACT_CAT_DLS = 2,
 	ACT_CAT_BA  = 3,
@@ -428,20 +428,20 @@ typedef enum _ACT_CATEGORY{
 	ACT_CAT_WMM = 17,
 } ACT_CATEGORY, *PACT_CATEGORY;
 
-typedef enum _TS_ACTION{
+typedef enum _TS_ACTION {
 	ACT_ADDTSREQ = 0,
 	ACT_ADDTSRSP = 1,
 	ACT_DELTS    = 2,
 	ACT_SCHEDULE = 3,
 } TS_ACTION, *PTS_ACTION;
 
-typedef enum _BA_ACTION{
+typedef enum _BA_ACTION {
 	ACT_ADDBAREQ = 0,
 	ACT_ADDBARSP = 1,
 	ACT_DELBA    = 2,
 } BA_ACTION, *PBA_ACTION;
 
-typedef enum _InitialGainOpType{
+typedef enum _InitialGainOpType {
 	IG_Backup = 0,
 	IG_Restore,
 	IG_Max
@@ -1209,7 +1209,7 @@ struct eapol {
 	u16 length;
 } __packed;
 
-struct ieee80211_softmac_stats{
+struct ieee80211_softmac_stats {
 	unsigned int rx_ass_ok;
 	unsigned int rx_ass_err;
 	unsigned int rx_probe_rq;
@@ -1320,7 +1320,7 @@ struct	ether_header {
 #define	ETHERTYPE_IP	0x0800		/* IP protocol */
 #endif
 
-typedef enum _erp_t{
+typedef enum _erp_t {
 	ERP_NonERPpresent	= 0x01,
 	ERP_UseProtection	= 0x02,
 	ERP_BarkerPreambleMode = 0x04,
@@ -1479,7 +1479,7 @@ typedef struct _RX_REORDER_ENTRY {
 	struct ieee80211_rxb *prxb;
 } RX_REORDER_ENTRY, *PRX_REORDER_ENTRY;
 //added by amy for order
-typedef enum _Fsync_State{
+typedef enum _Fsync_State {
 	Default_Fsync,
 	HW_Fsync,
 	SW_Fsync
@@ -1500,14 +1500,14 @@ typedef enum _IPS_CALLBACK_FUNCION
 	IPS_CALLBACK_JOIN_REQUEST = 2,
 } IPS_CALLBACK_FUNCION;
 
-typedef enum _RT_JOIN_ACTION{
+typedef enum _RT_JOIN_ACTION {
 	RT_JOIN_INFRA   = 1,
 	RT_JOIN_IBSS  = 2,
 	RT_START_IBSS = 3,
 	RT_NO_ACTION  = 4,
 } RT_JOIN_ACTION;
 
-typedef struct _IbssParms{
+typedef struct _IbssParms {
 	u16   atimWin;
 } IbssParms, *PIbssParms;
 #define MAX_NUM_RATES	264 // Max num of support rates element: 8,  Max num of ext. support rate: 255. 061122, by rcnjko.
@@ -1588,7 +1588,7 @@ typedef enum
 } country_code_type_t;
 
 #define RT_MAX_LD_SLOT_NUM	10
-typedef struct _RT_LINK_DETECT_T{
+typedef struct _RT_LINK_DETECT_T {
 
 	u32				NumRecvBcnInPeriod;
 	u32				NumRecvDataInPeriod;
-- 
2.7.4


