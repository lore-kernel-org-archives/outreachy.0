X-GM-THRID: 6812465234894127104
X-Received: by 2002:a7b:cdf7:: with SMTP id p23mr12765341wmj.111.1586150682852;
        Sun, 05 Apr 2020 22:24:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:56d2:: with SMTP id m18ls5598718wrw.3.gmail; Sun, 05 Apr
 2020 22:24:41 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ4hp4qW1HnI2YpWZdARxNB5F1KKWpQCbPUIXrfWDwyeFg+k5tIiq58D38s9q5VVjLNPMa/
X-Received: by 2002:a5d:6204:: with SMTP id y4mr23232361wru.410.1586150681715;
        Sun, 05 Apr 2020 22:24:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586150681; cv=none;
        d=google.com; s=arc-20160816;
        b=x9KPDr4Okg468QG64hYvaTOV4DCxvka44qYafOJcV0NI5mVbQ8+Cbz920m89SH2pvZ
         7HAtuJaMaUh/XXp5GUlTGzp5g0yDGtomAgIqq8hYypWDsOUqjmkmTeBmI7ZO538cSvqP
         z+862mNu8r5DXB3WYeMqvPHJlI1fHJuEWBUXgLDFhKGyNLqA3HFZXW+AbXQyTquIYQh2
         ID8PAI9IksCAOtFzKw40gS5OVC9cyfNErwFdkMM0UIWjjQO44JsqEhEuzwPg1v1lDxlI
         ISDy/6GbDFvnj5xiGMK6lC6JYcYYrx2PbCXE1DMDweVJp9035ih69agTCaEe4Ts3Zrq7
         gnjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=T0n02rsBcXyVTR5ylszAZ3/BiKqpmRyVm+Re7h2bfxE=;
        b=inmJHIsliwNSdeXwwgQAx6mMVLo+G42+H8utPGTxU1s6ZNPse6qQsmHIZL4wW1eEjN
         5PbXKzLk8yTImHK5cu6aP7ongR47e8Si+USSXRNKnYoWWHRhzXuZq7fk/Y7ZAvppk4tQ
         2FBFrzvgZnCWCjiCAm/gWq1QWN3AhFZc3xj0mMPzSnY9XE2v2lqIrpJO/DkxDAIk2RY1
         nq2OiGTMnGA5JYHuMO0aXA4KQ0ggMHCZIObaBf6Acn+/rJbOJ2hkHpaaAT8BiXA1UCmQ
         kERTc2ZIDL1izA7cy9TCjaXKmDPBR//Qe296sbJjaXbSnlXjlSnpSIF2oChUtkVr6mvL
         iR2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id z84si824467wmc.2.2020.04.05.22.24.41
        for <outreachy-kernel@googlegroups.com>;
        Sun, 05 Apr 2020 22:24:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26352 invoked from network); 6 Apr 2020 05:24:40 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.219.218.209)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 6 Apr 2020 05:24:40 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/4] staging: rtl8723bs: hal: Correct misspelt symbolic name
Date: Mon,  6 Apr 2020 10:54:12 +0530
Message-Id: <7b1fd6590519be14d0c736ea9284810a0b66d74a.1586150254.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1586150254.git.vkor@vkten.in>
References: <cover.1586150254.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelt symbolic name.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

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
-- 
2.20.1


