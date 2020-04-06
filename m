X-GM-THRID: 6812465234894127104
X-Received: by 2002:a5d:6441:: with SMTP id d1mr23593674wrw.301.1586150677935;
        Sun, 05 Apr 2020 22:24:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f642:: with SMTP id x2ls2861707wrp.2.gmail; Sun, 05 Apr
 2020 22:24:36 -0700 (PDT)
X-Google-Smtp-Source: APiQypIDwHdNTG2qpVvOE/x6/97E+ANQ9rKaDdEma2Sqe5NrJl5qkvqxM6k1twJbeTfMqFclDHhF
X-Received: by 2002:a5d:6104:: with SMTP id v4mr23528893wrt.213.1586150676885;
        Sun, 05 Apr 2020 22:24:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586150676; cv=none;
        d=google.com; s=arc-20160816;
        b=Lgi45sBnCrou8aU13JHATG/5l383ZZbokrF4KTvkz4UyIpp0gcdUyrvDAjBAFc7uHe
         Tz9E8/VcICsjDKrFIEeCu9OXR/YkFZJ9kq3uTTCuwWPGBVsIaABILFOszv4D2WMSIQu3
         DDbbaDWiSv30ltKxk/IWvivVo70iUfGVDyihKXyhAOLHceLatkxP2D4LgKlN4ZqQhVGM
         NDG+jj4nEGoLVujy8G5xU2SZr3maiPIdZTSud48S4d4K/b9ZfDjLWUoJUsw7lt0jMH4C
         llZm8ZxpfTTCyPQBaMAtmndmPF0E6x3pb/UKWUs+4HXiGq/U6aXOgeeqHyxy5zfS7YdT
         yFfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=vSHt5c3QFq6QCe+XpSPEYEQ6TSegDDvLUz/5gu0lZMo=;
        b=xnzTfoF5rP1OCHa17juK1PPAvy+MBcS4qmwIJiGQc573ba6/+W+apRbhzUTdqiVL0n
         exV0R6Uj60RfjAR8gzOtDgvbZwVhOnVVbWfKQef7ezztACBCmbcR5R3Dx3Ax3V+y7IaS
         16PTF+O8hzYTJkjD1VnrfoUak0JhqQkPDQkF5pgVdf6W8MEfdekSONvkFOn9p9W5Ny92
         +FqXC5NVYkFatoy9hOlBccFYL3UiYR9mUONMeQNMahOMTfZOGloUrCKpwug8DifXT47L
         niAFLHd8EfpokqJn56HE2n89rhUImZzcuitCO6SabKxqoWSz36Rm9XaJ6OdPM+nHofxz
         gXbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id s22si188064wme.0.2020.04.05.22.24.36
        for <outreachy-kernel@googlegroups.com>;
        Sun, 05 Apr 2020 22:24:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26338 invoked from network); 6 Apr 2020 05:24:35 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.219.218.209)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 6 Apr 2020 05:24:35 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/4] staging: rtl8723bs: include: Correct misspelt symbolic name
Date: Mon,  6 Apr 2020 10:54:11 +0530
Message-Id: <afb86e01fcf9c7722bd46be6c89e5246389970fe.1586150254.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1586150254.git.vkor@vkten.in>
References: <cover.1586150254.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelt symbolic name.
Misspelling found using checkpatch.pl on the dependent file.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/include/hal_data.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

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


