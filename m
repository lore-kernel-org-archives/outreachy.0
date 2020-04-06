X-GM-THRID: 6812465234894127104
X-Received: by 2002:a5d:550c:: with SMTP id b12mr24742852wrv.304.1586187717796;
        Mon, 06 Apr 2020 08:41:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls6635141wrp.6.gmail; Mon, 06 Apr
 2020 08:41:56 -0700 (PDT)
X-Google-Smtp-Source: APiQypJHCKGlxdYIDWuNKAJxIjvnNCEuMwP1e/ps6/WWUJTsAfekj6yb0yKnbb/AbQ8Q41rfvpjq
X-Received: by 2002:a5d:4592:: with SMTP id p18mr8213442wrq.357.1586187716648;
        Mon, 06 Apr 2020 08:41:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586187716; cv=none;
        d=google.com; s=arc-20160816;
        b=cFj4YR1kpdjbmN2WX4dAB+lJqxTQC0vVTtkAhLHuj7GGA+BLQQVan4iUYQutthZZ9x
         ZmPWsxgxbeEObMuzBsvPOYMooDVevCc21LehTPVWjycq6m9i96ylSVcy6zBGbbStxRx5
         lYRRD1rCILFjIyINRjtTYq/wGOTi1CE/zbapW8ZTXl9coVMmINCBHo5+8kOoRMyDyqBl
         f1arJARo6dDNCLYuwo8TXKQEnQp2Vrl3N0rNQIpLNnZcwGZHh0fBBtYitbcDwSEaUige
         7bAzP8dtw10g2kNF50WmBNumq16x3dVWELOkpK/SDB/3tke35llBlcuJXlRMJsh7jt/v
         hiCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=QMRAviZHQzOb4hf1h2ISZYmDG13xZ7VsFU2rP+ifc2g=;
        b=mQoj7v4+KNrQOtwk/G8A0+IzUK9pHI59fspP+tJHWsKKkbSnp8SH2aoocj0a7aSLVc
         81lM1lsb7ZGRaKIwXnbU+RzlHathH7UiYai2/Wm/vMqYtpXmaS+f/j/emXtFS79KUyPK
         fQLurJyFJTRJfx/Sz7tLyha3sqjI81hEiYPCxAWtwGWSR4IVUi8P5tJBiL80skDoBIW7
         cFmF7va9hiVfKnS5uR3I+aeC8AL0kv6K+ajJTh71Lh49Tn6jhOGOBFFuipw8OLYtVz7F
         ec4eGuLqV/CsbSZRUVQatbCGXSZc2WgOGlxU8EG2jWPvxINNUtkakgDtd+YpOuPBznFo
         xWog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id y15si9189wrh.1.2020.04.06.08.41.56
        for <outreachy-kernel@googlegroups.com>;
        Mon, 06 Apr 2020 08:41:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 859 invoked from network); 6 Apr 2020 15:41:54 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.219.218.209)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 6 Apr 2020 15:41:54 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/3] staging: rtl8723bs: Correct misspelt symbolic names
