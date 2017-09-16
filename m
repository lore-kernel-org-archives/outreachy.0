X-GM-THRID: 6466329510613614592
X-Received: by 10.13.213.212 with SMTP id x203mr17595525ywd.157.1505559672072;
        Sat, 16 Sep 2017 04:01:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.120.150 with SMTP id p144ls2582699itc.2.canary-gmail; Sat,
 16 Sep 2017 04:01:11 -0700 (PDT)
X-Received: by 10.98.18.132 with SMTP id 4mr14704047pfs.56.1505559671571;
        Sat, 16 Sep 2017 04:01:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559671; cv=none;
        d=google.com; s=arc-20160816;
        b=Hlxl/ZAKY8J0x7GTQIIh9ZIHW0ajDOVb+w/4Io4eCyBRN+jGpA9C2G7IAY0DuYPpHL
         BL94nC0cD4UQIWlJ512+73O3OOdAmeKnu2v6dqJPxY6hC3I7UISxsGazoz3YVaZ7mNAu
         3jgk2PeqfRqBr/s2YPhfNdsRVcCQswsBlJhNIO8aYz1T3UMVyU/mukDbugeK9CL2ROvf
         INrEwPu+d2yP7k6ZKagpm5OnLoTuWp5F2oaVK7QQMnWFyzD/8Dhs+lHQEOEVcveSzaxc
         bzLGNMxhtz4h40icjeAEUolyT4yegWdFOU/O5nwbLYtFoU0Kjp4qWMx3+FNYkSu2JdVo
         zxwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=kBI/FbzeV5blGe47D1xdqXzCByf2f5tkJz0iMV9sRaE=;
        b=pv0wYv0eonuQyPd1cO0Mx1PczjI5MgxwK6OuTRlFjiH/QDgPeDaUc2G5idOkAynS/z
         wTRAKJy1cvtrLYuTRusT6B1kqBYYdjU5zlc+GzcaLcJWTOKJyxIa1CDaU7DyOty0c11f
         S9yv/yoEoq+Oale8UX0sgR2AwFkiEKOIUVEDwnwAd5Xd5FeT80zcGv27JzabFsUHMt9p
         /AtIqpuCSxSMPV+T8mqTUVx6IgbO8BLWy1gOtkfN8Xnz4U9cW1HkrYC7YJWF3hx4wuIy
         vaJhX46n2sk1ktYbEDIv9IrxdhMiKiHvKJmfXGbpJ9PjI16qpTJVTSk2PrxoTkzXe6bf
         ngDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jAC3kS64;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id k76si317844pfb.5.2017.09.16.04.01.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jAC3kS64;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v82so2628725pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=kBI/FbzeV5blGe47D1xdqXzCByf2f5tkJz0iMV9sRaE=;
        b=jAC3kS64iyZE89TK0gFb+WvkE1n2rHxGHyYChzQ/c3yI+6dZa/F3fKahqOj6AKYydQ
         8qAKHvwQRBuFsHjOPTKsnjtpD238fVct6zXSuHya0Fxl8t7PfJrkdc+JHqXm/yACRtn3
         URMCJMC/31+DoLPUMashH1M0i4egG4XiJEt+K4T3RYQ9F4oNuk5ae3wTFXH/Di2+F8dG
         fDPzt8QfvhhdwT4hhHYI3Yfia/EKkCSEGfwYgSWrTnY7641yLrURP3+KCRjmn3u+Agw1
         EbwXd/1VN9bgJVgLCWOjAh1qGFHfrJYVqoEQwFvQP/pTgwQB1ldUh4zT6S3JP2F/XaNj
         wv+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=kBI/FbzeV5blGe47D1xdqXzCByf2f5tkJz0iMV9sRaE=;
        b=BJBBzQo6qYzJGCigLJE0dWSYMWAeyRMmp5OWTYTA5P4TcwN1JxmJslVSN5NANYlPnr
         eWAZjU937MsChE8T5P4aDKHWkO6o2hbUrZ6Ax7r8S6vTCqpJs3bUfUBu2wrP/4BjgfN7
         QAfFEpUhDvFW51XNNtekw1k143HR9p5iLRoxB+7IztjNp0rDvdodCrqfjdKTSWx81gLk
         DFdnZ4djLhSBC9Nr674n159QLsvCI8NTclO9G9S6YrEWXDwgVah4xv9CqjPNxADq9TcW
         yGMaGD1HaRdOimCFCasSzjenPB/zPlb2lpcUhNrNz4AMm78Z0b88Beb+Bfh9pk2ubhFS
         4EyQ==