Date: Mon,  6 Apr 2020 21:11:24 +0530
Message-Id: <abe807c11a5fda479ed6079a11d528989fe7b63e.1586187304.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1586187304.git.vkor@vkten.in>
References: <cover.1586187304.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelt symbolic names.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Combined patch 1 & 2 to prevent build failure
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 8 ++++----
 drivers/staging/rtl8723bs/include/hal_data.h   | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 767e2a784f78..10250642d30a 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -1816,7 +1816,7 @@ static void phy_CrossReferenceHTAndVHTTxPowerLimit(struct adapter *padapter)
 	s8 tempPwrLmt = 0;
 
 	for (regulation = 0; regulation < MAX_REGULATION_NUM; ++regulation) {
-		for (bw = 0; bw < MAX_5G_BANDWITH_NUM; ++bw) {
+		for (bw = 0; bw < MAX_5G_BANDWIDTH_NUM; ++bw) {
 			for (channel = 0; channel < CHANNEL_MAX_NUMBER_5G; ++channel) {
 				for (rateSection = 0; rateSection < MAX_RATE_SECTION_NUM; ++rateSection) {
 					tempPwrLmt = pHalData->TxPwrLimit_5G[regulation][bw][rateSection][channel][ODM_RF_PATH_A];
@@ -1877,7 +1877,7 @@ void PHY_ConvertTxPowerLimitToPowerIndex(struct adapter *Adapter)
 	phy_CrossReferenceHTAndVHTTxPowerLimit(Adapter);
 
 	for (regulation = 0; regulation < MAX_REGULATION_NUM; ++regulation) {
-		for (bw = 0; bw < MAX_2_4G_BANDWITH_NUM; ++bw) {
+		for (bw = 0; bw < MAX_2_4G_BANDWIDTH_NUM; ++bw) {
 			for (channel = 0; channel < CHANNEL_MAX_NUMBER_2G; ++channel) {
 				for (rateSection = 0; rateSection < MAX_RATE_SECTION_NUM; ++rateSection) {
 					tempPwrLmt = pHalData->TxPwrLimit_2_4G[regulation][bw][rateSection][channel][ODM_RF_PATH_A];
@@ -1920,7 +1920,7 @@ void PHY_InitTxPowerLimit(struct adapter *Adapter)
 	/* DBG_871X("=====> PHY_InitTxPowerLimit()!\n"); */
 
 	for (i = 0; i < MAX_REGULATION_NUM; ++i) {
-		for (j = 0; j < MAX_2_4G_BANDWITH_NUM; ++j)
+		for (j = 0; j < MAX_2_4G_BANDWIDTH_NUM; ++j)
 			for (k = 0; k < MAX_RATE_SECTION_NUM; ++k)
 				for (m = 0; m < CHANNEL_MAX_NUMBER_2G; ++m)
 					for (l = 0; l < MAX_RF_PATH_NUM; ++l)
@@ -1928,7 +1928,7 @@ void PHY_InitTxPowerLimit(struct adapter *Adapter)
 	}
 
 	for (i = 0; i < MAX_REGULATION_NUM; ++i) {
-		for (j = 0; j < MAX_5G_BANDWITH_NUM; ++j)
+		for (j = 0; j < MAX_5G_BANDWIDTH_NUM; ++j)
 			for (k = 0; k < MAX_RATE_SECTION_NUM; ++k)
 				for (m = 0; m < CHANNEL_MAX_NUMBER_5G; ++m)
 					for (l = 0; l < MAX_RF_PATH_NUM; ++l)
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index e5e667df6154..fa5d70016f05 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -56,9 +56,9 @@ enum RT_AMPDU_BURST {
 /*  Tx Power Limit Table Size */
 #define MAX_REGULATION_NUM			4
 #define MAX_RF_PATH_NUM_IN_POWER_LIMIT_TABLE	4
-#define MAX_2_4G_BANDWITH_NUM			4
+#define MAX_2_4G_BANDWIDTH_NUM			4
 #define MAX_RATE_SECTION_NUM			10
-#define MAX_5G_BANDWITH_NUM			4
+#define MAX_5G_BANDWIDTH_NUM			4
 
 #define MAX_BASE_NUM_IN_PHY_REG_PG_2_4G		10 /*   CCK:1, OFDM:1, HT:4, VHT:4 */
 #define MAX_BASE_NUM_IN_PHY_REG_PG_5G		9 /*  OFDM:1, HT:4, VHT:4 */
@@ -280,14 +280,14 @@ struct hal_com_data {
 
 	/*  Power Limit Table for 2.4G */
 	s8	TxPwrLimit_2_4G[MAX_REGULATION_NUM]
-						[MAX_2_4G_BANDWITH_NUM]
+						[MAX_2_4G_BANDWIDTH_NUM]
 	                                [MAX_RATE_SECTION_NUM]
 	                                [CHANNEL_MAX_NUMBER_2G]
 						[MAX_RF_PATH_NUM];
 
 	/*  Power Limit Table for 5G */
 	s8	TxPwrLimit_5G[MAX_REGULATION_NUM]
-						[MAX_5G_BANDWITH_NUM]
+						[MAX_5G_BANDWIDTH_NUM]
 						[MAX_RATE_SECTION_NUM]
 						[CHANNEL_MAX_NUMBER_5G]
 						[MAX_RF_PATH_NUM];
-- 
2.20.1