X-Gm-Message-State: AHPjjUigseYla1rqHBTal8zZw4weMlyOpBnoeCqnb6IP3YcmllUis4QE
	nFIn3A3gArH4hQ==
X-Google-Smtp-Source: ADKCNb4lZXyYrDcH7CEYltowtMAECTpeJCN6W0M4n6nYSG9TCHVtGWCsUqhaICs19iwxTxMcss+TlQ==
X-Received: by 10.99.114.76 with SMTP id c12mr26067234pgn.296.1505559671296;
        Sat, 16 Sep 2017 04:01:11 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id g5sm6241154pgo.66.2017.09.16.04.01.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:10 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 02/11] staging: rtl8192u: add space after '}'
Date: Sat, 16 Sep 2017 16:30:45 +0530
Message-Id: <fc282db78ca775fa38d75d8dbda287965ed7cdfb.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl error:
ERROR: space required after that close brace '}'

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 6ea104f..654c0f6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -323,7 +323,7 @@ typedef struct ieee_param {
 			u8 key[0];
 		} crypt;
 	} u;
-}ieee_param;
+} ieee_param;
 
 
 // linux under 2.6.9 release may not support it, so modify it for common use
@@ -445,7 +445,7 @@ typedef enum _InitialGainOpType{
 	IG_Backup = 0,
 	IG_Restore,
 	IG_Max
-}InitialGainOpType;
+} InitialGainOpType;
 
 /* debug macros */
 #define CONFIG_IEEE80211_DEBUG
@@ -1051,7 +1051,7 @@ typedef union _frameqos {
 		u16 ack_policy:2;
 		u16 reserved:1;
 		u16 txop:8;
-	}field;
+	} field;
 } frameqos, *pframeqos;
 
 /* SWEEP TABLE ENTRIES NUMBER*/
@@ -1483,7 +1483,7 @@ typedef enum _Fsync_State{
 	Default_Fsync,
 	HW_Fsync,
 	SW_Fsync
-}Fsync_State;
+} Fsync_State;
 
 // Power save mode configured.
 typedef	enum _RT_PS_MODE
@@ -1491,25 +1491,25 @@ typedef	enum _RT_PS_MODE
 	eActive,	// Active/Continuous access.
 	eMaxPs,		// Max power save mode.
 	eFastPs		// Fast power save mode.
-}RT_PS_MODE;
+} RT_PS_MODE;
 
 typedef enum _IPS_CALLBACK_FUNCION
 {
 	IPS_CALLBACK_NONE = 0,
 	IPS_CALLBACK_MGNT_LINK_REQUEST = 1,
 	IPS_CALLBACK_JOIN_REQUEST = 2,
-}IPS_CALLBACK_FUNCION;
+} IPS_CALLBACK_FUNCION;
 
 typedef enum _RT_JOIN_ACTION{
 	RT_JOIN_INFRA   = 1,
 	RT_JOIN_IBSS  = 2,
 	RT_START_IBSS = 3,
 	RT_NO_ACTION  = 4,
-}RT_JOIN_ACTION;
+} RT_JOIN_ACTION;
 
 typedef struct _IbssParms{
 	u16   atimWin;
-}IbssParms, *PIbssParms;
+} IbssParms, *PIbssParms;
 #define MAX_NUM_RATES	264 // Max num of support rates element: 8,  Max num of ext. support rate: 255. 061122, by rcnjko.
 
 // RF state.
@@ -1517,7 +1517,7 @@ typedef	enum _RT_RF_POWER_STATE {
 	eRfOn,
 	eRfSleep,
 	eRfOff
-}RT_RF_POWER_STATE;
+} RT_RF_POWER_STATE;
 
 typedef struct _RT_POWER_SAVE_CONTROL {
 
@@ -1585,7 +1585,7 @@ typedef enum
 	COUNTRY_CODE_TELEC,
 	COUNTRY_CODE_MIC,
 	COUNTRY_CODE_GLOBAL_DOMAIN
-}country_code_type_t;
+} country_code_type_t;
 
 #define RT_MAX_LD_SLOT_NUM	10
 typedef struct _RT_LINK_DETECT_T{
@@ -1601,7 +1601,7 @@ typedef struct _RT_LINK_DETECT_T{
 	u32				NumTxOkInPeriod;
 	u32				NumRxOkInPeriod;
 	bool				bBusyTraffic;
-}RT_LINK_DETECT_T, *PRT_LINK_DETECT_T;
+} RT_LINK_DETECT_T, *PRT_LINK_DETECT_T;
 
 
 struct ieee80211_device {
-- 
2.7.4


